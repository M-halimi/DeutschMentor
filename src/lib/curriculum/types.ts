export type ContentStatus = 'draft' | 'in_review' | 'approved' | 'rejected' | 'published' | 'archived'

export type CEFRLevel = 'A1' | 'A2' | 'B1' | 'B2' | 'C1' | 'C2'

export type LessonDifficulty = 'beginner' | 'elementary' | 'intermediate' | 'upper_intermediate' | 'advanced' | 'mastery'

export type LessonType = 'vocabulary' | 'grammar' | 'reading' | 'listening' | 'speaking' | 'writing' | 'review' | 'test'

export type Severity = 'error' | 'warning' | 'info'

export type FindingStatus = 'open' | 'approved' | 'rejected' | 'false_positive' | 'manual_edit'

export type QualityAction = 'approve' | 'reject' | 'false_positive' | 'manual_edit' | 'reopen'

export type ApprovalStatus = 'pending' | 'approved' | 'rejected'

export type VersionStatus = 'active' | 'archived' | 'rolled_back'

export type AuditStatus = 'error' | 'warning' | 'info' | 'clean' | null

// ============================================================================
// CORE ENTITIES
// ============================================================================

export interface CurriculumLevel {
  id: string
  title: string
  description: string | null
  image_url: string | null
  color: string | null
  order_index: number
  is_active: boolean | null
  status: ContentStatus
  version: number
  created_by: string | null
  updated_by: string | null
  created_at: string
  updated_at: string | null
}

export interface CurriculumModule {
  id: string
  level_id: string
  title: string
  description: string | null
  objectives: unknown[]
  order_index: number
  estimated_hours: number | null
  is_published: boolean | null
  status: ContentStatus
  version: number
  created_by: string | null
  updated_by: string | null
  created_at: string
  updated_at: string | null
}

export interface CurriculumLesson {
  id: string
  module_id: string
  title: string
  description: string | null
  topic: string | null
  objectives: unknown[]
  duration_minutes: number | null
  order_index: number
  is_published: boolean | null
  status: ContentStatus
  difficulty: LessonDifficulty | null
  version: number
  created_by: string | null
  updated_by: string | null
  created_at: string
  updated_at: string | null
}

export interface LessonTag {
  entity_type: string
  entity_id: string
  tag_id: string
  created_at: string
}

// ============================================================================
// VERSION SYSTEM
// ============================================================================

export interface CurriculumVersion {
  id: string
  lesson_id: string
  version: number
  status: VersionStatus
  snapshot: unknown
  checksum: string
  created_by: string | null
  created_at: string
  reason: string | null
  metadata: Record<string, unknown>
}

export interface VerbFullSnapshot {
  snapshotVersion: 2
  metadata: {
    createdAt: string
    createdBy: string | null
    schemaVersion: 2
    childCount: number
  }
  lesson: Record<string, unknown>
  vocabulary: unknown[]
  grammar: unknown[]
  exercises: unknown[]
  test_questions: unknown[]
  expressions: unknown[]
  reading: unknown | null
  listening: unknown | null
  speaking: unknown[]
  writing: unknown[]
  conversations: unknown[]
  ai_challenges: unknown[]
  homework: unknown | null
  review: unknown | null
  flashcards: unknown[]
  tags: unknown[]
}

// ============================================================================
// QUALITY SYSTEM
// ============================================================================

export interface CurriculumQualityScore {
  id: string
  lesson_id: string
  overall: number
  completeness_score: number
  accuracy_score: number
  pedagogy_score: number
  engagement_score: number
  formatting_score: number
  calculated_at: string
}

export interface CurriculumQualityScoreInput {
  overall: number
  completeness_score: number
  accuracy_score: number
  pedagogy_score: number
  engagement_score: number
  formatting_score: number
}

export interface CurriculumQualityFinding {
  id: string
  lesson_id: string
  category: string
  field_name: string
  current_value: string | null
  expected_value: string | null
  explanation: string | null
  example_wrong: string | null
  example_correct: string | null
  source_reference: string | null
  severity: Severity
  confidence: number
  status: FindingStatus
  created_at: string
  updated_at: string
}

export interface CurriculumQualityFindingInput {
  lesson_id: string
  category: string
  field_name: string
  current_value: string | null
  expected_value: string | null
  explanation: string
  example_wrong: string
  example_correct: string
  source_reference: string
  severity: Severity
  confidence: number
}

export interface CurriculumQualityAction {
  id: string
  finding_id: string
  action: QualityAction
  actioned_by: string | null
  notes: string | null
  created_at: string
}

export interface CurriculumQualityApproval {
  id: string
  finding_id: string
  lesson_id: string
  proposed_change: Record<string, unknown>
  notes: string | null
  status: ApprovalStatus
  requested_by: string | null
  approved_by: string | null
  approved_at: string | null
  created_at: string
}

export interface CurriculumQualitySummary {
  lesson_id: string
  quality_score: number
  total_issues: number
  error_count: number
  warning_count: number
  info_count: number
  audit_status: AuditStatus
  updated_at: string
}

// ============================================================================
// REVIEW NOTES
// ============================================================================

export interface LessonReviewNote {
  id: string
  lesson_id: string
  author_id: string | null
  section: string | null
  note: string
  is_deleted: boolean
  created_at: string
}

// ============================================================================
// SEARCH FILTERS
// ============================================================================

export interface CurriculumSearchFilters {
  query?: string
  level_id?: string
  module_id?: string
  status?: string
  difficulty?: LessonDifficulty
  lesson_type?: LessonType
  is_published?: boolean
  quality_min?: number
  quality_max?: number
  tags?: string[]
  sort_by?: string
  sort_order?: 'asc' | 'desc'
  page?: number
  per_page?: number
}

export interface CurriculumSearchResult {
  data: CurriculumLesson[]
  total: number
  page: number
  per_page: number
}

// ============================================================================
// LIST ITEMS
// ============================================================================

export interface LevelListItem extends CurriculumLevel {
  module_count?: number
  lesson_count?: number
}

export interface ModuleListItem extends CurriculumModule {
  lesson_count?: number
}

export interface LessonListItem extends CurriculumLesson {
  quality_score?: number
  quality_issues?: number
  quality_audit_status?: AuditStatus
  vocabulary_count?: number
  grammar_count?: number
  exercise_count?: number
}

// ============================================================================
// INPUT TYPES
// ============================================================================

export interface CurriculumLevelInput {
  id: string
  title: string
  description?: string
  image_url?: string | null
  color?: string
  order_index?: number
  is_active?: boolean
}

export interface CurriculumModuleInput {
  level_id: string
  title: string
  description?: string
  objectives?: unknown[]
  order_index?: number
  estimated_hours?: number
  is_published?: boolean
}

export interface CurriculumLessonInput {
  module_id: string
  title: string
  description?: string
  topic?: string
  objectives?: unknown[]
  duration_minutes?: number
  order_index?: number
  is_published?: boolean
  difficulty?: LessonDifficulty
}
