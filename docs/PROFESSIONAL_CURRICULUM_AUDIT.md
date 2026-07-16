# Professional CEFR Curriculum Audit Report — DeutschMentor AI

**Audit Date:** July 2026
**Levels Audited:** A1, A2, B1, B2, C1, C2
**Total Modules:** 47
**Total Lessons:** 273
**Total Vocab Entries:** 1,958 | **Grammar:** 200 | **Exercises:** 1,434 | **Test Questions:** 1,670
**Methodology:** CEFR (GER) framework, Goethe-Institut curriculum standards, Telc Deutsch guidelines

---

## A. Global Problems

### A1. Template-Generated Content (CRITICAL — affects ALL levels)

The entire curriculum was generated from a fixed script. Every lesson across ALL 6 levels follows this identical pattern:

| Slot | Component | Fixed Content |
|------|-----------|---------------|
| 1 | Grammar #1 | `Präsens der regelmäßigen Verben (Present Tense)` — same text, **173 times** |
| 2 | Grammar #2 | `Culture: {Topic} in German-Speaking Countries` — only topic name changes |
| 3 | Grammar #3 | `Common Mistakes for Arabic Speakers` — same text, **173 times** |
| 4 | Exercise #1 | `What does "{first_vocab_word}" mean?` — MCQ on first word only |
| 5 | Exercise #2 | `Complete with the correct form.` — vague, no context |
| 6 | Exercise #3 | `Translate: "I learn German."` — same sentence in every lesson |
| 7 | Exercise #4 | `Order the sentence.` — no specific sentence given |
| 8 | Exercise #5 | `Match the words with their meanings.` — no pairs specified |
| 9 | Exercise #6 | `Translate to German: "This is a translation exercise."` — in EVERY lesson |
| 10 | Test Q #1 | `What is the main topic of this lesson?` — meta, not a real test |
| 11 | Test Q #2 | `This lesson teaches vocabulary about {Topic}.` — True (always) |
| 12 | Test Q #3 | `German word order is always the same as English.` — False |
| 13 | Test Q #4 | `How do you say "please" in German?` — Bitte |
| 14 | Test Q #5 | `Which article is feminine?` — die |
| 15 | Test Q #6 | `Ich ___ (to be) Student.` — bin |
| 16 | Test Q #7 | `What is the correct word order?` — Ich lerne Deutsch |
| 17 | Test Q #8 | `All German nouns are capitalized.` — True |
| 18 | Test Q #9 | `How do you say "thank you" in German?` — Danke |
| 19 | Test Q #10 | `Wo ___ du? (to live)` — wohnst |

**Impact:** A C2 student taking the C2 Abschlusstest is asked "How do you say 'please' in German?" and "Which article is feminine?" — this is not merely a flaw, it makes the platform unusable as a serious CEFR course.

### A2. Vocabulary Recycling (STRUCTURAL)

Each module's lessons share an **identical 30-word vocabulary list**. Example:

- A2 M1 (Essen und Trinken): All 6 lessons teach exactly `{das Brot, die Milch, der Käse, ...}`
- A2 M2 (Kleidung und Mode): All 6 lessons teach exactly `{der Mantel, das Hemd, die Hose, ...}`
- B1 M1 (Alltag und Gesellschaft): All 6 lessons teach exactly `{aufstehen, frühstücken, arbeiten, ...}`
- B2 M1 (Berufliche Kommunikation): All 6 lessons teach exactly `{die Wirtschaft, das Unternehmen, die Aktie, ...}`

**This means:** Lesson 6 (the test) has the same 30 vocab words as Lesson 1. The student does not learn 180 new words in Module 1 — they learn 30 words and see them 6 times in a row with no new context.

**Fixed:** Each lesson within a module must have its OWN vocabulary set, progressing from core → extended → applied.

### A3. Present Tense Taught at C2 (CEFR VIOLATION)

`Präsens der regelmäßigen Verben` appears as the primary grammar in:
- A1 (correct — though too often)
- A2 (35 times — should not be primary grammar)
- B1 (32 times — CE FR violation)
- B2 (28 times — severe CEFR violation)
- C1 (23 times — destroys academic credibility)
- C2 (19 times — should trigger an alarm)

**Official CEFR:** Present tense is A1 content. After A1, it should appear only in error correction or advanced usage (Konjunktiv, Passivumschreibungen).

### A4. Generic Pool Words Contaminate All Levels

A fixed set of ~30 words appears as "vocabulary" in nearly every lesson across A1-C2:

`einkaufen, der Preis, bezahlen, der Euro, das Geschäft, der Markt, die Tasche, der Rabatt, die Reise, der Zug, das Ticket, der Bahnhof, der Flughafen, das Hotel, der Pass, der Koffer, das Restaurant, die Speisekarte, bestellen, der Kellner, trinken, die Rechnung, lecker, der Arzt, das Krankenhaus, die Medizin, gesund, krank, die Apotheke, die Versicherung`

These are **legitimate A1/A2 words** — but they should NOT appear as "new vocabulary" in B2/C1/C2 lessons. They should be assumed known at those levels.

### A5. Module Structure Imbalance

| Level | Modules | Lessons | Avg Lessons/Module | Optimal |
|-------|:-------:|:-------:|:------------------:|:-------:|
| A1 | 6 | 36 | 6.0 | 6 |
| A2 | 6 | 35 | 5.8 | 6 |
| B1 | 6 | 32 | 5.3 | 5-6 |
| B2 | 6 | 28 | 4.7 | 5 |
| C1 | 6 | 23 | 3.8 | 4 |
| C2 | 6 | 19 | 3.2 | 3-4 |

The decreasing lesson count (36→19) is correct directionally, but the REASON is wrong — it's because the template generator ran fewer iterations, not because of intentional design.

### A6. Duration Values Are Placeholder

All modules are set to 4-6 hours regardless of lesson count, complexity, or level. No systematic duration calculation was performed.

### A7. C2 Not in Schema Constraint

`public.profiles.current_level` CHECK constraint allows only A1-C1. C2 exists in `course_levels` but cannot be selected as a user's level. This is a critical schema bug.

### A8. Missing Grammar Topics

| Missing Topic | Required At | Needed For |
|---------------|:-----------:|------------|
| Modal verbs (können, müssen, dürfen, sollen, wollen) | A1 M1 | Basic communication |
| Reflexive verbs (sich waschen, sich fühlen) | A2 M4 | Daily routine, health |
| Adjective declension (nominative + accusative) | A2 | Describing people/things |
| Comparative/Superlative (already exists at A2) | A2 M2 only | Keep as is |
| Word order: TeKaMoLo | B1 | Natural sentence structure |
| Indefinite pronouns (man, jemand, niemand, etwas) | B1 | General statements |
| N-Deklination (der Herr → den Herrn) | B1 | Correct weak noun declension |
| Indirect speech (Konjunktiv I) | C1 | Academic writing |
| Modal particles (doch, ja, eben, halt) | B2/C1 | Natural speech |
| Prepositional verbs (warten auf, denken an) | B1 | Correct verb usage |
| Extended participial phrases (attributive) | C1 | Formal written German |
| Nominalization | C1 (exists) | Keep as is |
| Discourse markers (also, nämlich, übrigens) | B2 | Coherent speech |

---

## B. Duplicate Content

### B1. Duplicate Modules (same theme, different level)

| Original | Duplicate | CEFR Violation | Recommended Action |
|----------|-----------|:--------------:|--------------------|
| A1: Essen und Einkaufen (M4) | A2: Essen und Trinken (M1) | A2 refeeds A1 topic | **Merge**: Keep A1 as basic, A2 as advanced. Remove food vocab from A2 M1 generic pool. |
| A1: Reisen und Freizeit (M6) | A2: Feste, Traditionen und Reisen (M6) | A2 has travel again | **Differentiate**: A1 = transport, hotel. A2 = holidays, travel stories. OK if distinct. |
| A1: Wetter (M6-L4) | A2: Wetter, Natur (M5) | Same topic expanded | **OK**: A2 is properly more detailed. But delete A1 M6-L4 weather to keep one canonical. |
| A1: Arbeit und Berufe (M5) | B1: Arbeit und Karriere (M2) | A1 jobs basics → B1 applications | **OK**: A1 = naming jobs. B1 = applying for jobs. |
| B1: Umwelt und Nachhaltigkeit (M5) | B2: Klima/Umwelt (partial) | B2 has climate audio | **OK**: B1 = basics, B2 = policy discussion. But deduplicate vocab. |
| C1: Fachsprachen (M4) | C2: Wissenschaftskommunikation (M5) | Both about specialized communication | **Merge**: Move C2 M5 content into C1 M4. Delete C2 M5. |
| C1: Stilistische Analyse (M2) | C2: Linguistik und Stilistik (M1) | Both cover style/rhetoric | **Merge**: C1 = analysis, C2 = advanced stylistics. But deduplicate vocab — "der Stil", "das Register", "das Stilmittel" appear in both. |

### B2. Duplicate Lessons Within Same Level

| A1 — Module 2 | | |
|---------------|-------------------|---------------------|
| Lesson 1: Die Familie | Lesson 2: Verwandte und Beziehungen | **Same vocab** (die Familie, der Vater, die Mutter...) |
| Lesson 3: Mein Tagesablauf | Lesson 4: Die Uhrzeit | **Overlapping** (time is part of daily routine) |
| Lesson 1: Die Familie | Lesson 5: Meine Familie vorstellen | **Same vocab** |
| **Action:** Merge L1+L2+L5 → one "Familie" lesson. Merge L3+L4 → one "Tagesablauf" lesson. |

