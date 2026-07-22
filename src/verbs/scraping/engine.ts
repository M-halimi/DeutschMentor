import { getAdminClient } from '../utils'
import { getAdapterForSource } from '../sources/registry'
import { ScrapingJob, ScrapedVerbResult, ScrapedDataRecord } from '../types'
import { DB_TABLES, CEFR_LEVELS, VERB_TYPES } from '../constants'
import { createHash } from 'crypto'

export interface ScrapeOptions {
  source: string
  cefr_level?: string
  verb_type?: string
  limit?: number
  search_term?: string
  missing_data_mode?: string
}

export async function createScrapingJob(options: ScrapeOptions, userId: string): Promise<ScrapingJob | null> {
  const admin = getAdminClient()
  const { data, error } = await admin
    .from(DB_TABLES.verbScrapingJobs)
    .insert({
      source: options.source,
      cefr_level: options.cefr_level,
      verb_type: options.verb_type,
      requested_count: options.limit ?? 20,
      status: 'pending',
      started_by: userId,
      progress: 0,
    })
    .select()
    .single()
  if (error) throw new Error(`Failed to create scraping job: ${error.message}`)
  return data
}

export async function executeScrapingJob(jobId: string): Promise<void> {
  const admin = getAdminClient()
  const { data: job, error: fetchError } = await admin
    .from(DB_TABLES.verbScrapingJobs)
    .select('*')
    .eq('id', jobId)
    .single()
  if (fetchError || !job) throw new Error('Scraping job not found')
  if (job.status !== 'pending' && job.status !== 'running') return

  await admin.from(DB_TABLES.verbScrapingJobs).update({
    status: 'running',
    started_at: new Date().toISOString(),
  }).eq('id', jobId)

  const startTime = Date.now()
  const adapter = getAdapterForSource(job.source)
  if (!adapter) {
    await failJob(jobId, `No adapter found for source: ${job.source}`)
    return
  }

  try {
    let results: ScrapedVerbResult[] = []
    const requestedCount = job.requested_count || 20

    if (job.cefr_level && job.cefr_level !== 'all') {
      const terms = getTermsForLevel(job.cefr_level)
      const filtered = job.verb_type ? terms.slice(0, requestedCount) : terms.slice(0, requestedCount)
      const batchSize = Math.min(requestedCount, filtered.length)
      const batch = await Promise.allSettled(
        filtered.slice(0, batchSize).map(t => adapter.scrape(t))
      )
      for (const item of batch) {
        if (item.status === 'fulfilled' && item.value) results.push(item.value)
      }
    } else {
      const searchResult = await adapter.search('', { cefrLevel: job.cefr_level, limit: requestedCount })
      results = searchResult.slice(0, requestedCount)
      if (job.verb_type) {
        results = results.filter(r => r.verb_type === job.verb_type || !r.verb_type)
      }
    }

    let imported = 0
    let errors = 0
    for (const result of results) {
      try {
        await saveScrapedData(result, jobId)
        imported++
      } catch {
        errors++
      }
      const progress = Math.round(((imported + errors) / results.length) * 100)
      await admin.from(DB_TABLES.verbScrapingJobs).update({ progress }).eq('id', jobId)
    }

    const duration = Math.round((Date.now() - startTime) / 1000)
    await admin.from(DB_TABLES.verbScrapingJobs).update({
      status: 'completed',
      total_fetched: imported,
      total_errors: errors,
      progress: 100,
      completed_at: new Date().toISOString(),
      duration_seconds: duration,
    }).eq('id', jobId)
  } catch (err) {
    const message = err instanceof Error ? err.message : 'Unknown scraping error'
    await failJob(jobId, message)
  }
}

async function saveScrapedData(result: ScrapedVerbResult, jobId: string): Promise<void> {
  const admin = getAdminClient()
  const hash = createHash('sha256').update(JSON.stringify(result)).digest('hex')
  const rawHtmlHash = hash.slice(0, 16)

  const { data: existing } = await admin
    .from(DB_TABLES.verbScrapedData)
    .select('id')
    .eq('infinitive', result.infinitive)
    .eq('source_name', result.source_name)
    .eq('status', 'PENDING')
    .maybeSingle()

  if (existing) return

  const cefrMap: Record<string, string> = { A1: 'A1', A2: 'A2', B1: 'B1', B2: 'B2', C1: 'C1', C2: 'C2' }
  const cefr = result.cefr_level && cefrMap[result.cefr_level.toUpperCase()]
    ? result.cefr_level.toUpperCase()
    : null

  await admin.from(DB_TABLES.verbScrapedData).insert({
    infinitive: result.infinitive,
    translation: result.translation || null,
    ipa: result.ipa || null,
    cefr_level: cefr,
    frequency: result.frequency || null,
    verb_type: result.verb_type || null,
    auxiliary: result.auxiliary || null,
    partizip_2: result.partizip_2 || null,
    praeteritum: result.praeteritum || null,
    separable_prefix: result.separable_prefix || null,
    prefix: result.prefix || null,
    is_reflexive: result.is_reflexive ?? false,
    reflexive_pronoun: result.reflexive_pronoun || null,
    preposition: result.preposition || null,
    object_case: result.object_case || null,
    transitivity: result.transitivity || null,
    conjugations: result.conjugations || {},
    examples: result.examples || [],
    synonyms: result.synonyms || [],
    antonyms: result.antonyms || [],
    source_name: result.source_name,
    source_url: result.source_url || null,
    confidence: result.confidence,
    status: 'PENDING',
    job_id: jobId,
    raw_html_hash: rawHtmlHash,
  })
}

