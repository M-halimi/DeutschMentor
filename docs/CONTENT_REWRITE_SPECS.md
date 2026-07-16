# Content Rewrite — Detailed Specifications

**Date:** July 2026
**Prerequisite:** Migration 00028 applied, module dedup complete (36 modules, 237 lessons)

---

## Phase 1: Exercise & Test Quality (P0 — 2-3 days)

### Problem
Template-generated exercises/tests were largely removed by migration 00028, but some cross-level duplicates remain and content needs CEFR verification.

### Current State
| Metric | Value |
|--------|-------|
| Total exercises | 1,148 |
| Unique exercises | 1,126 (98.1%) |
| Total test questions | 1,377 |
| Unique test questions | 1,336 (97.0%) |
| Cross-level exercises | 1 question ("Welcher Satz ist korrekt?" ×8) |
| Cross-level test questions | 8 questions (appearing at 2-3 levels each) |

### Step 1.1: Replace Cross-Level Exercise Duplicates

**"Welcher Satz ist korrekt?"** (multiple_choice, appears ×8 in A2/B1/B2)

Replace with level-specific versions:
- **A2 ×3**: Replace with A2-appropriate grammar checks (Perfect tense, modal verbs, prepositions)
  - `Welcher Satz ist im Perfekt korrekt?` → options: "Ich habe gegessen" / "Ich bin gegessen" / "Ich hat gegessen"
  - `Welcher Satz verwendet das Modalverb richtig?` → options focusing on müssen/können/dürfen
  - `Welche Präposition ist korrekt?` → in/auf/unter/über with dative/accusative
- **B1 ×3**: Replace with B1 grammar (Konjunktiv II, passive, relative clauses)
  - `Welcher Satz verwendet den Konjunktiv II korrekt?`
  - `Welcher Satz ist im Passiv korrekt formuliert?`
  - `Welcher Relativsatz ist richtig?`
- **B2 ×2**: Replace with B2 grammar (nominal style, Nomen-Verb-Verbindungen)
  - `Welche Nominalisierung ist korrekt?`
  - `Welche Nomen-Verb-Verbindung ist korrekt?`

### Step 1.2: Fix Cross-Level Test Questions

8 test questions appear at multiple levels. Fix each:

| Question | Currently At | Action |
|----------|-------------|--------|
| "Welcher Satz ist korrekt?" | A2, B1, B2 | Replace with level-specific variants (same logic as 1.1) |
| "Konjunktiv I wird für die indirekte Rede verwendet." | B2, C1 | Keep at B2 only. Replace C1 with "Konjunktiv I in der wissenschaftlichen Redewiedergabe" |
| "Was bedeutet 'der Kompromiss'?" | B1, C1 | Keep at B1 only (B1-level word). Replace C1 with a C1-specific vocabulary question |
| "Was bedeutet 'der Schmerz'?" | A2, B1 | Keep at A2 only. Replace B1 with B1-specific medical term |
| "Was bedeutet 'die Inflation'?" | B2, C1 | Keep at B2 only. Replace C1 with "Was bedeutet 'die Hyperinflation'?" |
| "Was ist der Komparativ von 'gut'?" | A2, B2 | Keep at A2 only. Replace B2 with "Was ist der Superlativ von..." or more complex comparison |
| "'Hatte' ist das Präteritum von 'haben'." | A2, B1 | Keep at A2 only. Replace B1 with Präteritum of modal verbs |
| "Welches Modalverb drückt ein Verbot aus?" | A2, C1 | Keep at A2 only (basic meaning). Replace C1 with "Modalverben zur subjektiven Bedeutung" |

### Step 1.3: Verify A1 Exercise Content

Check that ALL A1 exercises use only A1-level vocabulary and grammar.
- 95 multiple_choice, 57 fill_gap, 20 translation, 11 true_false, 3 matching, 2 sentence_order
- **Verify**: No exercise references B1+ grammar topics (passive, Konjunktiv II, Nebensätze with "obwohl")
- **Verify**: No vocabulary from B1+ appears in A1 exercises
- **Fix**: Replace any out-of-level content found

### Step 1.4: Verify C2 Exercise Content

C2 has unique types (36 essay, 23 analysis) — these are good.
- **Verify**: 36 translation exercises exist — ensure these are C2-level (journalistic/literary translation, not basic)
- **Verify**: multiple_choice (80) and fill_gap (37) are C2-level, not A1 templates
- **Fix**: Replace any generic content with C2-specific (academic, literary, legal, philosophical)

### SQL Operations for Phase 1

