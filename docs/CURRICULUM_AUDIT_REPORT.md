# CEFR Curriculum Audit Report — DeutschMentor AI

**Date:** July 2026
**Auditor:** Automated Curriculum Analysis
**Status:** CRITICAL ISSUES FOUND

---

## Executive Summary

The curriculum contains **systemic template-based duplication** across ALL 6 CEFR levels (A1–C2). Rather than being a carefully crafted progression, the content was generated from a fixed template with only topic names and first-vocabulary items changing per lesson. This violates every CEFR quality rule.

**Total Content Audited:**
- 6 levels, 47 modules, 273 lessons
- 1,958 lesson_vocabulary entries
- 200 lesson_grammar entries
- 1,434 lesson_exercises
- 1,670 lesson_test_questions

---

## 1. DUPLICATE LESSONS

### 1.1 Identical Lesson Structure (ALL Levels)

Every single one of the 273 lessons follows the **exact same template**:

| Component | Template |
|-----------|----------|
| Vocabulary | 30 entries (10 topic-specific + 20 generic recycled words) |
| Grammar | Present Tense + Culture note + Arabic speaker mistakes |
| Exercises | 6 fixed types (MCQ on first word, fill_gap, translation, sentence_order, matching, extra translation) |
| Test Questions | 10 fixed questions (only Q1-Q2 change per lesson) |

### 1.2 Duplicate Topics Across Levels

| Topic | A1 | A2 | B1 | B2 | C1 | C2 |
|-------|:--:|:--:|:--:|:--:|:--:|:--:|
| Greetings & Introductions | ✅ M1-L1 | | | | | |
| Alphabet/Pronunciation | ✅ M1-L2 | | | | | |
| Numbers | ✅ M1-L3/L4 | | | | | |
| Countries & Nationalities | ✅ M1-L5 | | | | | |
| Family | ✅ M2-L1/L2/L5 | | | | | |
| Daily Routine | ✅ M2-L3 | | ✅ M1-L1 | | | |
| Telling Time | ✅ M2-L4 | | | | | |
| Weather | ✅ M6-L4 | ✅ M5-L1 | | | | |
| Food & Groceries | ✅ M4-L1 | ✅ M1-L1 | | | | |
| Drinks & Meals | ✅ M4-L2 | ✅ M1-L2 | | | | |
| Restaurant | ✅ M4-L4 | ✅ M1-L4 | | | | |
| Shopping | ✅ M4-L3 | ✅ M2-L3 | | | | |
| Professions | ✅ M5-L1 | | ✅ M2-L1 | | | |
| Transportation | ✅ M6-L1 | ✅ M3-L3 | | | | |
| Train Station | ✅ M6-L2 | ✅ M3-L4 | | | | |
| Hotel | ✅ M6-L5 | | | | | |
| Hobbies | ✅ M6-L3 | | | | | |
| Body Parts | | ✅ M4-L1 | | | | |
| At the Doctor | | ✅ M4-L2 | | | | |
| Apartment/Housing | ✅ M3 | | | ✅ M1 integration lesson | | |
| Work/Business | ✅ M5 | | ✅ M2 | ✅ M1 | | |
| Environment/Climate | | | ✅ M5 | | ✅ M4 | |
| Media/Technology | | | ✅ M3 | ✅ M3 | | |

### 1.3 Same Grammar Taught in Multiple Levels (CRITICAL)

| Grammar Topic | A1 | A2 | B1 | B2 | C1 | C2 |
|---------------|:--:|:--:|:--:|:--:|:--:|:--:|
| Present Tense | (implicit) | ✅ ALL lessons | ✅ ALL lessons | ✅ ALL lessons | ✅ ALL lessons | ✅ ALL lessons |
| Perfect Tense | | ✅ M1-L3, implicit | implicit | | | |
| Passive Voice | | | ✅ M2-L11 | ✅ M1-L3 | implicit | |
| Konjunktiv II | | | ✅ M2-L10 | ✅ M2-L3 | | |
| Relative Clauses | | | ✅ M3-L15 | | | |
| Imperative | | ✅ M4-L5 | | | | |
| Comparatives | | ✅ M2-L5 | | | | |
| Prepositions | A1 (basic) | ✅ M3, M5-L4 | ✅ M4-L20 (two-way) | ✅ M1-L5 (causal) | | |
| Subordinate Clauses | | | ✅ M1-L4 | | | |
| Future Tenses | | | | ✅ M3-L4 | | |
| Genitive | | | | ✅ M4-L3 | | |
| Nominalization | | | | | C1 core | |
| Noun-Verb Combos | | | | ✅ M3-L3 | | |

