# Live Demo Prompt Script (Condensed)

Prompts for the "Using AI to Analyze and Strengthen Your Business" webinar.
Each demo is **one combined C.O.R.E. prompt** with the four steps visible as
XML-style tags. Copy-paste into ChatGPT or Claude.

**Target runtime:** ~15–18 minutes total (~8 min Demo 1, ~7–8 min Demo 2,
plus a minute of narration between).

For the longer step-by-step version of Demo 1, see
[`optional-extensions/`](optional-extensions/).

---

## Demo 1 — Invoice Collections Analysis (~8 min)

**Files to upload first:**
- `invoices_sample_50k.csv`
- `Data_Dictionary.csv`

### Combined C.O.R.E. Prompt

> I've uploaded two files: a billing transactions dataset
> (`invoices_sample_50k.csv`) and its data dictionary
> (`Data_Dictionary.csv`). Please analyze this data using the
> C.O.R.E. framework.
>
> `<context>`
>   - Billing transactions for a small business
>   - Each row is one invoice
>   - Some invoices are still open; some are paid; some are written off
> `</context>`
>
> `<objective>`
>   Identify the **top 5 industries with the highest rate of late payments**
>   (where DAYS_TO_PAY > 30). For each, report the late payment rate and
>   the average days to pay. Return the result as a ranked table.
> `</objective>`
>
> `<reasoning>`
>   Think step-by-step. Before producing the table:
>   - Confirm which field identifies industry and which identifies lateness
>   - Note any data quality issues you had to handle (missing values, etc.)
>   - Show how you computed the late payment rate
> `</reasoning>`
>
> `<evaluation>`
>   After the table, critique your own analysis:
>   - What are the limitations of this conclusion?
>   - What biases might exist in how this sample was constructed?
>   - What would you want to verify before acting on this?
> `</evaluation>`

### Follow-up (if time)

> Can you break the top industry down by payment type
> (Check vs. Wire Transfer vs. Credit Card) — is the late payment
> rate driven by one payment method?

---

## Demo 2 — Cash Flow Forecasting (~7 min)

**File to upload first:**
- `Ventura Financial Projections Template Jan 2022 v3.xlsx`

### Combined C.O.R.E. Prompt

> I've uploaded a small business financial projections template.
> Please analyze it using the C.O.R.E. framework:
>
> `<context>`
>   This is a small business financial model with revenue projections
>   and expense assumptions.
> `</context>`
>
> `<objective>`
>   Forecast monthly cash inflows for the next 12 months based on the
>   revenue assumptions in this workbook.
> `</objective>`
>
> `<reasoning>`
>   Walk through your assumptions step by step:
>   - What revenue line items are you using?
>   - How are you converting revenue projections to cash inflows?
>   - What timing assumptions are you making?
> `</reasoning>`
>
> `<evaluation>`
>   - What are the biggest risks to this forecast?
>   - Where might the assumptions break down?
> `</evaluation>`

### Follow-up

> What would happen to the forecast if revenue came in 20% below
> projections in Q3? Show me the revised monthly cash inflow numbers.

---

## Tips for the Presenter

- **Narrate the C.O.R.E. tags** as the AI works — point out that the
  audience can see Context / Objective / Reasoning / Evaluation in the
  prompt itself. That's the lesson.
- **Pause after the response** to say what the AI did well and where
  you'd push back. Don't read every line of output.
- **If output is weak**, that's a teaching moment — re-prompt with
  more specificity. The audience sees iteration is normal.
- **On the Evaluation step**, highlight anything the AI missed —
  this reinforces "human-in-the-loop."
- **Skip the follow-up** if you're behind on time. The combined
  prompt alone makes the point.
