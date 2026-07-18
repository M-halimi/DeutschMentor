# Reflexive Verb Audit Report

## Summary
- **Total reflexive verbs audited**: 73
- **Dativ reflexive (reflexive pronoun = mir/dir/sich)**: 4
- **Akkusativ reflexive (reflexive pronoun = mich/dich/sich)**: 69
- **Both (different meanings)**: 0

## Dativ Reflexive Verbs (4)
These verbs take Dativ reflexive pronouns because they have a second Akkusativ object:

| Verb | Example | Notes |
|------|---------|-------|
| **sich wünschen** | Ich wünsche mir ein Auto. | Wish/desire construction |
| **sich gewöhnen** | Ich gewöhne mir das an. / Ich gewöhne mich an den Lärm. | Habit + "an + Akk" |
| **sich angewöhnen** | Ich gewöhne mir das Rauchen an. | Separable "an" + habit |
| **sich abgewöhnen** | Ich gewöhne mir das Rauchen ab. | Separable "ab" + habit |

## Akkusativ Reflexive Verbs (69)
All other reflexive verbs use Akkusativ pronouns (mich/dich/sich/uns/euch/sich), regardless of preposition case.

**Key principle**: The preposition's case (mit + Dat, für + Akk, etc.) does NOT determine the reflexive pronoun case. Only the verb's valency determines it.

Examples:
- **sich interessieren für + Akk** → Ich interessiere mich für Geschichte. (reflexive = Akk)
- **sich beschäftigen mit + Dat** → Ich beschäftige mich mit Deutsch. (reflexive = Akk)
- **sich entschuldigen bei + Dat** → Ich entschuldige mich bei meinem Lehrer. (reflexive = Akk)

## Changes Made
1. **Added `reflexive_pronoun_case` column** to `german_verbs` table
2. **Updated seed data** (`verbs-a2.ts`) with correct `reflexivePronounCase` for all 73 reflexive verbs
3. **Fixed conjugation engine** (`conjugation-engine.ts`) to:
   - Use correct reflexive pronoun case (Akkusativ vs Dativ)
   - Properly place pronouns in Futur I, Futur II, Konjunktiv II (before infinitive without "sich")
   - Avoid double-applying pronouns to compound tenses
4. **Regenerated all conjugations** via `seed-verbs.ts`

## Verification
All 8 tenses verified for key verbs:
- Präsens ✓
- Präteritum ✓
- Perfekt ✓
- Plusquamperfekt ✓
- Futur I ✓ (e.g., "werde mir wünschen")
- Futur II ✓ (e.g., "werde mir gewünscht haben")
- Konjunktiv II ✓ (e.g., "würde mir wünschen")
- Imperativ ✓ (e.g., "Wünsch dir!")

## Database Statistics
- Total verbs: 342
- Reflexive verbs: 73
- Conjugations regenerated: 2,664
- Enrichment data: examples, collocations, questions, mistakes, tips all updated