### 1.4 Identical Test Questions Across ALL Levels

These exact same 8 questions (out of 10) appear in **every single lesson** from A1 through C2:

| # | Question | Correct Answer | Appears In |
|---|----------|----------------|------------|
| 3 | German word order is always the same as English. | False | ALL 273 lessons |
| 4 | How do you say "please" in German? | Bitte | ALL 273 lessons |
| 5 | Which article is feminine? | die | ALL 273 lessons |
| 6 | Ich ___ (to be) Student. | bin | ALL 273 lessons |
| 7 | What is the correct word order? | Ich lerne Deutsch | ALL 273 lessons |
| 8 | All German nouns are capitalized. | True | ALL 273 lessons |
| 9 | How do you say "thank you" in German? | Danke | ALL 273 lessons |
| 10 | Wo ___ du? (to live) | wohnst | ALL 273 lessons |

A C2 test should NEVER ask "How do you say please in German?"

### 1.5 Identical Exercises Across ALL Levels

Every lesson across ALL 6 levels contains these same 4 exercises:

| Exercise | Question |
|----------|----------|
| translation | Translate: "I learn German." |
| sentence_order | Order the sentence. |
| matching | Match the words with their meanings. |
| translation | Translate to German: "This is a translation exercise." |

---

## 2. DUPLICATE GRAMMAR

### 2.1 "Present Tense" Repeated 173+ Times

The grammar entry `Präsens der regelmäßigen Verben (Present Tense)` with the explanation *"In German, regular verbs follow a consistent pattern. The infinitive ends in -en..."* appears in:

- **A2:** Every single lesson (35 times)
- **B1:** Every single lesson (32 times)
- **B2:** Every single lesson (28 times)
- **C1:** Every single lesson (23 times)
- **C2:** Every single lesson (19 times)

**Total: 137+ unnecessary repetitions of an A1-level grammar topic.**

### 2.2 "Culture" Note Template Repeated 173+ Times

`Culture: {Topic} in German-Speaking Countries` — same template, only the topic name changes.

### 2.3 "Common Mistakes for Arabic Speakers" Repeated 173+ Times

Absolutely identical text in every single lesson.

---

## 3. DUPLICATE VOCABULARY

### 3.1 The Generic 20-Word Pool (THE BIGGEST ISSUE)

Each lesson has 30 vocabulary items. The first 10 are topic-specific (unique per module). The remaining 20 are **IDENTICAL across all lessons within a level**, and largely identical **across levels**.

Words like `einkaufen`, `der Preis`, `der Euro`, `das Geschäft`, `der Markt`, `die Tasche`, `der Rabatt`, `die Reise`, `der Zug`, `das Ticket`, `der Bahnhof`, `der Flughafen`, `das Hotel`, `der Pass`, `der Koffer`, `das Restaurant`, `die Speisekarte`, `bestellen`, `der Kellner`, `trinken`, `die Rechnung`, `lecker`, `der Arzt`, `das Krankenhaus`, `die Medizin`, `gesund`, `krank`, `die Apotheke`, `die Versicherung` appear in:

- A1 (as generic pool words 19-30)
- A2 (as generic pool words 7-30 in most lessons)  
- B1 (as generic pool words)
- B2 (as generic pool words)

### 3.2 Specific A1 Words in Higher Levels

| Word | Appears In |
|------|------------|
| Hallo | A1 L1-L6, A2 generic pool |
| Guten Morgen | A1 L1-L6, A2 generic pool |
| die Familie | A1 M2, A2 generic pool, B1 generic pool |
| der Vater / die Mutter | A1 M2, A2 generic pool |
| das Brot / die Milch / der Käse | A1 M4, A2 M1 generic pool |
| der Zug / der Bahnhof | A1 M6, A2 M3 generic, B1 generic, B2 generic |
| das Hotel | A1 M6, A2 generic, B1 generic |

### 3.3 Level-Internal Vocabulary Duplication

