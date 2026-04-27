# Prompt

You are a story architect. You have access to:

1. **LORE DOCUMENT** — The file `src/lore.md` in the project root (the
   canonical, final-version worldbuilding bible)
2. **SOFT-VERSION CHAPTER FILES** — Located in `src/` as `chapter_1.md` through
   `chapter_21.md` (generated against an earlier, less detailed version of the
   lore)

## Instructions

First, read `src/lore.md` in full. Then read every file in `src/` matching the
pattern `chapter_*.md`, in numerical order.

For each chapter, extract the summary/outline content and produce an **adjusted
chapter summary** that is fully consistent with the lore document.

Write all output to a single file: `adjusted_summaries.md`

---

## Process

For each chapter (1–21):

### A. Reproduce the original beat structure

Keep the scene sequence, POV assignments, and emotional arc intact unless a lore
conflict forces a change.

### B. Run a five-point conflict check

For every chapter, evaluate these five axes against the new lore and flag any
mismatches:

1. **Leverage awareness** — Do the characters behave consistently with the
   specific blackmail they're under? (Isabelle: VESPER's debut held hostage.
   Caspar: Alpenhof staff's livelihoods.) Any moment of hesitation, compliance,
   or rebellion must trace back to the correct leverage.

2. **Exile residue** — Does the chapter reflect the psychological and physical
   consequences of 2.5 years of isolation? Check for:
   - Isabelle: trainee discipline, body hyperawareness, deference reflexes from
     the Shin Ent system
   - Caspar: information-scarcity behaviors, compulsive observation habits
     shaped by 15 min/day internet and studying a 240p video

3. **Reunion calibration** — Is the emotional temperature between Caspar and
   Isabelle appropriate for two people who were forcibly separated for 2.5
   years, know their proximity is engineered by the same parents who punished
   them, and carry unresolved weight from the terrace kiss?

4. **Setting fidelity** — Do locations, technology (2018: LINE, early Instagram,
   no TikTok), school mechanics (no-chime policy, curriculum tracks), and living
   conditions (modest 2LDK apartments, small kitchens, Aunties) match the lore?

5. **Supporting cast consistency** — Do The Table members (Yuki, Sora, Hina,
   Kenji, Ren, Daiki) behave consistently with their described roles? Are
   subplots (Kenji/Sora, Yuki's forensic observation, Daiki's data tendencies)
   properly threaded?

### C. Output format

For each chapter, write the following to `adjusted_summaries.md`:

```markdown
## Ch [N]: [Title if one exists]

**POV:** [whose perspective, or if alternating, the sequence]

**Summary:** [The adjusted summary — 150-300 words. Preserve the original's
structure but revise any details that conflict with the new lore. Write in
present tense.]

**Lore adjustments:** [Bullet list of specific changes made and which
conflict-check axis triggered them. If no changes were needed, write "None —
original beats are lore-consistent."]

**Flags for drafting:** [Anything the chapter author should pay special
attention to when writing the full prose. Sensory opportunities, Korean dialogue
moments, artifact appearances, emotional landmines. 2-4 bullets max.]

---
```

## Rules

- Do NOT invent new plot events. You are adjusting, not rewriting.
- If a soft-version beat is vague where the new lore is specific, sharpen it.
  Don't leave ambiguity the lore resolves.
- If a soft-version beat directly contradicts the new lore, flag it clearly in
  **Lore adjustments** and propose the minimum viable revision that preserves
  the original intent.
- Maintain the established tone: literary YA, emotional restraint, sensory
  density.
- Korean dialogue references should note where they'd naturally occur
  (private/intimate moments only, per lore).
- The Aunties' loyalty/role should remain consistent with however the soft
  version treated them, unless you identify a direct lore conflict. If their
  role is ambiguous, flag it rather than deciding.
- If any `chapter_*.md` file is missing or unreadable, note the gap in the
  output and continue with the next file.

## Output

Write everything to `adjusted_summaries.md` in the project root. Do not modify
any source files.

Make sure `src/lore.md` is in the project root alongside `src/`. If your lore
file has a different name, just swap it in the first line. The output lands in
one clean file you can bring back here or hand-edit before we start drafting.
