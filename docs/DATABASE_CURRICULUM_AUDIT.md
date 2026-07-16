# Database Curriculum Audit — Full Database-Level Analysis

**Date:** July 2026
**Scope:** ALL seed files and migration files
**Focus:** Duplicate modules, empty modules, cross-level repetition, concrete SQL fixes

---

## EXECUTIVE SUMMARY

The database contains **TWO competing seed systems** that create overlapping content:

| Seed System | Files | Module IDs |
|---|---|---|
| **OLD system** | `seed_a1.sql` → `seed_c2.sql` | Variable UUIDs, 5-6 modules per level |
| **SUPPLEMENT system** | `seed_a1_supplement.sql`, `seed_a1_supplement2.sql` | Adds lessons to old modules |
| **NEW system (complete)** | `complete/seed_a1_complete.sql` → `complete/seed_c2_complete.sql` | New UUIDs, 6 modules per level, full content |

If ALL seeds run, the database will have **2x–3x the intended modules** with conflicTed content.

---

## PHASE 1: DUPLICATE & EMPTY MODULES

### Problem 1: A1 Has Three Different Module 2 Modules

| Source | Module ID | Title | Lessons |
|--------|-----------|-------|---------|
| OLD seed_a1.sql | `dd285317-a3c8-4fef-bdb3-b5c428f2a94a` | Familie und Alltag | 6 core lessons |
| SUPPLEMENT seed_a1_supplement.sql | `dd285317-a3c8-4fef-bdb3-b5c428f2a94a` | (same module, adds) | +5 supplement lessons |
| NEW complete seed | `00000000-0000-4000-a000-000039b4d35f` | Familie und Alltag | 6 complete lessons |

**Current:** Both old (11 lessons) and new (6 lessons) modules exist.
**Problem:** Duplicate modules with same name, different UUIDs, conflicting content.
**Action:** DELETE old modules + supplements. KEEP new complete modules.

### Problem 2: A1 Module 1 Exists in Two Systems

| Source | Module ID | Title | Notes |
|--------|-----------|-------|-------|
| Migration 00025 | `00000000-0000-0000-0000-000000000001` | Hallo! Erste Schritte | 3 core lessons + 9 supplements |
| NEW complete seed | `00000000-0000-4000-a000-000039b4d35e` | Hallo! Erste Schritte | 6 complete lessons |

**Current:** Old module has 12 lessons (3 core + 9 supplement). New module has 6 lessons.
**Problem:** UUIDs differ but same level, same order_index (1), same purpose.
**Action:** If new seed ran: old lessons added to old UUID + old UUID not linked to new structure. DELETE old module `00000000-0000-0000-0000-000000000001` and all its lessons. KEEP `00000000-0000-4000-a000-000039b4d35e`.

### Problem 3: A2-A5, B1-B2, C1-C2 All Have Dual Seeds

Every level has the same pattern:
- Old seed (5-6 modules with variable UUIDs)
- NEW complete seed (6 modules with new UUIDs)

**Action for ALL levels:** DELETE old seed modules. KEEP only new complete seed modules.

### Problem 4: Legacy Content Tables (Not Linked to Course System)

| Table | Source | Content | Duplicated In |
|-------|--------|---------|---------------|
| `audio_lessons` | 00004 (6 lessons) | Begrüßungen, Im Restaurant, etc. | A1 M1 (Begrüßungen), A2 (Restaurant) |
| `audio_lessons` | 00014 (listening seed) | Additional listening | Course_lessons listenings |
| `audio_lessons` | 00024 (6 integration lessons) | Bürgeramt, Jobsuche, Wohnungssuche etc. | B2 (Berufliche Komm.), C1 (Klima) |
| `articles` | 00004 (5 articles) | Mein Tagesablauf, Berlin, Digitalisierung etc. | A1 M2 (Tagesablauf), B1 (Digitalisierung) |
| `articles` | 00016 (reading seed) | Additional articles | Course_lessons readings |
| `expressions` | 00004 (10 expressions) | Das ist mir egal, etc. | A1-A2 expressions |
| `grammar_exercises` | 00004 (10 exercises) | Artikel, Verbkonjugation, Perfekt | A1, A2 |
| `dictation_exercises` | 00004 (3 exercises) | Begrüßung, Im Café, Meine Familie | A1 |

These legacy tables are NOT linked to `course_lessons` via foreign key. They exist as standalone content. Some of their content duplicates the course_lessons system. These are supplementary resources, not replacements.

**Action:** These are optional standalone resources. They DON'T conflict directly with the course system but should be audited separately for dedup. Flag for post-cleanup review.
**Decision:** KEEP legacy tables as supplementary content library. Remove if exact duplicate of course_lesson content.

---

## PHASE 2: SPECIFIC DUPLICATE MODULE TABLE