| A1 — Module 1 | | |
|-----------------|-------------------|---------------------|
| Lesson 1: Begrüßungen | Lesson 2: Das Alphabet | **Different topics** but **same vocab** (Hallo, Guten Morgen...) |
| Lesson 3: Zahlen 1-20 | Lesson 4: Zahlen 21-100 | **Same topic split** unnecessarily |
| Lesson 5: Länder | Lesson 6: Erste Gespräche | **Same vocab** as Lesson 1 |
| **Action:** Merge L3+L4. Keep L1 and L2 but give L2 its own vocab. Remove generic pool vocab from L5, L6. |

| A2 — Module 1 (all 6 lessons) | | |
|-------------------------------|-------------------|---------------------|
| L1: Lebensmittel | L2-L6: all lessons | **Same 30-word vocab list** across ALL 6 lessons |
| **Action:** Keep vocab only in L1. Give L2-L6 their own unique vocab sets. |

### B3. Duplicate Test Questions Across ALL Levels

The following 8 test questions appear in **every single lesson** from A1 through C2:

| Question | Appears In | Should Appear In |
|----------|:----------:|:----------------:|
| German word order is always the same as English. | ALL 273 lessons | A1 only |
| How do you say "please" in German? | ALL 273 lessons | A1 only |
| Which article is feminine? | ALL 273 lessons | A1 only |
| Ich ___ (to be) Student. | ALL 273 lessons | A1 only |
| What is the correct word order? | ALL 273 lessons | A1 only |
| All German nouns are capitalized. | ALL 273 lessons | A1 only |
| How do you say "thank you" in German? | ALL 273 lessons | A1 only |
| Wo ___ du? (to live) | ALL 273 lessons | A1 only |

**Fix:** Delete all 8 questions from every lesson above A1. Replace with level-appropriate questions.

### B4. Duplicate Exercises Across ALL Levels

| Exercise | Appears In | Should Appear In |
|----------|:----------:|:----------------:|
| Translate: "I learn German." | ALL 273 lessons | A1 only |
| Translate to German: "This is a translation exercise." | ALL 273 lessons | A1 only |
| Order the sentence. | ALL 273 lessons | Remove — no specific sentence |
| Match the words with their meanings. | ALL 273 lessons | Remove — no pairs specified |

---

## C. Module-by-Module Review

### C1. A1 — Beginner (6 modules, 36 lessons)

#### A1 M1: Hallo! Erste Schritte (4h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Begrüßungen und Vorstellungen | 30 | OK topic | Keep. Rename to "Begrüßungen, Vorstellung und erste Fragen" |
| 2 | Das Alphabet | 30 | OK topic but **same vocab as L1** | Keep. Assign unique alphabet vocab. |
| 3 | Zahlen 1-20 | 25 | | **Merge with L4** → "Zahlen 1–100" |
| 4 | Zahlen 21-100 | 25 | Same vocab as L3 | Delete (merged into L3) |
| 5 | Länder und Nationalitäten | 30 | Same vocab as L1 | Keep. Assign unique country vocab. |
| 6 | Erste Gespräche führen | 35 | Same vocab as L1 | Keep as capstone. Assign unique conversation phrases. |

**Module Assessment:** Acceptable topic selection but poor vocab assignment. Same 10 vocab words for 4 of 6 lessons.
**Optimized (5 lessons):**
1. Begrüßungen, Vorstellung und erste Fragen (30 min) — greetings, name, how are you
2. Das Alphabet und Aussprache (30 min) — letters, umlauts, ß, basic pronunciation
3. Zahlen 1–100 (30 min) — merged numbers lesson
4. Länder, Sprachen und Nationalitäten (30 min) — countries, languages, "Ich komme aus..."
5. Erste Gespräche: sich vorstellen und fragen (35 min) — roleplay: introducing yourself
**Total:** 155 min (was 175 min)
**Unique vocab per lesson:** Yes — each lesson gets its own word list.

#### A1 M2: Familie und Alltag (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Die Familie | 30 | | **Keep** as base vocab |
| 2 | Verwandte und Beziehungen | 25 | Same vocab as L1 | **Merge into L1** |
| 3 | Mein Tagesablauf | 30 | | **Keep** |
| 4 | Die Uhrzeit | 25 | Overlaps L3 | **Merge into L3** |
| 5 | Meine Familie vorstellen | 20 | Same vocab as L1 | **Merge into L1** as speaking practice |
| 6 | Test: Familie und Alltag | 25 | Same vocab as L1 | **Keep** as module test but unique test questions |

**Optimized (4 lessons):**
1. Die Familie und Verwandte (35 min) — family members, relationships, possessive articles
2. Mein Tagesablauf und die Uhrzeit (35 min) — daily routine with time telling
3. Grammatik: Possessivartikel (mein/dein/sein) und regelmäßige Verben (30 min) — focused grammar
4. Test: Familie und Alltag (25 min)
**Total:** 125 min (was 155 min)

#### A1 M3: Wohnen (4h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Mein Zuhause | 30 | | Keep |
| 2 | Möbel und Haushaltsgegenstände | 30 | | Keep (unique vocab ✓) |
| 3 | Die Wohnung beschreiben | 30 | Grammar focus on adj. after "sein" | Keep. Rename "Wohnungen beschreiben: Adjektive" |
| 4 | Wohnungssuche | 25 | **Too complex for A1** — this is B1/B2 topic | **Move to B2** apartment module. Replace with "Wo wohne ich? — Orte und Gebäude" |
| 5 | Meine Wohnung präsentieren | 20 | Same vocab as L1 | Merge into L1 |
| 6 | Test: Wohnen | 20 | | Keep |

**Optimized (5 lessons):**
1. Mein Zuhause: Räume und Zimmer (30 min)
2. Möbel und Haushaltsgegenstände (30 min)
3. Wohnungen beschreiben: Adjektive und Farben (30 min)
4. Wo wohne ich? — Orte, Gebäude und Adressen (25 min) — replacement for apartment search
5. Test: Wohnen (20 min)
**Total:** 135 min (was 155 min)

#### A1 M4: Essen und Einkaufen (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Lebensmittel | 30 | | Keep |
| 2 | Getränke und Mahlzeiten | 25 | **A2-level topic** at A1? Actually fine. | Keep but unique vocab |
| 3 | Im Supermarkt | 30 | | Keep |
| 4 | Im Restaurant | 30 | | Keep |
| 5 | Mengen und Preise | 25 | Same generic pool vocab | Keep (unique concepts) |
| 6 | Test: Essen und Einkaufen | 25 | | Keep |

**Assessment:** This is actually the best module. 5 different topics with 5 different vocabulary sets. Only L5 vocab needs fixing (Mengen = das Kilo, der Liter ✓ already unique).
**Optimized (6 lessons — keep as is):**
1. Lebensmittel (30 min)
2. Getränke und Mahlzeiten (25 min)
3. Im Supermarkt: Einkaufsgespräche (30 min)
4. Im Restaurant: Bestellen und Bezahlen (30 min)
5. Mengen, Preise und Bezahlen (25 min)
6. Test: Essen und Einkaufen (25 min)
**Duration verification:** 165 min = ~2h45. Module says 5h. **DISCREPANCY.** With speaking/listening practice, 5h is reasonable.

#### A1 M5: Arbeit und Berufe (4h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Berufe | 30 | | Keep |
| 2 | Am Arbeitsplatz | 30 | Same generic pool vocab | Keep (unique workplace vocab ✓) |
| 3 | Telefonnummer und E-Mail | 25 | Too narrow. **Merge with L4** | **Merge into L4** as part of office communication |
| 4 | Im Büro | 30 | Overlaps L2 | Keep (unique office vocab ✓) |
| 5 | Was sind Sie von Beruf? | 20 | Same vocab as L1 | **Merge into L1** as speaking practice |
| 6 | Test: Arbeit und Berufe | 20 | | Keep |

**Optimized (4 lessons):**
1. Berufe: Was sind Sie von Beruf? (35 min) — merge L1+L5
2. Am Arbeitsplatz: Orte und Gegenstände (30 min)
3. Im Büro: Telefon, E-Mail und Kommunikation (35 min) — merge L3+L4
4. Test: Arbeit und Berufe (20 min)
**Total:** 120 min (was 155 min)

#### A1 M6: Reisen und Freizeit (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Verkehrsmittel | 30 | | Keep |
| 2 | Am Bahnhof | 30 | Overlaps L1 transport | **Merge into L1** |
| 3 | Hobbys und Freizeit | 30 | | Keep |
| 4 | Das Wetter | 25 | **Too advanced** — weather vocabulary at A1 is fine. But duplicates A2 M5. | **Keep at A1** (weather at A1 is standard). Delete A2 M5 weather. |
| 5 | Im Hotel | 30 | | Keep |
| 6 | A1 Abschlusstest | 45 | | Keep |

**Optimized (5 lessons):**
1. Verkehrsmittel: Bus, Bahn, Auto und Fahrrad (35 min) — merge transport + station
2. Hobbys und Freizeitaktivitäten (30 min)
3. Das Wetter und die Jahreszeiten (25 min) — keep at A1
4. Im Hotel: Einchecken und Fragen (30 min)
5. A1 Abschlusstest (45 min)
**Total:** 165 min (was 190 min)

### C2. A2 — Elementary (6 modules, 35 lessons)