Within each level, every lesson in the same module uses the **exact same 30-word vocabulary set**. This means:

- A1 Module 1: 6 lessons × 30 words = 180 entries, but only 30 unique word pairs
- A2 Module 1: 6 lessons × 30 words = 180 entries, but only 30 unique word pairs  
- B1 Module 1: 6 lessons × 30 words = 180 entries, but only 30 unique word pairs
- ... same pattern for ALL modules across ALL levels

---

## 4. WRONG CEFR PLACEMENTS

### Must Be Moved to Lower Level

| Content | Current Level | Should Be | Reason |
|---------|:------------:|:---------:|--------|
| Present Tense explanation | A2, B1, B2, C1, C2 | **A1 only** | Conjugated in A1 M1-L1 original seed |
| "Wo ___ du? (wohnst)" | B2, C1, C2 | **A1 only** | Basic A1 question pattern |
| "Ich ___ (to be) Student" | B2, C1, C2 | **A1 only** | Basic sein conjugation |
| "Which article is feminine?" | B2, C1, C2 | **A1 only** | Basic articles |
| "All German nouns are capitalized" | B2, C1, C2 | **A1 only** | Basic orthography |
| Imperative | A2 | **A1** | Simple command forms are A1 |
| Basic prepositions (in, auf, unter) | A1 (correct) + A2 module 5 | **A1 only** | Already in A1 |
| Passive Voice | B1 M2-L11 | **B2** | Passive is B2 in CEFR (Goethe) |
| Passiv mit Modalverben | B2 M1-L3 | **B2** (but merge with B1 Passive) | Keep at B2, but B1 version should be removed |
| Konjunktiv II (würde) | B1 M2-L10 | **B2** | CEFR: hypothetical situations = B2 |
| Konjunktiv II (hätte, wäre) | B2 M2-L3 | **B2** (merge with B1 version) | |
| Future Tenses | B2 M3-L4 | **B1** | Simple future for predictions = B1 |
| Relativsätze | B1 M3-L15 | **B1** (correct) | |
| Partizipialattribute | B2 M5-L3 | **C1** | Complex participial phrases = C1 |
| Nomen-Verb-Verbindungen | B2 M3-L3 | **C1** | Academic collocations = C1 |
| Nominalization | C1 | **C1** (correct) | |
| Wortbildung | C2 M1-L1 | **C1** | Word formation mechanisms = C1 |
| False Friends | C2 M4-L2 | **B2** | Not C2-level concept |
| Textanalyse | C2 M2-L1 | **C1** | Literary analysis = C1 |

### Must Be Moved to Higher Level

| Content | Current Level | Should Be | Reason |
|---------|:------------:|:---------:|--------|
| "How do you say 'please' in German?" | C1, C2 lessons | **A1 only** | Basic phrase |
| Präteritum: sein, haben, wissen | B1 M1-L3 | **A2** | Simple past of these 3 verbs = A2 |
| Präteritum der Modalverben | B1 M6-L29 | **A2** | Modal past = A2/B1 border, introduce in A2 |
| Nebensätze mit weil, da, obwohl | B1 M1-L4 | **A2** | Basic subordinate clauses = A2 |
| Wechselpräpositionen | B1 M4-L20 | **A2** | Two-way prepositions = A2 |

---

## 5. MISSING PREREQUISITE LESSONS

| Missing | Needed Before | Needed For |
|---------|:------------:|------------|
| Dedicated Modalverb lesson (können, müssen, dürfen) | B1 Module 2 | Job applications, polite requests |
| Dedicated Perfekt lesson with full paradigm | A2 Module 1 | Past tense narration |
| Separable prefix verbs | A2 (implicit in A1 M6) | Daily communication |
| Reflexive verbs | B1 | Daily routine, emotions |
| Adjective declension (der-Grüne Tisch) | B1 | Describing things |
| Prepositions with accusative/dative | A2 | Correct case usage |
| Word order (TeKaMoLo) | B1 | Sentence structure |
| Indefinite pronouns (man, jemand, niemand) | B1 | General statements |
| Ordinal numbers | A1 M2 | Dates, birthdays |
| Time expressions (gestern, heute, morgen) | A2 | Past/future reference |

---

## 6. LESSONS TO MOVE