| Level | Old Module UUID | Old Title | New Module UUID | New Title | Action |
|:-----:|:---------------:|-----------|:---------------:|-----------|--------|
| A1 | `00000000-0000-0000-0000-000000000001` | Hallo! Erste Schritte | `00000000-0000-4000-a000-000039b4d35e` | Hallo! Erste Schritte | DELETE old |
| A1 | `dd285317-a3c8-4fef-bdb3-b5c428f2a94a` | Familie und Alltag | `00000000-0000-4000-a000-000039b4d35f` | Familie und Alltag | DELETE old |
| A1 | `f2480c35-8462-441e-bbf9-a477f07c7c60` | Wohnen | `00000000-0000-4000-a000-000039b4d360` | Wohnen | DELETE old |
| A1 | `81ba0cad-eaee-496d-89a6-5d93db96b244` | Einkaufen und Essen | `00000000-0000-4000-a000-000039b4d361` | Essen und Einkaufen | DELETE old |
| A1 | `18d0ee8e-2642-4e84-b9cd-2e7fc3519b9d` | Arbeit und Beruf | `00000000-0000-4000-a000-000039b4d362` | Arbeit und Berufe | DELETE old |
| A1 | `d7c244c8-fda5-4828-a7eb-f8a1e7924e92` | Reisen und Freizeit | `00000000-0000-4000-a000-000039b4d363` | Reisen und Freizeit | DELETE old |
| A2 | (from seed_a2.sql) | Essen und Trinken | (from complete) | Essen und Trinken | DELETE old |
| A2 | (seed_a2.sql) | Kleidung und Mode | (complete) | Kleidung und Mode | DELETE old |
| A2 | (seed_a2.sql) | Stadt und Orientierung | (complete) | Stadt und Orientierung | DELETE old |
| A2 | (seed_a2.sql) | Gesundheit und Körper | (complete) | Gesundheit und Körper | DELETE old |
| A2 | (seed_a2.sql) | Wetter und Natur | (complete) | Wetter, Natur und Jahreszeiten | DELETE old |
| A2 | (seed_a2.sql) | Feste und Reisen | (complete) | Feste, Traditionen und Reisen | DELETE old |
| B1 | (seed_b1.sql) | Alltag und Gesellschaft | (complete) | Alltag und Gesellschaft | DELETE old |
| B1 | (seed_b1.sql) | Arbeit und Karriere | (complete) | Arbeit und Karriere | DELETE old |
| B1 | (seed_b1.sql) | Medien und Kommunikation | (complete) | Medien und Kommunikation | DELETE old |
| B1 | (seed_b1.sql) | Bildung und Lernen | (complete) | Bildung und Lernen | DELETE old |
| B1 | (seed_b1.sql) | Umwelt und Nachhaltigkeit | (complete) | Umwelt und Nachhaltigkeit | DELETE old |
| B1 | (seed_b1.sql) | Reisen und Kultur | (complete) | Reisen, Kultur, interkulturelle Kompetenz | DELETE old |
| B2 | (seed_b2.sql) | Berufliche Kommunikation | (complete) | Berufliche Kommunikation | DELETE old |
| B2 | (seed_b2.sql) | Gesellschaft und Politik | (complete) | Gesellschaft und Politik | DELETE old |
| B2 | (seed_b2.sql) | Wissenschaft und Technik | (complete) | Wissenschaft und Technik | DELETE old |
| B2 | (seed_b2.sql) | Wirtschaft und Finanzen | (complete) | Wirtschaft und Finanzen | DELETE old |
| B2 | (seed_b2.sql) | Kunst und Literatur | (complete) | Kunst und Literatur | DELETE old |
| B2 | (seed_b2.sql) | Deutschland, Österreich | (complete) | Deutschland, Österreich, Schweiz | DELETE old |
| C1 | (seed_c1.sql) | Akademische Sprache | (complete) | Akademische Sprache | DELETE old |
| C1 | (seed_c1.sql) | Sprache, Stil, Rhetorik | (complete) | Sprache, Stil und Rhetorik | DELETE old |
| C1 | (seed_c1.sql) | Diskurs, Argumentation | (complete) | Diskurs und Argumentation | DELETE old |
| C1 | (seed_c1.sql) | Fachsprachen | (complete) | Fachsprachen | DELETE old |
| C1 | (seed_c1.sql) | Kultur, Identität | (complete) | Kultur, Identität und Migration | DELETE old |
| C1 | (seed_c1.sql) | Globalisierung | (complete) | Globalisierung, Zukunft, Innovation | DELETE old |
| C2 | (seed_c2.sql) | Linguistik und Stilistik | (complete) | Linguistik und Stilistik | DELETE old |
| C2 | (seed_c2.sql) | Literatur, Interpretation | (complete) | Literatur und Interpretation | DELETE old |
| C2 | (seed_c2.sql) | Pragmatik, Diskurs | (complete) | Pragmatik und Diskursanalyse | DELETE old |
| C2 | (seed_c2.sql) | Übersetzung | (complete) | Übersetzung und Sprachmittlung | DELETE old |
| C2 | (seed_c2.sql) | Wissenschaftskommunikation | (complete) | Wissenschaftskommunikation | DELETE old |
| C2 | (seed_c2.sql) | Sprachvariation | (complete) | Sprachvariation und Sprachwandel | DELETE old |

---

## PHASE 3: CROSS-LEVEL REPETITION REPORT

### 3.1 Topic Repetition (Same Topic, Different Level)

| Topic | A1 | A2 | B1 | B2 | C1 | C2 | Action |
|-------|:--:|:--:|:--:|:--:|:--:|:--:|--------|
| Greetings | ✅ M1 | | | | | | Keep only at A1 |
| Alphabet | ✅ M1 | | | | | | Keep only at A1 |
| Numbers | ✅ M1 | | | | | | Keep only at A1 |
| Countries/Nations | ✅ M1 | | | | | | Keep only at A1 |
| Family | ✅ M2 | | | | | | Keep only at A1 |
| Daily Routine | ✅ M2 | | ✅ M1-L1 | | | | Remove from B1 (A1 topic) |
| Telling Time | ✅ M2 | | | | | | Keep only at A1 |
| Weather | ✅ M6-L4 | ✅ M5 | | | | | Merge: canonical at A2, remove from A1 |
| Food Vocab | ✅ M4 | ✅ M1 | | | | | A1: basic 30 words. A2: extended. Distinct. |
| Restaurant | ✅ M4-L4 | ✅ M1-L4 | | | | | A1: ordering. A2: Perfekt stories. Keep distinct. |
| Shopping | ✅ M4-L3 | ✅ M2-L3 | | | | | A1: food. A2: clothes. Keep distinct. |
| Professions | ✅ M5 | | ✅ M2-L1 | | | | A1: name jobs. B1: careers. Keep distinct. |
| Transportation | ✅ M6 | ✅ M3 | | | | | A1: basic modes. A2: system. Distinct OK. |
| Train Station | ✅ M6-L2 | ✅ M3-L4 | | | | | Merge canonical to A2, remove from A1 |
| Hotel | ✅ M6-L5 | ✅ M6-L3 | | | | | Keep A1 (booking), A2 (experience). |
| Hobbies | ✅ M6-L3 | | | | | | Keep only at A1 |
| Body Parts | | ✅ M4 | | | | | Keep only at A2 |
| Doctor/Health | | ✅ M4 | | | | | Keep only at A2 |
| Apartment/Housing | ✅ M3 | | | ✅ (integ.) | | | Remove A1 "Wohnungssuche" (too complex). Keep B2. |
| Environment | | | ✅ M5 | ✅ (integ.) | ✅ M4 | | B1: basics. B2: policy. C1: advanced. Distinct OK. |
| Media/Tech | | | ✅ M3 | ✅ M3 | | | B1: media. B2: science-tech. Distinct OK. |
| Arts/Literature | | | | ✅ M5 | | ✅ M2 | B2: overview. C2: analysis. Distinct OK. |
| Linguistics | | | | | ✅ M2 | ✅ M1 | C1: style/rhetoric. C2: linguistics. Overlap. |
| Work/Business | ✅ M5 | | ✅ M2 | ✅ M1 | | | A1: jobs. B1: applications. B2: comms. Each level distinct. |

### 3.2 Grammar Topic Repetition