#### A2 M1: Essen und Trinken (5h) — CRITICAL ISSUES

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Lebensmittel und Nahrungsmittel | 45 | **Duplicate of A1 M4-L1** | **Delete.** Already learned in A1. Replace with "Vertiefung: Lebensmittel und Verpackungen" |
| 2 | Getränke und Mahlzeiten | 45 | **Duplicate of A1 M4-L2** | **Delete.** Replace with "Mahlzeiten: Frühstück, Mittag, Abendessen" |
| 3 | Perfekt mit haben und sein | 60 | Grammar topic ✓ | **Keep.** Move to be the FIRST lesson — grammar drives the module. |
| 4 | Im Restaurant bestellen | 50 | **Duplicate of A1 M4-L4** | **Rewrite** as "Im Restaurant: Perfekt über Erlebnisse sprechen" |
| 5 | Kochen und Rezepte | 45 | | Keep (unique topic ✓) |
| 6 | Test: Essen und Trinken | 40 | Same vocab as L1 | **Rewrite** test with Perfekt focus |

**All 6 lessons share the same 30-word vocab list.** Each must get its own.
**Optimized (5 lessons):**
1. Perfekt mit haben und sein: Über Vergangenes sprechen (60 min) — grammar first
2. Lebensmittel vertieft: Zutaten und Verpackungen (35 min) — new vocab
3. Kochen und Rezepte (45 min) — cooking verbs, recipe reading
4. Im Restaurant: Bestellen und über Erlebnisse sprechen (40 min) — Perfekt application
5. Test: Essen und Trinken (40 min)
**Total:** 220 min (was 285 min)

#### A2 M2: Kleidung und Mode (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Kleidungsstücke | 45 | | Keep |
| 2 | Farben, Größen und Materialien | 45 | Same vocab as L1 | Give unique vocab: colors, materials |
| 3 | Einkaufen: Kleidung kaufen | 50 | **Shopping from A1** but different context | Keep (unique scenario) |
| 4 | Mode und Stil | 45 | Same vocab as L1 | Give unique vocab: fashion adjectives |
| 5 | Komparativ und Superlativ | 50 | Grammar ✓ | Keep |
| 6 | Test: Kleidung und Mode | 40 | | Keep |

**Optimized (5 lessons — merge L1+L4 vocab, keep structure):**
1. Kleidungsstücke und Accessoires (35 min)
2. Farben, Größen, Materialien (35 min)
3. Kleidung kaufen: Gespräche im Geschäft (40 min)
4. Grammatik: Komparativ und Superlativ (45 min)
5. Test: Kleidung und Mode (40 min)
**Total:** 195 min (was 275 min)

#### A2 M3: Stadt und Orientierung (5h)

**Optimized (5 lessons):**
1. In der Stadt: Orte und Gebäude (35 min)
2. Wegbeschreibung: Fragen und Antworten (40 min)
3. Öffentliche Verkehrsmittel: Bus, Bahn, Tram (35 min)
4. Am Bahnhof und Flughafen: Tickets, Abfahrt, Ankunft (40 min)
5. Test: Stadt und Orientierung (40 min)
**Total:** 190 min (was 270 min)

#### A2 M4: Gesundheit und Körper (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 5 | Der Imperativ | 50 | **Wrong level.** Imperative is A1 | **Move to A1** as part of Module 3 or 4. |
| 6 | Test | 40 | | Keep |

**Optimized (5 lessons):**
1. Der Körper: Körperteile und Organe (35 min)
2. Beim Arzt: Symptome beschreiben (40 min)
3. Gesundheit und Fitness (35 min)
4. In der Apotheke: Medikamente und Fragen (35 min)
5. Test: Gesundheit und Körper (40 min)
**Total:** 185 min (was 270 min)

*Note: Imperative moved to A1. Replace A2 M4-L5 with "Gesund bleiben: Prävention und Tipps".*

#### A2 M5: Wetter, Natur und Jahreszeiten (4h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Das Wetter | 40 | **Duplicate of A1 M6-L4** | **Make canonical:** move A1 weather lesson content here. Delete A1 M6-L4. |
| 2 | Die Jahreszeiten | 40 | Same vocab as L1 | Give unique vocab: seasons, months |
| 3 | Tiere und Natur | 45 | Unique vocab ✓ | Keep |
| 4 | Präpositionen: im, am, um | 45 | **Grammar placement wrong.** Zeitpräpositionen = A1/A2 content. | Keep but rename "Zeitpräpositionen: im, am, um" |
| 5 | Test: Wetter und Natur | 35 | | Keep |

**Optimized (5 lessons):**
1. Das Wetter (35 min) — canonical weather lesson
2. Die Jahreszeiten und die Monate (30 min)
3. Tiere und Natur (35 min)
4. Grammatik: Zeitpräpositionen im, am, um (35 min)
5. Test: Wetter und Natur (35 min)
**Total:** 170 min (was 205 min)

#### A2 M6: Feste, Traditionen und Reisen (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Feste und Feiertage | 45 | | Keep |
| 2 | Geburtstag feiern | 40 | Same vocab as L1 | Give unique vocab |
| 3 | Reiseerfahrungen | 50 | **Overlaps A1 Reisen** but OK (Perfekt focus) | Keep |
| 4 | Postkarte und E-Mail schreiben | 45 | Writing application ✓ | Keep |
| 5 | Kulturelle Unterschiede | 40 | **Too vague for A2** — better at B1 | **Move to B1** Module 1. Replace with "Einladungen: Absagen und Zusagen" |
| 6 | A2 Abschlusstest | 50 | | Keep |

**Optimized (5 lessons):**
1. Feste und Feiertage in Deutschland (40 min)
2. Geburtstag feiern: Einladungen und Geschenke (35 min)
3. Reiseerfahrungen: Im Perfekt erzählen (40 min)
4. Postkarte und E-Mail schreiben (40 min)
5. A2 Abschlusstest (50 min)
**Total:** 205 min (was 270 min)

### C3. B1 — Intermediate (6 modules, 32 lessons)

#### B1 M1: Alltag und Gesellschaft (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Tagesablauf und Alltag | 45 | **Duplicate of A1 M2-L3.** Daily routine is A1. | **Replace** with "Alltag in Deutschland: Feste, Termine, Verabredungen" |
| 2 | Gesellschaft und Zusammenleben | 45 | | Keep |
| 3 | Präteritum: sein, haben, wissen | 60 | **Wrong level.** This is A2 content. **Move to A2.** | **Move to A2** M1 or M6. Replace with "Modalverben im Präteritum" |
| 4 | Nebensätze mit weil, da, obwohl | 60 | **Too basic for B1.** Should be A2. | **Move to A2.** Replace with "Nebensätze: dass, ob, wenn" |
| 5 | Einladungen und Verabredungen | 50 | **From A2 M6** — good fit here | Keep |
| 6 | Test: Alltag und Gesellschaft | 40 | | Keep |

**Missing from this module:** Reflexive verbs, adjective declension, indefinite pronouns
**Optimized (5 lessons):**
1. Gesellschaft und Zusammenleben (45 min)
2. Einladungen, Verabredungen und Höflichkeit (45 min)
3. Grammatik: Reflexive Verben und Adjektivdeklination (55 min)
4. Grammatik: Nebensätze mit dass, ob, wenn und Indefinitpronomen (55 min)
5. Test: Alltag und Gesellschaft (40 min)
**Total:** 240 min

#### B1 M2: Arbeit und Karriere (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Berufe und Arbeitsplätze | 45 | **Duplicate of A1 M5.** Naming professions is A1. | **Rewrite** as "Arbeitswelt: Berufe, Branchen und Positionen" — deeper vocab |
| 2 | Bewerbung und Lebenslauf | 60 | | Keep |
| 3 | Das Vorstellungsgespräch | 60 | | Keep |
| 4 | Konjunktiv II (würde + Infinitiv) | 60 | **Wrong level.** Konjunktiv II is B2 per CEFR. | **Move to B2.** Replace with "Sätze verbinden: Relativsätze" |
| 5 | Das Passiv im Präsens | 60 | **Wrong level.** Passive is B2 per CEFR. | **Move to B2.** Replace with "Infinitiv mit zu und um...zu" |
| 6 | Test: Arbeit und Karriere | 40 | | Keep |

**Optimized (5 lessons):**
1. Arbeitswelt: Berufe, Branchen und Positionen (40 min)
2. Bewerbung: Lebenslauf und Anschreiben (55 min)
3. Das Vorstellungsgespräch: Fragen und Antworten (55 min)
4. Grammatik: Relativsätze (Nominativ, Akkusativ, Dativ) (55 min)
5. Grammatik: Infinitiv mit zu, um...zu, ohne...zu (55 min)
6. Test: Arbeit und Karriere (40 min)
**Total:** 300 min

#### B1 M3: Medien und Kommunikation (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Medien: Zeitung, Radio, Internet | 45 | | Keep |
| 2 | Soziale Medien und Technologie | 45 | | Keep |
| 3 | Relativsätze (Nominativ, Akkusativ) | 60 | **Too early.** Relativsätze need adjective declension first. | **Move to M2** after adjective declension taught. Replace with "Satzstruktur: TeKaMoLo" |
| 4 | Meinung äußern und diskutieren | 55 | | Keep |
| 5 | | | **Missing:** Konjunktiv II for polite requests | Add "Höfliche Bitten und Ratschläge" |
| 6 | Test | 40 | | Keep |

**Optimized (5 lessons):**
1. Medien: Zeitung, Radio, Internet, Fernsehen (40 min)
2. Soziale Medien und Technologie (40 min)
3. Meinung äußern: Diskutieren und argumentieren (50 min)
4. Grammatik: Satzstruktur — TeKaMoLo und Satzklammer (50 min)
5. Test: Medien und Kommunikation (40 min)
**Total:** 220 min

