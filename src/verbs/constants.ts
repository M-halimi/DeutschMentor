export const CEFR_LEVELS = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2'] as const

export const VERB_TYPES = [
  'regular',
  'irregular',
  'strong',
  'weak',
  'mixed',
  'modal',
  'auxiliary',
  'reflexive',
  'reciprocal',
  'separable',
  'inseparable',
  'verb_preposition',
  'reflexive_preposition',
] as const

export const SOURCES = [
  { name: 'Verbformen', website: 'https://www.verbformen.com', adapterName: 'verbformen', confidence: 90, priority: 1 },
  { name: 'DWDS', website: 'https://www.dwds.de', adapterName: 'dwds', confidence: 88, priority: 2 },
  { name: 'Duden', website: 'https://www.duden.de', adapterName: 'duden', confidence: 92, priority: 1 },
  { name: 'Canoonet', website: 'https://www.canoonet.eu', adapterName: 'canoonet', confidence: 85, priority: 3 },
  { name: 'Wiktionary', website: 'https://de.wiktionary.org', adapterName: 'wiktionary', confidence: 80, priority: 4 },
  { name: 'PONS', website: 'https://de.pons.com', adapterName: 'pons', confidence: 82, priority: 3 },
  { name: 'LEO', website: 'https://dict.leo.org', adapterName: 'leo', confidence: 78, priority: 4 },
  { name: 'Linguee', website: 'https://www.linguee.de', adapterName: 'linguee', confidence: 75, priority: 5 },
  { name: 'Collins', website: 'https://www.collinsdictionary.com', adapterName: 'collins', confidence: 80, priority: 4 },
  { name: 'Reverso', website: 'https://context.reverso.net', adapterName: 'reverso', confidence: 72, priority: 5 },
  { name: 'OpenThesaurus', website: 'https://www.openthesaurus.de', adapterName: 'open-thesaurus', confidence: 70, priority: 5 },
] as const

export const TENSE_LABELS: Record<string, string> = {
  praesens: 'Präsens',
  praeteritum: 'Präteritum',
  perfekt: 'Perfekt',
  plusquamperfekt: 'Plusquamperfekt',
  futur_i: 'Futur I',
  futur_ii: 'Futur II',
  konjunktiv_i: 'Konjunktiv I',
  konjunktiv_ii: 'Konjunktiv II',
  imperativ: 'Imperativ',
  passiv: 'Passiv',
}

export const PERSON_LABELS = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie'] as const

export const QUALITY_CATEGORY_LABELS: Record<string, string> = {
  separable_conjugation: 'Trennbare Verbkonjugation',
  auxiliary_mismatch: 'Hilfsverb-Konflikt',
  reflexive_pronoun: 'Reflexivpronomen',
  conjugation_gap: 'Konjugationslücke',
  slug_inconsistency: 'Slug-Inkonsistenz',
  partizip_2: 'Partizip II',
  verb_type: 'Verbtyp',
  transitivity: 'Transitivität',
  preposition: 'Präposition',
  duplicate_verb: 'Duplikat',
  missing_translation: 'Fehlende Übersetzung',
  missing_cefr: 'Fehlendes CEFR-Niveau',
  missing_examples: 'Fehlende Beispiele',
  missing_conjugations: 'Fehlende Konjugationen',
}

export const DB_TABLES = {
  germanVerbs: 'german_verbs',
  verbConjugations: 'verb_conjugations',
  verbExamples: 'verb_examples',
  verbCollocations: 'verb_collocations',
  verbTypicalQuestions: 'verb_typical_questions',
  verbCommonMistakes: 'verb_common_mistakes',
  verbPrefixExplanations: 'verb_prefix_explanations',
  verbFamilyMembers: 'verb_family_members',
  verbSimilarVerbs: 'verb_similar_verbs',
  verbLearningTips: 'verb_learning_tips',
  verbSources: 'verb_sources',
  verbReferenceCandidates: 'verb_reference_candidates',
  verbReferenceData: 'verb_reference_data',
  verbImportLogs: 'verb_import_logs',
  verbScrapingJobs: 'verb_scraping_jobs',
  verbImportJobs: 'verb_import_jobs',
  verbImportJobItems: 'verb_import_job_items',
  verbVersions: 'verb_versions',
  verbConflicts: 'verb_conflicts',
  verbPublishLogs: 'verb_publish_logs',
  verbFieldSources: 'verb_field_sources',
  verbReviewHistory: 'verb_review_history',
  verbAuditLogs: 'verb_audit_logs',
  verbQualityFindings: 'verb_quality_findings',
  verbQualitySummary: 'verb_quality_summary',
  verbScrapedData: 'verb_scraped_data',
  verbScrapingResults: 'verb_scraping_results',
  verbConjugationImports: 'verb_conjugation_imports',
  verbConjugationReview: 'verb_conjugation_review',
  verbConjugationPublishQueue: 'verb_conjugation_publish_queue',
} as const

export const MISSING_DATA_OPTIONS = [
  { value: 'all', label: 'Alle Verben' },
  { value: 'missing_translation', label: 'Fehlende Übersetzung' },
  { value: 'missing_cefr', label: 'Fehlendes CEFR-Level' },
  { value: 'missing_partizip2', label: 'Fehlendes Partizip II' },
  { value: 'missing_auxiliary', label: 'Fehlendes Hilfsverb' },
  { value: 'missing_conjugations', label: 'Fehlende Konjugationen' },
] as const

export const SCRAPED_DATA_STATUS_LABELS: Record<string, string> = {
  PENDING: 'Ausstehend',
  IMPORTED: 'Importiert',
  REJECTED: 'Abgelehnt',
  DUPLICATE: 'Duplikat',
  CONJUGATION_GENERATED: 'Konjugationen generiert',
}

export const CONJUGATION_IMPORT_STATUS_LABELS: Record<string, string> = {
  pending_review: 'Ausstehend',
  IN_REVIEW: 'Im Review',
  APPROVED: 'Genehmigt',
  REJECTED: 'Abgelehnt',
  PUBLISHED: 'Veröffentlicht',
}

export const CONJUGATION_IMPORT_STATUS_BADGE: Record<string, string> = {
  pending_review: 'bg-blue-100 text-blue-800',
  IN_REVIEW: 'bg-yellow-100 text-yellow-800',
  APPROVED: 'bg-green-100 text-green-800',
  REJECTED: 'bg-red-100 text-red-800',
  PUBLISHED: 'bg-purple-100 text-purple-800',
}

export const TENSE_ORDER = ['praesens', 'praeteritum', 'perfekt', 'plusquamperfekt', 'futur_i', 'futur_ii', 'konjunktiv_i', 'konjunktiv_ii', 'imperativ', 'passiv'] as const