| Grammar Topic | A1 | A2 | B1 | B2 | C1 | C2 | Action |
|:-------------:|:--:|:--:|:--:|:--:|:--:|:--:|--------|
| Present Tense | ✅ | ✅137× | ✅96× | ✅84× | ✅69× | ✅57× | REMOVE from ALL above A1 |
| sein/haben | ✅ M5 | ✅137× | ✅96× | ✅84× | ✅69× | ✅57× | REMOVE from ALL above A1 |
| Possessivartikel | ✅ M2 | — | — | — | — | — | Keep only at A1 |
| Definite Articles | ✅ M3 | — | — | — | — | — | Keep only at A1 |
| Verb "möchten" | ✅ M4 | — | — | — | — | — | Keep only at A1 |
| Accusative Case | ✅ M4-L1 | — | — | — | — | — | Keep only at A1 |
| Separable Verbs | ✅ M6 | — | — | — | — | — | Keep only at A1 |
| "gern" + hobbies | ✅ M6 | — | — | — | — | — | Keep only at A1 |
| Perfect Tense | — | ✅ M1-L3 | — | — | — | — | Keep only at A2 |
| Imperative | — | ✅ M4-L5 | — | — | — | — | Move to A1 |
| Comparatives | — | ✅ M2-L5 | — | — | — | — | Keep at A2 |
| Präteritum (war, hatte) | — | — | ✅ M1-L3 | — | — | — | MOVE to A2 |
| Präteritum (Modalverben) | — | — | ✅ M6-L29 | — | — | — | MOVE to A2 |
| Nebensätze (weil, da) | — | — | ✅ M1-L4 | — | — | — | MOVE to A2 |
| Wechselpräpositionen | — | — | ✅ M4-L20 | — | — | — | MOVE to A2 |
| Relativsätze | — | — | ✅ M3-L15 | — | — | — | Keep at B1 |
| Adjective declension | — | — | (missing) | — | — | — | ADD at B1 |
| Infinitiv mit zu | — | — | ✅ M5-L25 | — | — | — | Keep at B1 |
| Konjunktiv II (würde) | — | — | ✅ M2-L10 | — | — | — | MOVE to B2 |
| Passiv Präsens | — | — | ✅ M2-L11 | — | — | — | MOVE to B2 |
| Passive with Modals | — | — | — | ✅ M1-L3 | — | — | Keep at B2 |
| Konjunktiv II (hätte) | — | — | — | ✅ M2-L3 | — | — | Keep at B2 |
| Futur I+II | — | — | — | ✅ M3-L4 | — | — | Keep at B2 |
| Genitiv | — | — | — | ✅ M4-L3 | — | — | MOVE to B1 |
| Causal Prepositions | — | — | — | ✅ M1-L5 | — | — | MOVE to B1 |
| Noun-Verb Combos | — | — | — | ✅ M3-L3 | — | ✅ M1-L4 | MOVE to C1 |
| Partizipialattribute | — | — | — | ✅ M5-L3 | — | — | MOVE to C1 |
| Nominalization | — | — | — | — | ✅ M1-L3 | — | Keep at C1 |
| Konjunktiv I | — | — | — | — | ✅ M2-L2 | — | Keep at C1 |
| Complex Sentences | — | — | — | — | ✅ M1-L5 | — | Keep at C1 |
| Word Formation | — | — | — | — | — | ✅ M1-L1 | MOVE to C1 |
| Discourse Markers | — | — | — | — | — | ✅ M3-L2 | Keep at C2 |

### 3.3 Vocabulary Word Repetition (Generic Pool Words)

These 30 words appear in NEARLY EVERY LESSON across A1–C2:

```
einkaufen, der Preis, bezahlen, der Euro, das Geschäft, der Markt, 
die Tasche, der Rabatt, die Reise, der Zug, das Ticket, der Bahnhof, 
der Flughafen, das Hotel, der Pass, der Koffer, das Restaurant, 
die Speisekarte, bestellen, der Kellner, trinken, die Rechnung, 
lecker, der Arzt, das Krankenhaus, die Medizin, gesund, krank, 
die Apotheke, die Versicherung
```

**Examples of CEFR violations:**
- `der Arzt` appears at A1, A2, B1, B2, C1, C2 — it's A2 vocabulary
- `der Zug` appears at A1, A2, B1, B2, C1 (even though C1 module "Wissenschaftliche Grundbegriffe" has "der Zug" as a vocab word?!)
- `einkaufen` appears in EVERY module's generic pool from A1 through C2

**Action:** DELETE all generic pool words from lesson_vocabulary. They should only appear in their original introduction lesson.

---

## PHASE 4: SPECIFIC LESSON FIXES

### 4.1 A1 Internal Deduplication

| Action | Lesson 1 | Lesson 2 | New Version |
|--------|----------|----------|-------------|
| MERGE | A1 M1-L3: Zahlen 1-20 | A1 M1-L4: Zahlen 21-100 | "Zahlen 1–100" |
| MERGE | A1 M2-L1: Die Familie | A1 M2-L2: Verwandte | "Familie und Verwandte" |
| MERGE | A1 M2-L3: Tagesablauf | A1 M2-L4: Uhrzeit | "Tagesablauf und Uhrzeit" |
| MERGE | A1 M2-L1+L2 | A1 M2-L5: Familie vorstellen | Include speaking in merged lesson |
| MERGE | A1 M5-L1: Berufe | A1 M5-L5: Was sind Sie von Beruf? | "Berufe: Was sind Sie von Beruf?" |
| MERGE | A1 M5-L3: Telefonnummer | A1 M5-L4: Im Büro | "Büro: Telefon, E-Mail" |
| MERGE | A1 M6-L1: Verkehrsmittel | A1 M6-L2: Am Bahnhof | "Verkehrsmittel und Reisen" |
| MOVE | A1 M3-L4: Wohnungssuche | → B2 M6 | Too complex for A1 |
| MOVE | A1 M6-L4: Das Wetter | → A2 M5 (canonical) | A2 is proper level for weather topic |

### 4.2 A2 Internal Deduplication

| Action | Lesson | Reason |
|--------|--------|--------|
| REWRITE | A2 M1-L1: Lebensmittel | Duplicate of A1 M4. Make extended version. |
| REWRITE | A2 M1-L2: Getränke | Same vocab as L1. Give unique vocab. |
| REWRITE | A2 M1-L4: Im Restaurant | A1 already has restaurant. Add Perfekt focus. |
| REWRITE | A2 M2-L4: Mode und Stil | Same vocab as L1. Give unique fashion vocab. |
| MOVE | A2 M4-L5: Der Imperativ | → A1 (imperative is A1 content) |
| MOVE | A2 M6-L5: Kulturelle Unterschiede | → B1 M1 (needs B1 language) |

