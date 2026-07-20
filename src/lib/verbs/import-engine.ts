import { createAdminClient } from '@/lib/supabase/admin'
import { getAdapter } from './sources'
import type { SourceVerbEntry } from './sources/types'
import type {
  ImportResult,
  VerbImportStatus,
  ImportProgressStep,
  ImportLog
} from './admin-types'

export interface ImportCandidate {
  id: string
  infinitive: string
  translation: string | null
  cefr_level: string | null
  auxiliary: string | null
  verb_type: string | null
  separable_prefix: string | null
  is_reflexive: boolean
  reflexive_pronoun: string | null
  partizip_2: string | null
  source_name: string
  source_url: string | null
  confidence: number
  status: string
  created_at: string
}

function normalizeString(value: string | null | undefined): string | null {
  if (!value) return null
  const trimmed = value.trim()
  return trimmed.length > 0 ? trimmed : null
}

function normalizeBoolean(value: boolean | null | undefined): boolean {
  return value === true
}

function normalizeNumber(value: number | null | undefined, fallback: number): number {
  if (value === null || value === undefined || isNaN(value)) return fallback
  return Math.max(0, Math.min(100, Math.round(value)))
}

export async function importVerbsByLevel(
  level: string,
  sourceName: string,
  userId?: string
): Promise<ImportResult> {
  const admin = createAdminClient()
  const errors: string[] = []
  const startedAt = new Date().toISOString()

  const adapter = getAdapter(sourceName)
  if (!adapter) {
    throw new Error(`Source adapter not found for "${sourceName}". Available adapters: verbformen, wiktionary, canoonet, custom-json`)
  }

  let entries: SourceVerbEntry[]
  try {
    entries = await adapter.fetchByLevel(level)
  } catch (err: any) {
    const msg = `Failed to fetch verbs from "${sourceName}" for level ${level}: ${err?.message || String(err)}`
    errors.push(msg)

    const { data: logEntry, error: logError } = await admin
      .from('verb_import_logs')
      .insert({
        source_name: sourceName,
        cefr_level: level,
        total_fetched: 0,
        total_imported: 0,
        status: 'failed',
        error_message: msg,
        created_by: userId || null,
        started_at: startedAt,
        completed_at: new Date().toISOString(),
      })
      .select('id')
      .single()

    if (logError) errors.push(`Failed to create import log: ${logError.message}`)

    return {
      log_id: logEntry?.id || '',
      source_name: sourceName,
      cefr_level: level,
      total_fetched: 0,
      total_imported: 0,
      total_errors: errors.length,
      total_warnings: 0,
      errors,
      warnings: [],
      verb_results: [],
    }
  }

  const { data: logEntry, error: logError } = await admin
    .from('verb_import_logs')
    .insert({
      source_name: sourceName,
      cefr_level: level,
      total_fetched: entries.length,
      total_imported: 0,
      status: 'running',
      created_by: userId || null,
      started_at: startedAt,
    })
    .select('id')
    .single()

  if (logError) {
    errors.push(`Failed to create import log: ${logError.message}`)
    return {
      log_id: '',
      source_name: sourceName,
      cefr_level: level,
      total_fetched: entries.length,
      total_imported: 0,
      total_errors: errors.length,
      total_warnings: 0,
      errors,
      warnings: [],
      verb_results: [],
    }
  }

  const logId = logEntry.id
  let imported = 0

  for (const entry of entries) {
    try {
      const infinitive = normalizeString(entry.infinitive)
      if (!infinitive) {
        errors.push(`Skipped entry with missing infinitive`)
        continue
      }

      const sourceUrl = normalizeString(entry.source_url) || null

      const { data: existing } = await admin
        .from('verb_reference_candidates')
        .select('id')
        .eq('infinitive', infinitive)
        .eq('source_name', sourceName)
        .eq('status', 'PENDING')
        .maybeSingle()

      if (existing) {
        continue
      }

      const { error: insertError } = await admin
        .from('verb_reference_candidates')
        .insert({
          infinitive,
          translation: normalizeString(entry.translation),
          cefr_level: normalizeString(entry.cefr_level) || level,
          auxiliary: normalizeString(entry.auxiliary),
          verb_type: normalizeString(entry.verb_type),
          separable_prefix: normalizeString(entry.separable_prefix),
          is_reflexive: normalizeBoolean(entry.is_reflexive),
          reflexive_pronoun: normalizeString(entry.reflexive_pronoun),
          partizip_2: normalizeString(entry.partizip_2),
          source_name: sourceName,
          source_url: sourceUrl,
          confidence: normalizeNumber(entry.confidence, 50),
          status: 'PENDING',
          import_log_id: logId,
        })

      if (insertError) {
        errors.push(`Failed to insert "${infinitive}": ${insertError.message}`)
      } else {
        imported++
      }
    } catch (err: any) {
      const infinitive = entry?.infinitive || 'unknown'
      errors.push(`Error processing "${infinitive}": ${err?.message || String(err)}`)
    }
  }

  const { error: updateError } = await admin
    .from('verb_import_logs')
    .update({
      total_imported: imported,
      status: 'completed',
      completed_at: new Date().toISOString(),
    })
    .eq('id', logId)

  if (updateError) {
    errors.push(`Failed to update import log: ${updateError.message}`)
  }

  return {
    log_id: logId,
    source_name: sourceName,
    cefr_level: level,
    total_fetched: entries.length,
    total_imported: imported,
    total_errors: errors.length,
    total_warnings: 0,
    errors,
    warnings: [],
    verb_results: [],
  }
}

