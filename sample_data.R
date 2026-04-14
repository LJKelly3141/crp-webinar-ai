library(tidyverse)

set.seed(2026)

full <- read_delim(
  "invoices_with_acct_and_cases_sample.csv",
  delim = ",",
  show_col_types = FALSE
)

cat("Full dataset:", nrow(full), "rows\n")
cat("BAD_DEBT_FLAG distribution:\n")
print(table(full$BAD_DEBT_FLAG))

# --- 1. Stratified sample of resolved invoices (40K) ---
resolved <- full |>
  mutate(PAST_DUE_FLG = as.character(PAST_DUE_FLG)) |>
  group_by(INDUSTRY_NM, BAD_DEBT_FLAG) |>
  slice_sample(prop = 40000 / nrow(full)) |>
  ungroup() |>
  mutate(INVOICE_STATUS = "Closed")

cat("\nResolved sample:", nrow(resolved), "rows\n")

# --- 2. Synthesize open invoices (7K) ---
# Take a random subset of paid invoices and make them "open":
#   - Set BALANCE_DUE = TOTAL_AMOUNT (unpaid)
#   - Set DAYS_TO_PAY = NA (still open)
#   - Set BAD_DEBT_FLAG = NA
#   - Set COLLECTION_STATUS to realistic active statuses
open_source <- full |>
  mutate(PAST_DUE_FLG = as.character(PAST_DUE_FLG)) |>
  filter(BAD_DEBT_FLAG == "Paid in Full", PAST_DUE_FLG == "TRUE") |>
  slice_sample(n = 7000)

active_statuses <- c(
  "Promise To Pay", "Non Responsive", "Courtesy Contact",
  "Willingness To Pay", "Invoice Correction Required"
)

open_invoices <- open_source |>
  mutate(
    BALANCE_DUE = TOTAL_AMOUNT,
    DAYS_TO_PAY = NA_real_,
    BAD_DEBT_FLAG = NA_character_,
    PAST_DUE_FLG = "TRUE",
    COLLECTION_STATUS = sample(active_statuses, n(), replace = TRUE),
    INVOICE_STATUS = "Open"
  )

cat("Open invoices:", nrow(open_invoices), "rows\n")

# --- 3. Synthesize charged-off invoices (3K) ---
# Take the actual write-off flagged invoices and populate dollar amounts:
#   - <10% Write Off: WRITEOFF_AMT = 1-10% of TOTAL_AMOUNT
#   - >10% Write Off: WRITEOFF_AMT = 10-80% of TOTAL_AMOUNT
#   - Total Write Off: WRITEOFF_AMT = TOTAL_AMOUNT
writeoff_source <- full |>
  mutate(PAST_DUE_FLG = as.character(PAST_DUE_FLG)) |>
  filter(BAD_DEBT_FLAG %in% c("<10% Write Off", ">10% Write Off", "Total Write Off"))

chargeoff <- writeoff_source |>
  slice_sample(n = min(3000, nrow(writeoff_source))) |>
  mutate(
    WRITEOFF_AMT = case_when(
      BAD_DEBT_FLAG == "<10% Write Off" ~
        round(TOTAL_AMOUNT * runif(n(), 0.01, 0.10), 2),
      BAD_DEBT_FLAG == ">10% Write Off" ~
        round(TOTAL_AMOUNT * runif(n(), 0.10, 0.80), 2),
      BAD_DEBT_FLAG == "Total Write Off" ~
        round(TOTAL_AMOUNT, 2)
    ),
    BALANCE_DUE = 0,
    COLLECTION_STATUS = case_when(
      BAD_DEBT_FLAG == "Total Write Off" ~ "Red Account",
      TRUE ~ COLLECTION_STATUS
    ),
    INVOICE_STATUS = "Charged Off"
  )

cat("Charged-off invoices:", nrow(chargeoff), "rows\n")

# --- 4. Combine and shuffle ---
sample_data <- bind_rows(resolved, open_invoices, chargeoff) |>
  slice_sample(prop = 1)  # shuffle

cat("\n--- Final sample ---\n")
cat("Total rows:", nrow(sample_data), "\n")
cat("\nINVOICE_STATUS:\n")
print(table(sample_data$INVOICE_STATUS))
cat("\nBAD_DEBT_FLAG:\n")
print(table(sample_data$BAD_DEBT_FLAG, useNA = "always"))
cat("\nBALANCE_DUE > 0:", sum(sample_data$BALANCE_DUE > 0), "\n")
cat("WRITEOFF_AMT > 0:", sum(sample_data$WRITEOFF_AMT > 0), "\n")

# Verify industry distribution preserved in resolved portion
cat("\nIndustry distribution (top 10, resolved vs full):\n")
bind_rows(
  full |> count(INDUSTRY_NM) |> mutate(pct = n / sum(n), source = "full"),
  resolved |> count(INDUSTRY_NM) |> mutate(pct = n / sum(n), source = "sample")
) |>
  select(INDUSTRY_NM, source, pct) |>
  pivot_wider(names_from = source, values_from = pct) |>
  arrange(desc(full)) |>
  head(10) |>
  print()

write_csv(sample_data, "invoices_sample_50k.csv")
cat("\nWritten to invoices_sample_50k.csv\n")