### 4.3 B1 Internal Deduplication

| Action | Lesson | Reason |
|--------|--------|--------|
| MOVE | B1 M1-L1: Tagesablauf | → DELETE (A1 topic) |
| MOVE | B1 M1-L3: Präteritum (sein, haben) | → A2 M6 (A2 topic) |
| MOVE | B1 M1-L4: Nebensätze (weil, da) | → A2 M1 (A2 topic) |
| MOVE | B1 M2-L4: Konjunktiv II | → B2 M2 (B2 topic) |
| MOVE | B1 M2-L5: Passiv Präsens | → B2 M1 (B2 topic) |
| MOVE | B1 M4-L3: Wechselpräpositionen | → A2 M3 (A2 topic) |
| MOVE | B1 M6-L2: Präteritum Modalverben | → A2 M6 (A2 topic) |

### 4.4 B2 Internal Deduplication

| Action | Lesson | Reason |
|--------|--------|--------|
| MOVE | B2 M1-L5: Kausalsätze (wegen) | → B1 M5 (B1 topic) |
| MOVE | B2 M3-L3: Nomen-Verb-Verbindungen | → C1 M1 (academic, C1 topic) |
| MOVE | B2 M5-L3: Partizipialattribute | → C1 M1 (C1 topic) |
| MOVE | B2 M4-L3: Der Genitiv | → B1 M4 (B1 topic) |

### 4.5 C1-C2 Overlap Cleanup

| Action | Lesson | Reason |
|--------|--------|--------|
| MOVE | C2 M1-L1: Wortbildung | → C1 M1 (C1 topic) |
| MOVE | C2 M4-L2: False Friends | → B2 M6 (B2 topic) |
| MERGE | C2 M1-L3: Sprachvarietäten | → C2 M6-L1 (same module 6 topic) |
| MERGE | C2 M1 vocab (Linguistik) | → C1 M2 (C1 already has style/rhetoric) |

---

## PHASE 5: DATABASE FIX PLAN (SQL Commands)

### 5.1 DELETE Old Module System

```sql
-- ============================================================
-- DELETE all OLD seed modules and their content
-- ============================================================

-- A1: Old modules
delete from public.lesson_test_questions
where lesson_id in (
  select l.id from public.course_lessons l
  join public.course_modules m on l.module_id = m.id
  where m.id in (
    'dd285317-a3c8-4fef-bdb3-b5c428f2a94a',  -- A1 Mod 2: Familie und Alltag
    'f2480c35-8462-441e-bbf9-a477f07c7c60',  -- A1 Mod 3: Wohnen
    '81ba0cad-eaee-496d-89a6-5d93db96b244',  -- A1 Mod 4: Einkaufen und Essen
    '18d0ee8e-2642-4e84-b9cd-2e7fc3519b9d',  -- A1 Mod 5: Arbeit und Beruf
    'd7c244c8-fda5-4828-a7eb-f8a1e7924e92',  -- A1 Mod 6: Reisen und Freizeit
    '00000000-0000-0000-0000-000000000001'    -- A1 Mod 1 (from 00025 migration)
  )
);

-- Repeat for old A2 modules (UUIDs from seed_a2.sql)
-- Note: Old A2 seed uses `returning id into m_id` so UUIDs are not hardcoded.
-- Need to find them by title:

delete from public.lesson_test_questions
where lesson_id in (
  select l.id from public.course_lessons l
  join public.course_modules m on l.module_id = m.id
  where m.level_id = 'A1'
    and m.id not in (
      select id from public.course_modules
      where level_id = 'A1'
        and id like '00000000-0000-4000-a000-%'  -- New seed pattern
    )
);

------------------------------------------------------------------------
-- BLOCK DELETE: Remove all old-seed modules (those not matching the 
-- new UUID pattern '00000000-0000-4000-a000-xxxxxxxxxx')
------------------------------------------------------------------------

do $$
declare
  level_rec record;
  old_module_ids uuid[];
begin
  -- For each level, find modules NOT matching the new seed pattern
  -- New seeds use: '00000000-0000-4000-a000-xxxxxxxxxxxx'
  for level_rec in 
    select distinct level_id 
    from public.course_modules 
    where level_id in ('A1', 'A2', 'B1', 'B2', 'C1', 'C2')
  loop
    -- Get old module IDs for this level
    select array_agg(m.id) into old_module_ids
    from public.course_modules m
    where m.level_id = level_rec.level_id
      and m.id not like '00000000-0000-4000-a000-%';
    
    if old_module_ids is not null then
      -- Delete test questions in old lessons
      delete from public.lesson_test_questions
      where lesson_id in (
        select l.id from public.course_lessons l
        where l.module_id = any(old_module_ids)
      );
      
      -- Delete exercises in old lessons
      delete from public.lesson_exercises
      where lesson_id in (
        select l.id from public.course_lessons l
        where l.module_id = any(old_module_ids)
      );
      
      -- Delete grammar in old lessons
      delete from public.lesson_grammar
      where lesson_id in (
        select l.id from public.course_lessons l
        where l.module_id = any(old_module_ids)
      );
      
      -- Delete vocabulary in old lessons
      delete from public.lesson_vocabulary
      where lesson_id in (
        select l.id from public.course_lessons l
        where l.module_id = any(old_module_ids)
      );
      
      -- Delete old lessons
      delete from public.course_lessons
      where module_id = any(old_module_ids);
      
      -- Delete old modules
      delete from public.course_modules
      where id = any(old_module_ids);
      
      raise notice 'Deleted % old module(s) from level %', 
        array_length(old_module_ids, 1), level_rec.level_id;
    end if;
  end loop;
end $$;
```

### 5.2 DELETE Generic Pool Vocabulary

```sql
-- Remove generic pool words from lessons where they are NOT the topic
delete from public.lesson_vocabulary
where german_word in (
  'einkaufen', 'der Preis', 'bezahlen', 'der Euro', 'das Geschäft',
  'der Markt', 'die Tasche', 'der Rabatt', 'die Reise', 'der Zug',
  'das Ticket', 'der Bahnhof', 'der Flughafen', 'das Hotel', 'der Pass',
  'der Koffer', 'das Restaurant', 'die Speisekarte', 'bestellen',
  'der Kellner', 'trinken', 'die Rechnung', 'lecker', 'der Arzt',
  'das Krankenhaus', 'die Medizin', 'gesund', 'krank', 'die Apotheke',
  'die Versicherung', 'der Schirm'
)
and lesson_id not in (
  -- Keep in lessons where they are the INTRODUCTORY lesson
  select l.id from public.course_lessons l
  join public.course_modules m on l.module_id = m.id
  where m.level_id = 'A1'
    and l.order_index = 1  -- Only first lesson per module
    and m.order_index in (4, 6)  -- Essen/Reisen modules
);
```