```sql
-- 1.1: Delete old cross-level exercise
DELETE FROM public.lesson_exercises WHERE question = 'Welcher Satz ist korrekt?' AND lesson_id IN (
  SELECT l.id FROM public.course_lessons l JOIN public.course_modules m ON l.module_id = m.id WHERE m.level_id IN ('A2','B1','B2')
);
-- Then INSERT new level-specific exercises (done via application code or manual SQL)
```

---

## Phase 2: Expand Skill Coverage (P1 — 5-7 days)

### Current State

| Level | Reading | Writing | Listening | Speaking | Total Skill | Total Lessons | Skill % |
|-------|---------|---------|-----------|----------|-------------|---------------|---------|
| A1 | 6 | 6 | 6 | 6 | **24** | 57 | 42% |
| A2 | 2 | 1 | 2 | 1 | **6** | 36 | 17% |
| B1 | 1 | 2 | 2 | 1 | **6** | 36 | 17% |
| B2 | 3 | 0 | 2 | 1 | **6** | 36 | 17% |
| C1 | 2 | 2 | 1 | 1 | **6** | 36 | 17% |
| C2 | 2 | 2 | 0 | 2 | **6** | 36 | 17% |
| **Total** | **16** | **13** | **13** | **12** | **54** | **237** | **23%** |

### Target State (per module: 2 vocab + 1 grammar + 1 reading + 1 writing + 1 listening/speaking + 1 test + 1 review = 8 lessons)

| Level | Per Module | Modules | Target Vocab | Target Grammar | Target Reading | Target Writing | Target Listening | Target Speaking | Target Test | Target Review | Target Total |
|-------|-----------|---------|-------------|----------------|---------------|----------------|------------------|----------------|-------------|---------------|-------------|
| A1 | +1W,+1L | 6 | 12 | 6 | 6 | 6+6=12 | 6+6=12 | 6 | 6 | 6 | **60** |
| A2 | +2V,+1G,+2R,+2W,+1L,+1S | 6 | 12+12=24 | 6+6=12 | 2+12=14 | 1+12=13 | 2+6=8 | 1+6=7 | 6 | 6 | **84** |
| B1 | +1V,+1G,+2R,+1W,+2L,+1S | 6 | 12+6=18 | 6+6=12 | 1+12=13 | 2+6=8 | 2+12=14 | 1+6=7 | 6 | 6 | **78** |
| B2 | +1V,+1G,+2R,+2W,+1L,+2S | 6 | 12+6=18 | 6+6=12 | 3+12=15 | 0+12=12 | 2+6=8 | 1+12=13 | 6 | 6 | **84** |
| C1 | +1V,+1G,+1R,+1W,+2L,+2S | 6 | 12+6=18 | 6+6=12 | 2+6=8 | 2+6=8 | 1+12=13 | 1+12=13 | 6 | 6 | **78** |
| C2 | +1V,+1G,+1R,+1W,+1S | 6 | 12+6=18 | 6+6=12 | 2+6=8 | 2+6=8 | 0+6=6 | 2+6=8 | 6 | 6 | **72** |
| **Add** | | **36** | **+66** | **+36** | **+60** | **+60** | **+48** | **+48** | **0** | **0** | **+318** |

But adding 318 more lessons is disproportionate. A more practical target:

### Realistic Target (Phase 2 scope)

Add minimum 2 skill lessons per module (1 reading OR writing + 1 listening OR speaking) to A2-C2:

| Level | New Reading | New Writing | New Listening | New Speaking | Total New |
|-------|------------|-------------|---------------|--------------|-----------|
| A2 | +2 | +2 | +2 | +1 | **+7** |
| B1 | +2 | +1 | +2 | +1 | **+6** |
| B2 | +1 | +2 | +1 | +2 | **+6** |
| C1 | +1 | +1 | +2 | +1 | **+5** |
| C2 | +1 | +1 | +1 | +1 | **+4** |
| **Total** | **+7** | **+7** | **+8** | **+6** | **+28** |

Final: 237 + 28 = **265 lessons**, skill % rises from 23% → 30%.

### Step 2.1: Module-by-Module Additions

#### A2 (add 7 skill lessons)
| Module | Add |
|--------|-----|
| M1: Essen und Trinken | +1 writing (Rezept beschreiben) |
| M2: Kleidung und Mode | +1 listening (Einkaufsgespräch) |
| M3: Körper und Gesundheit | +1 reading (Arztbrief), +1 writing (Termin vereinbaren) |
| M4: Stadt und Verkehr | +1 speaking (nach dem Weg fragen) |
| M5: Wetter und Jahreszeiten | +1 listening (Wetterbericht) |
| M6: Feste und Feiertage | +1 reading (Einladungskarte) |

