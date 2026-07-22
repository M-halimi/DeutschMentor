import { getAdminClient, generateSlug, computeDurationMs } from '../utils'
import { DB_TABLES } from '../constants'
import { ImportJob, ImportJobItem, ReferenceCandidate, ScrapedVerbResult, DashboardStats } from '../types'
import { validateScrapedVerb, completeVerbData } from '../validation/schemas'

export interface ImportCreationOptions {
  source: string
  candidateIds: string[]
  userId: string
}

export async function createImportJob(options: ImportCreationOptions): Promise<ImportJob | null> {
  const admin = getAdminClient()
  const { data: candidates, error: fetchError } = await admin
    .from(DB_TABLES.verbReferenceCandidates)
    .select('*')
    .in('id', options.candidateIds)
    .eq('status', 'PENDING')
  if (fetchError) throw new Error(`Failed to fetch candidates: ${fetchError.message}`)
  if (!candidates || candidates.length === 0) throw new Error('No pending candidates found')

  const { data: job, error: jobError } = await admin
    .from(DB_TABLES.verbImportJobs)
    .insert({
      name: `Import ${options.source} - ${candidates.length} verbs`,
      status: 'pending',
      total_items: candidates.length,
      started_by: options.userId,
      metadata: { source: options.source },
    })
    .select()
    .single()
  if (jobError) throw new Error(`Failed to create import job: ${jobError.message}`)

  const items = candidates.map((c: ReferenceCandidate, i: number) => ({
    job_id: job.id,
    index: i,
    infinitive: c.infinitive,
    source: c.source_name,
    status: 'pending' as const,
    retry_count: 0,
    max_retries: 3,
  }))
  const { error: itemsError } = await admin.from(DB_TABLES.verbImportJobItems).insert(items)
  if (itemsError) throw new Error(`Failed to create import items: ${itemsError.message}`)

  return job as ImportJob
}

export async function executeImportJob(jobId: string): Promise<void> {
  const admin = getAdminClient()

  const { data: job, error: jobError } = await admin
    .from(DB_TABLES.verbImportJobs)
    .select('*')
    .eq('id', jobId)
    .single()
  if (jobError || !job) throw new Error('Import job not found')
  if (job.status !== 'pending' && job.status !== 'paused') return

  const { data: items, error: itemsError } = await admin
    .from(DB_TABLES.verbImportJobItems)
    .select('*')
    .eq('job_id', jobId)
    .order('index', { ascending: true })
  if (itemsError) throw new Error(`Failed to fetch items: ${itemsError.message}`)

  await admin.from(DB_TABLES.verbImportJobs).update({
    status: 'running',
    started_at: new Date().toISOString(),
  }).eq('id', jobId)

  let success = 0
  let errors = 0
  let skipped = 0

  for (const item of items ?? []) {
    if (job.status === 'paused') break

    await admin.from(DB_TABLES.verbImportJobItems).update({
      status: 'running',
      started_at: new Date().toISOString(),
    }).eq('id', item.id)

    try {
      const candidate = await findCandidate(item.infinitive, item.source)
      if (!candidate) {
        await updateItemStatus(item.id, 'skipped', 'Candidate not found')
        skipped++
        continue
      }

      const verbData: ScrapedVerbResult = {
        infinitive: candidate.infinitive,
        translation: candidate.translation,
        cefr_level: candidate.cefr_level,
        auxiliary: candidate.auxiliary,
        verb_type: candidate.verb_type,
        separable_prefix: candidate.separable_prefix,
        is_reflexive: candidate.is_reflexive,
        reflexive_pronoun: candidate.reflexive_pronoun,
        partizip_2: candidate.partizip_2,
        source_name: candidate.source_name,
        source_url: candidate.source_url,
        confidence: candidate.confidence,
        conjugations: {},
        examples: [],
      }

      const validation = validateScrapedVerb(verbData)
      if (!validation.valid) {
        await updateItemStatus(item.id, 'failed', `Validation failed: ${validation.issues.map(i => i.message).join('; ')}`)
        errors++
        continue
      }

      await updateItemStatus(item.id, 'completed', undefined, {
        infinitive: verbData.infinitive,
        validation_score: validation.score,
        validated_at: new Date().toISOString(),
      })
      success++
    } catch (err) {
      const msg = err instanceof Error ? err.message : 'Unknown error'
      await updateItemStatus(item.id, 'failed', msg)
      errors++
    }

    const progress = Math.round(((success + errors + skipped) / (items?.length ?? 1)) * 100)
    await admin.from(DB_TABLES.verbImportJobs).update({
      progress,
      current_index: success + errors + skipped,
      total_success: success,
      total_errors: errors,
      total_skipped: skipped,
    }).eq('id', jobId)
  }

  const finalStatus = errors > 0 ? 'completed' : 'completed'
  await admin.from(DB_TABLES.verbImportJobs).update({
    status: finalStatus,
    progress: 100,
    total_success: success,
    total_errors: errors,
    total_skipped: skipped,
    completed_at: new Date().toISOString(),
  }).eq('id', jobId)
}