### 5.3 DELETE Present Tense Grammar From ALL Lessons Above A1

```sql
delete from public.lesson_grammar
where title like '%Präsens der regelmäßigen Verben%'
  and lesson_id in (
    select l.id from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('A2', 'B1', 'B2', 'C1', 'C2')
  );
```

### 5.4 DELETE Common Mistakes From All But One Per Level

```sql
delete from public.lesson_grammar
where title = 'Common Mistakes for Arabic Speakers'
  and id not in (
    select distinct on (m.level_id) g.id
    from public.lesson_grammar g
    join public.course_lessons l on g.lesson_id = l.id
    join public.course_modules m on l.module_id = m.id
    where g.title = 'Common Mistakes for Arabic Speakers'
    order by m.level_id, g.id
  );
```

### 5.5 DELETE A1-Level Test Questions From B2+ Lessons

```sql
delete from public.lesson_test_questions
where (question = 'How do you say "please" in German?'
    or question = 'Which article is feminine?'
    or question = 'All German nouns are capitalized.'
    or question = 'Ich ___ (to be) Student.'
    or question = 'Wo ___ du? (to live)'
    or question = 'How do you say "thank you" in German?'
    or question = 'German word order is always the same as English.'
    or question = 'What is the correct word order?')
  and lesson_id in (
    select l.id from public.course_lessons l
    join public.course_modules m on l.module_id = m.id
    where m.level_id in ('B2', 'C1', 'C2')
  );
```

### 5.6 REMOVE Module-Internal Vocab Duplicates

```sql
-- Within each module, keep vocabulary only in the first lesson
-- Later lessons should have their own unique vocab
delete from public.lesson_vocabulary v
where exists (
  select 1
  from public.course_lessons l
  join public.course_modules m on l.module_id = m.id
  where l.id = v.lesson_id
    and l.order_index > 1
    and v.german_word in (
      select v2.german_word
      from public.lesson_vocabulary v2
      join public.course_lessons l2 on v2.lesson_id = l2.id
      where l2.module_id = l.module_id
        and l2.order_index = 1
        and v2.german_word = v.german_word
    )
);
```

### 5.7 Schema Fix: Add C2 to Profile Constraints

```sql
alter table public.profiles
  drop constraint if exists profiles_current_level_check,
  add constraint profiles_current_level_check
    check (current_level in ('A1', 'A2', 'B1', 'B2', 'C1', 'C2'));

alter table public.profiles
  drop constraint if exists profiles_target_level_check,
  add constraint profiles_target_level_check
    check (target_level in ('A1', 'A2', 'B1', 'B2', 'C1', 'C2'));
```

### 5.8 Add Uniqueness Constraints

```sql
-- Prevent same word appearing twice in same lesson
create unique index if not exists idx_lesson_vocab_unique
  on public.lesson_vocabulary(lesson_id, german_word);

-- Prevent same grammar title in same lesson
create unique index if not exists idx_lesson_grammar_unique
  on public.lesson_grammar(lesson_id, title);

-- Prevent duplicate word+level in vocabulary bank
create unique index if not exists idx_vocabulary_word_level
  on public.vocabulary(german_word, level);
```

---

## PHASE 6: VOCABULARY CANONICAL OWNER TABLE

| German Word | Canonical Level | First Introduced In |
|:-----------:|:---------------:|:-------------------:|
| Hallo, Guten Morgen, Tschüss | A1 | A1 M1-L1 |
| eins, zwei, drei... | A1 | A1 M1-L3 |
| der Name, heißen, kommen | A1 | A1 M1-L1 |
| die Familie, der Vater, die Mutter | A1 | A1 M2-L1 |
| das Haus, die Wohnung, das Zimmer | A1 | A1 M3-L1 |
| der Tisch, der Stuhl, das Bett | A1 | A1 M3-L2 |
| das Brot, die Milch, der Käse | A1 | A1 M4-L1 |
| der Supermarkt, das Geschäft, einkaufen | A1 | A1 M4-L3 |
| das Restaurant, bestellen, der Kellner | A1 | A1 M4-L4 |
| der Arzt, der Lehrer, der Ingenieur | A1 | A1 M5-L1 |
| das Büro, der Chef, der Kollege | A1 | A1 M5-L2 |
| der Zug, der Bahnhof, das Ticket | A1 | A1 M6-L1 |
| das Wetter, die Sonne, der Regen | A2 | A2 M5-L1 |
| der Mantel, das Hemd, die Hose | A2 | A2 M2-L1 |
| der Kopf, das Auge, die Hand | A2 | A2 M4-L1 |
| die Stadt, die Straße | A2 | A2 M3-L1 |
| der Feiertag, Weihnachten | A2 | A2 M6-L1 |
| die Gesellschaft, die Politik | B1 | B1 M1-L2 |
| der Beruf, die Firma (extended) | B1 | B1 M2-L1 |
| die Umwelt, der Klimawandel | B1 | B1 M5-L1 |
| die Wirtschaft, das Unternehmen | B2 | B2 M1-L1 |
| die Regierung, der Bundestag | B2 | B2 M2-L1 |
| die Wissenschaft, die Forschung | B2 | B2 M3-L1 |
| die Kunst, der Künstler | B2 | B2 M5-L1 |
| die Geschichte, der Krieg | B2 | B2 M6-L1 |
| die Forschung, die Analyse | C1 | C1 M1-L1 |
| die Rhetorik, die Metapher | C1 | C1 M2-L1 |
| der Diskurs, die Argumentation | C1 | C1 M3-L1 |
| die Linguistik, die Syntax | C2 | C2 M1-L1 |
| der Roman, der Dichter | C2 | C2 M2-L1 |
| die Pragmatik, der Sprechakt | C2 | C2 M3-L1 |
| die Übersetzung, der Dolmetscher | C2 | C2 M4-L1 |

**Rule:** After these words are introduced at their canonical level, they should NEVER appear as "new vocabulary" in any higher level. They can appear in reading texts, instructions, or contexts, but not in lesson_vocabulary entries.

---

## PHASE 7: DURATION AUDIT

### 7.1 A1 Duration Audit