| Lesson | Current Level | Target Level | Reason |
|--------|:------------:|:------------:|--------|
| Präteritum: sein, haben, wissen | B1 M1-L3 | **A2** | Simple past of common verbs = A2 |
| Präteritum der Modalverben | B1 M6-L29 | **A2** (if modals taught in A1) | |
| Nebensätze mit weil, da, obwohl | B1 M1-L4 | **A2** | Basic subordinating conjunctions = A2 |
| Wechselpräpositionen | B1 M4-L20 | **A2** | Two-way prepositions = A2 |
| Konjunktiv II (würde) | B1 M2-L10 | **B2** | Hypothetical = B2 |
| Passive Präsens | B1 M2-L11 | **B2** | Passive = B2 per Goethe CEFR |
| Partizipialattribute | B2 M5-L3 | **C1** | Complex formal structure = C1 |
| Nomen-Verb-Verbindungen | B2 M3-L3 | **C1** | Academic collocations = C1 |
| Wortbildung | C2 M1-L1 | **C1** | B2/C1 topic |
| Literarische Textanalyse | C2 M2-L1 | **C1** | C1 academic skill |

---

## 7. LESSONS TO DELETE

Every lesson across ALL levels is generated from a template. The following **must be deleted** because they are duplicates of adjacent content:

### 7.1 Pure Template Duplicates (Delete entire lessons)

| Lesson | Level | Reason |
|--------|:-----:|--------|
| "Translate: I learn German" exercise | ALL levels | Identical in every lesson |
| "How do you say 'please' in German?" test Q | ALL levels above A1 | Not appropriate for B2+ |
| "Which article is feminine?" test Q | ALL levels above A1 | Not appropriate for B2+ |
| "All German nouns are capitalized" test Q | ALL levels above A1 | Not appropriate for B2+ |
| "Ich ___ (to be) Student" test Q | ALL levels above A1 | Not appropriate for B2+ |
| Present Tense grammar entry | A2, B1, B2, C1, C2 | Already taught in A1 |
| Common Mistakes grammar entry | ALL levels | Same text in every lesson |
| Culture note template | ALL lessons | Generic placeholder text |

### 7.2 A1 Internal Duplicates

| Lesson | Reason |
|--------|--------|
| A1 M2-L2: Verwandte und Beziehungen | Uses same vocab as A1 M2-L1 (Die Familie) |
| A1 M2-L4: Die Uhrzeit | Uses same vocab as A1 M2-L3 (Mein Tagesablauf) — merge |
| A1 M2-L5: Meine Familie vorstellen | Same vocab as M2-L1 and L2 — merge into L1 |
| A1 M2-L6: Test: Familie und Alltag | Same vocab as other module 2 lessons |
| Every module test lesson (6 per level) | Uses same vocab as module lessons — rationalize |

### 7.3 A2 Internal Duplicates

| Lesson | Reason |
|--------|--------|
| A2 M1-L2: Getränke und Mahlzeiten | Same 30-word vocab as M1-L1 |
| A2 M1-L3: Perfekt mit haben/sein | Grammar lesson with same vocab as M1-L1 |
| A2 M1-L4: Im Restaurant bestellen | Same vocab as M1-L1 |
| A2 M1-L5: Kochen und Rezepte | Same vocab as M1-L1 |
| A2 M1-L6: Test: Essen und Trinken | Same vocab as M1-L1 |
| [Same pattern for every A2 module — lessons within a module share identical vocab] |

### 7.4 Cross-Level Duplicates

| Lesson A | Lesson B | Action |
|----------|----------|--------|
| A1 M3-L4: Wohnungssuche | B2 Integration: Wohnungssuche Berlin | Keep B2 version (advanced), delete A1 version |
| A1 M4-L1: Lebensmittel | A2 M1-L1: Lebensmittel und Nahrungsmittel | Keep A1, delete A2 version |
| A1 M6-L1: Verkehrsmittel | A2 M3-L3: Öffentliche Verkehrsmittel | Keep A2 version, delete A1 |
| A1 M6-L4: Das Wetter | A2 M5-L1: Das Wetter | Keep A2, delete A1 |
| A1 M4-L4: Im Restaurant | A2 M1-L4: Im Restaurant bestellen | Keep A2 (more detailed), delete A1 |
| A1 M4-L3: Im Supermarkt | A2 M2-L3: Einkaufen: Kleidung kaufen | Different enough (food vs clothes) but vocab overlaps |

