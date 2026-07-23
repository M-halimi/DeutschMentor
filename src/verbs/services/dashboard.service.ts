import { getAdminClient } from '../utils'
import { DashboardStats } from '../types'
import { DB_TABLES, CEFR_LEVELS } from '../constants'
import { getScrapedDataStats } from '../scraping/engine'

export async function getDashboardStats(): Promise<DashboardStats> {
  const admin = getAdminClient()

  const [
    totalResult, cefrResult, typeResult, qualityResult,
    pendingResult, approvedResult, scrapedStats, publishedResult,
    translationResult, partizip2Result, auxiliaryResult,
  ] = await Promise.all([
    admin.from('german_verbs').select('*', { count: 'exact', head: true }),
    admin.from('german_verbs').select('cefr_level'),
    admin.from('german_verbs').select('verb_type'),
    admin.from(DB_TABLES.verbQualitySummary).select('quality_score'),
    admin.from(DB_TABLES.verbReferenceCandidates).select('*', { count: 'exact', head: true }).eq('status', 'PENDING'),
    admin.from(DB_TABLES.verbReferenceCandidates).select('*', { count: 'exact', head: true }).eq('status', 'APPROVED'),
    getScrapedDataStats().catch(() => ({ total: 0, pending: 0, imported: 0, rejected: 0, duplicate: 0, by_source: {}, by_cefr: {} })),
    admin.from('german_verbs').select('*', { count: 'exact', head: true }),
    admin.from('german_verbs').select('*', { count: 'exact', head: true }).or('english_translation.is.null,english_translation.eq.'),
    admin.from('german_verbs').select('*', { count: 'exact', head: true }).or('partizip_2.is.null,partizip_2.eq.'),
    admin.from('german_verbs').select('*', { count: 'exact', head: true }).or('auxiliary.is.null,auxiliary.eq.'),
  ])

  const totalVerbs = totalResult.count ?? 0
  const verbs = typeResult.data ?? []
  const cefrVerbs = cefrResult.data ?? []

  const cefrDistribution: Record<string, number> = {}
  for (const level of CEFR_LEVELS) cefrDistribution[level] = 0
  for (const v of cefrVerbs) {
    if (v.cefr_level && cefrDistribution[v.cefr_level] !== undefined) cefrDistribution[v.cefr_level]++
  }

  const typeCounts: Record<string, number> = {}
  for (const v of verbs) {
    typeCounts[v.verb_type] = (typeCounts[v.verb_type] || 0) + 1
  }

  const qualityScores = qualityResult.data ?? []
  const qualityScore = qualityScores.length > 0
    ? Math.round(qualityScores.reduce((sum: number, r: { quality_score: number }) => sum + r.quality_score, 0) / qualityScores.length)
    : totalVerbs > 0 ? 50 : 100

  const pendingReview = pendingResult.count ?? 0
  const pendingApproved = approvedResult.count ?? 0
  const publishedVerbs = totalVerbs

  const [missingConjResult, missingExampleResult] = await Promise.all([
    checkMissingConjugations(admin),
    checkMissingExamples(admin),
  ])

  const { data: conflictData } = await admin
    .from(DB_TABLES.verbConflicts)
    .select('*', { count: 'exact', head: true })

  return {
    total_verbs: totalVerbs,
    published_verbs: publishedVerbs,
    pending_review: pendingReview,
    missing_data: pendingApproved,
    quality_score: qualityScore,
    reflexive_count: typeCounts['reflexive'] ?? 0,
    modal_count: typeCounts['modal'] ?? 0,
    separable_count: typeCounts['separable'] ?? 0,
    irregular_count: (typeCounts['irregular'] ?? 0) + (typeCounts['mixed'] ?? 0) + (typeCounts['strong'] ?? 0),
    regular_count: (typeCounts['regular'] ?? 0) + (typeCounts['weak'] ?? 0),
    cefr_distribution: cefrDistribution,
    missing_conjugations: missingConjResult,
    missing_translations: translationResult.count ?? 0,
    missing_examples: missingExampleResult,
    missing_partizip2: partizip2Result.count ?? 0,
    missing_auxiliary: auxiliaryResult.count ?? 0,
    conflicts: conflictData?.length ?? 0,
    scraped_data: scrapedStats,
  }
}

async function checkMissingConjugations(admin: ReturnType<typeof getAdminClient>): Promise<number> {
  const { count: total } = await admin.from('german_verbs').select('*', { count: 'exact', head: true })
  const { count: withConj } = await admin.from('german_verbs').select('id, verb_conjugations!inner(id)', { count: 'exact', head: true })
  return (total ?? 0) - (withConj ?? 0)
}

async function checkMissingExamples(admin: ReturnType<typeof getAdminClient>): Promise<number> {
  const { count } = await admin
    .from('german_verbs')
    .select('id, verb_examples!left(id)', { count: 'exact', head: true })
  const { count: total } = await admin.from('german_verbs').select('*', { count: 'exact', head: true })
  return (total ?? 0) - (count ?? 0)
}

export async function getAllVerbsForAdmin(options?: {
  page?: number
  pageSize?: number
  sortBy?: string
  sortOrder?: 'asc' | 'desc'
  search?: string
  cefrLevel?: string
  verbType?: string
}) {
  const admin = getAdminClient()
  const page = options?.page ?? 1
  const pageSize = options?.pageSize ?? 50
  const offset = (page - 1) * pageSize

  let query = admin
    .from('german_verbs')
    .select('*, verb_quality_summary(*)', { count: 'exact' })

  if (options?.cefrLevel) query = query.eq('cefr_level', options.cefrLevel)
  if (options?.verbType) query = query.eq('verb_type', options.verbType)
  if (options?.search) {
    const term = `%${options.search}%`
    query = query.or(`infinitive.ilike.${term},english_translation.ilike.${term}`)
  }

  const sortColumn = options?.sortBy ?? 'infinitive'
  const sortDir = options?.sortOrder ?? 'asc'
  query = query.order(sortColumn, { ascending: sortDir === 'asc' })

  const { data, error, count } = await query.range(offset, offset + pageSize - 1)
  if (error) throw new Error(`Failed to fetch verbs: ${error.message}`)

  return {
    data: data ?? [],
    totalItems: count ?? 0,
    totalPages: Math.ceil((count ?? 0) / pageSize),
    page,
    pageSize,
  }
}