| Module | Claimed Hours | Actual Lesson Min | Actual Hours | Variance |
|--------|:------------:|:-----------------:|:------------:|:--------:|
| M1: Hallo! Erste Schritte | 4h | 30+30+25+25+30+35 = 175min | 2h55min | -1h05min |
| M2: Familie und Alltag | 5h | 30+25+30+25+20+25 = 155min | 2h35min | -2h25min |
| M3: Wohnen | 4h | 30+30+30+25+20+20 = 155min | 2h35min | -1h25min |
| M4: Essen und Einkaufen | 5h | 30+25+30+30+25+25 = 165min | 2h45min | -2h15min |
| M5: Arbeit und Berufe | 4h | 30+30+25+30+20+20 = 155min | 2h35min | -1h25min |
| M6: Reisen und Freizeit | 5h | 30+30+30+25+30+45 = 190min | 3h10min | -1h50min |
| **Total A1** | **27h** | **995min** | **16h35min** | **-10h25min** |

**Conclusion:** Duration values are inflated by 40-50%. Actual lesson duration (without exercises, homework, reviews) is about half of claimed hours. The claimed hours presumably include self-study, homework, and review time.

**Recommendation:** Either update `estimated_hours` to reflect actual content + estimated self-study (e.g., multiply lesson total by 1.5-2x), or keep hours as-is since they include self-study.

### 7.2 All Levels Duration Comparison

| Level | Total Lesson Min | Lesson-Only Hours | Claimed Hours | Recommended Hours |
|:-----:|:----------------:|:-----------------:|:-------------:|:-----------------:|
| A1 | 995min | 16.6h | 27h | **20-25h** |
| A2 | 1,575min | 26.25h | 29h | **25-30h** |
| B1 | 1,600min | 26.7h | 30h | **30-35h** |
| B2 | 1,400min | 23.3h | 30h | **30-35h** |
| C1 | 1,220min | 20.3h | 31h | **25-30h** |
| C2 | 1,110min | 18.5h | 31h | **20-25h** |
| **Total** | **7,900min** | **131.7h** | **178h** | **150-180h** |

**Note:** A2 has more lesson minutes than B1/B2 due to longer individual lesson durations (45-60 min vs 25-35 min for A1).

---

## PHASE 8: FINAL CLEAN CURRICULUM

### A1 — Beginner (29 lessons, 6 modules)

**Module 1: Hallo! Erste Schritte** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Begrüßungen, Vorstellung, erste Fragen | vocabulary | 30 | Keep |
| 2 | Das Alphabet und die Aussprache | pronunciation | 30 | Keep, new vocab |
| 3 | Zahlen 1–100 | vocabulary | 30 | Merge L3+L4 |
| 4 | Länder, Sprachen, Nationalitäten | vocabulary | 30 | Keep |
| 5 | Erste Gespräche führen | conversation | 35 | Keep |