---

## 8. LESSONS TO MERGE

| Lessons to Merge | Into | Rationale |
|------------------|:----:|-----------|
| A1 M2-L1 (Die Familie) + L2 (Verwandte) + L5 (Familie vorstellen) | A1 M2-L1 | Single consolidated family lesson |
| A1 M2-L3 (Tagesablauf) + L4 (Uhrzeit) | A1 M2-L3 | Time telling is part of daily routine |
| A1 M1-L3 (Zahlen 1-20) + L4 (Zahlen 21-100) | A1 M1-L3 | Single numbers lesson |
| B1 Passive (M2-L11) + B2 Passive mit Modalverben (M1-L3) | B2 | Single B2 passive lesson covering Präsens + Modal |
| B1 Konjunktiv II (M2-L10) + B2 Konjunktiv II (M2-L3) | B2 | Single B2 Konjunktiv II lesson |
| A1 generic vocab pool (items 19-30) | Remove from all lessons | These words should appear in dedicated lessons only |
| A2 generic vocab pool (items 7-30) | Remove from all lessons | These words should appear in dedicated lessons only |

---

## 9. FINAL OPTIMIZED COURSE STRUCTURE

### A1 — Beginner (6 modules, ~25 lessons)

| Module | Lessons | Grammar Focus | Unique Vocab |
|--------|---------|:-------------:|-------------|
| 1. Hallo! Erste Schritte | 4 lessons (merge numbers) | sein, haben, regular Präsens, du/Sie | Greetings, alphabet, numbers 1-100, countries |
| 2. Familie und Alltag | 3 lessons (merge family + daily routine) | Possessivartikel (mein/dein), time | Family, daily routine, time |
| 3. Wohnen | 4 lessons | Articles (der/die/das), basic adjectives | Home, furniture, rooms |
| 4. Essen und Einkaufen | 4 lessons | möchten, kein/keine, basic Accusative | Food, drinks, shopping, prices |
| 5. Arbeit und Berufe | 3 lessons | sein/haben for professions, basic modal können | Professions, workplace |
| 6. Reisen und Freizeit | 4 lessons | Separable verbs (fahren, gehen), gern | Transport, weather, hobbies, hotel |
| **Abschlusstest** | 1 lesson | Cumulative | Cumulative |

### A2 — Elementary (6 modules, ~25 lessons)

| Module | Lessons | Grammar Focus | Unique Vocab |
|--------|---------|:-------------:|-------------|
| 1. Essen und Trinken (refined) | 4 lessons | Perfekt mit haben/sein, Dativ | Cooking, recipes, detailed food |
| 2. Kleidung und Mode | 4 lessons | Accusative, comparative/superlative | Clothing, colors, materials |
| 3. Stadt und Orientierung | 4 lessons | Wechselpräpositionen, Modalverben (müssen, dürfen) | City, directions, transport |
| 4. Gesundheit und Körper | 4 lessons | Imperative, Reflexive Verben | Body, doctor, pharmacy |
| 5. Wetter, Natur und Jahreszeiten | 3 lessons | Präteritum (war, hatte, wusste), es gibt | Weather, seasons, nature |
| 6. Feste, Traditionen und Reisen | 4 lessons | Perfekt review, Präteritum Modalverben | Holidays, traditions, travel |
| **Abschlusstest** | 1 lesson | Cumulative | Cumulative |

### B1 — Intermediate (6 modules, ~25 lessons)

| Module | Lessons | Grammar Focus | Unique Vocab |
|--------|---------|:-------------:|-------------|
| 1. Alltag und Gesellschaft | 4 lessons | Nebensätze (weil, dass, obwohl), TeKaMoLo | Society, community |
| 2. Arbeit und Karriere | 4 lessons | Relativsätze (Nominativ, Akkusativ, Dativ) | Professions, applications |
| 3. Medien und Kommunikation | 4 lessons | Adjektivdeklination, als/wie | Media, technology |
| 4. Bildung und Lernen | 4 lessons | Indefinitpronomen (man, jemand), Infinitiv mit zu | Education, learning |
| 5. Umwelt und Nachhaltigkeit | 4 lessons | Infinitivsätze (um...zu, damit), Futur I | Environment, recycling |
| 6. Reisen, Kultur und interkulturelle Kompetenz | 4 lessons | Je...desto, comparative review | DACH landmarks, travel |
| **Abschlusstest** | 1 lesson | Cumulative | Cumulative |

