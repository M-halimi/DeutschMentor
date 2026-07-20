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
  quality_score?: number
  quality_issues?: number
  quality_audit_status?: string | null
  has_reference?: boolean
  reference_confidence?: number | null
  reference_source?: string | null
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

// ─── Verb Quality Control Management Types ────────────────────────────────

export interface VerbQualityFinding {
  id: string
  verb_id: string
  category: string
  field_name: string
  current_value: string | null
  expected_value: string | null
  explanation: string | null
  example_wrong: string | null
  example_correct: string | null
  source_reference: string | null
  severity: 'error' | 'warning' | 'info'
  confidence: number
  status: 'open' | 'approved' | 'rejected' | 'false_positive' | 'manual_edit'
  created_at: string
  updated_at: string
}

export interface VerbQualityAction {
  id: string
  finding_id: string
  action: 'approve' | 'reject' | 'false_positive' | 'manual_edit'
  actioned_by: string | null
  notes: string | null
  created_at: string
}

export interface VerbQualityApproval {
  id: string
  finding_id: string
  verb_id: string
  proposed_change: Record<string, unknown>
  notes: string | null
  status: 'pending' | 'approved' | 'rejected'
  approved_by: string | null
  approved_at: string | null
  created_at: string
}

export interface VerbQualitySummary {
  verb_id: string
  quality_score: number
  total_issues: number
  error_count: number
  warning_count: number
  info_count: number
  audit_status: 'error' | 'warning' | 'info' | null
  updated_at: string
}

export const FINDING_CATEGORIES = [
  'separable_conjugation',
  'auxiliary_mismatch',
  'reflexive_pronoun',
  'conjugation_gap',
  'slug_inconsistency',
  'cefr_gap',
  'partizip_2',
  'verb_type',
  'transitivity',
  'preposition',
  'duplicate_verb',
] as const

export const FINDING_CATEGORY_LABELS: Record<string, string> = {
  separable_conjugation: 'Separable Conjugation',
  auxiliary_mismatch: 'Auxiliary',
  reflexive_pronoun: 'Reflexive Pronoun',
  conjugation_gap: 'Conjugation Gap',
  slug_inconsistency: 'Slug',
  cefr_gap: 'CEFR Gap',
  partizip_2: 'Partizip II',
  verb_type: 'Verb Type',
  transitivity: 'Transitivity',
  preposition: 'Preposition',
  duplicate_verb: 'Duplicate Verb',
}

export const FINDING_STATUS_LABELS: Record<string, string> = {
  open: 'Open',
  approved: 'Approved',
  rejected: 'Rejected',
  false_positive: 'False Positive',
  manual_edit: 'Manual Edit',
}

export const FINDING_STATUS_COLORS: Record<string, string> = {
  open: 'bg-amber-500/10 text-amber-600 border-amber-500/30',
  approved: 'bg-emerald-500/10 text-emerald-600 border-emerald-500/30',
  rejected: 'bg-red-500/10 text-red-600 border-red-500/30',
  false_positive: 'bg-blue-500/10 text-blue-600 border-blue-500/30',
  manual_edit: 'bg-purple-500/10 text-purple-600 border-purple-500/30',
}

// ─── Verb Import System Types ──────────────────────────────────────────────

export interface ImportSource {
  id: string
  name: string
  website: string
  description: string
  adapter_name: string
  active: boolean
}

export interface ImportResult {
  log_id: string
  source_name: string
  cefr_level: string
  total_fetched: number
  total_imported: number
  total_errors: number
  total_warnings: number
  errors: string[]
  warnings: string[]
  verb_results: VerbImportStatus[]
}

export interface VerbImportStatus {
  infinitive: string
  status: 'SUCCESS' | 'WARNING' | 'FAILED'
  message?: string
  confidence: number
  skipped_reason?: string
}

export type ImportProgressStep =
  | { step: 'connecting'; message: string }
  | { step: 'fetching'; message: string; current?: number; total?: number }
  | { step: 'parsing'; message: string; current?: number; total?: number }
  | { step: 'validating'; message: string; current?: number; total?: number }
  | { step: 'saving'; message: string; current?: number; total?: number }
  | { step: 'complete'; message: string }
  | { step: 'error'; message: string }

export interface ImportLog {
  id: string
  source_name: string
  cefr_level: string
  total_fetched: number
  total_imported: number
  total_approved: number
  total_rejected: number
  total_warnings: number
  total_errors: number
  status: string
  error_message: string | null
  started_at: string | null
  completed_at: string | null
  created_by: string | null
  created_at: string
}