export async function importScrapedDataToCandidates(scrapedIds: string[]): Promise<number> {
  const admin = getAdminClient()
  let imported = 0

  for (const id of scrapedIds) {
    const { data: scraped, error } = await admin
      .from(DB_TABLES.verbScrapedData)
      .select('*')
      .eq('id', id)
      .single()
    if (error || !scraped || scraped.status !== 'PENDING') continue

    const { data: existingCandidate } = await admin
      .from(DB_TABLES.verbReferenceCandidates)
      .select('id')
      .eq('infinitive', scraped.infinitive)
      .eq('source_name', scraped.source_name)
      .eq('status', 'PENDING')
      .maybeSingle()

    if (existingCandidate) {
      await admin.from(DB_TABLES.verbScrapedData).update({ status: 'DUPLICATE' }).eq('id', id)
      continue
    }

    const { error: insertError } = await admin
      .from(DB_TABLES.verbReferenceCandidates)
      .insert({
        infinitive: scraped.infinitive,
        translation: scraped.translation || '',
        cefr_level: scraped.cefr_level || null,
        auxiliary: scraped.auxiliary || null,
        verb_type: scraped.verb_type || null,
        separable_prefix: scraped.separable_prefix || null,
        is_reflexive: scraped.is_reflexive ?? false,
        reflexive_pronoun: scraped.reflexive_pronoun || null,
        partizip_2: scraped.partizip_2 || null,
        source_name: scraped.source_name,
        source_url: scraped.source_url || null,
        confidence: scraped.confidence,
        status: 'PENDING',
      })

    if (!insertError) {
      await admin.from(DB_TABLES.verbScrapedData).update({ status: 'IMPORTED' }).eq('id', id)
      imported++
    }
  }

  return imported
}

export async function rejectScrapedData(scrapedIds: string[]): Promise<number> {
  const admin = getAdminClient()
  const { count } = await admin
    .from(DB_TABLES.verbScrapedData)
    .update({ status: 'REJECTED' })
    .in('id', scrapedIds)
  return count ?? 0
}

export async function getScrapedData(options: {
  status?: string
  source?: string
  cefr_level?: string
  search?: string
  page?: number
  pageSize?: number
}): Promise<{ data: ScrapedDataRecord[]; total: number }> {
  const admin = getAdminClient()
  const page = options.page ?? 1
  const pageSize = options.pageSize ?? 50
  const offset = (page - 1) * pageSize

  let query = admin.from(DB_TABLES.verbScrapedData).select('*', { count: 'exact' })

  if (options.status) query = query.eq('status', options.status)
  if (options.source) query = query.eq('source_name', options.source)
  if (options.cefr_level) query = query.eq('cefr_level', options.cefr_level)
  if (options.search) query = query.ilike('infinitive', `%${options.search}%`)

  query = query.order('created_at', { ascending: false })

  const { data, error, count } = await query.range(offset, offset + pageSize - 1)
  if (error) throw new Error(`Failed to fetch scraped data: ${error.message}`)
  return { data: data ?? [], total: count ?? 0 }
}

export async function getScrapedDataStats(): Promise<{
  total: number; pending: number; imported: number; rejected: number; duplicate: number
  by_source: Record<string, number>; by_cefr: Record<string, number>
}> {
  const admin = getAdminClient()

  const [totalRes, pendingRes, importedRes, rejectedRes, duplicateRes, sourceRes, cefrRes] = await Promise.all([
    admin.from(DB_TABLES.verbScrapedData).select('*', { count: 'exact', head: true }),
    admin.from(DB_TABLES.verbScrapedData).select('*', { count: 'exact', head: true }).eq('status', 'PENDING'),
    admin.from(DB_TABLES.verbScrapedData).select('*', { count: 'exact', head: true }).eq('status', 'IMPORTED'),
    admin.from(DB_TABLES.verbScrapedData).select('*', { count: 'exact', head: true }).eq('status', 'REJECTED'),
    admin.from(DB_TABLES.verbScrapedData).select('*', { count: 'exact', head: true }).eq('status', 'DUPLICATE'),
    admin.from(DB_TABLES.verbScrapedData).select('source_name'),
    admin.from(DB_TABLES.verbScrapedData).select('cefr_level').not('cefr_level', 'is', null),
  ])

  const bySource: Record<string, number> = {}
  for (const row of (sourceRes.data ?? [])) {
    bySource[row.source_name] = (bySource[row.source_name] || 0) + 1
  }

  const byCefr: Record<string, number> = {}
  for (const row of (cefrRes.data ?? [])) {
    byCefr[row.cefr_level] = (byCefr[row.cefr_level] || 0) + 1
  }

  return {
    total: totalRes.count ?? 0,
    pending: pendingRes.count ?? 0,
    imported: importedRes.count ?? 0,
    rejected: rejectedRes.count ?? 0,
    duplicate: duplicateRes.count ?? 0,
    by_source: bySource,
    by_cefr: byCefr,
  }
}