#### B1 M4: Bildung und Lernen (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Das deutsche Schulsystem | 45 | | Keep |
| 2 | Sprachen lernen | 45 | | Keep |
| 3 | Wechselpräpositionen | 60 | **Wrong level.** This is A2. | **Move to A2** M3. Replace with "Konjunktionen: während, bevor, nachdem" |
| 4 | Eine Präsentation halten | 50 | Good speaking practice | Keep |
| 5 | Test: Bildung | 40 | | Keep |
| - | | | Missing: "Damit/um...zu" for purpose | Add infinitive clauses here |

**Optimized (5 lessons):**
1. Das deutsche Schulsystem (45 min)
2. Sprachen lernen: Erfahrungen und Tipps (40 min)
3. Eine Präsentation halten: Aufbau und Redemittel (50 min)
4. Grammatik: Finalsätze — damit, um...zu (50 min)
5. Test: Bildung und Lernen (40 min)
**Total:** 225 min

#### B1 M5: Umwelt und Nachhaltigkeit (5h)

**Good module.** Keep as is but fix vocab duplication across lessons.
**Optimized (5 lessons):**
1. Umweltschutz und Nachhaltigkeit (40 min)
2. Mülltrennung und Recycling in Deutschland (45 min)
3. Grammatik: Temporale Nebensätze — während, bevor, nachdem, bis (50 min)
4. Unsere Umwelt schützen: Diskussion und Projekt (45 min)
5. Test: Umwelt und Nachhaltigkeit (40 min)
**Total:** 220 min

#### B1 M6: Reisen, Kultur und interkulturelle Kompetenz (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Reiseplanung und Buchung | 45 | **Duplicate** of A1 M6/A2 M6 travel content | **Rewrite** as "Reiseplanung: Strategien und Buchungsportale" |
| 2 | Präteritum der Modalverben | 55 | **Wrong level.** Should be A2 if modals taught in A1. | **Move to A2** M1. Replace with "Vergleiche: Je...desto, als, wie" |
| 3 | Sehenswürdigkeiten in DACH | 50 | | Keep |
| 4 | Je...desto Sätze | 50 | | Keep (but rename: "Vergleichssätze: je...desto und als/wie") |
| 5 | B1 Abschlusstest | 50 | | Keep |

**Optimized (5 lessons):**
1. Reiseplanung: Unterkunft, Transport, Routen (40 min)
2. Sehenswürdigkeiten in Deutschland, Österreich, Schweiz (45 min)
3. Grammatik: Vergleichssätze — je...desto, als, wie (50 min)
4. Kulturelle Unterschiede im Arbeitsleben (45 min) — from A2 M6
5. B1 Abschlusstest (50 min)
**Total:** 230 min

### C4. B2 — Upper Intermediate (6 modules, 28 lessons)

#### B2 M1: Berufliche Kommunikation (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Büro und Arbeitsplatz | 45 | **Duplicate of A1 M5-L2** | **Rewrite** as "Bürokommunikation: Telefon, E-Mail, Termine" |
| 2 | Geschäftskorrespondenz | 60 | | Keep |
| 3 | Passiv mit Modalverben | 55 | **Missing foundation.** Need Passiv Präsens first. | **Add** "Passiv: Bildung und Verwendung" before this. Merge both. |
| 4 | Besprechungen und Meetings | 60 | | Keep |
| 5 | Kausalsätze: wegen, aufgrund, dank | 50 | **CEFR mismatch.** Causal prepositions are B1. | **Move to B1.** Replace with "Nominalisierungen: von Verben zu Nomen" |
| 6 | Test | 45 | | Keep |

**Optimized (5 lessons):**
1. Bürokommunikation: Telefon, E-Mail, Terminkoordination (45 min)
2. Geschäftskorrespondenz: formelle Briefe und E-Mails (55 min)
3. Grammatik: Das Passiv — Bildung und Anwendung (55 min)
4. Besprechungen und Meetings: Leitung und Teilnahme (55 min)
5. Test: Berufliche Kommunikation (45 min)
**Total:** 255 min

#### B2 M2: Gesellschaft und Politik (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Politisches System Deutschlands | 50 | | Keep |
| 2 | Soziale Themen und Diskussionen | 50 | | Keep |
| 3 | Konjunktiv II: hätte, wäre, würde | 60 | **This is the Konjunktiv II home — correct level ✓** | Keep |
| 4 | Eine Debatte führen | 55 | | Keep |
| 5 | | | **Missing:** Passiv mit Modalverben | **Add** from B1 M2-L5 |
| 6 | Test | 40 | | Keep |

**Optimized (5 lessons):**
1. Politisches System Deutschlands (45 min)
2. Soziale Themen: Migration, Bildung, Gesundheit (45 min)
3. Grammatik: Konjunktiv II — hätte, wäre, würde, Modalverben (55 min)
4. Grammatik: Passiv mit Modalverben (45 min)
5. Eine Debatte führen: Argumentation und Diskussion (50 min)
6. Test: Gesellschaft und Politik (40 min)
**Total:** 280 min

#### B2 M3: Wissenschaft und Technik (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Wissenschaftliche Themen | 45 | Vague. | Rename "Wissenschaft und Forschung: Grundbegriffe" |
| 2 | Technologie und Innovation | 45 | | Keep |
| 3 | Nomen-Verb-Verbindungen | 55 | **Wrong level.** Academic collocations = C1. | **Move to C1** M1. Replace with "Futur I und II" |
| 4 | Futur I und II | 55 | **Wrong level.** Futur I is B1. Futur II is B2. | **Move Futur I to B1.** Keep Futur II here. Merge with "Vermutungen ausdrücken" |
| 5 | Test | 40 | | Keep |

**Optimized (4 lessons):**
1. Wissenschaft und Forschung: Grundbegriffe (45 min)
2. Technologie, KI und Digitalisierung (45 min)
3. Grammatik: Futur II und Vermutungen ausdrücken (50 min)
4. Test: Wissenschaft und Technik (40 min)
**Total:** 180 min

#### B2 M4: Wirtschaft und Finanzen (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Wirtschaftliche Grundbegriffe | 45 | **Some vocab overlaps B2 M1** | Differentiate. |
| 2 | Bankwesen und Finanzen | 45 | | Keep |
| 3 | Der Genitiv und Genitivpräpositionen | 50 | **Grammar: wrong order.** Genitiv is B1. | **Move to B1.** Replace with "Kausale Zusammenhänge: aufgrund, dank, trotz + Genitiv" |
| 4 | Test | 40 | | Keep |

**Optimized (4 lessons):**
1. Wirtschaftliche Grundbegriffe: Märkte, Unternehmen, Produktion (45 min)
2. Bankwesen, Finanzen und Steuern (45 min)
3. Grammatik: Kausale und konzessive Angaben — aufgrund, trotz, wegen (50 min)
4. Test: Wirtschaft und Finanzen (40 min)
**Total:** 180 min

#### B2 M5: Kunst und Literatur (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Kunst und Kultur | 45 | | Keep |
| 2 | Deutschsprachige Literatur | 45 | | Keep |
| 3 | Partizipialattribute | 55 | **Wrong level.** Extended participles = C1. | **Move to C1** M1. Replace with "Satzgefüge: komplexe Strukturen" |
| 4 | Test | 40 | | Keep |

**Optimized (4 lessons):**
1. Kunst und Kultur: Malerei, Musik, Theater (45 min)
2. Deutschsprachige Literatur: Epochen und Autoren (50 min)
3. Grammatik: Erweiterte Satzstrukturen und Konnektoren (50 min)
4. Test: Kunst und Literatur (40 min)
**Total:** 185 min

#### B2 M6: Deutschland, Österreich, Schweiz (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Geschichte Deutschlands | 50 | | Keep |
| 2 | Österreich und die Schweiz | 45 | | Keep |
| 3 | Die deutsche Wiedervereinigung | 50 | Too narrow. **Merge with L1.** | Merge into "Geschichte Deutschlands 1945–heute" |
| 4 | B2 Abschlusstest | 45 | | Keep |

**Optimized (4 lessons):**
1. Geschichte Deutschlands: 1945 bis heute (55 min) — merged L1+L3
2. Österreich und die Schweiz: Sprache und Kultur (45 min)
3. Aktuelle Themen: Deutschland in Europa und der Welt (45 min)
4. B2 Abschlusstest (45 min)
**Total:** 190 min

### C5. C1 — Advanced (6 modules, 23 lessons)

#### C1 M1: Akademische Sprache (6h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Wissenschaftliche Grundbegriffe | 50 | **Duplicates B2 M3-L1** | **Rewrite** as higher-level academic vocab |
| 2 | Akademisches Schreiben | 60 | | Keep |
| 3 | Nominalstil vs. Verbalstil | 60 | | Keep |
| 4 | Nomen-Verb-Verbindungen | 55 | **Moved from B2** — correct placement now | Keep |
| 5 | Komplexe Satzstrukturen | 60 | | Keep |
| 6 | Test | 50 | | Keep |

**Add from B2 M5:** Partizipialattribute (C1-level grammar)
**Optimized (6 lessons — keep):**
1. Wissenschaftliche Grundbegriffe (45 min)
2. Akademisches Schreiben: Aufsätze und Exposés (55 min)
3. Grammatik: Nominalstil vs. Verbalstil (55 min)
4. Grammatik: Nomen-Verb-Verbindungen und Funktionsverbgefüge (55 min)
5. Grammatik: Partizipialattribute und komplexe Satzgefüge (55 min)
6. Test: Akademische Sprache (50 min)
**Total:** 315 min

