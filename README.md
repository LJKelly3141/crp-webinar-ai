# Using AI to Analyze and Strengthen Your Business

Companion materials for the Capital Readiness Program (CRP) webinar, April 14, 2026.

**Presenter:** Dr. Logan Kelly, University of Wisconsin–River Falls

**Hosted by:** Universities of Wisconsin Office of Business & Entrepreneurship

## Contents

| File | Description |
|------|-------------|
| `webinar.qmd` | Slide deck source (Quarto RevealJS) |
| `webinar.html` | Rendered slide deck — open in any browser |
| `prompts.md` | Copy-paste prompt script for the live demo |
| `invoices_sample_50k.csv` | Sample billing transactions dataset (~50K rows) |
| `Data_Dictionary.csv` | Field-level documentation for the invoice data |
| `Ventura Financial Projections Template Jan 2022 v3.xlsx` | Small business financial model for cash flow demo |
| `sample_data.R` | Script used to create the stratified sample |

## The C.O.R.E. Framework

The webinar teaches the **C.O.R.E.** prompting framework for using AI as an analytical partner:

- **Context** — Feed AI your actual business data
- **Objective** — Tell it exactly what you want
- **Reasoning** — Make it show its work step-by-step
- **Evaluation** — Ask it to critique itself, then verify

Source: Jasimuddin, T. (2026). "How FP&A Professionals Should Prompt AI in 2026." *FP&A Trends*.

## Try It Yourself

1. Open ChatGPT or Claude
2. Upload `invoices_sample_50k.csv` and `Data_Dictionary.csv`
3. Follow the prompts in `prompts.md` — one C.O.R.E. step at a time

## Rendering the Slides

Requires [Quarto](https://quarto.org/docs/get-started/):

```bash
quarto render webinar.qmd
open webinar.html
```

## References

1. Badmus & Ekoh (2026). "The Impact of AI on Business Growth in SMEs." *IRE Journals*.
2. David (2026). "AI in performance management." *MiHCM*.
3. Gonzalez de Villaumbrosia (2026). "15 AI Business Use Cases in 2026." *Product School*.
4. Jasimuddin (2026). "How FP&A Professionals Should Prompt AI in 2026." *FP&A Trends*.
5. Mayer et al. (2025). "AI in the workplace." *McKinsey & Company*.
6. Mehta (2026). "AI in Business: 7 Examples." *Crescendo.ai*.
7. Perlstein (2026). "6 AI-powered Market Trend Analysis Tools." *Revuze*.
8. Probert (2026). "How AI Is Transforming the Consulting Industry." *Whitehat SEO*.
9. SentinelOne (2026). "AI Risk Mitigation: Tools and Strategies for 2026."
10. Stellium Consulting (2026). "2026 AI Trends: What Enterprises Need to Know."

## License

Materials provided for educational use by the UW Small Business AI Clinic (SBAIC).