### B2 — Upper Intermediate (6 modules, ~25 lessons)

| Module | Lessons | Grammar Focus | Unique Vocab |
|--------|---------|:-------------:|-------------|
| 1. Berufliche Kommunikation | 4 lessons | Passiv (Präsens, Präteritum, Perfekt) | Business, meetings, correspondence |
| 2. Gesellschaft und Politik | 4 lessons | Konjunktiv II (hätte, wäre, würde) | Politics, social issues |
| 3. Wissenschaft und Technik | 4 lessons | Kausalsätze (wegen, aufgrund, dank + Genitiv) | Science, technology, AI |
| 4. Wirtschaft und Finanzen | 4 lessons | Genitivpräpositionen | Economics, banking |
| 5. Kunst und Literatur | 4 lessons | Partizip I/II als Adjektive | Art, literature, culture |
| 6. Deutschland, Österreich, Schweiz | 4 lessons | Passiversatz (bekommen/kriegen + indirektes Passiv) | History, DACH specifics |
| **Abschlusstest** | 1 lesson | Cumulative | Cumulative |

### C1 — Advanced (6 modules, ~22 lessons)

| Module | Lessons | Grammar Focus | Unique Vocab |
|--------|---------|:-------------:|-------------|
| 1. Akademisches Deutsch | 4 lessons | Nominalisierung, Funktionsverbgefüge | Academic vocabulary |
| 2. Beruf und Karriere (advanced) | 4 lessons | Partizipialattribute, erweiterte Infinitivsätze | Leadership, negotiation |
| 3. Medien und Diskurs | 3 lessons | Indirekte Rede (Konjunktiv I), Modalpartikeln | Media analysis, discourse |
| 4. Umwelt und Klima | 4 lessons | Nominalstil vs Verbalstil, komplexe Satzgefüge | Climate, sustainability |
| 5. Literatur und Textanalyse | 4 lessons | Stilistische Mittel, Textkohärenz | Literary analysis, interpretation |
| 6. Wissenschaftskommunikation | 3 lessons | Wissenschaftssprache, Zitierregeln | Research, publishing |
| **Abschlusstest** | 1 lesson | Cumulative | Cumulative |

### C2 — Mastery (6 modules, ~18 lessons)

| Module | Lessons | Grammar Focus | Unique Vocab |
|--------|---------|:-------------:|-------------|
| 1. Linguistik und Stilistik | 3 lessons | Stilregister, Sprachvarietäten | Advanced linguistics |
| 2. Literatur und Interpretation | 3 lessons | Rhetorische Mittel, Intertextualität | Advanced literary criticism |
| 3. Pragmatik und Diskursanalyse | 3 lessons | Diskursmarker, Konversationsanalyse | Pragmatics, discourse |
| 4. Übersetzung und Sprachmittlung | 3 lessons | Übersetzungstheorie, Äquivalenz | Translation techniques |
| 5. Wissenschaftskommunikation (advanced) | 3 lessons | Wissenschaftsjournalismus, Popularisierung | Science communication |
| 6. Sprachvariation und Sprachwandel | 3 lessons | Soziolinguistik, Sprachgeschichte | Dialects, language change |
| **Abschlusstest** | 1 lesson | Cumulative | Cumulative |

---

## 10. ONE CANONICAL OWNER — FINAL CONFIRMATION

