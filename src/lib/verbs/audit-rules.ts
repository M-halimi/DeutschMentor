export interface AuditRuleDoc {
  id: string
  title: string
  description: string
  why: string
  what: string
  severity: 'error' | 'warning' | 'info'
  examples: string[]
}

export const AUDIT_RULES: AuditRuleDoc[] = [
  {
    id: 'auxiliary_mismatch',
    title: 'Auxiliary Verb Mismatch',
    description: 'Detects verbs whose auxiliary (haben/sein) conflicts with their transitivity or motion-verb status.',
    why: 'German perfect tense requires the correct auxiliary. Transitive verbs almost always take "haben". Intransitive motion verbs typically take "sein". Mixing them up produces grammatically incorrect compound tenses.',
    what: 'Two sub-checks: (1) transitive verbs with auxiliary=sein are flagged as errors (exceptions: sein, werden, bleiben, passieren, geschehen, gelingen, misslingen). (2) intransitive separable motion verbs with auxiliary=haben are flagged as warnings.',
    severity: 'error',
    examples: [
      'tanzen: transitive but auxiliary=sein → error (should be haben)',
      'einschlafen: motion verb (prefix "ein") with haben → warning (likely needs sein)',
    ],
  },
  {
    id: 'missing_separable_prefix',
    title: 'Missing Separable Prefix',
    description: 'Flags verbs typed as separable that have no separable_prefix value set.',
    why: 'Separable verbs MUST define their prefix (e.g., "auf" for "aufstehen"). Without it, conjugation generation cannot split the verb, and the frontend cannot render the prefix correctly.',
    what: 'If verb_type = "separable" and separable_prefix is empty/null, the issue is raised as an error.',
    severity: 'error',
    examples: [
      'umtauschen: separable type but no prefix set → error',
      'stattfinden: separable type but no prefix set → error',
    ],
  },
  {
    id: 'incorrect_separable_prefix',
    title: 'Incorrect Separable Prefix',
    description: 'Flags verbs that have a separable_prefix value but are not typed as separable.',
    why: 'The verb_type field should match the presence of separable_prefix. A mismatch suggests a data-entry error — either the type is wrong or the prefix was set accidentally.',
    what: 'If separable_prefix is non-empty and verb_type is not "separable", the issue is raised as a warning.',
    severity: 'warning',
    examples: [
      'sich abgewöhnen: has prefix "ab" but verb_type="regular" → warning (should be separable)',
      'danken: has prefix "da" but verb_type="regular" → possible false positive (prefix field leftover)',
    ],
  },
  {
    id: 'missing_reflexive_pronoun',
    title: 'Missing Reflexive Pronoun',
    description: 'Detects reflexive verbs that have no reflexive_pronoun set.',
    why: 'Reflexive verbs must specify their pronoun (e.g., "sich", "mich", "dir"). Without it, the reflexive conjugation forms cannot be generated correctly.',
    what: 'If is_reflexive = true and reflexive_pronoun is empty/null, the issue is raised as an error.',
    severity: 'error',
    examples: [
      'sich beeilen: flagged as error if reflexive_pronoun is empty',
    ],
  },
  {
    id: 'missing_conjugations',
    title: 'Missing Conjugation Data',
    description: 'Flags verbs that have no rows in the verb_conjugations table.',
    why: 'Without conjugation data, the app cannot display tense forms for the verb. Learners need full conjugation tables for every verb.',
    what: 'Cross-references verb IDs against verb_conjugations. If a verb has 0 conjugation rows, the issue is raised as a warning.',
    severity: 'warning',
    examples: [
      'sich registrieren: no conjugation rows → warning (216 of 342 verbs affected)',
    ],
  },
  {
    id: 'duplicate_verb',
    title: 'Duplicate Verb Entry',
    description: 'Detects verbs with the same infinitive appearing more than once.',
    why: 'Duplicate entries create ambiguity in the curriculum, confuse ID-based lookups, and inflate verb counts. Each infinitive should appear exactly once.',
    what: 'Groups all verbs by infinitive. If any group has size > 1, the issue is raised as an error.',
    severity: 'error',
    examples: [
      '"tanzen" appears 2× → error (slugs: tanzen-1, tanzen-2)',
    ],
  },
  {
    id: 'slug_inconsistency',
    title: 'Slug Umlaut Convention',
    description: 'Checks whether umlauts in slugs follow the ASCII transliteration convention (ae/oe/ue/ss).',
    why: 'A consistent slug convention is important for URL generation and API lookups. Whether to use raw umlauts or ASCII transliteration is a project-level decision — this check simply reports whichever convention is NOT chosen.',
    what: 'If the infinitive contains ä/ö/ü/ß, compares the slug against the ASCII-transliterated form. Any mismatch is reported as info (not an error — just a convention notice).',
    severity: 'info',
    examples: [
      '"dürfen" slug="dürfen" but expected "duerfen" → info (depends on project convention)',
      '"hören" slug="hören" but expected "hoeren" → info',
    ],
  },
  {
    id: 'cefr_gap',
    title: 'CEFR Level Gap',
    description: 'Detects CEFR levels with few or zero verbs assigned.',
    why: 'A balanced CEFR distribution is essential for a curriculum that covers A1 through C2. Missing or underpopulated levels mean learners cannot progress beyond certain stages.',
    what: 'Counts verbs per CEFR level. Levels with 0 verbs are errors. Levels with <10 verbs are warnings.',
    severity: 'error',
    examples: [
      'B2: 0 verbs → error (complete gap)',
      'B1: 1 verb → warning (underpopulated)',
    ],
  },
]

export const RULE_SEVERITY_ORDER = ['error', 'warning', 'info'] as const