#### B1 (add 6 skill lessons)
| Module | Add |
|--------|-----|
| M1: Alltag und Gesellschaft | +1 listening (Nachrichten), +1 reading (Zeitungsartikel) |
| M2: Arbeit und Karriere | +1 listening (Bewerbungsgespräch) |
| M3: Medien und Technologie | +1 reading (Blogkommentar) |
| M4: Umwelt und Natur | — |
| M5: Gesundheit und Ernährung | +1 speaking (Arzt-Patient-Gespräch) |
| M6: Beziehungen und Kommunikation | +1 reading (persönlicher Brief) |

#### B2 (add 6 skill lessons)
| Module | Add |
|--------|-----|
| M1: Berufliche Kommunikation | +1 writing (Geschäftsbrief) |
| M2: Diskussion und Argumentation | +1 speaking (Debatte führen) |
| M3: Präsentationen und Vorträge | +1 writing (Zusammenfassung) |
| M4: Fachsprache und Terminologie | — |
| M5: Kultur und Gesellschaft | +1 listening (Kulturbericht) |
| M6: Wirtschaft und Politik | +1 speaking (politische Diskussion), +1 listening (Wirtschaftsnachrichten) |

#### C1 (add 5 skill lessons)
| Module | Add |
|--------|-----|
| M1: Akademische Sprache | — |
| M2: Wissenschaft und Forschung | +1 listening (Forschungsvortrag) |
| M3: Medienanalyse | +1 listening (Nachrichtenanalyse), +1 speaking (Diskussion) |
| M4: Politische Diskurse | +1 reading (politische Analyse) |
| M5: Wirtschaftsdeutsch | — |
| M6: Literatur und Kunst | +1 reading (literarischer Essay) |

#### C2 (add 4 skill lessons)
| Module | Add |
|--------|-----|
| M1: Linguistik und Stilistik | +1 listening (linguistischer Vortrag) |
| M2: Wissenschaftliche Publikationen | +1 speaking (Konferenzpräsentation) |
| M3: Rechtssprache | — |
| M4: Diplomatie und Verhandlung | — |
| M5: Philosophie und Ethik | +1 reading (philosophischer Text) |
| M6: Rhetorik und Präsentation | +1 writing (rhetorische Analyse) |

### Step 2.2: Content Types for New Lessons

Each new skill lesson should include:
- **Reading**: 300-800 word authentic text + 5 comprehension questions + 3 vocabulary tasks
- **Writing**: Task prompt + model structure + checklist + grading rubric
- **Listening**: Audio URL (from existing audio_lessons or new) + 5 comprehension questions
- **Speaking**: Role-play scenario + key phrases + evaluation criteria

### SQL Pattern for Adding Lessons

```sql
-- Add a lesson to a module
INSERT INTO public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
VALUES (
  gen_random_uuid(),
  (SELECT id FROM public.course_modules WHERE level_id = 'A2' AND title = 'Essen und Trinken'),
  'Rezept beschreiben',
  'Write a recipe in German using Perfekt tense',
  'Writing a recipe',
  '["Use Perfekt tense for cooking actions", "Describe ingredients and quantities", "Structure a simple recipe"]'::jsonb,
  30,
  3,  -- insert at correct position
  true
);
```

---

## Phase 3: Consolidate A1 (P2 — 1 day)

### Problem
A1 has 57 lessons (other levels: 36). Module 2 has 12 lessons, others have 9. This is disproportionate for self-study; users may feel stuck in A1 forever.

### Current A1 Structure

| Module | Lessons | Problem |
|--------|---------|---------|
| M1: Hallo! Erste Schritte | 9 | OK |
| M2: Familie und Alltag | **12** | Bloated — 5 vocab lessons for same topic |
| M3: Wohnen | 9 | OK |
| M4: Einkaufen und Essen | 9 | OK |
| M5: Arbeit und Beruf | 9 | OK |
| M6: Reisen und Freizeit | 9 | OK |

### Step 3.1: Merge A1 M2 Redundant Lessons

Current M2 lessons:
1. Die Familie [vocabulary]
2. Mein Tagesablauf [vocabulary]
3. Die Uhrzeit [vocabulary]
4. Meine Familie [vocabulary] ← duplicates L1
5. Meine Familie vorstellen [vocabulary] ← duplicates L1/L4
6. Test: Familie und Alltag [test]
7. Possessivartikel und sein/haben [grammar]
8. Meine Familie [reading]
9. Familienfragen [listening]
10. Über Familie sprechen [speaking]
11. Meine Familie beschreiben [writing]
12. Modul 2 Wiederholung [review]

**Merge L4 "Meine Familie"** into L1 "Die Familie" → Keep L1 only
**Merge L5 "Meine Familie vorstellen"** into L10 "Über Familie sprechen" → Keep L10 only

After: 12 → **10 lessons** (remove L4, L5)

