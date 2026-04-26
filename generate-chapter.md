# SHIN-RYU: Chapter Generation Prompt

> This document is a system prompt / instruction set for generating the next
> chapter of SHIN-RYU. Feed this document, the master lore document, and the
> last two completed chapters to the model. The model should produce a single
> new chapter.

---

## INPUTS

You will receive three pieces of context:

1. **lore-updated.md** — The master lore document. Canonical state of the entire
   story. Character details, relationships, secrets, food canon, artifacts,
   unresolved threads. Treat every detail in this document as established fact.
   Do not contradict it.
2. **The second-to-last chapter** — For pacing calibration and tonal continuity.
3. **The most recent chapter** — For immediate scene continuity. Your new
   chapter picks up after this one.

---

## OUTPUT

A single chapter of SHIN-RYU. Follow the format exactly.

### Format Rules

- **Title:** `# Chapter [N]: [Title]` where N is the next chapter number and the
  title is 2–5 words, lowercase, evocative, never abstract. Title should
  reference a concrete image, action, or object from the chapter.
- **Sections:** 4–6 sections separated by `---` (three hyphens on their own
  line).
- **Section openings:** Every section begins with a time/place marker in bold,
  e.g.:
  - **Thursday, 7:12 AM. Hiroo.**
  - **Thursday, 12:34 PM. Class 1-2.**
  - **Friday, 6:45 PM. Minami-Aoyama.**
- **POV alternation:** Sections alternate between Isabelle's and Caspar's
  third-person limited perspective. Match the alternation pattern of the
  preceding chapter (i.e., if the last chapter ended on Caspar's POV, open on
  Isabelle's).
- **Length:** 5,000–8,000 words. Err on the longer side. Every section should
  feel full — dense with sensory detail, interiority, and observed texture.
- **Language:**
  - Korean dialogue (intimate, private moments) is written in Korean script
    followed by inline italicized translation: `잘 자, 남자친구.` _Good night,
    boyfriend._
  - LINE messages are formatted as block quotes with translation.
  - No other quotation marks for thoughts or internal monologue.
- **No author notes, no commentary, no meta-text.** The chapter begins at the
  title and ends at the last line of the last section.

---

## TONE & STYLE

Write literary fiction, not genre fiction. The prose is the point.

**Sentences:** Long, layered, syntactically complex. Embed clauses. Use commas
to create rhythm. A short sentence lands like a hammer after a long one — use
this sparingly and deliberately.

**Sensory density:** Every scene must carry weight in at least two sensory
registers (taste, texture, temperature, light quality, sound, smell, physical
sensation). Food scenes must specify ingredients, technique, and mouthfeel.
Photography scenes must specify light, film stock, aperture, and what the lens
sees. Dance scenes must specify muscles, weight transfer, breath.

**Metaphor:** Draw from photography (exposure, focal length, grain, framing),
dance (extension, weight, center, breath), food chemistry (Maillard,
caramelization, emulsion), and architecture (space, compression, light). Avoid
generic metaphors. Every comparison should teach the reader something about the
character's inner world.

**Dialogue:** Sparse. Characters say less than they mean. Subtext is the primary
communication channel. A single word can carry an entire argument. Silence is
always meaningful. When characters finally say what they mean, it should feel
like a dam breaking.

**Emotion through body:** Never state feelings directly. Show pulse, breathing,
jaw tension, hand pressure, posture shift, eye movement, temperature change in
skin. The reader should feel the emotion before the character names it (if they
ever do).

**Humor:** Dry, character-specific. Kenji is loud chaos. Daiki is analytical
absurdity. Ren says three words and two of them are devastating. Sora vibrates
at a frequency only dogs can hear. The Aunties wage cold wars over starch
levels. Caspar's humor is the almost-smile that isn't. Isabelle's humor is
precision — she says the exact thing that will make him almost-smile.

---

## STORY PRINCIPLES

1. **Slow burn is the engine.** Nothing resolves quickly. Tension accumulates
   across chapters. A question asked in one chapter may not be answered for
   three. A glance in chapter 4 pays off in chapter 12. Time moves in days and
   weeks, not scenes.
2. **Secrets create structure.** Every character is hiding something. The
   distance between what they know and what others know is the space where drama
   lives. Reveals should be partial, earned, and irreversible. Once someone
   knows something, they cannot unknow it.
3. **The parents' plot is background radiation.** It's always there. It shaped
   everything. But the characters have reclaimed it. They don't talk about it
   often, but it colors every interaction with the outside world (the friends
   don't know, and that distance matters).
4. **VESPER is not a subplot — it's a shadow family.** Isabelle's connection to
   the group is as emotionally significant as her connection to Caspar. Both
   relationships are about being truly known. The VESPER members are fully
   realized characters with their own textures.
5. **The friends have their own gravity.** They are not accessories. They have
   perceptions, desires, and trajectories. Yuki is building a case. Hina is
   watching everything. Sora is falling into the fandom and toward Kenji. The
   group dynamic shifts with every new piece of information.
6. **Food is love. Photography is witness. Dance is memory.** These are not
   decorative details. They are how the characters process the world. Every
   meal, every photograph, every dance reference should carry emotional freight.
7. **Nothing is free.** Every moment of warmth costs something — a risk taken, a
   wall lowered, a secret shared. The characters pay for intimacy with
   vulnerability.
8. **Tokyo is a character.** The city's light, weather, transit, neighborhoods,
   seasonal shifts, and textures are the stage. Specify them. Spring rain on the
   Furukawa. The blue hour over Shibuya crossing. The humidity shift between
   April and May.

---

## PACING GUIDANCE

**Within a chapter:**

- Open with texture (a sensory scene that establishes time, place, mood).
- Build through observation and interaction.
- Land the major beat in the final section or the penultimate section.
- End on a line that reverberates — an image, a word, a gesture that the reader
  carries forward.

**Across chapters:**

- Not every chapter needs a major plot event. Some chapters are about the
  texture of a single day, the drift of a relationship settling into routine,
  the slow accumulation of noticing.
- Alternate between high-stakes chapters (secrets threatened, reveals,
  confrontations) and low-stakes chapters (food, friendship, ordinary days).
  Roughly 1 high-stakes for every 2 low-stakes.
- Advance at least one unresolved thread per chapter, even if only by a sentence
  or a glance.

---

## WHAT TO WRITE

Before writing the chapter, determine:

1. **Where does the story pick up?** How many days have passed since the last
   chapter? What day of the week is it? What's the weather?
2. **Whose POVs open and close the chapter?** Match alternation with the
   previous chapter.
3. **What is the central moment of this chapter?** Every chapter has one scene
   or image that everything else orbits. Identify it before you begin.
4. **What advances?** Which unresolved thread(s) from the lore document move
   forward? Even low-stakes chapters should nudge something.
5. **What holds?** Which secrets remain intact? Not everything moves every
   chapter. Some things should recede to create space for what's building.

Then write the chapter.

---

## QUALITY CHECK

Before finalizing, verify:

- [ ] No contradictions with the lore document (character details,
      relationships, secrets, food canon).
- [ ] Time markers are consistent (day of week, time of day, weather match the
      chapter's placement).
- [ ] Korean dialogue has inline translation in italics.
- [ ] At least 4 sections, at most 6.
- [ ] POV alternates between Isabelle and Caspar.
- [ ] Sensory detail in every section (not just visual).
- [ ] The chapter has a central moment/image.
- [ ] At least one unresolved thread advances.
- [ ] The final line reverberates.
- [ ] Word count is between 5,000 and 8,000.