export async function pauseImportJob(jobId: string): Promise<void> {
  const admin = getAdminClient()
  await admin.from(DB_TABLES.verbImportJobs).update({
    status: 'paused',
    paused_at: new Date().toISOString(),
  }).eq('id', jobId)
}

export async function getImportJob(jobId: string): Promise<ImportJob | null> {
  const admin = getAdminClient()
  const { data } = await admin.from(DB_TABLES.verbImportJobs).select('*').eq('id', jobId).single()
  return data as ImportJob | null
}

export async function listImportJobs(options?: { status?: string; limit?: number }): Promise<ImportJob[]> {
  const admin = getAdminClient()
  let query = admin.from(DB_TABLES.verbImportJobs).select('*').order('started_at', { ascending: false }).limit(options?.limit ?? 50)
  if (options?.status) query = query.eq('status', options.status)
  const { data } = await query
  return (data ?? []) as ImportJob[]
}

export async function getImportJobItems(jobId: string): Promise<ImportJobItem[]> {
  const admin = getAdminClient()
  const { data } = await admin
    .from(DB_TABLES.verbImportJobItems)
    .select('*')
    .eq('job_id', jobId)
    .order('index', { ascending: true })
  return (data ?? []) as ImportJobItem[]
}

async function findCandidate(infinitive: string, source: string): Promise<ReferenceCandidate | null> {
  const admin = getAdminClient()
  const { data } = await admin
    .from(DB_TABLES.verbReferenceCandidates)
    .select('*')
    .eq('infinitive', infinitive)
    .eq('source_name', source)
    .eq('status', 'PENDING')
    .maybeSingle()
  return data as ReferenceCandidate | null
}

async function updateItemStatus(itemId: string, status: string, errorMessage?: string, resultData?: Record<string, unknown>): Promise<void> {
  const admin = getAdminClient()
  await admin.from(DB_TABLES.verbImportJobItems).update({
    status,
    error_message: errorMessage,
    result_data: resultData ?? null,
    completed_at: new Date().toISOString(),
  } as Record<string, unknown>).eq('id', itemId)
}

export async function getPendingCandidates(options?: { source?: string; cefrLevel?: string; limit?: number }): Promise<ReferenceCandidate[]> {
  const admin = getAdminClient()
  let query = admin.from(DB_TABLES.verbReferenceCandidates).select('*').eq('status', 'PENDING').order('created_at', { ascending: false }).limit(options?.limit ?? 100)
  if (options?.source) query = query.eq('source_name', options.source)
  if (options?.cefrLevel) query = query.eq('cefr_level', options.cefrLevel)
  const { data } = await query
  return (data ?? []) as ReferenceCandidate[]
}

export async function getImportedVerbCount(): Promise<number> {
  const admin = getAdminClient()
  const { count } = await admin.from('german_verbs').select('*', { count: 'exact', head: true })
  return count ?? 0
}