### Step 3.2: Add Lesson Type Redistribution

Currently A1 has 6 modules × (1 vocab + 1 grammar + 1 test + 1 review + 1 reading + 1 writing + 1 listening + 1 speaking) + 2 extra vocab in M2 = 57.

After Phase 2, A1 would need additional skill lessons as well (target: 60). But given A1 is already heavy, keep at 55 after consolidating M2.

| Step | Change | Lesson Delta |
|------|--------|-------------|
| Current | — | 57 |
| 3.1: Merge M2 L4+L5 | -2 | 55 |
| After consolidation | | **55** |

### SQL Operations for Phase 3

```sql
-- Move unique content from L4 into L1 (vocabulary entries)
UPDATE public.lesson_vocabulary SET lesson_id = 'L1_UUID' WHERE lesson_id = 'L4_UUID';

-- Delete empty lesson L4 and L5
DELETE FROM public.course_lessons WHERE id IN ('L4_UUID', 'L5_UUID');

-- Renumber order_index in M2
UPDATE public.course_lessons SET order_index = order_index - 1
WHERE module_id = 'M2_UUID' AND order_index > 4;
UPDATE public.course_lessons SET order_index = order_index - 1
WHERE module_id = 'M2_UUID' AND order_index > 4;
```

---

## Phase 4: Premium Content Mapping (P3 — 2 days)

### Current State

All 237 lessons have premium content (expressions, flashcards, conversations, ai_challenges, homework, reviews). This is **100% coverage** — excellent.

| Table | Rows | Coverage |
|-------|------|----------|
| lesson_expressions | 237 | 100% of lessons |
| lesson_flashcards | 237 | 100% |
| lesson_conversations | 237 | 100% |
| lesson_ai_challenges | 237 | 100% |
| lesson_homework | 237 | 100% |
| lesson_reviews | 237 | 100% |
| lesson_speaking | 474 | 200% (2 per lesson avg) |
| lesson_writing | 237 | 100% |
| lesson_listening | 322 | 136% (multi-audio per lesson) |
| lesson_reading | 322 | 136% (multi-article per lesson) |

### What to Verify

Since 100% coverage exists, Phase 4 is about **quality verification**:

### Step 4.1: Verify lesson_expressions Content

Check that expressions are level-appropriate:
- **A1**: Should have basic greetings, introductions, simple phrases
- **A2**: Should have restaurant phrases, shopping, directions
- **B1**: Should have work expressions, media phrases, opinion expressions
- **B2**: Should have professional idioms, formal expressions
- **C1**: Should have academic expressions, nuanced phrases
- **C2**: Should have literary expressions, complex idioms

### Step 4.2: Verify lesson_flashcards Quality

Check that each lesson has at least 5-10 flashcards that match the lesson's vocabulary topic.

### Step 4.3: Verify lesson_conversations Quality

Conversations should be level-appropriate dialogues:
- **A1**: 2-4 exchanges, basic vocab
- **A2**: 4-6 exchanges, everyday situations
- **B1**: 6-10 exchanges, opinions and explanations
- **B2**: 8-15 exchanges, arguments and negotiations
- **C1**: 10-20 exchanges, nuanced discussions
- **C2**: 15-25 exchanges, complex debates

### Step 4.4: Verify lesson_ai_challenges

AI challenges should reference the lesson topic and be solvable at the lesson's CEFR level.

### SQL / App Operations for Phase 4

No structural changes needed. This phase is manual content review using the dashboard or SQL queries to list content per table.

```sql
-- Sample: Check expression quality for A1
SELECT e.german, e.english, l.title as lesson, m.title as module
FROM public.lesson_expressions e
JOIN public.course_lessons l ON e.lesson_id = l.id
JOIN public.course_modules m ON l.module_id = m.id
WHERE m.level_id = 'A1'
LIMIT 20;

-- Check conversation length per level
SELECT m.level_id, avg(jsonb_array_length(c.dialog)) as avg_dialog_length
FROM public.lesson_conversations c
JOIN public.course_lessons l ON c.lesson_id = l.id
JOIN public.course_modules m ON l.module_id = m.id
GROUP BY m.level_id
ORDER BY m.level_id;
```

---

## Execution Order

```
Phase 1 (Exercise/Test)  ────────> 2-3 days  ────> P0
       │
       v
Phase 2 (Skill Expansion)  ─────> 5-7 days  ────> P1
       │
       v
Phase 3 (A1 Consolidation)  ────> 1 day     ────> P2
       │
       v
Phase 4 (Premium Verify)  ───────> 2 days    ────> P3
```

**Total: 10-13 days**

Phases can overlap: Phase 4 could run in parallel with Phase 2 if different team members work on premium content while skill lessons are being created.