export async function fetchImportLogs(): Promise<any[]> {
  const admin = createAdminClient()
  const { data, error } = await admin
    .from('verb_import_logs')
    .select('*')
    .order('created_at', { ascending: false })

  if (error) throw new Error(`Failed to fetch import logs: ${error.message}`)
  return data || []
}

export async function fetchCandidates(options?: {
  sourceName?: string
  status?: string
  cefrLevel?: string
  page?: number
  perPage?: number
}): Promise<{ candidates: ImportCandidate[]; total: number }> {
  const admin = createAdminClient()

  const {
    sourceName,
    status,
    cefrLevel,
    page = 1,
    perPage = 50,
  } = options || {}

  let countQuery = admin.from('verb_reference_candidates').select('*', { count: 'exact', head: true })
  let dataQuery = admin.from('verb_reference_candidates').select('*')

  if (sourceName) {
    countQuery = countQuery.eq('source_name', sourceName)
    dataQuery = dataQuery.eq('source_name', sourceName)
  }
  if (status) {
    countQuery = countQuery.eq('status', status)
    dataQuery = dataQuery.eq('status', status)
  }
  if (cefrLevel) {
    countQuery = countQuery.eq('cefr_level', cefrLevel)
    dataQuery = dataQuery.eq('cefr_level', cefrLevel)
  }

  const from = (page - 1) * perPage
  const to = from + perPage - 1

  dataQuery = dataQuery
    .order('created_at', { ascending: false })
    .range(from, to)

  const [{ count }, { data, error }] = await Promise.all([
    countQuery,
    dataQuery,
  ])

  if (error) throw new Error(`Failed to fetch candidates: ${error.message}`)

  return {
    candidates: (data || []) as ImportCandidate[],
    total: count || 0,
  }
}

export async function approveCandidate(id: string): Promise<void> {
  const admin = createAdminClient()

  const { data: candidate, error: fetchError } = await admin
    .from('verb_reference_candidates')
    .select('*')
    .eq('id', id)
    .single()

  if (fetchError || !candidate) {
    throw new Error(`Candidate not found: ${fetchError?.message || 'unknown'}`)
  }

  const now = new Date().toISOString()

  const { error: upsertError } = await admin
    .from('verb_reference_data')
    .upsert(
      {
        infinitive: candidate.infinitive,
        source_name: candidate.source_name,
        source_reference: candidate.source_url,
        auxiliary: candidate.auxiliary,
        verb_type: candidate.verb_type,
        separable_prefix: candidate.separable_prefix,
        is_reflexive: candidate.is_reflexive,
        reflexive_pronoun: candidate.reflexive_pronoun,
        partizip_2: candidate.partizip_2,
        cefr_level: candidate.cefr_level,
        confidence: candidate.confidence,
        updated_at: now,
      },
      { onConflict: 'infinitive' }
    )

  if (upsertError) {
    throw new Error(`Failed to upsert reference data: ${upsertError.message}`)
  }

  const { error: updateError } = await admin
    .from('verb_reference_candidates')
    .update({ status: 'APPROVED', updated_at: now })
    .eq('id', id)

  if (updateError) {
    throw new Error(`Failed to approve candidate: ${updateError.message}`)
  }

  if (candidate.import_log_id) {
    const { data: logData } = await admin
      .from('verb_import_logs')
      .select('total_approved')
      .eq('id', candidate.import_log_id)
      .single()

    if (logData) {
      await admin
        .from('verb_import_logs')
        .update({ total_approved: (logData.total_approved || 0) + 1 })
        .eq('id', candidate.import_log_id)
    }
  }
}

export async function rejectCandidate(id: string): Promise<void> {
  const admin = createAdminClient()
  const now = new Date().toISOString()

  const { data: candidate, error: fetchError } = await admin
    .from('verb_reference_candidates')
    .select('import_log_id')
    .eq('id', id)
    .single()

  if (fetchError || !candidate) {
    throw new Error(`Candidate not found: ${fetchError?.message || 'unknown'}`)
  }

  const { error: updateError } = await admin
    .from('verb_reference_candidates')
    .update({ status: 'REJECTED', updated_at: now })
    .eq('id', id)

  if (updateError) {
    throw new Error(`Failed to reject candidate: ${updateError.message}`)
  }

  if (candidate.import_log_id) {
    const { data: logData } = await admin
      .from('verb_import_logs')
      .select('total_rejected')
      .eq('id', candidate.import_log_id)
      .single()

    if (logData) {
      await admin
        .from('verb_import_logs')
        .update({ total_rejected: (logData.total_rejected || 0) + 1 })
        .eq('id', candidate.import_log_id)
    }
  }
}