**Module 2: Familie und Alltag** (4 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Die Familie und Verwandte | vocabulary | 35 | Merge L1+L2+L5 |
| 2 | Mein Tagesablauf und die Uhrzeit | vocabulary | 35 | Merge L3+L4 |
| 3 | Grammatik: Possessivartikel + Präsens | grammar | 30 | Keep |
| 4 | Test: Familie und Alltag | test | 25 | Keep |

**Module 3: Wohnen** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Mein Zuhause: Räume und Zimmer | vocabulary | 30 | Keep |
| 2 | Möbel und Haushaltsgegenstände | vocabulary | 30 | Keep |
| 3 | Grammatik: der/die/das, ein/eine | grammar | 30 | Keep |
| 4 | Wohnungen beschreiben: Adjektive | grammar | 25 | Keep |
| 5 | Test: Wohnen | test | 20 | Keep |

**Module 4: Essen und Einkaufen** (6 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Lebensmittel und Getränke | vocabulary | 30 | Keep |
| 2 | Grammatik: "möchten" und der Akkusativ | grammar | 30 | Keep |
| 3 | Im Supermarkt einkaufen | dialogue | 30 | Keep |
| 4 | Im Restaurant bestellen | dialogue | 30 | Keep |
| 5 | Mengen, Preise, und Bezahlen | vocabulary | 25 | Keep |
| 6 | Test: Essen und Einkaufen | test | 25 | Keep |

**Module 5: Arbeit und Berufe** (4 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Berufe: Was sind Sie von Beruf? | vocabulary | 35 | Merge L1+L5 |
| 2 | Am Arbeitsplatz | vocabulary | 30 | Keep |
| 3 | Grammatik: sein und haben | grammar | 30 | Keep |
| 4 | Test: Arbeit und Berufe | test | 20 | Keep |

**Module 6: Reisen, Freizeit, Wetter** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Verkehrsmittel und Reisen | vocabulary | 35 | Merge L1+L2 |
| 2 | Hobbys und Freizeitaktivitäten | vocabulary | 30 | Keep |
| 3 | Grammatik: Trennbare Verben und "gern" | grammar | 30 | Keep |
| 4 | Im Hotel: Einchecken und Fragen | dialogue | 30 | Keep |
| 5 | A1 Abschlusstest | test | 45 | Keep |

---

### A2 — Elementary (29 lessons, 6 modules)

**Module 1: Essen, Kochen, Vergangenes** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Grammatik: Perfekt mit haben und sein | grammar | 55 | Keep (moved to first) |
| 2 | Lebensmittel und Verpackungen | vocabulary | 35 | Rewrite (new vocab) |
| 3 | Kochen und Rezepte | reading | 45 | Keep |
| 4 | Im Restaurant: Perfekt anwenden | dialogue | 40 | Rewrite |
| 5 | Test: Essen und Trinken | test | 40 | Rewrite |

**Module 2: Kleidung und Mode** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Kleidungsstücke und Accessoires | vocabulary | 35 | Keep |
| 2 | Farben, Größen, Materialien | vocabulary | 35 | Keep (unique vocab) |
| 3 | Kleidung kaufen: Gespräche | dialogue | 40 | Keep |
| 4 | Grammatik: Komparativ und Superlativ | grammar | 45 | Keep |
| 5 | Test: Kleidung und Mode | test | 40 | Keep |

**Module 3: Stadt, Orientierung, Verkehr** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | In der Stadt: Orte und Gebäude | vocabulary | 35 | Keep |
| 2 | Wegbeschreibung | dialogue | 40 | Keep |
| 3 | Grammatik: Wechselpräpositionen | grammar | 40 | From B1 |
| 4 | Öffentliche Verkehrsmittel | vocabulary | 35 | Keep |
| 5 | Test: Stadt und Orientierung | test | 40 | Keep |

**Module 4: Gesundheit und Körper** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Der Körper: Körperteile | vocabulary | 35 | Keep |
| 2 | Beim Arzt: Symptome beschreiben | dialogue | 40 | Keep |
| 3 | Gesundheit und Fitness | vocabulary | 35 | Keep |
| 4 | In der Apotheke | dialogue | 35 | Keep |
| 5 | Test: Gesundheit und Körper | test | 40 | Keep |

**Module 5: Wetter, Natur, Jahreszeiten** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Das Wetter (canonical) | vocabulary | 35 | From A1 + keep |
| 2 | Die Jahreszeiten und Monate | vocabulary | 30 | Keep |
| 3 | Tiere und Natur | vocabulary | 35 | Keep |
| 4 | Grammatik: Zeitpräpositionen im, am, um | grammar | 35 | Keep |
| 5 | Test: Wetter und Natur | test | 35 | Keep |

**Module 6: Feste, Reisen, Abschluss** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Feste und Feiertage in Deutschland | vocabulary | 40 | Keep |
| 2 | Grammatik: Präteritum von sein, haben, wissen | grammar | 40 | From B1 |
| 3 | Grammatik: Präteritum der Modalverben | grammar | 35 | From B1 |
| 4 | Reiseerfahrungen: Perfekt und Präteritum | reading | 45 | Rewrite |
| 5 | A2 Abschlusstest | test | 50 | Keep |

---

### B1 — Intermediate (30 lessons, 6 modules)

**Module 1: Alltag, Gesellschaft, Kommunikation** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Alltag in Deutschland: Termine, Pünktlichkeit | vocabulary | 45 | Rewrite |
| 2 | Gesellschaft und Zusammenleben | vocabulary | 45 | Keep |
| 3 | Kulturelle Unterschiede im Alltag | reading | 40 | From A2 |
| 4 | Grammatik: Reflexive Verben | grammar | 50 | New |
| 5 | Test: Alltag und Gesellschaft | test | 40 | Keep |

**Module 2: Arbeit, Karriere, Bewerbung** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Arbeitswelt: Berufe, Branchen, Positionen | vocabulary | 45 | Rewrite |
| 2 | Bewerbung und Lebenslauf | writing | 55 | Keep |
| 3 | Das Vorstellungsgespräch | dialogue | 55 | Keep |
| 4 | Grammatik: Relativsätze | grammar | 55 | Keep |
| 5 | Test: Arbeit und Karriere | test | 40 | Keep |

**Module 3: Medien, Technologie, Meinung** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Medien: Zeitung, Radio, Internet, TV | vocabulary | 40 | Keep |
| 2 | Soziale Medien und Technologie | vocabulary | 40 | Keep |
| 3 | Grammatik: Nebensätze mit dass, ob, weil | grammar | 50 | Rewrite |
| 4 | Meinung äußern: Diskutieren | speaking | 55 | Keep |
| 5 | Test: Medien und Kommunikation | test | 40 | Keep |

**Module 4: Bildung, Lernen, Sprache** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Das deutsche Schulsystem | vocabulary | 45 | Keep |
| 2 | Sprachen lernen: Erfahrungen | vocabulary | 40 | Keep |
| 3 | Grammatik: Infinitiv mit zu, um...zu | grammar | 50 | Keep |
| 4 | Grammatik: Genitiv und Genitivpräpositionen | grammar | 50 | From B2 |
| 5 | Test: Bildung und Lernen | test | 40 | Keep |

**Module 5: Umwelt, Nachhaltigkeit, Kausalität** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Umweltschutz und Nachhaltigkeit | vocabulary | 40 | Keep |
| 2 | Mülltrennung und Recycling in DE | reading | 45 | Keep |
| 3 | Grammatik: Kausalsätze (weil, da, wegen) | grammar | 50 | From B2 |
| 4 | Grammatik: Temporalsätze (während, bevor) | grammar | 50 | Keep |
| 5 | Test: Umwelt und Nachhaltigkeit | test | 40 | Keep |

**Module 6: Reisen, Kultur, Vergleich** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Reiseplanung und Buchung | dialogue | 40 | Rewrite |
| 2 | Sehenswürdigkeiten in DACH | reading | 45 | Keep |
| 3 | Grammatik: Vergleichssätze (je...desto) | grammar | 50 | Keep |
| 4 | Grammatik: Adjektivdeklination | grammar | 55 | New |
| 5 | B1 Abschlusstest | test | 55 | Keep |

---

### B2 — Upper Intermediate (27 lessons, 6 modules)

**Module 1: Berufliche Kommunikation** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Bürokommunikation | vocabulary | 45 | Rewrite |
| 2 | Geschäftskorrespondenz | writing | 55 | Keep |
| 3 | Grammatik: Das Passiv (Präsens, Präteritum) | grammar | 55 | From B1 |
| 4 | Grammatik: Passiv mit Modalverben | grammar | 50 | Keep |
| 5 | Test: Berufliche Kommunikation | test | 45 | Keep |

**Module 2: Gesellschaft, Politik, Diskussion** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Politisches System Deutschlands | vocabulary | 45 | Keep |
| 2 | Soziale Themen und Diskussionen | vocabulary | 45 | Keep |
| 3 | Grammatik: Konjunktiv II (hätte, wäre, würde) | grammar | 55 | From B1 |
| 4 | Eine Debatte führen | speaking | 50 | Keep |
| 5 | Test: Gesellschaft und Politik | test | 40 | Keep |

**Module 3: Wissenschaft, Technik, Zukunft** (4 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Wissenschaft und Forschung | vocabulary | 45 | Rewrite |
| 2 | Technologie und Innovation | vocabulary | 45 | Keep |
| 3 | Grammatik: Futur I + Futur II | grammar | 55 | Keep |
| 4 | Test: Wissenschaft und Technik | test | 40 | Keep |

**Module 4: Wirtschaft, Finanzen, Konzessiv** (4 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Wirtschaftliche Grundbegriffe | vocabulary | 45 | Keep |
| 2 | Bankwesen und Finanzen | vocabulary | 45 | Keep |
| 3 | Grammatik: Konzessive Angaben (trotz, obwohl) | grammar | 50 | Rewrite |
| 4 | Test: Wirtschaft und Finanzen | test | 45 | Keep |

**Module 5: Kunst, Literatur, Satzstruktur** (4 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Kunst und Kultur | vocabulary | 45 | Keep |
| 2 | Deutschsprachige Literatur | reading | 50 | Keep |
| 3 | Grammatik: Komplexe Satzstrukturen | grammar | 55 | Rewrite |
| 4 | Test: Kunst und Literatur | test | 40 | Keep |

**Module 6: DACH, Geschichte, Abschluss** (5 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Geschichte Deutschlands 1945–heute | reading | 55 | Merge L1+L3 |
| 2 | Österreich und die Schweiz | vocabulary | 45 | Keep |
| 3 | False Friends (Deutsch–Arabisch) | vocabulary | 40 | From C2 |
| 4 | Aktuelle Themen: Deutschland in Europa | speaking | 45 | Keep |
| 5 | B2 Abschlusstest | test | 45 | Keep |

---

### C1 — Advanced (24 lessons, 6 modules)

**Module 1: Akademische Sprache** (6 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Wissenschaftliche Grundbegriffe | vocabulary | 45 | Rewrite |
| 2 | Akademisches Schreiben | writing | 55 | Keep |
| 3 | Grammatik: Nominalstil vs. Verbalstil | grammar | 55 | Keep |
| 4 | Grammatik: Nomen-Verb-Verbindungen | grammar | 55 | From B2 |
| 5 | Grammatik: Partizipialattribute | grammar | 55 | From B2 |
| 6 | Test: Akademische Sprache | test | 50 | Keep |

**Module 2: Sprache, Stil, Rhetorik** (4 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Rhetorische Mittel | vocabulary | 50 | Keep |
| 2 | Grammatik: Konjunktiv I (Indirekte Rede) | grammar | 55 | Keep |
| 3 | Stilistische Analyse | reading | 50 | Keep |
| 4 | Test: Sprache, Stil, Rhetorik | test | 45 | Keep |

**Module 3: Diskurs und Argumentation** (4 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Argumentationsstrukturen | vocabulary | 45 | Keep |
| 2 | Grammatik: Konnektoren | grammar | 50 | Keep |
| 3 | Wissenschaftliche Essays schreiben | writing | 55 | Keep |
| 4 | Test: Diskurs und Argumentation | test | 50 | Keep |

**Module 4: Fachsprachen + Wissenschaftskommunikation** (4 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Rechtssprache | vocabulary | 55 | Keep |
| 2 | Medizinische Fachsprache | vocabulary | 50 | Keep |
| 3 | Technische und Wirtschaftssprache | vocabulary | 50 | Keep |
| 4 | Test: Fachsprachen | test | 50 | Keep |

**Module 5: Kultur, Identität, Migration** (3 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Migration und Integration | vocabulary | 50 | Keep |
| 2 | Kulturelle Identität | reading | 50 | Keep |
| 3 | Test: Kultur, Identität, Migration | test | 50 | Keep |

**Module 6: Globalisierung, Zukunft, Abschluss** (3 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Globalisierung | vocabulary | 50 | Keep |
| 2 | Zukunftsszenarien | speaking | 50 | Keep |
| 3 | C1 Abschlusstest | test | 70 | Keep |

---

### C2 — Mastery (19 lessons, 6 modules)

**Module 1: Linguistik und Stilistik** (3 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Stilistische Feinheiten | vocabulary | 55 | Rewrite |
| 2 | Sprachvarietäten und Register | reading | 55 | Keep |
| 3 | Test: Linguistik und Stilistik | test | 50 | Keep |

**Module 2: Literatur und Interpretation** (3 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Literarische Textanalyse | reading | 55 | Keep |
| 2 | Interpretation und Kritik | writing | 60 | Keep |
| 3 | Test: Literatur und Analyse | test | 50 | Keep |

**Module 3: Pragmatik und Diskursanalyse** (3 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Sprechakte und Implikaturen | vocabulary | 50 | Keep |
| 2 | Diskursmarker und Kohärenz | grammar | 55 | Keep |
| 3 | Test: Pragmatik und Diskurs | test | 50 | Keep |

**Module 4: Übersetzung und Sprachmittlung** (3 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Übersetzungstechniken | vocabulary | 55 | Keep |
| 2 | Konsekutiv- und Simultandolmetschen | speaking | 55 | Rewrite |
| 3 | Test: Übersetzung und Sprachmittlung | test | 50 | Keep |

**Module 5: Wissenschaftskommunikation** (3 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Wissenschaftliches Publizieren | vocabulary | 55 | Keep |
| 2 | Populärwissenschaftliche Kommunikation | speaking | 55 | Keep |
| 3 | Test: Wissenschaftskommunikation | test | 50 | Keep |

**Module 6: Sprachvariation, Sprachwandel, Abschluss** (4 lessons)
| # | Title | Type | Min | Change |
|---|-------|:----:|:---:|--------|
| 1 | Sprachwandel: Historische Entwicklung | reading | 55 | From M1 |
| 2 | Dialekte und regionale Variation | vocabulary | 55 | Keep |
| 3 | Jugendsprache und Internetsprache | reading | 50 | Keep |
| 4 | C2 Abschlusstest | test | 90 | Keep |

---

## PHASE 9: SUMMARY OF SQL ACTIONS

| Action | Target | Rows Affected | SQL Section |
|--------|--------|:-------------:|-------------|
| DELETE old modules (all 6 levels) | course_modules, course_lessons, lesson_vocabulary, lesson_grammar, lesson_exercises, lesson_test_questions | ~30 modules, ~180+ lessons, ~5,000+ content rows | 5.1 |
| DELETE generic pool vocabulary | lesson_vocabulary | ~1,500+ rows | 5.2 |
| DELETE Present Tense grammar (A2+) | lesson_grammar | ~140 rows | 5.3 |
| DELETE Common Mistakes (173→6) | lesson_grammar | ~167 rows | 5.4 |
| DELETE A1 test questions (B2+) | lesson_test_questions | ~560 rows | 5.5 |
| DELETE module-internal vocab dups | lesson_vocabulary | ~800+ rows | 5.6 |
| DELETE Exercises (A1-level from B2+) | lesson_exercises | ~500+ rows | 5.3 (00028) |
| ALTER schema for C2 | profiles, learning_goals | 2 tables | 5.7 |
| ADD unique constraints | lesson_vocabulary, etc. | 3 indexes | 5.8 |

**Total rows to clean up: ~8,700+**
**Total lessons remaining after cleanup: 158 (from 273)**
**Total NEW lessons to write: ~158 (all need unique exercises, tests, grammar)**

The migration `00028_curriculum_dedup_cleanup.sql` handles items 5.2-5.8 (structural cleanup).
The old module delete (5.1) should run FIRST to remove duplicate module structures before the content cleanup.
