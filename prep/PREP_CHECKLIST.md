# Pre-Webinar Prep Checklist

Work through this **the day of**, ideally finishing 15 minutes before the
scheduled start.

## 1. Render or refresh deliverables (day before)

- [ ] `cd slides && quarto render webinar.qmd` — confirms `webinar.html` is current
- [ ] `cd handout && quarto render handout.qmd` — confirms `handout.pdf` is current
- [ ] If files were edited, push to `github.com/LJKelly3141/crp-webinar-ai`
      so the resource links in the slides work for attendees

## 2. Files to have open on your computer

Open these before joining the webinar — switching apps live is risky.

- [ ] `slides/webinar.html` — open in browser, full-screen, presenter view ready
- [ ] AI client (ChatGPT or Claude) — logged in, signed-in, in a fresh chat
- [ ] `demo/prompts.md` — open in a text editor for easy copy-paste
- [ ] `demo/invoices_sample_50k.csv` — open in your viewer to show "what's in the data"
- [ ] `demo/Ventura Financial Projections Template Jan 2022 v3.xlsx` — same, for Demo 2
- [ ] File explorer window open at the `demo/` folder for drag-drop uploads
- [ ] `prep/RUN_OF_SHOW.md` — open on a second monitor or printed

## 3. AI client setup

- [ ] Signed in to your account (don't realize this 30 sec before going live)
- [ ] Pro/Plus subscription active (free tiers may rate-limit during demo)
- [ ] **One fresh chat** opened, ready to receive Demo 1's uploads
- [ ] Test the upload flow ONCE — upload `invoices_sample_50k.csv` and confirm
      it processes. Then delete and start a new chat for the live demo.

## 4. Dry-run the demo (5 min)

- [ ] Run Demo 1's combined C.O.R.E. prompt against your account end-to-end
- [ ] Confirm response includes a ranked table for the Objective
- [ ] Confirm response includes critique for the Evaluation step
- [ ] If output is weak: don't panic — that's a teaching moment in the talk
- [ ] **Start a fresh chat** before going live (don't reuse the dry-run chat)

## 5. Audio + video + screen share

- [ ] Audio: headset or quality external mic plugged in and selected as input
- [ ] Microphone level test — speak normally, watch the level meter
- [ ] Camera angle, lighting, framing checked
- [ ] Screen-share permissions confirmed in your meeting platform (Zoom etc.)
- [ ] System notifications **silenced** (Slack, email, calendar pop-ups)
- [ ] Do Not Disturb / Focus mode ON
- [ ] Browser tab clutter cleaned up — no embarrassing tab titles visible

## 6. Internet + power

- [ ] Wired ethernet preferred; if Wi-Fi, sit close to the router
- [ ] Laptop plugged in (don't get caught by a battery warning mid-demo)
- [ ] Phone hotspot ready as a backup, with hotspot mode tested

## 7. Backup plan if things break

- [ ] `demo/invoices_sample_50k_cleaned.xlsx` — smaller pre-cleaned version
      if the 50K row CSV chokes the AI upload
- [ ] `demo/reference-outputs/late_payment_by_industry_and_type.png` —
      can narrate this as if the AI just produced it, if the live run fails
- [ ] `demo/reference-outputs/seasonality_late_payments.png` — same, for
      a seasonality follow-up
- [ ] Mental script: *"The AI's tied up — let me show you what this looks
      like when it completes"* + show the PNG

## 8. Final 5 minutes before going live

- [ ] Bathroom break (seriously)
- [ ] Water within arm's reach
- [ ] Slide deck on slide 1, ready to advance
- [ ] AI client in a fresh chat
- [ ] `prompts.md` open, scrolled to Demo 1's combined prompt
- [ ] Deep breath. You've got this.

## 9. After the webinar

- [ ] Save attendee chat / Q&A transcript if your platform provides one
- [ ] Note any prompts that worked particularly well or fell flat — update
      `demo/prompts.md` for next time
- [ ] If new "wow" outputs were produced live, consider saving screenshots
      to `demo/reference-outputs/` for next session's backup plan
- [ ] If timing was off, update `prep/RUN_OF_SHOW.md` timing block