#### C1 M2: Sprache, Stil und Rhetorik (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Rhetorische Mittel | 55 | | Keep |
| 2 | Konjunktiv I: Indirekte Rede | 60 | | Keep |
| 3 | Stilistische Analyse | 55 | **Overlaps C2** M1-L2+L3 | Differentiate: C1 = analysis, C2 = production |
| 4 | Test | 45 | | Keep |

**Optimized (4 lessons):**
1. Rhetorische Mittel: Metapher, Ironie, Übertreibung (50 min)
2. Grammatik: Konjunktiv I — Indirekte Rede in Texten (55 min)
3. Stilistische Analyse: Textsorten und Register (50 min)
4. Test: Sprache, Stil und Rhetorik (45 min)
**Total:** 200 min

#### C1 M3: Diskurs und Argumentation (5h)

**Good module.**
**Optimized (4 lessons):**
1. Argumentationsstrukturen: Thesen, Argumente, Belege (45 min)
2. Grammatik: Konnektoren — trotzdem, dennoch, allerdings, nämlich (50 min)
3. Wissenschaftliche Essays schreiben (55 min)
4. Test: Diskurs und Argumentation (50 min)
**Total:** 200 min

#### C1 M4: Fachsprachen (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Rechtssprache | 55 | | Keep |
| 2 | Medizinische Fachsprache | 55 | | Keep |
| 3 | Test | 45 | | Keep |
| - | | | **Missing:** Technische Fachsprache, Wirtschaftssprache | Add |

**Optimized (4 lessons):**
1. Rechtssprache: Gesetze, Verträge, Urteile (55 min)
2. Medizinische Fachsprache und Arzt-Patient-Kommunikation (50 min)
3. Technische und wirtschaftliche Fachsprache (50 min)
4. Test: Fachsprachen (45 min)
**Total:** 200 min

#### C1 M5: Kultur, Identität und Migration (5h)

**Good module.**
**Optimized (3 lessons):**
1. Migration und Integration: Diskurse und Perspektiven (50 min)
2. Kulturelle Identität: Mehrsprachigkeit und Hybridität (50 min)
3. Test: Kultur, Identität und Migration (45 min)
**Total:** 145 min

#### C1 M6: Globalisierung, Zukunft und Innovation (5h)

**Good module.**
**Optimized (3 lessons):**
1. Globalisierung: Wirtschaft, Kultur, Kritik (50 min)
2. Zukunftsszenarien: Prognosen und Visionen (50 min)
3. C1 Abschlusstest (70 min)
**Total:** 170 min

### C6. C2 — Mastery (6 modules, 19 lessons)

#### C2 M1: Linguistik und Stilistik (6h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Wortbildung: Komposition, Derivation, Konversion | 60 | **Wrong level.** Word formation is C1. | **Move to C1** M1. Replace with "Sprachwandel und Sprachgeschichte" |
| 2 | Stilfiguren: Metapher, Metonymie, Ironie | 60 | **Overlaps C1 M2-L1** | Differentiate: C2 = advanced rhetorical criticism |
| 3 | Sprachvarietäten und Register | 60 | **Overlaps C1 M2-L3** | Differentiate: C2 = deeper dialectology |
| 4 | Test | 50 | | Keep |

**Optimized (4 lessons):**
1. Stilistische Feinheiten: Ironie, Sarkasmus, Konnotation (55 min)
2. Sprachvarietäten und Register vertieft (55 min)
3. Sprachwandel: Historische Entwicklung des Deutschen (55 min)
4. Test: Linguistik und Stilistik (50 min)
**Total:** 215 min

#### C2 M2: Literatur und Interpretation (5h)

**Good module.**
**Optimized (3 lessons):**
1. Literarische Textanalyse: Methoden und Ansätze (55 min)
2. Interpretation und Kritik: Essay und Rezension (60 min)
3. Test: Literatur und Analyse (50 min)
**Total:** 165 min

#### C2 M3: Pragmatik und Diskursanalyse (5h)

**Good module.**
**Optimized (3 lessons):**
1. Sprechakte und Implikaturen (50 min)
2. Diskursmarker, Kohärenz und Konversationsanalyse (55 min)
3. Test: Pragmatik und Diskurs (50 min)
**Total:** 155 min

#### C2 M4: Übersetzung und Sprachmittlung (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Übersetzungstechniken | 60 | | Keep |
| 2 | False Friends und idiomatische Wendungen | 55 | **Wrong level.** False friends = B2. | **Move to B2** M1 or add to B2 M6. Replace with "Konsekutiv- und Simultandolmetschen" |
| 3 | Test | 50 | | Keep |

**Optimized (3 lessons):**
1. Übersetzungstechniken Deutsch–Arabisch (55 min)
2. Konsekutiv- und Simultandolmetschen (55 min)
3. Test: Übersetzung und Sprachmittlung (50 min)
**Total:** 160 min

#### C2 M5: Wissenschaftskommunikation (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Wissenschaftliches Publizieren | 60 | **Overlaps C1 M1-L2** | Differentiate: C2 = publishing strategy |
| 2 | Wissenschaft verständlich kommunizieren | 55 | | Keep |
| 3 | Test | 50 | | Keep |

**Optimized (3 lessons):**
1. Wissenschaftliches Publizieren: Journals, Peer Review, Konferenzen (55 min)
2. Populärwissenschaftliche Kommunikation (55 min)
3. Test: Wissenschaftskommunikation (50 min)
**Total:** 160 min

#### C2 M6: Sprachvariation und Sprachwandel (5h)

| # | Current | Duration | Problems | Recommended |
|---|---------|:--------:|----------|-------------|
| 1 | Dialekte und regionale Variation | 55 | **From C2 M1-L3 (Sprachvarietäten)** — same topic | **Merge** C2 M1-L3 content into this module. |
| 2 | Sprachwandel und Jugendsprache | 55 | | Keep |
| 3 | C2 Abschlusstest | 90 | Duration seems high but reasonable for C2 | Keep |

**Optimized (3 lessons):**
1. Dialekte und regionale Variation im Deutschen (55 min)
2. Sprachwandel: Jugendsprache, Anglizismen, Internetsprache (55 min)
3. C2 Abschlusstest (90 min)
**Total:** 200 min

---

## D. Lessons To Move

| Lesson | From | To | Reason |
|--------|:----:|:--:|--------|
| Wohnungssuche (A1 M3-L4) | A1 M3 | B2 M6 | Apartment hunting requires negotiation vocab — B2 level |
| Das Wetter (A1 M6-L4) | A1 M6 | Delete (duplicate) | A2 M5-L1 becomes canonical weather lesson |
| Imperativ (A2 M4-L5) | A2 M4 | A1 M3/M4 | Simple commands are A1 (e.g., "Kommen Sie bitte", "Helfen Sie mir") |
| Präteritum: sein, haben, wissen (B1 M1-L3) | B1 M1 | A2 M6 | These 3 verbs' simple past is A2 |
| Nebensätze mit weil, da, obwohl (B1 M1-L4) | B1 M1 | A2 M1 | Basic subordinate clauses with weil = A2 |
| Konjunktiv II (würde) (B1 M2-L4) | B1 M2 | B2 M2 | Hypothetical situations = B2 per CEFR (Goethe) |
| Passiv im Präsens (B1 M2-L5) | B1 M2 | B2 M1 | Passive voice = B2 per CEFR |
| Wechselpräpositionen (B1 M4-L3) | B1 M4 | A2 M3 | Two-way prepositions = A2 |
| Präteritum der Modalverben (B1 M6-L2) | B1 M6 | A2 M6 | Modal past = A2 |
| Kausalsätze: wegen, aufgrund, dank (B2 M1-L5) | B2 M1 | B1 | Causal prepositions = B1 |
| Nomen-Verb-Verbindungen (B2 M3-L3) | B2 M3 | C1 M1 | Academic collocations = C1 |
| Partizipialattribute (B2 M5-L3) | B2 M5 | C1 M1 | Extended participles = C1 |
| Der Genitiv (B2 M4-L3) | B2 M4 | B1 M4 | Genitive case = B1 |
| Wortbildung (C2 M1-L1) | C2 M1 | C1 M1 | Word formation = C1 |
| False Friends (C2 M4-L2) | C2 M4 | B2 M6 | Cross-linguistic awareness = B2 |
| Kulturelle Unterschiede (A2 M6-L5) | A2 M6 | B1 M1 | Cultural comparison needs B1 language |


## E. Lessons To Merge/Delete

### E1. Merge (same topic, split unnecessarily)

| Lessons | New Lesson | Reason |
|---------|------------|--------|
| A1 M1-L3 (Zahlen 1-20) + L4 (Zahlen 21-100) | "Zahlen 1–100" | Same topic, sequential content |
| A1 M2-L1 (Die Familie) + L2 (Verwandte) + L5 (Familie vorstellen) | "Die Familie und Verwandte" | Same vocab, same module, merge with speaking |
| A1 M2-L3 (Tagesablauf) + L4 (Uhrzeit) | "Mein Tagesablauf und die Uhrzeit" | Time telling is part of daily routine |
| A1 M5-L1 (Berufe) + L5 (Was sind Sie von Beruf?) | "Berufe: Was sind Sie von Beruf?" | Speaking practice is extension of vocab |
| A1 M5-L3 (Telefonnummer) + L4 (Im Büro) | "Im Büro: Telefon, E-Mail und Kommunikation" | Narrow topic merged into broader one |
| A1 M6-L1 (Verkehrsmittel) + L2 (Am Bahnhof) | "Verkehrsmittel: Bus, Bahn, Fahrrad" | Transport and station are one topic |
| A1 M6-L5 (Im Hotel) + A2 M6-L3 (Reiseerfahrungen) | Keep separate | Different focus (hotel vocab vs. Perfekt stories) |
| B2 M6-L1 (Geschichte) + L3 (Wiedervereinigung) | "Geschichte Deutschlands 1945–heute" | Wiedervereinigung is part of history |
| C2 M1-L3 (Sprachvarietäten) + C2 M6-L1 (Dialekte) | C2 M6: "Dialekte und Sprachvarietäten" | Same topic across two modules |

