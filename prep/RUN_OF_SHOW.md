# Run-of-Show — Using AI to Analyze and Strengthen Your Business

**Length target:** ~40 minutes total (~15 min slides, ~15–18 min demo, ~5 min Q&A)

**Presenter:** Dr. Logan Kelly · UW–River Falls
**Hosted by:** Universities of Wisconsin Office of Business & Entrepreneurship

---

## Timing Block

| Block | Slide(s) | Time | Cumulative |
|-------|----------|------|------------|
| Open + intro | Title | 1 min | 1 |
| Today's Plan | Today's Plan | 30 sec | 1:30 |
| C.O.R.E. framework | C.O.R.E. Framework | 2 min | 3:30 |
| C + O slide | C + O | 2 min | 5:30 |
| R + E slide | R + E | 2 min | 7:30 |
| Three AI Risks | Three AI Risks | 1:30 | 9 |
| Section: Live Demo | (section header) | 30 sec | 9:30 |
| Demo 1 — Invoices | Demo 1 slide + prompts.md | 8 min | 17:30 |
| Demo 2 — Cash Flow | Demo 2 slide + prompts.md | 7 min | 24:30 |
| Section: Your Move | (section header) | 30 sec | 25 |
| 3 Things to Try | 3 Things to Try | 1:30 | 26:30 |
| Resources & Contact | Resources & Contact | 1 min | 27:30 |
| Q&A | Q&A | 5–10 min | 32:30–37:30 |

> **Buffer rule:** If you're at minute 25 and haven't started Demo 2, skip Demo 2's follow-up prompt. If you're at minute 30 and haven't started "Your Move," go straight to Resources & Contact and Q&A.

---

## Slide-by-Slide Notes

### Title (1 min)
- Welcome attendees. Mention this is hosted by the UW Office of Business
  & Entrepreneurship for the Capital Readiness Program.
- One-sentence framing: *"Today is mostly demo — I want you to leave knowing
  one prompt pattern you can use Monday morning."*

### Today's Plan (30 sec)
- Set expectations: short on theory, heavy on demo, three concrete action items.

### The C.O.R.E. Framework (2 min)
- This is the central slide. Read each row. Don't rush.
- Hook: *"Right now, only 1% of companies are considered AI 'mature' (McKinsey 2025).
  Most people are still asking AI in one-liners. C.O.R.E. is how you ask better."*

### C + O — Context and Objective (2 min)
- Context = ground truth. "Upload your real files, not just describe them."
- Objective = D.A.T.A. — point at the mini-table. Briefly read the four letters.
- Bridge: *"That's the input side. Now Reasoning and Evaluation are how you
  keep the AI honest on the output side."*

### R + E — Reasoning and Evaluation (2 min)
- Reasoning: "Think step-by-step" is a magic phrase — it forces chain-of-thought
  and reduces hallucinations.
- Evaluation: "Critique your own analysis" is the second magic phrase.
- Read the Deloitte cautionary note out loud — it sticks.

### Three AI Risks to Know (1:30)
- Don't dwell. Three rows, ~25 sec each.
- Land the message: *"The fix for all three is the same — human-in-the-loop
  verification, which is exactly what the E in C.O.R.E. enforces."*

### Section: Live Demo (30 sec)
- *"Now the fun part. We're going to do C.O.R.E. twice — once on invoice
  data, once on a financial model. Same prompt pattern, very different data."*
- Switch tabs to your AI client (ChatGPT or Claude). Have `prompts.md` open.

### Demo 1 — Invoice Collections Analysis (8 min)
1. **(30 sec)** Show the data: open `invoices_sample_50k.csv` in your viewer
   so attendees see what's in it. ~50K invoices, multiple industries.
2. **(30 sec)** Upload `invoices_sample_50k.csv` + `Data_Dictionary.csv` to ChatGPT/Claude.
3. **(30 sec)** Paste the combined C.O.R.E. prompt. **Read the four XML tags aloud
   as you scroll — that's the lesson.**
4. **(4 min)** Submit. Narrate output as it comes back: "Notice it's confirming
   field names — that's the Reasoning step. Watch for the critique at the end."
5. **(1 min)** When it's done: point out one thing it did well, one thing you'd
   push back on. Especially scrutinize the Evaluation section.
6. **(1:30 min, OPTIONAL)** If time, run the follow-up prompt for payment-type
   breakdown. **If you're behind on time, skip this — the combined prompt is the lesson.**

### Demo 2 — Cash Flow Forecasting (7 min)
1. **(30 sec)** *"Different data, same prompt shape — that's the takeaway."*
   Open `Ventura Financial Projections Template Jan 2022 v3.xlsx` briefly.
2. **(30 sec)** Upload it. Paste the combined C.O.R.E. prompt.
3. **(4 min)** Submit. Narrate as it works through the four steps.
4. **(1 min)** Run the 20%-revenue-drop follow-up (this one stays — scenario
   analysis is the wow moment).
5. **(1 min)** Wrap: *"You just saw C.O.R.E. produce a forecast and a sensitivity
   analysis from a spreadsheet. That's the entire lesson."*

### Section: Your Move (30 sec)
- Pivot energy. *"Three things you can do this week."*

### Three Things to Try This Week (1:30)
- Read each one out loud. Mention they're in the handout.
- Optional anecdote: "I anonymized a real consulting file last week using
  this exact process — took 20 minutes start to finish."

### Resources & Contact (1 min)
- Point to GitHub repo. Mention the handout PDF includes references and
  "level up your toolkit" guidance.
- Read contact info briefly.

### Q&A (5–10 min)
- Use the **optional-extensions** prompts from `demo/optional-extensions/`
  if someone asks "how do I dig deeper after the first response?" — those
  are real follow-up prompts you can run live.

---

## Things to Have Open On Your Screen

| Tab / Window | What For |
|--------------|---------|
| Slide deck (full-screen, presenter view) | Main presentation |
| AI client (ChatGPT or Claude) | Demo |
| `demo/prompts.md` | Copy-paste source |
| `demo/invoices_sample_50k.csv` (in viewer) | Quick "look at the data" moment |
| `demo/Ventura ... .xlsx` (in viewer) | Same, for Demo 2 |
| File explorer at `demo/` | Easy drag-drop uploads |

---

## Recovery Plays (when things go sideways)

- **AI gives a weak response** → "That's actually a teaching moment. Watch
  what happens when I tighten the prompt." Re-prompt with more specificity.
- **Upload fails / file too large** → Have `invoices_sample_50k_cleaned.xlsx`
  as a smaller backup. Or show the reference outputs in
  `demo/reference-outputs/` and narrate as if it just ran.
- **Behind on time at minute 20** → Cut Demo 1's follow-up.
- **Behind at minute 25** → Skip Demo 2's follow-up too.
- **Behind at minute 30** → Skip "Your Move" section header, jump to 3 Things.
- **Audience is quiet at Q&A** → Have one seed question ready:
  *"A lot of folks ask: do I need to pay for the AI tools? Here's what I'd say…"*

---

## Pre-Demo Sanity Check (do this 5 min before going live)

- [ ] Run Demo 1's first prompt once **in your account** to confirm files upload and AI responds
- [ ] Confirm internet is solid (the upload + response can be ~30 sec each)
- [ ] Mute notifications (Slack, email, system)
- [ ] Audio test: speaker volume up but mic input checked

See [`PREP_CHECKLIST.md`](PREP_CHECKLIST.md) for the full pre-webinar checklist.
