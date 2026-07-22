export type ScrapingJobStatus = 'pending' | 'running' | 'completed' | 'failed' | 'cancelled'
export type ImportJobStatus = 'pending' | 'running' | 'paused' | 'completed' | 'failed' | 'cancelled'
export type ImportItemStatus = 'pending' | 'running' | 'completed' | 'failed' | 'skipped' | 'retrying'
export type CandidateStatus = 'PENDING' | 'APPROVED' | 'REJECTED'
export type VersionStatus = 'active' | 'archived' | 'rolled_back'
export type ConflictResolution = 'use_source_a' | 'use_source_b' | 'manual' | 'pending'
export type ReviewAction = 'approved' | 'rejected' | 'edited' | 'skipped' | 'flagged'
export type AuditStatus = 'success' | 'error' | 'warning'
export type PublishOperation = 'publish' | 'unpublish' | 'update' | 'rollback' | 'version_create'
export type QualityCategory =
  | 'separable_conjugation' | 'auxiliary_mismatch' | 'reflexive_pronoun'
  | 'conjugation_gap' | 'slug_inconsistency' | 'partizip_2'
  | 'verb_type' | 'transitivity' | 'preposition' | 'duplicate_verb'
  | 'missing_translation' | 'missing_cefr' | 'missing_examples' | 'missing_conjugations'

export interface SourceConfig {
  name: string
  website: string
  adapterName: string
  confidence: number
  priority: number
  active: boolean
}

export interface ScrapingJob {
  id: string
  source: string
  cefr_level?: string
  verb_type?: string
  requested_count: number
  status: ScrapingJobStatus
  total_fetched: number
  total_errors: number
  progress: number
  error_message?: string
  started_by?: string
  started_at: string
  completed_at?: string
  duration_seconds?: number
}

export interface ImportJob {
  id: string
  name: string
  status: ImportJobStatus
  progress: number
  current_index: number
  total_items: number
  total_success: number
  total_errors: number
  total_skipped: number
  started_by?: string
  started_at: string
  paused_at?: string
  completed_at?: string
  error_message?: string
  metadata: Record<string, unknown>
}

export interface ImportJobItem {
  id: string
  job_id: string
  index: number
  infinitive: string
  source: string
  status: ImportItemStatus
  result_data?: Record<string, unknown>
  error_message?: string
  retry_count: number
  max_retries: number
  started_at?: string
  completed_at?: string
}

export interface ReferenceCandidate {
  id: string
  infinitive: string
  translation?: string
  cefr_level?: string
  auxiliary?: string
  verb_type?: string
  separable_prefix?: string
  is_reflexive?: boolean
  reflexive_pronoun?: string
  partizip_2?: string
  source_name: string
  source_url?: string
  confidence: number
  status: CandidateStatus
  import_log_id?: string
  notes?: string
  diff_against_production?: Record<string, unknown>
  conflict_ids?: string[]
  publish_ready?: boolean
  publish_validation?: Record<string, unknown>
  version_id?: string
  created_at: string
  updated_at: string
}

export interface VerbVersion {
  id: string
  verb_id: string
  version: number
  status: VersionStatus
  verb_snapshot: Record<string, unknown>
  conjugations_snapshot?: Record<string, unknown>
  checksum: string
  published_by?: string
  published_at: string
  reason?: string
  source_ids?: string[]
  metadata: Record<string, unknown>
}

export interface VerbConflict {
  id: string
  infinitive: string
  field_name: string
  source_a_name: string
  source_a_value?: string
  source_a_confidence?: number
  source_b_name: string
  source_b_value?: string
  source_b_confidence?: number
  resolution?: ConflictResolution
  resolved_by?: string
  resolved_at?: string
  manual_value?: string
  notes?: string
  created_at: string
}

export interface PublishLog {
  id: string
  verb_id?: string
  infinitive: string
  operation: PublishOperation
  previous_snapshot?: Record<string, unknown>
  new_snapshot?: Record<string, unknown>
  diff_summary?: Record<string, unknown>
  version_id?: string
  published_by?: string
  published_at: string
  ip_address?: string
  user_agent?: string
  status: string
  error_message?: string
}

