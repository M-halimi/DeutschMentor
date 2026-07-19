export interface VerbListItem {
  id: string
  infinitive: string
  english_translation: string | null
  cefr_level: string
  verb_type: string
  frequency: string
  auxiliary: string
  partizip_2: string
  is_reflexive: boolean
  reflexive_pronoun: string | null
  separable_prefix: string | null
  object_case: string | null
  preposition: string | null
  slug: string
  tags: string[]
  created_at: string
  audit_status: 'error' | 'warning' | 'clean' | 'pending' | null
  audit_error_count: number
  audit_warning_count: number
}

export interface VerbDetail {
  id: string
  infinitive: string
  english_translation: string | null
  arabic_translation: string | null
  french_translation: string | null
  cefr_level: string
  verb_type: string
  frequency: string
  transitivity: string | null
  object_case: string | null
  preposition: string | null
  preposition_case: string | null
  auxiliary: string
  partizip_2: string
  separable_prefix: string | null
  is_reflexive: boolean
  reflexive_pronoun: string | null
  ipa: string | null
  stress: string | null
  slug: string
  synonyms: string[]
  antonyms: string[]
  tags: string[]
  created_at: string
}

export interface VerbDetailResponse {
  verb: VerbDetail
  conjugations: VerbConjugationRow[]
  examples: VerbExampleRow[]
  collocations: VerbCollocationRow[]
  questions: VerbQuestionRow[]
  mistakes: VerbMistakeRow[]
  audit_issues: VerbAuditIssueRow[]
}

export interface VerbConjugationRow {
  id: string
  tense: string
  ich: string | null
  du: string | null
  er_sie_es: string | null
  wir: string | null
  ihr: string | null
  sie: string | null
}

export interface VerbExampleRow {
  id: string
  difficulty: string
  german: string
  english: string
  arabic: string | null
  french: string | null
}

export interface VerbCollocationRow {
  id: string
  collocation: string
  english: string
  arabic: string | null
  french: string | null
}

export interface VerbQuestionRow {
  id: string
  german: string
  english: string
  arabic: string | null
  french: string | null
}

export interface VerbMistakeRow {
  id: string
  incorrect: string
  correct: string
  explanation: string
  arabic_explanation: string | null
  french_explanation: string | null
}

export interface VerbAuditIssueRow {
  id: string
  issue_type: string
  severity: string
  field: string | null
  expected: string | null
  actual: string | null
  message: string
  status: string
}

export interface VerbFormData {
  infinitive: string
  english_translation: string
  arabic_translation: string
  french_translation: string
  cefr_level: string
  verb_type: string
  frequency: string
  transitivity: string
  object_case: string
  preposition: string
  preposition_case: string
  auxiliary: string
  partizip_2: string
  separable_prefix: string
  is_reflexive: boolean
  reflexive_pronoun: string
  ipa: string
  stress: string
  synonyms: string
  antonyms: string
  tags: string
}

export const CEFR_LEVELS = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2'] as const
export const VERB_TYPES = ['regular', 'irregular', 'mixed', 'separable', 'inseparable', 'reflexive', 'verb_preposition', 'reflexive_preposition', 'modal', 'auxiliary'] as const
export const FREQUENCIES = ['very_common', 'common', 'less_common', 'rare'] as const
export const AUXILIARIES = ['haben', 'sein', 'both'] as const
export const TRANSITIVITIES = ['transitive', 'intransitive', 'both'] as const
export const OBJECT_CASES = ['akkusativ', 'dativ', 'genitiv', 'akkusativ_dativ', 'both', 'none'] as const
export const PREPOSITION_CASES = ['akkusativ', 'dativ', 'wechsel'] as const
export const EXAMPLE_DIFFICULTIES = ['beginner', 'intermediate', 'advanced'] as const

export const VERB_TYPE_LABELS: Record<string, string> = {
  regular: 'Regular',
  irregular: 'Irregular',
  mixed: 'Mixed',
  separable: 'Separable',
  inseparable: 'Inseparable',
  reflexive: 'Reflexive',
  verb_preposition: 'Verb + Prep',
  reflexive_preposition: 'Reflexive + Prep',
  modal: 'Modal',
  auxiliary: 'Auxiliary',
}

export const FREQUENCY_LABELS: Record<string, string> = {
  very_common: 'Very Common',
  common: 'Common',
  less_common: 'Less Common',
  rare: 'Rare',
}

export const AUXILIARY_LABELS: Record<string, string> = {
  haben: 'haben',
  sein: 'sein',
  both: 'both',
}

export const TRANSITIVITY_LABELS: Record<string, string> = {
  transitive: 'Transitive',
  intransitive: 'Intransitive',
  both: 'Both',
}

export const OBJECT_CASE_LABELS: Record<string, string> = {
  akkusativ: 'Akkusativ',
  dativ: 'Dativ',
  genitiv: 'Genitiv',
  akkusativ_dativ: 'Akkusativ/Dativ',
  both: 'Both',
  none: 'None',
}

export const TENSE_LABELS: Record<string, string> = {
  praesens: 'Präsens',
  praeteritum: 'Präteritum',
  perfekt: 'Perfekt',
  plusquamperfekt: 'Plusquamperfekt',
  futur_i: 'Futur I',
  futur_ii: 'Futur II',
  konjunktiv_ii: 'Konjunktiv II',
  imperativ: 'Imperativ',
}

export const TENSE_ORDER = ['praesens', 'praeteritum', 'perfekt', 'plusquamperfekt', 'futur_i', 'futur_ii', 'konjunktiv_ii', 'imperativ']

export const EXAMPLE_DIFFICULTY_LABELS: Record<string, string> = {
  beginner: 'Beginner',
  intermediate: 'Intermediate',
  advanced: 'Advanced',
}
