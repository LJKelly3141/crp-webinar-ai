library(tidyverse)

set.seed(2026)

full <- read_delim(
  "invoices_with_acct_and_cases_sample.csv",
  delim = ",",
  show_col_types = FALSE
)

cat("Full dataset:", nrow(full), "rows\n")
cat("Industries:", n_distinct(full$INDUSTRY_NM), "\n")
cat("Late payment rate:", mean(full$LATE_PMT_GT_30 == "True", na.rm = TRUE), "\n")

# Stratified sample: preserve industry × late payment distribution
sample_data <- full |>
  group_by(INDUSTRY_NM, LATE_PMT_GT_30) |>
  slice_sample(prop = 50000 / nrow(full)) |>
  ungroup()

cat("Sample dataset:", nrow(sample_data), "rows\n")
cat("Sample late payment rate:", mean(sample_data$LATE_PMT_GT_30 == "True", na.rm = TRUE), "\n")

# Verify industry distribution is preserved
cat("\nIndustry distribution comparison:\n")
bind_rows(
  full |> count(INDUSTRY_NM) |> mutate(pct = n / sum(n), source = "full"),
  sample_data |> count(INDUSTRY_NM) |> mutate(pct = n / sum(n), source = "sample")
) |>
  select(INDUSTRY_NM, source, pct) |>
  pivot_wider(names_from = source, values_from = pct) |>
  print(n = Inf)

write_csv(sample_data, "invoices_sample_50k.csv")
cat("\nWritten to invoices_sample_50k.csv\n")