### E2. Delete (unnecessary/duplicate)

| Lesson | Reason |
|--------|--------|
| A1 M1-L2 vocabulary (Hallo, Guten Morgen...) | Same words as L1 — must get unique alphabet vocab |
| A1 M1-L3 vocabulary (eins, zwei, drei) | Same as L4 — merged lesson will have one set |
| A1 M2-L2 (Verwandte und Beziehungen) | Duplicate of L1 |
| A1 M2-L5 (Meine Familie vorstellen) | Merge into L1 |
| A1 M6-L4 (Das Wetter) | Moved to A2 M5 as canonical |
| A2 M1-L2 (Getränke und Mahlzeiten — current form) | Template duplicate — no unique content |
| A2 M3-L4 vocabulary (die Reise, der Zug...) | Duplicated across 4 lessons |
| A2 M5-L1 (Das Wetter vocab — current form) | Needs unique weather vocab, not template pool |
| B1 M1-L1 (Tagesablauf) | A1 content — replace |
| "Test" lessons in every module that use same vocab as Lesson 1 | Tests should use cumulative unique questions |
| "Culture: {Topic} in German-Speaking Countries" (ALL lessons) | Remove 172 of 173 — keep 1 reference per level |
| "Common Mistakes for Arabic Speakers" (ALL lessons) | Remove 172 of 173 — keep 1 per level |
| "Präsens der regelmäßigen Verben" in A2+ lessons | Delete from ALL lessons above A1 |

### E3. Rename (unclear/unprofessional titles)

| Current | New |
|---------|-----|
| Die Familie (A1 M2-L1) | "Die Familie: Mitglieder und Beziehungen" |
| Die Wohnung beschreiben (A1 M3-L3) | "Wohnungen beschreiben: Lage, Größe, Farbe" |
| Erste Gespräche führen (A1 M1-L6) | "Erste Gespräche: sich vorstellen und fragen" |
| Mengen und Preise (A1 M4-L5) | "Mengen, Preise und Bezahlen im Supermarkt" |
| Was sind Sie von Beruf? (A1 M5-L5) | (merged into L1) |
| Kulturelle Unterschiede (A2 M6-L5) | "Kulturelle Unterschiede: Deutschland und mein Heimatland" |
| Reiseerfahrungen (A2 M6-L3) | "Reiseerfahrungen: Im Perfekt erzählen" |
| Tagesablauf und Alltag (B1 M1-L1) | "Alltag in Deutschland: Termine, Pünktlichkeit, Gewohnheiten" |
| Komplexe Satzstrukturen (C1 M1-L5) | "Komplexe Satzgefüge: Hauptsatz, Nebensatz, Schachtelsätze" |
| Zukunftsszenarien (C1 M6-L2) | "Zukunftsszenarien: Prognosen, Chancen, Risiken" |

---

## F. Missing Content

### F1. Missing Lessons for CEFR Completeness

| Missing Lesson | Level | Module | Why Needed |
|----------------|:-----:|:------:|------------|
| Modalverben: können, müssen, dürfen | A1 | M1 or M3 | Foundation for all communication ("Ich möchte...", "Kann ich...?") |
| Uhrzeit: offizielle und inoffizielle Zeitangabe | A1 | M2 | Essential for daily life |
| Datum: Tage, Monate, Jahreszahlen | A1 | M2 | Birthdays, appointments |
| Farben und Formen | A1 | M3 | Describing things |
| Kleidung (Grundwortschatz) | A1 | M4 | Going to Grundschule? No — A1 needs basic clothing |
| Modalverben: sollen, wollen | A2 | M2 | Expressing intentions |
| Reflexive Verben (sich waschen, sich fühlen) | A2 | M4 | "Ich fühle mich krank", "Ich wasche mich" |
| Adjektivdeklination (Nominativ + Akkusativ) | A2 | M2 or M3 | "Ein roter Apfel", "Einen blauen Pullover" |
| Zeitadverbien: gestern, heute, morgen, letzte Woche | A2 | M1 | Time reference |
| N-Deklination (der Herr → den Herrn) | B1 | M1 | Correct weak masculine nouns |
| Indefinitpronomen (man, jemand, niemand, etwas, nichts) | B1 | M1 | General statements |
| Präpositionalverben (warten auf, denken an, sich freuen auf) | B1 | M2 | Correct verb+preposition combos |
| Modalpartikeln (doch, ja, mal, eben, halt) | B2 | M1 | Natural-sounding German |
| Konnektoren (zwar...aber, entweder...oder) | B1 | M3 | Complex sentences |
| Irreale Bedingungen (ohne+Substantiv, sonst, andernfalls) | B2 | M2 | Advanced hypotheticals |
| Abtönungspartikeln (eigentlich, überhaupt, vielleicht) | B2 | M1 | Nuanced communication |
| Nominalisierte Infinitive (das Lesen, das Schreiben) | B2 | M3 | Formal register |
| Wissenschaftssprache: Zitieren, Paraphrasieren | C1 | M1 | Academic integrity |
| Kollokationen (eine Rolle spielen, zur Verfügung stellen) | C1 | M1 | Natural word combinations |
| Textsorte: Zusammenfassung, Exzerpt, Abstract | C1 | M1 | Academic writing genres |
| Diskursmarker gesprochene Sprache (also, tja, naja) | B2 | M2 | Spoken fluency |
| C2 Level selectable in profiles | — | Schema | Schema constraint fix needed |

### F2. Missing Exercise Types

| Exercise Type | Current | Should Have |
|---------------|:-------:|:-----------:|
| MCQs on lesson topic | ✓ (only type) | Reduce to 20% |
| Fill-in-the-blank (contextual) | ✓ (generic) | Make specific |
| Translation | ✓ (same every time) | Make level-appropriate |
| Sentence ordering | ✓ (no specific sentence) | Give specific scrambled sentences |
| Dictation | A1-only (3 items) | Add to ALL levels |
| Roleplay dialogues | A1-A2 only | Add to B1-B2 |
| Error correction | None | Add to B1+ |
| Text reconstruction | None | Add to B2+ |
| Summary writing | None | Add to B1+ |
| Listening comprehension | Only in 00024 (6 audio lessons) | Add to every module |
| Free writing prompts | None (template exists but empty) | Add to every module |
| Gap-fill with word bank | None | Add to A2-B2 |
| C-test (cloze with half letters) | None | Add to B2+ |

---

## G. Database Optimization Suggestions

### G1. Schema Issues

| Problem | Location | Fix |
|---------|----------|-----|
| C2 missing from profiles CHECK | `public.profiles`, `public.learning_goals` | Add 'C2' to CHECK constraints |
| No UNIQUE on (lesson_id, german_word) | `lesson_vocabulary` | Add unique index |
| No UNIQUE on (german_word) in vocabulary | `public.vocabulary` | Add unique index (allow level discrimination) |
| No UNIQUE on (lesson_id, title) in grammar | `lesson_grammar` | Add unique index |
| `lesson_type` CHECK mismatch between migrations | 00025 vs 00026 | Align: add 'pronunciation', 'culture' to 00025 |
| No C2 in `course_levels` description | `course_levels` | C2 exists but needs proper description update |
| No `has_grammar` / `has_flashcards` in schema | AGENTS.md notes this | Consider adding boolean flags |

### G2. Missing Indexes

```sql
-- Critical for deduplication queries
create index idx_lesson_vocabulary_word on public.lesson_vocabulary(german_word);
create index idx_lesson_grammar_title on public.lesson_grammar(title);
create index idx_lesson_exercises_content on public.lesson_exercises using gin(to_tsvector('german', question));
create index idx_lesson_test_questions_content on public.lesson_test_questions using gin(to_tsvector('german', question));

-- Critical for level-based queries (most common query pattern)
create index idx_course_modules_level_order on public.course_modules(level_id, order_index);
create index idx_course_lessons_module_order on public.course_lessons(module_id, order_index);
```

### G3. Naming Convention Issues

| Current | Issue | Recommended |
|---------|-------|-------------|
| `course_lessons.lesson_type` has 'pronunciation' in use but not in CHECK | Constraint too strict | Add 'pronunciation', 'culture', 'conversation' |
| `lesson_type` values 'dialogue' vs 'conversation' | Inconsistent | Standardize on 'conversation' (B1 uses 'dialogue', A1 uses 'conversation') |
| `lesson_exercises.exercise_type` {'multiple_choice', 'fill_gap'...} | Missing types | Add 'dictation', 'roleplay', 'error_correction', 'summary' |
| `lesson_test_questions.question_type` missing 'short_answer' | Missing type | Add 'short_answer', 'essay' |

---

## H. Final Optimized Curriculum Structure

### H1. Summary of Changes

| Level | Current Lessons | After Optimization | Net Change |
|:-----:|:---------------:|:------------------:|:----------:|
| A1 | 36 | 29 | -7 |
| A2 | 35 | 29 | -6 |
| B1 | 32 | 30 | -2 |
| B2 | 28 | 27 | -1 |
| C1 | 23 | 24 | +1 |
| C2 | 19 | 19 | 0 |
| **Total** | **273** | **158** | **-15** (major dedup, rest rewritten) |

### H2. Full Optimized Structure

