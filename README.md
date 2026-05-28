# Using AI to Analyze and Strengthen Your Business — Webinar Materials

Reproducible prep + delivery materials for the Capital Readiness Program (CRP)
webinar.

**Presenter:** Dr. Logan Kelly, University of Wisconsin–River Falls
**Hosted by:** Universities of Wisconsin Office of Business & Entrepreneurship
**First delivered:** April 14, 2026
**Target runtime:** ~40 min (15 min slides · 15–18 min demo · ~5 min Q&A)

## Folder Structure

```
Webinar/
├── README.md              ← You are here
├── CLAUDE.md              ← Folder guidance for AI/Claude sessions
├── Webinar.Rproj          ← RStudio project file
├── prep/                  ← Presenter prep materials
│   ├── RUN_OF_SHOW.md     ← Timed slide-by-slide facilitator guide
│   └── PREP_CHECKLIST.md  ← Pre-webinar tech & content checklist
├── slides/                ← Slide deck (Quarto RevealJS)
│   ├── webinar.qmd        ← Source
│   ├── webinar.html       ← Rendered (open in any browser)
│   └── custom.scss        ← Theme overrides
├── handout/               ← Audience-facing takeaway
│   ├── handout.qmd        ← Source (Quarto → PDF)
│   └── handout.pdf        ← Rendered audience notes
├── demo/                  ← Live demo assets
│   ├── prompts.md         ← Condensed copy-paste prompt script
│   ├── demo-plan.txt      ← Plain-text demo plan
│   ├── invoices_sample_50k.csv
│   ├── invoices_sample_50k_cleaned.xlsx
│   ├── Data_Dictionary.csv
│   ├── Ventura Financial Projections Template Jan 2022 v3.xlsx
│   ├── reference-outputs/ ← Sample plots from a past run (backup)
│   └── optional-extensions/  ← Longer step-by-step prompts (for 30+ min slots)
├── data-pipeline/         ← How the sample data was built
│   ├── sample_data.R      ← R script that produced invoices_sample_50k.csv
│   └── invoices_with_acct_and_cases_sample.csv  (gitignored, large)
├── briefings/             ← Background research that informed the talk
│   ├── AI_CORE_Strategic_Brief_2026.md
│   ├── AI_Business_Use_Cases_2026_Briefing.md
│   └── AI_Analytical_Partner_Entrepreneur_Briefing.md
└── archive/
    └── demo01/            ← Earlier demo draft (preserved for history)
```

## Quick Start — Re-Run This Webinar

1. Read `prep/PREP_CHECKLIST.md` and work through it the day of.
2. Have `prep/RUN_OF_SHOW.md` open on a second screen during the talk.
3. Open `slides/webinar.html` for the presentation.
4. Keep `demo/prompts.md` open to copy-paste prompts during the demo.

## The C.O.R.E. Framework

The webinar teaches a structured prompting framework:

- **C**ontext — Feed AI your actual business data
- **O**bjective — Tell it exactly what you want (see D.A.T.A. pattern)
- **R**easoning — Make it show its work step-by-step
- **E**valuation — Ask it to critique itself, then verify

Source: Jasimuddin, T. (2026). "How FP&A Professionals Should Prompt AI in 2026." *FP&A Trends*.

## Rendering Slides + Handout

Requires [Quarto](https://quarto.org/docs/get-started/) and a LaTeX
installation (TinyTeX is fine: `quarto install tinytex`).

```bash
# Slides
cd slides && quarto render webinar.qmd && open webinar.html

# Audience handout
cd handout && quarto render handout.qmd && open handout.pdf
```

## Demo Length Variants

The canonical demo (`demo/prompts.md`) runs ~15–18 minutes using one combined
C.O.R.E. prompt per demo.

For a **longer slot (~30 min)**, swap to the step-by-step version in
`demo/optional-extensions/` — that breaks Demo 1 into four separate
C.O.R.E. step prompts with clarifying follow-ups.

## GitHub Repo Note

The slide deck includes download links pointing to
`github.com/LJKelly3141/crp-webinar-ai`. That repo currently has files at the
root; this local folder restructured them into subdirectories for clarity.
If you push this restructured layout, update the raw URLs at the bottom of
`slides/webinar.qmd`. If you prefer to keep links working, push only the
final HTML/PDF/CSV/XLSX files to the repo root and leave this folder layout
as your working/prep area.

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
