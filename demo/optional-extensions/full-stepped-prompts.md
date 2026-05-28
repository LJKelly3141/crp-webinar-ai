# Live Demo Prompt Script

Prompts for the "Using AI to Analyze and Strengthen Your Business" webinar.
Each prompt is ready for copy-paste into ChatGPT or Claude.

---

## Demo 1: Invoice Collections Analysis

### Step 1 — Context

**Upload these files first:**
- `invoices_sample_50k.csv`
- `Data_Dictionary.csv`

**Main prompt:**

> I've uploaded two files: a billing transactions dataset (invoices_sample_50k.csv) and its data dictionary (Data_Dictionary.csv). Please describe the dataset — what does each row represent, what are the key fields, and what business questions could this data answer?

**Clarifying follow-up:**

> Which fields have the most missing data, and how might that affect any analysis we do?

---

### Step 2 — Objective

**Main prompt:**

> Using this invoice data, identify which industries have the highest rate of late payments (where DAYS_TO_PAY > 30). Show me the top 5 industries ranked by late payment rate, with the average days to pay for each.

**Clarifying follow-up:**

> Can you break this down further by payment type (Check vs. Wire Transfer vs. Credit Card)?

---

### Step 3 — Reasoning

**Main prompt:**

> Think step-by-step: For the industry with the highest late payment rate, what factors in the data might explain why? Consider payment terms, payment type, number of support cases, and customer size (employee count, revenue). Show your reasoning.

**Clarifying follow-up:**

> You mentioned employee count — is the relationship linear, or do mid-size companies behave differently than very small or very large ones?

---

### Step 4 — Evaluation

**Main prompt:**

> Now critique your own analysis. What are the limitations of these conclusions? What data would you need to be more confident? Are there any potential biases in how this dataset was constructed?

**Clarifying follow-up:**

> If I were presenting these findings to my collections team, what caveats should I include?

---

## Demo 2: Cash Flow Forecasting

### Combined C.O.R.E. Prompt

**Upload this file first:**
- `Ventura Financial Projections Template Jan 2022 v3.xlsx`

**Main prompt:**

> I've uploaded a small business financial projections template. Please analyze it using the C.O.R.E. framework:
>
> **Context:** This is a small business financial model with revenue projections and expense assumptions.
>
> **Objective:** Forecast monthly cash inflows for the next 12 months based on the revenue assumptions in this workbook.
>
> **Reasoning:** Walk through your assumptions step by step. What revenue line items are you using? How are you converting revenue projections to cash inflows? What timing assumptions are you making?
>
> **Evaluation:** What are the biggest risks to this forecast? Where might the assumptions break down?

**Clarifying follow-up:**

> What would happen to the forecast if revenue came in 20% below projections in Q3? Show me the revised monthly cash inflow numbers.

---

## Tips for the Presenter

- **Pause after each AI response** to narrate what it did well and where you'd push back
- **Point out the C.O.R.E. step** you're on — the audience should see the framework in action
- **If output is weak**, re-prompt with more specificity — that's part of the lesson
- **For the Evaluation step**, highlight anything the AI misses — this reinforces "human-in-the-loop"