export interface FieldSource {
  id: string
  verb_id: string
  field_name: string
  value?: string
  source_name: string
  source_url?: string
  confidence: number
  verified: boolean
  verified_by?: string
  verified_at?: string
  last_checked: string
}

export interface ReviewHistoryRecord {
  id: string
  infinitive: string
  reviewer_id?: string
  action: ReviewAction
  previous_status?: string
  new_status?: string
  notes?: string
  created_at: string
}

export interface AuditLog {
  id: string
  user_id?: string
  action: string
  entity_type: string
  entity_id?: string
  entity_infinitive?: string
  old_values?: Record<string, unknown>
  new_values?: Record<string, unknown>
  diff?: Record<string, unknown>
  ip_address?: string
  user_agent?: string
  duration_ms?: number
  status: AuditStatus
  error_message?: string
  metadata: Record<string, unknown>
  created_at: string
}

export interface QualityFinding {
  id: string
  verb_id: string
  category: QualityCategory
  field_name: string
  current_value?: string
  expected_value?: string
  explanation?: string
  example_wrong?: string
  example_correct?: string
  source_reference?: string
  severity: 'error' | 'warning' | 'info'
  confidence: number
  status: 'open' | 'approved' | 'rejected' | 'false_positive' | 'manual_edit'
  created_at: string
}

export interface QualitySummary {
  verb_id: string
  quality_score: number
  total_issues: number
  error_count: number
  warning_count: number
  info_count: number
  audit_status: 'pending' | 'passed' | 'failed' | 'in_progress'
  last_audited_at?: string
}

export interface ScrapedVerbResult {
  infinitive: string
  translation?: string
  ipa?: string
  audio_reference?: string
  cefr_level?: string
  frequency?: string
  verb_type?: string
  auxiliary?: string
  partizip_2?: string
  praeteritum?: string
  separable_prefix?: string
  prefix?: string
  is_reflexive?: boolean
  reflexive_pronoun?: string
  preposition?: string
  object_case?: string
  transitivity?: string
  conjugations?: Record<string, Record<string, string>>
  examples?: { german: string; english?: string }[]
  synonyms?: string[]
  antonyms?: string[]
  source_name: string
  source_url?: string
  confidence: number
}

export type ScrapedDataStatus = 'PENDING' | 'IMPORTED' | 'REJECTED' | 'DUPLICATE'

export interface ScrapedDataRecord {
  id: string
  infinitive: string
  translation?: string
  ipa?: string
  cefr_level?: string
  frequency?: string
  verb_type?: string
  auxiliary?: string
  partizip_2?: string
  praeteritum?: string
  separable_prefix?: string
  prefix?: string
  is_reflexive: boolean
  reflexive_pronoun?: string
  preposition?: string
  object_case?: string
  transitivity?: string
  conjugations: Record<string, Record<string, string>>
  examples: { german: string; english?: string }[]
  synonyms: string[]
  antonyms: string[]
  source_name: string
  source_url?: string
  confidence: number
  status: ScrapedDataStatus
  job_id?: string
  raw_html_hash?: string
  created_at: string
  updated_at: string
}

export interface ScrapedDataStats {
  total: number
  pending: number
  imported: number
  rejected: number
  duplicate: number
  by_source: Record<string, number>
  by_cefr: Record<string, number>
}

export interface DashboardStats {
  total_verbs: number
  published_verbs: number
  pending_review: number
  missing_data: number
  quality_score: number
  reflexive_count: number
  modal_count: number
  separable_count: number
  irregular_count: number
  regular_count: number
  cefr_distribution: Record<string, number>
  missing_conjugations: number
  missing_translations: number
  missing_examples: number
  missing_partizip2: number
  missing_auxiliary: number
  conflicts: number
  scraped_data?: ScrapedDataStats
}