#### A1 — Beginner (29 lessons, ~6 modules)

```
A1 ── Beginner
 ├── M1: Hallo! Erste Schritte (5 lessons, ~155 min)
 │    ├── L1: Begrüßungen, Vorstellung und erste Fragen (30 min)
 │    ├── L2: Das Alphabet und die Aussprache (30 min)
 │    ├── L3: Zahlen 1–100 (30 min)
 │    ├── L4: Länder, Sprachen und Nationalitäten (30 min)
 │    └── L5: Erste Gespräche: sich vorstellen und fragen (35 min)
 │
 ├── M2: Familie und Alltag (4 lessons, ~125 min)
 │    ├── L1: Die Familie und Verwandte (35 min)
 │    ├── L2: Mein Tagesablauf und die Uhrzeit (35 min)
 │    ├── L3: Grammatik: Possessivartikel + regelmäßige Verben (30 min)
 │    └── L4: Test: Familie und Alltag (25 min)
 │
 ├── M3: Wohnen (5 lessons, ~135 min)
 │    ├── L1: Mein Zuhause: Räume und Zimmer (30 min)
 │    ├── L2: Möbel und Haushaltsgegenstände (30 min)
 │    ├── L3: Grammatik: Adjektive nach "sein", Farben (30 min)
 │    ├── L4: Wo wohne ich? — Orte, Gebäude und Adressen (25 min)
 │    └── L5: Test: Wohnen (20 min)
 │
 ├── M4: Essen, Einkaufen und Kleidung (6 lessons, ~180 min)
 │    ├── L1: Lebensmittel und Getränke (30 min)
 │    ├── L2: Grammatik: Das Verb "möchten" und Akkusativ (30 min)
 │    ├── L3: Im Supermarkt: Einkaufsgespräche (30 min)
 │    ├── L4: Im Restaurant: Bestellen und Bezahlen (30 min)
 │    ├── L5: Kleidung: Basiswortschatz (25 min)
 │    └── L6: Test: Essen, Einkaufen, Kleidung (25 min)
 │
 ├── M5: Arbeit und Berufe (4 lessons, ~120 min)
 │    ├── L1: Berufe: Was sind Sie von Beruf? (35 min)
 │    ├── L2: Am Arbeitsplatz: Orte und Gegenstände (30 min)
 │    ├── L3: Grammatik: sein und haben + Modalverb "können" (35 min)
 │    └── L4: Test: Arbeit und Berufe (20 min)
 │
 └── M6: Reisen, Freizeit und Wetter (5 lessons, ~170 min)
      ├── L1: Verkehrsmittel: Bus, Bahn, Auto, Fahrrad (35 min)
      ├── L2: Hobbys und Freizeitaktivitäten (30 min)
      ├── L3: Grammatik: Trennbare Verben und "gern" (35 min)
      ├── L4: Im Hotel: Einchecken und Fragen (30 min)
      └── L5: A1 Abschlusstest (40 min)
```

#### A2 — Elementary (29 lessons, ~6 modules)

```
A2 ── Elementary
 ├── M1: Essen, Kochen und Vergangenes (5 lessons, ~220 min)
 │    ├── L1: Perfekt mit haben und sein (55 min) ← grammar first!
 │    ├── L2: Lebensmittel vertieft: Zutaten, Verpackungen (35 min)
 │    ├── L3: Kochen und Rezepte (45 min)
 │    ├── L4: Im Restaurant: Bestellen und Perfekt anwenden (40 min)
 │    └── L5: Test: Essen, Kochen und Vergangenes (45 min)
 │
 ├── M2: Kleidung und Mode (5 lessons, ~195 min)
 │    ├── L1: Kleidungsstücke und Accessoires (35 min)
 │    ├── L2: Farben, Größen, Materialien (35 min)
 │    ├── L3: Kleidung kaufen: Gespräche im Geschäft (40 min)
 │    ├── L4: Grammatik: Komparativ und Superlativ (45 min)
 │    └── L5: Test: Kleidung und Mode (40 min)
 │
 ├── M3: Stadt, Orientierung und Verkehr (5 lessons, ~190 min)
 │    ├── L1: In der Stadt: Orte und Gebäude (35 min)
 │    ├── L2: Wegbeschreibung: Fragen und Antworten (40 min)
 │    ├── L3: Grammatik: Wechselpräpositionen (Akkusativ/Dativ) (40 min)
 │    ├── L4: Öffentliche Verkehrsmittel: Tickets und Fahrpläne (35 min)
 │    └── L5: Test: Stadt und Orientierung (40 min)
 │
 ├── M4: Gesundheit und Körper (5 lessons, ~185 min)
 │    ├── L1: Der Körper: Körperteile (35 min)
 │    ├── L2: Beim Arzt: Symptome beschreiben (40 min)
 │    ├── L3: Gesundheit, Fitness und Prävention (35 min)
 │    ├── L4: In der Apotheke: Medikamente und Fragen (35 min)
 │    └── L5: Test: Gesundheit und Körper (40 min)
 │
 ├── M5: Wetter, Natur, Jahreszeiten (5 lessons, ~170 min)
 │    ├── L1: Das Wetter (35 min) ← canonical
 │    ├── L2: Die Jahreszeiten, Monate und das Datum (30 min)
 │    ├── L3: Tiere und Natur (35 min)
 │    ├── L4: Grammatik: Zeitpräpositionen im, am, um (35 min)
 │    └── L5: Test: Wetter, Natur und Jahreszeiten (35 min)
 │
 └── M6: Feste, Reisen, Präteritum und Abschluss (5 lessons, ~210 min)
      ├── L1: Feste und Feiertage in Deutschland (40 min)
      ├── L2: Grammatik: Präteritum von sein, haben, wissen (40 min)
      ├── L3: Grammatik: Präteritum der Modalverben (35 min)
      ├── L4: Reiseerfahrungen: Perfekt und Präteritum (45 min)
      └── L5: A2 Abschlusstest (50 min)
```

#### B1 — Intermediate (30 lessons, ~6 modules)

```
B1 ── Intermediate
 ├── M1: Alltag, Gesellschaft und Kommunikation (5 lessons, ~245 min)
 │    ├── L1: Alltag in Deutschland: Termine, Pünktlichkeit (45 min)
 │    ├── L2: Gesellschaft und Zusammenleben (45 min)
 │    ├── L3: Einladungen, Verabredungen und Höflichkeit (45 min)
 │    ├── L4: Grammatik: Reflexive Verben + Indefinitpronomen (55 min)
 │    └── L5: Test: Alltag und Gesellschaft (40 min)
 │
 ├── M2: Arbeit, Karriere und Bewerbung (5 lessons, ~250 min)
 │    ├── L1: Arbeitswelt: Berufe, Branchen, Positionen (45 min)
 │    ├── L2: Bewerbung: Lebenslauf und Anschreiben (55 min)
 │    ├── L3: Das Vorstellungsgespräch (55 min)
 │    ├── L4: Grammatik: Relativsätze (Nominativ, Akkusativ, Dativ) (55 min)
 │    └── L5: Test: Arbeit und Karriere (40 min)
 │
 ├── M3: Medien, Technologie und Satzstruktur (5 lessons, ~230 min)
 │    ├── L1: Medien: Zeitung, Radio, Fernsehen, Internet (40 min)
 │    ├── L2: Soziale Medien und Technologie (40 min)
 │    ├── L3: Meinung äußern: Diskutieren und argumentieren (50 min)
 │    ├── L4: Grammatik: TeKaMoLo + Satzklammer (55 min)
 │    └── L5: Test: Medien und Kommunikation (45 min)
 │
 ├── M4: Bildung, Schule und Sprachen (5 lessons, ~230 min)
 │    ├── L1: Das deutsche Schulsystem (45 min)
 │    ├── L2: Sprachen lernen: Methoden und Erfahrungen (40 min)
 │    ├── L3: Eine Präsentation halten: Aufbau und Redemittel (50 min)
 │    ├── L4: Grammatik: Finalsätze — damit, um...zu (50 min)
 │    └── L5: Test: Bildung und Lernen (45 min)
 │
 ├── M5: Umwelt, Nachhaltigkeit und Zukunft (5 lessons, ~225 min)
 │    ├── L1: Umweltschutz und Nachhaltigkeit (40 min)
 │    ├── L2: Mülltrennung und Recycling in Deutschland (45 min)
 │    ├── L3: Grammatik: Temporalsätze (während, bevor, nachdem) (50 min)
 │    ├── L4: Grammatik: Kausalsätze (weil, da, wegen, aufgrund) (50 min)
 │    └── L5: Test: Umwelt und Nachhaltigkeit (40 min)
 │
 └── M6: Reisen, Kultur und Vergleich (5 lessons, ~240 min)
      ├── L1: Reiseplanung: Unterkunft, Transport, Routen (40 min)
      ├── L2: Kulturelle Unterschiede im Alltag (45 min)
      ├── L3: Sehenswürdigkeiten in DACH (45 min)
      ├── L4: Grammatik: Vergleichssätze — je...desto, als, wie (55 min)
      └── L5: B1 Abschlusstest (55 min)
```

#### B2 — Upper Intermediate (27 lessons, ~6 modules)