export async function approveBatch(ids: string[]): Promise<{ approved: number; errors: string[] }> {
  const errors: string[] = []
  let approved = 0

  for (const id of ids) {
    try {
      await approveCandidate(id)
      approved++
    } catch (err: any) {
      errors.push(`Failed to approve ${id}: ${err?.message || String(err)}`)
    }
  }

  return { approved, errors }
}

export async function rejectBatch(ids: string[]): Promise<{ rejected: number; errors: string[] }> {
  const errors: string[] = []
  let rejected = 0

  for (const id of ids) {
    try {
      await rejectCandidate(id)
      rejected++
    } catch (err: any) {
      errors.push(`Failed to reject ${id}: ${err?.message || String(err)}`)
    }
  }

  return { rejected, errors }
}

export async function candidateCountsByStatus(): Promise<{ pending: number; approved: number; rejected: number }> {
  const admin = createAdminClient()

  const { data, error } = await admin
    .from('verb_reference_candidates')
    .select('status')

  if (error) throw new Error(`Failed to get candidate counts: ${error.message}`)

  const counts: Record<string, number> = { PENDING: 0, APPROVED: 0, REJECTED: 0 }
  for (const row of data || []) {
    const key = row.status as string
    counts[key] = (counts[key] || 0) + 1
  }

  return {
    pending: counts['PENDING'] || 0,
    approved: counts['APPROVED'] || 0,
    rejected: counts['REJECTED'] || 0,
  }
}

export async function previewImport(
  level: string,
  sourceName: string
): Promise<{
  entries: (SourceVerbEntry & { status: VerbImportStatus })[]
  total: number
  source_name: string
  cefr_level: string
}> {
  const adapter = getAdapter(sourceName)
  if (!adapter) {
    throw new Error(`Source adapter not found for "${sourceName}"`)
  }

  const entries = await adapter.fetchByLevel(level)

  const results = entries.map(entry => {
    const status: VerbImportStatus = {
      infinitive: entry.infinitive,
      status: 'SUCCESS',
      confidence: entry.confidence || 50,
    }
    if (!entry.infinitive || !entry.infinitive.trim()) {
      status.status = 'FAILED'
      status.message = 'Missing infinitive'
    }
    return { ...entry, status }
  })

  return {
    entries: results,
    total: results.length,
    source_name: sourceName,
    cefr_level: level,
  }
}

export async function testSourceConnection(sourceName: string): Promise<{ ok: boolean; message: string; latency?: number }> {
  const adapter = getAdapter(sourceName)
  if (!adapter) {
    return { ok: false, message: `No adapter found for "${sourceName}"` }
  }
  return adapter.testConnection()
}

export async function fetchImportLogsPaginated(options?: {
  page?: number
  perPage?: number
  sourceName?: string
}): Promise<{ logs: ImportLog[]; total: number }> {
  const admin = createAdminClient()
  const { page = 1, perPage = 20, sourceName } = options || {}

  let countQuery = admin.from('verb_import_logs').select('*', { count: 'exact', head: true })
  let dataQuery = admin.from('verb_import_logs').select('*')

  if (sourceName) {
    countQuery = countQuery.eq('source_name', sourceName)
    dataQuery = dataQuery.eq('source_name', sourceName)
  }

  const from = (page - 1) * perPage
  const to = from + perPage - 1

  dataQuery = dataQuery.order('created_at', { ascending: false }).range(from, to)

  const [{ count }, { data, error }] = await Promise.all([countQuery, dataQuery])

  if (error) throw new Error(`Failed to fetch import logs: ${error.message}`)

  return {
    logs: (data || []) as ImportLog[],
    total: count || 0,
  }
}

export async function fetchSources(options?: { activeOnly?: boolean }): Promise<any[]> {
  const admin = createAdminClient()
  let query = admin.from('verb_sources').select('*').order('name')
  if (options?.activeOnly !== false) {
    query = query.eq('active', true)
  }
  const { data, error } = await query
  if (error) throw new Error(`Failed to fetch sources: ${error.message}`)
  return data || []
}

export async function updateSource(id: string, updates: { active?: boolean; name?: string; description?: string; website?: string }): Promise<void> {
  const admin = createAdminClient()
  const { error } = await admin
    .from('verb_sources')
    .update({ ...updates, updated_at: new Date().toISOString() })
    .eq('id', id)
  if (error) throw new Error(`Failed to update source: ${error.message}`)
}

export async function getCandidateCounts(): Promise<{ pending: number; approved: number; rejected: number; total: number }> {
  const admin = createAdminClient()
  const { data, error } = await admin
    .from('verb_reference_candidates')
    .select('status')
  if (error) throw new Error(`Failed to get counts: ${error.message}`)

  const counts = { pending: 0, approved: 0, rejected: 0, total: 0 }
  for (const row of data || []) {
    const s = row.status as string
    if (s === 'PENDING') counts.pending++
    else if (s === 'APPROVED') counts.approved++
    else if (s === 'REJECTED') counts.rejected++
    counts.total++
  }
  return counts
}