async function failJob(jobId: string, message: string): Promise<void> {
  const admin = getAdminClient()
  await admin.from(DB_TABLES.verbScrapingJobs).update({
    status: 'failed',
    error_message: message,
    completed_at: new Date().toISOString(),
  }).eq('id', jobId)
}

function getTermsForLevel(level: string): string[] {
  const commonVerbs: Record<string, string[]> = {
    A1: ['sein', 'haben', 'werden', 'können', 'müssen', 'sagen', 'geben', 'kommen', 'gehen', 'machen',
      'sehen', 'wissen', 'wollen', 'dürfen', 'sollen', 'mögen', 'tun', 'lassen', 'bringen', 'nehmen',
      'finden', 'halten', 'heißen', 'legen', 'liegen', 'setzen', 'sitzen', 'stehen', 'stellen',
      'essen', 'trinken', 'schlafen', 'lesen', 'schreiben', 'sprechen', 'verstehen', 'fahren',
      'fliegen', 'laufen', 'denken', 'glauben', 'helfen', 'bringen', 'kaufen', 'zahlen', 'wohnen'],
    A2: ['anfangen', 'aufstehen', 'aussehen', 'bekommen', 'bezahlen', 'bleiben', 'brauchen',
      'danken', 'einladen', 'entschuldigen', 'erzählen', 'fehlen', 'feiern', 'folgen', 'fragen',
      'fühlen', 'gehören', 'gewinnen', 'grüßen', 'hoffen', 'klingen', 'kochen', 'lächeln',
      'leisten', 'lernen', 'lieben', 'lügen', 'merken', 'mitnehmen', 'probieren', 'rechnen'],
    B1: ['akzeptieren', 'anmelden', 'annehmen', 'antworten', 'bedeuten', 'bestehen', 'bewerben',
      'diskutieren', 'einschalten', 'empfehlen', 'entwickeln', 'erfahren', 'erreichen', 'erwarten',
      'flüchten', 'garantieren', 'genießen', 'informieren', 'konzentrieren', 'nachdenken',
      'präsentieren', 'produzieren', 'reagieren', 'reisen', 'reparieren', 'reservieren'],
    B2: ['abschließen', 'anerkennen', 'ausschließen', 'beauftragen', 'befürchten', 'begleiten',
      'bekämpfen', 'bemerken', 'beschweren', 'bestätigen', 'beteiligen', 'betrachten', 'beweisen',
      'einschränken', 'enttäuschen', 'ermöglichen', 'erschweren', 'feststellen', 'fortsetzen',
      'gewährleisten', 'herausfordern', 'identifizieren', 'kennzeichnen', 'nachweisen', 'rechtfertigen'],
    C1: ['abgrenzen', 'abstimmen', 'anordnen', 'auswirken', 'beeinflussen', 'befassen', 'begründen',
      'behaupten', 'beitragen', 'benachteiligen', 'berücksichtigen', 'beschleunigen', 'beschränken',
      'bewältigen', 'durchsetzen', 'einschätzen', 'entsprechen', 'entstehen', 'entziehen', 'erheben',
      'ermitteln', 'erschließen', 'erweisen', 'festlegen', 'gefährden', 'gegenüberstellen'],
    C2: ['abstrahieren', 'amplifizieren', 'charakterisieren', 'differenzieren', 'extrapolieren',
      'generieren', 'hypostasieren', 'implementieren', 'inkriminieren', 'konkretisieren',
      'konstituieren', 'legitimieren', 'manifestieren', 'präzisieren', 'problematisieren',
      'quantifizieren', 'reformulieren', 'spezifizieren', 'subsumieren', 'thematisieren',
      'transformieren', 'validieren', 'verallgemeinern', 'veranschaulichen', 'verinnerlichen'],
  }
  if (level === 'all') {
    return Object.values(commonVerbs).flat()
  }
  return commonVerbs[level] ?? []
}

export async function getScrapingJob(jobId: string): Promise<ScrapingJob | null> {
  const admin = getAdminClient()
  const { data } = await admin
    .from(DB_TABLES.verbScrapingJobs)
    .select('*')
    .eq('id', jobId)
    .single()
  return data
}

export async function listScrapingJobs(options?: { status?: string; limit?: number }): Promise<ScrapingJob[]> {
  const admin = getAdminClient()
  let query = admin
    .from(DB_TABLES.verbScrapingJobs)
    .select('*')
    .order('started_at', { ascending: false })
    .limit(options?.limit ?? 50)
  if (options?.status) query = query.eq('status', options.status)
  const { data } = await query
  return data ?? []
}

export async function cancelScrapingJob(jobId: string): Promise<void> {
  const admin = getAdminClient()
  await admin.from(DB_TABLES.verbScrapingJobs).update({
    status: 'cancelled',
    completed_at: new Date().toISOString(),
  }).eq('id', jobId)
}