| Concept | Primary Level | Review Allowed In | Notes |
|---------|:------------:|:-----------------:|-------|
| **Present Tense (Präsens)** | **A1** | A2 (review) | Never full re-teaching after A1 |
| **sein/haben** | **A1** | A2, B1 | Only in Präteritum form later |
| **Definite Articles** | **A1** | A2 | |
| **Personal Pronouns** | **A1** | A2 | |
| **du/Sie distinction** | **A1** | A1 (first lesson) | |
| **Numbers 1-100** | **A1** | Never recycle | |
| **Possessive Articles** | **A1** | A2 | |
| **Imperative** | **A1** | A2 (review) | |
| **Accusative Case** | **A1** | A2 | |
| **Modal Verbs (können, müssen)** | **A1** | A2 (dürfen, sollen) | B1 introduces Präteritum form |
| **Perfect Tense (Perfekt)** | **A2** | B1 (review only) | |
| **Dative Case** | **A2** | B1 | |
| **Wechselpräpositionen** | **A2** | B1 | |
| **Comparative/Superlative** | **A2** | B1 | |
| **Präteritum (war, hatte, wusste)** | **A2** | B1 | |
| **Präteritum (Modalverben)** | **A2** | B1 | |
| **Reflexive Verbs** | **A2** | B1 | |
| **Nebensätze (weil, dass, obwohl)** | **A2** | B1 (um...zu, damit) | |
| **Relativsätze** | **B1** | B2 (extended) | |
| **Adjektivdeklination** | **B1** | B2 | |
| **Infinitiv mit zu** | **B1** | B2 | |
| **Futur I** | **B1** | B2 | |
| **Je...desto** | **B1** | B2 | |
| **Konjunktiv II (würde)** | **B2** | C1 (hätte/wäre) | |
| **Passiv (Präsens/Präteritum)** | **B2** | C1 | |
| **Passiv mit Modalverben** | **B2** | C1 | |
| **Genitiv** | **B2** | C1 | |
| **Kausalsätze (wegen, aufgrund)** | **B2** | C1 | |
| **Partizipialattribute** | **C1** | C2 | |
| **Nominalisierung** | **C1** | C2 | |
| **Funktionsverbgefüge** | **C1** | C2 | |
| **Konjunktiv I (indirekte Rede)** | **C1** | C2 | |
| **Modalpartikeln** | **C1** | C2 | |
| **Erweiterte Infinitivsätze** | **C1** | C2 | |
| **Stilistische Mittel** | **C1** | C2 | |
| **Wortbildung (Komposition)** | **C1** | C2 | |
| **Diskursmarker** | **C2** | None | Mastery |
| **Sprachvarietäten** | **C2** | None | Mastery |
| **Implikatur/Sprechakte** | **C2** | None | Mastery |
| **Übersetzungstheorie** | **C2** | None | Mastery |

---

## 11. CRITICAL BUGS IN DATA STRUCTURE

1. **Schema gap**: `public.profiles.current_level` CHECK constraint only allows A1-C1, but C2 exists in `course_levels` table
2. **Schema gap**: `public.course_levels` lacks `C2` in profiles constraint
3. **Schema gap**: `lesson_type` CHECK constraint in `00026_advanced_courses_phase2.sql` allows 'pronunciation' for A1 but `00025_advanced_courses.sql` only lists specific types — mismatch
4. **Missing indexes**: No index on `lesson_vocabulary(german_word)` — critical for dedup detection
5. **Missing constraint**: No UNIQUE constraint on `(german_word, level)` in `lesson_vocabulary` — allows the same word in same level

---

## Summary of Required Actions

| Action | Count |
|--------|:-----:|
| Lessons to delete (template duplicates) | ~150+ |
| Lessons to merge (internal module duplicates) | ~40+ |
| Vocabulary entries to deduplicate | ~1,500+ |
| Grammar entries to consolidate | ~140+ (Pres tense repeats) |
| Test questions to fix (B2+/A1 questions) | ~1,200+ (across all levels) |
| Exercises to rewrite (template repeats) | ~1,200+ |
| Lessons to move between levels | ~12 |
| Lessons to rewrite from scratch | ~273 (all lessons need unique content) |

## Final Verdict

**The curriculum needs a complete rebuild from the ground up.** The template-based generation has produced content where every lesson in A1 is structurally identical to every lesson in C2. The only differences are topic names and first vocabulary words.

The hierarchy of issues:
1. **ALL exercises are identical across levels** — no progression
2. **ALL test questions are identical across levels** — no progression  
3. **ALL grammar entries are the same** — Present Tense taught at C2
4. **Vocabulary is massively duplicated** across and within levels
5. **CEFR placement is wrong** for many grammar topics
6. **Schema constraints don't include C2** in profiles

The estimated effort to fix requires rewriting ~17,000 database rows (across 15 tables × 273 lessons) with genuinely level-appropriate content.