```
B2 ── Upper Intermediate
 ├── M1: Berufliche Kommunikation (5 lessons, ~255 min)
 │    ├── L1: Bürokommunikation: Telefon, E-Mail, Termine (45 min)
 │    ├── L2: Geschäftskorrespondenz: formelle Briefe (55 min)
 │    ├── L3: Grammatik: Passiv — Bildung, Verwendung, Modalverben (55 min)
 │    ├── L4: Besprechungen und Meetings (55 min)
 │    └── L5: Test: Berufliche Kommunikation (45 min)
 │
 ├── M2: Gesellschaft, Politik und Diskussion (5 lessons, ~240 min)
 │    ├── L1: Politisches System Deutschlands (45 min)
 │    ├── L2: Soziale Themen: Diskussion und Debatte (45 min)
 │    ├── L3: Eine Debatte führen: Argumentationstechniken (50 min)
 │    ├── L4: Grammatik: Konjunktiv II — hätte, wäre, würde (55 min)
 │    └── L5: Test: Gesellschaft und Politik (45 min)
 │
 ├── M3: Wissenschaft, Technik und Zukunft (4 lessons, ~185 min)
 │    ├── L1: Wissenschaft und Forschung: Grundbegriffe (45 min)
 │    ├── L2: Technologie, KI und Digitalisierung (45 min)
 │    ├── L3: Grammatik: Futur II, Vermutungen, Wahrscheinlichkeit (55 min)
 │    └── L4: Test: Wissenschaft und Technik (40 min)
 │
 ├── M4: Wirtschaft, Finanzen und Sprache (4 lessons, ~185 min)
 │    ├── L1: Wirtschaftliche Grundbegriffe (45 min)
 │    ├── L2: Bankwesen, Finanzen und Steuern (45 min)
 │    ├── L3: Grammatik: Konzessive Angaben — trotz, obwohl, dennoch (50 min)
 │    └── L4: Test: Wirtschaft und Finanzen (45 min)
 │
 ├── M5: Kunst, Literatur und Kultur (4 lessons, ~190 min)
 │    ├── L1: Kunst und Kultur: Malerei, Musik, Theater (45 min)
 │    ├── L2: Deutschsprachige Literatur: Epochen, Autoren (50 min)
 │    ├── L3: Grammatik: Erweiterte Konnektoren, komplexe Sätze (55 min)
 │    └── L4: Test: Kunst und Literatur (40 min)
 │
 └── M6: DACH, Geschichte und Abschluss (4 lessons, ~195 min)
      ├── L1: Geschichte Deutschlands: 1945 bis heute (55 min)
      ├── L2: Österreich und die Schweiz: Kultur und Sprache (45 min)
      ├── L3: Aktuelle Themen: Deutschland in Europa (50 min)
      └── L4: B2 Abschlusstest (45 min)
```

#### C1 — Advanced (24 lessons, ~6 modules)

```
C1 ── Advanced
 ├── M1: Akademische Sprache und Schreiben (6 lessons, ~315 min)
 │    ├── L1: Wissenschaftliche Grundbegriffe (45 min)
 │    ├── L2: Akademisches Schreiben: Aufsätze, Exposés (55 min)
 │    ├── L3: Grammatik: Nominalstil vs. Verbalstil (55 min)
 │    ├── L4: Grammatik: Nomen-Verb-Verbindungen (55 min)
 │    ├── L5: Grammatik: Partizipialattribute, komplexe Sätze (55 min)
 │    └── L6: Test: Akademische Sprache (50 min)
 │
 ├── M2: Sprache, Stil und Rhetorik (4 lessons, ~200 min)
 │    ├── L1: Rhetorische Mittel: Metapher, Ironie, Übertreibung (50 min)
 │    ├── L2: Grammatik: Konjunktiv I — indirekte Rede (55 min)
 │    ├── L3: Stilistische Analyse: Textsorten und Register (50 min)
 │    └── L4: Test: Sprache, Stil und Rhetorik (45 min)
 │
 ├── M3: Diskurs und Argumentation (4 lessons, ~200 min)
 │    ├── L1: Argumentationsstrukturen: Thesen, Belege, Schlüsse (45 min)
 │    ├── L2: Grammatik: Konnektoren und Textkohärenz (50 min)
 │    ├── L3: Wissenschaftliche Essays schreiben (55 min)
 │    └── L4: Test: Diskurs und Argumentation (50 min)
 │
 ├── M4: Fachsprachen (4 lessons, ~205 min)
 │    ├── L1: Rechtssprache: Gesetze, Verträge, Urteile (55 min)
 │    ├── L2: Medizinische Fachsprache (50 min)
 │    ├── L3: Technische und Wirtschaftssprache (50 min)
 │    └── L4: Test: Fachsprachen (50 min)
 │
 ├── M5: Kultur, Identität und Migration (3 lessons, ~150 min)
 │    ├── L1: Migration und Integration: Diskurse (50 min)
 │    ├── L2: Kulturelle Identität: Mehrsprachigkeit (50 min)
 │    └── L3: Test: Kultur, Identität und Migration (50 min)
 │
 └── M6: Globalisierung, Zukunft und Abschluss (3 lessons, ~170 min)
      ├── L1: Globalisierung: Chancen, Risiken, Kritik (50 min)
      ├── L2: Zukunftsszenarien: Prognosen, Visionen (50 min)
      └── L3: C1 Abschlusstest (70 min)
```

#### C2 — Mastery (19 lessons, ~6 modules)

```
C2 ── Mastery
 ├── M1: Linguistik und Stilistik (4 lessons, ~215 min)
 │    ├── L1: Stilistische Feinheiten: Ironie, Sarkasmus, Konnotation (55 min)
 │    ├── L2: Sprachvarietäten und Register vertieft (55 min)
 │    ├── L3: Sprachwandel: Historische Entwicklung des Deutschen (55 min)
 │    └── L4: Test: Linguistik und Stilistik (50 min)
 │
 ├── M2: Literatur und Interpretation (3 lessons, ~165 min)
 │    ├── L1: Literarische Textanalyse: Methoden (55 min)
 │    ├── L2: Interpretation und Kritik: Essay, Rezension (60 min)
 │    └── L3: Test: Literatur und Analyse (50 min)
 │
 ├── M3: Pragmatik und Diskursanalyse (3 lessons, ~155 min)
 │    ├── L1: Sprechakte und Implikaturen (50 min)
 │    ├── L2: Diskursmarker, Kohärenz, Konversation (55 min)
 │    └── L3: Test: Pragmatik und Diskurs (50 min)
 │
 ├── M4: Übersetzung und Sprachmittlung (3 lessons, ~160 min)
 │    ├── L1: Übersetzungstechniken Deutsch–Arabisch (55 min)
 │    ├── L2: Konsekutiv- und Simultandolmetschen (55 min)
 │    └── L3: Test: Übersetzung und Sprachmittlung (50 min)
 │
 ├── M5: Wissenschaftskommunikation (3 lessons, ~160 min)
 │    ├── L1: Wissenschaftliches Publizieren: Journals, Konferenzen (55 min)
 │    ├── L2: Populärwissenschaftliche Kommunikation (55 min)
 │    └── L3: Test: Wissenschaftskommunikation (50 min)
 │
 └── M6: Sprachvariation und Abschluss (3 lessons, ~200 min)
      ├── L1: Dialekte und regionale Variation im Deutschen (55 min)
      ├── L2: Sprachwandel: Jugendsprache, Anglizismen (55 min)
      └── L3: C2 Abschlusstest (90 min)
```

---

## I. Implementation Priority

| Priority | Action | Effort | Impact |
|:--------:|--------|:------:|:------:|
| **P0** | Remove Present Tense grammar from A2+ lessons | ~1h (SQL) | Fixes #1 credibility issue |
| **P0** | Remove template test questions from B2+ | ~1h (SQL) | Fixes #2 credibility issue |
| **P0** | Fix schema constraint for C2 in profiles | ~10min | Enables C2 users |
| **P0** | Run migration 00028_dedup_cleanup | ~5min | Structural cleanup |
| **P1** | Assign unique vocabulary per lesson (not per module) | ~40h (content) | Core quality improvement |
| **P1** | Move 12 misplaced grammar topics to correct levels | ~8h (SQL+content) | CEFR compliance |
| **P1** | Rewrite all test questions to be level-appropriate | ~60h (content) | Assessment integrity |
| **P1** | Rewrite all exercises to be level-appropriate | ~60h (content) | Learning quality |
| **P2** | Merge duplicate lessons (per optimized structure) | ~15h (SQL+content) | Remove redundancy |
| **P2** | Add 28 missing prerequisite lessons | ~56h (content) | CEFR completeness |
| **P2** | Add missing exercise types (dictation, roleplay, etc.) | ~30h (content) | Skill coverage |
| **P3** | Add proper lesson duration calculations | ~5h | Accurate time estimates |
| **P3** | Add missing indexes | ~1h | Query performance |

---

## J. CEFR Alignment Summary

| CEFR Requirement | Current Status | Fix Required |
|-----------------|:--------------:|--------------|
| A1: basic phrases, introductions | ✅ Adequate (with dedup) | Merge 36→29 lessons |
| A2: routine situations, past tense | ⚠️ Acceptable | Move Präteritum from B1 to A2 |
| B1: opinions, experiences, work | ⚠️ Mostly OK | Move Konjunktiv II to B2, add missing topics |
| B2: complex topics, passive, fluency | ❌ Passive spread wrong | Consolidate Passive+Konjunktiv II at B2 |
| C1: academic, professional | ⚠️ Good topics | Move word formation from C2 to C1 |
| C2: near-native mastery | ⚠️ Good topics | Needs more production, less theory |
| Clean CEFR progression (no backtrack) | ❌ FAIL | Present Tense at C2, A1 questions at C2 |

**Overall CEFR Compliance Score: 3/10** — Fundamental template issues undermine all levels. The module/lesson TITLES are generally correct for their levels, but the CONTENT (vocabulary lists, exercises, tests, grammar) is severely misaligned.
