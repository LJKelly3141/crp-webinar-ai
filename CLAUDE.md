# CLAUDE.md — Webinar Folder

Guidance for AI/Claude sessions working in this folder. Belongs to the
SBAIC (Small Business AI Clinic) webinar series.

## Purpose

This folder is **reproducible prep + delivery materials** for the
"Using AI to Analyze and Strengthen Your Business" webinar, first delivered
April 14, 2026 for the Capital Readiness Program. It is designed to be:

1. **Re-runnable** — the same webinar can be delivered again from these
   materials with minimal prep.
2. **A reusable template** — future SBAIC webinars on different topics can
   copy this structure (slides + handout + demo + prep docs).
3. **An archive** — the original April 2026 delivery is preserved cleanly.

## Folder Map

| Path | What lives here |
|------|----------------|
| `slides/` | Quarto RevealJS source (`webinar.qmd`), rendered HTML, theme SCSS |
| `handout/` | Audience-facing notes handout — Quarto → PDF |
| `demo/` | Canonical live demo: condensed prompt script + data files + reference outputs |
| `demo/optional-extensions/` | Longer step-by-step demo prompts for 30+ min slots |
| `prep/` | Presenter run-of-show and pre-webinar checklist |
| `briefings/` | Background research that informed the talk |
| `data-pipeline/` | R script and source data used to generate the sample CSV |
| `archive/` | Earlier drafts preserved for history (e.g. `demo01/`) |

## Demo Length

The **canonical** demo (`demo/prompts.md`) runs ~15–18 minutes. It uses
**one combined C.O.R.E. prompt** per demo — Demo 1 (invoices) and Demo 2
(Ventura cash flow). The XML-tag prompt structure is the visible teaching
device.

The **April 2026 original delivery** ran longer because Demo 1 was four
separate C.O.R.E.-step prompts with follow-ups. That version is preserved
in `demo/optional-extensions/` and can be swapped in for longer slots or
workshop formats.

## Slide Deck Length

The slide portion is tuned to match the demo length (~15 min). It uses
combined C+O and R+E slides rather than four separate framework slides.
Total deck is ~13 slides including title, two section headers, and Q&A.

## When Editing These Materials

- **Slides** live in `slides/webinar.qmd`. Re-render with
  `cd slides && quarto render webinar.qmd`. The HTML embeds all resources
  via `embed-resources: true`.
- **Handout** lives in `handout/handout.qmd`. Re-render with
  `cd handout && quarto render handout.qmd`. Requires LaTeX/TinyTeX for the PDF.
- **Demo prompts** in `demo/prompts.md` (markdown) and `demo/demo-plan.txt`
  (plain text) should be kept in sync — they say the same thing in different formats.
- **Run-of-show and prep checklist** in `prep/` should be updated after each
  delivery if timing or breakage taught you something.

## GitHub Repo

The slide deck links to downloads at `github.com/LJKelly3141/crp-webinar-ai`.
That public repo has files at the root; this local layout uses subdirectories.
If you push this layout to that repo, update the raw URLs at the bottom of
`slides/webinar.qmd`. Otherwise keep that repo as the "ship to attendees"
flat layout and this folder as the working layout.

## Using This As a Template for a New Webinar

1. Copy this whole folder to a new name (e.g., `Webinar_Topic2/`).
2. Replace `demo/` data files and rewrite `demo/prompts.md` + `demo/demo-plan.txt`.
3. Edit `slides/webinar.qmd` — keep the C.O.R.E. structure if topic suits it;
   otherwise re-skeleton the slides while preserving the timing block.
4. Edit `handout/handout.qmd` to match the new topic.
5. Update `prep/RUN_OF_SHOW.md` timings and notes for the new content.
6. Refresh `briefings/` with research relevant to the new topic.
7. Update this CLAUDE.md and the README.

## Related Workflows in the Parent Folder

See `../../CLAUDE.md` (AI Clinic root) for the broader SBAIC context — MOU,
proposal, MODEL framework, presentations, operations.

## Files NOT to Modify Without Care

- `data-pipeline/sample_data.R` and `data-pipeline/invoices_with_acct_and_cases_sample.csv`
  — these reproduce the sample dataset. The big CSV is gitignored.
- `archive/demo01/` — historical, do not edit.
- `briefings/*.md` — these are source research; treat as read-only.
