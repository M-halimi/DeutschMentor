import { getAdminClient } from '../utils'
import { getAdapterForSource, getAdapterNames } from '../sources/registry'
import { ScrapingJob, ScrapedVerbResult, ScrapedDataRecord } from '../types'
import { DB_TABLES, CEFR_LEVELS, VERB_TYPES } from '../constants'
import { createHash } from 'crypto'

export interface ScrapeOptions {
  sources: string[]
  cefr_level?: string
  verb_type?: string
  limit?: number
  search_term?: string
  missing_data_mode?: string
  mode?: 'basic' | 'full'
}

export async function isDuplicateInfinitive(infinitive: string): Promise<boolean> {
  const admin = getAdminClient()
  const checks = await Promise.all([
    admin.from('german_verbs').select('id').eq('infinitive', infinitive).maybeSingle(),
    admin.from(DB_TABLES.verbScrapedData).select('id').eq('infinitive', infinitive).eq('status', 'PENDING').maybeSingle(),
    admin.from(DB_TABLES.verbReferenceCandidates).select('id').eq('infinitive', infinitive).in('status', ['PENDING', 'APPROVED']).maybeSingle(),
    admin.from(DB_TABLES.verbConjugationImports).select('id').eq('infinitive', infinitive).not('status', 'eq', 'REJECTED').maybeSingle(),
  ])
  return checks.some(r => r.data)
}

export async function lookupSourceId(sourceName: string): Promise<string | null> {
  const admin = getAdminClient()
  const { data } = await admin
    .from(DB_TABLES.verbSources)
    .select('id, active')
    .eq('name', sourceName)
    .maybeSingle()
  return data?.id ?? null
}

export async function validateSourceForScraping(sourceName: string): Promise<{ valid: boolean; error?: string }> {
  const admin = getAdminClient()
  const { data: source } = await admin
    .from(DB_TABLES.verbSources)
    .select('id, name, active')
    .eq('name', sourceName)
    .maybeSingle()

  if (!source) return { valid: false, error: `Source "${sourceName}" is not configured in the database` }
  if (!source.active) return { valid: false, error: `Source "${sourceName}" is disabled` }

  const adapter = getAdapterForSource(sourceName)
  if (!adapter) {
    const available = getAdapterNames().join(', ')
    return { valid: false, error: `No scraper adapter found for source "${sourceName}". Available adapters: ${available}` }
  }

  return { valid: true }
}

export async function createScrapingJob(options: ScrapeOptions, userId: string): Promise<ScrapingJob | null> {
  const admin = getAdminClient()
  const primarySource = options.sources[0] || options.sources[0] || 'Verbformen'

  const sourceId = await lookupSourceId(primarySource)

  const { data, error } = await admin
    .from(DB_TABLES.verbScrapingJobs)
    .insert({
      source: primarySource,
      source_id: sourceId,
      sources: options.sources,
      source_count: options.sources.length,
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

  const startTime = Date.now()

  await admin.from(DB_TABLES.verbScrapingJobs).update({
    status: 'running',
    started_at: new Date().toISOString(),
  }).eq('id', jobId)

  const selectedSources: string[] = (job.sources?.length ? job.sources : [job.source]).filter(Boolean)
  if (selectedSources.length === 0) {
    await failJob(jobId, 'No sources selected for scraping')
    return
  }

  const adapters = selectedSources.map(name => ({ name, adapter: getAdapterForSource(name) }))
  const missingAdapters = adapters.filter(a => !a.adapter)
  if (missingAdapters.length > 0) {
    await failJob(jobId, `No adapters found for: ${missingAdapters.map(a => a.name).join(', ')}`)
    return
  }

  const sourceIds = new Map<string, string>()
  for (const name of selectedSources) {
    const sid = await lookupSourceId(name)
    if (sid) sourceIds.set(name, sid)
  }

  console.log(`[Scrape Job ${jobId}] Sources: ${selectedSources.join(', ')}, Level: ${job.cefr_level || 'all'}, Count: ${job.requested_count}`)

  try {
    const requestedCount = job.requested_count || 20
    const terms = getTermsForLevel(job.cefr_level || 'all')
    const verbsToScrape = terms.length > 0
      ? terms.slice(0, requestedCount * 2)
      : []

    if (verbsToScrape.length === 0 && job.search_term) {
      console.log(`[Scrape Job ${jobId}] Searching for term: "${job.search_term}" across ${selectedSources.length} sources`)
      for (const sourceName of selectedSources) {
        const adapter = getAdapterForSource(sourceName)!
        const searchResults = await adapter.search(job.search_term, { limit: requestedCount })
        for (const sr of searchResults.slice(0, requestedCount)) {
          await saveScrapingResult(sr, jobId, sourceIds.get(sourceName) || null)
        }
      }
    } else if (verbsToScrape.length > 0) {
      const seenVerbs = new Set<string>()
      let verbCandidates = verbsToScrape.filter(v => {
        if (seenVerbs.has(v)) return false
        seenVerbs.add(v)
        return true
      })

      let totalScraped = 0
      let totalErrors = 0
      let totalDuplicates = 0
      let currentIndex = 0

      while (totalScraped < requestedCount && currentIndex < verbCandidates.length) {
        const verb = verbCandidates[currentIndex]
        currentIndex++

        const isDup = await isDuplicateInfinitive(verb)
        if (isDup) {
          totalDuplicates++
          continue
        }

        if (currentIndex >= verbCandidates.length && totalScraped < requestedCount) {
          const additionalTerms = await fetchMoreTerms(selectedSources, verbCandidates, requestedCount - totalScraped)
          verbCandidates = [...verbCandidates, ...additionalTerms.filter(v => {
            if (seenVerbs.has(v)) return false
            seenVerbs.add(v)
            return true
          })]
        }

        let verbAnySourceSuccess = false

        for (const sourceName of selectedSources) {
          const adapter = getAdapterForSource(sourceName)!
          const startTs = Date.now()
          const sid = sourceIds.get(sourceName) || null

          try {
            await admin.from(DB_TABLES.verbScrapingResults).insert({
              job_id: jobId,
              infinitive: verb,
              source_name: sourceName,
              source_id: sid,
              status: 'running',
              duration_ms: 0,
            })
          } catch { /* ignore progress tracking */ }

          try {
            const result = await adapter.scrape(verb)
            const durationMs = Date.now() - startTs

            if (result) {
              verbAnySourceSuccess = true
              await saveScrapingResult(result, jobId, sid, durationMs)
            } else {
              try {
                await admin.from(DB_TABLES.verbScrapingResults).insert({
                  job_id: jobId, infinitive: verb, source_name: sourceName,
                  source_id: sid, status: 'skipped', error_message: 'Scrape returned null',
                  duration_ms: durationMs,
                })
              } catch { /* progress tracking insert is optional */ }
            }
          } catch (err) {
            const durationMs = Date.now() - startTs
            try {
              await admin.from(DB_TABLES.verbScrapingResults).insert({
                job_id: jobId, infinitive: verb, source_name: sourceName,
                source_id: sid, status: 'failed',
                error_message: err instanceof Error ? err.message : 'Unknown error',
                duration_ms: durationMs,
              })
            } catch { /* progress tracking insert is optional */ }
          }
        }

        if (verbAnySourceSuccess) totalScraped++
        else totalErrors++

        const total = verbCandidates.length
        const processed = totalScraped + totalErrors
        await admin.from(DB_TABLES.verbScrapingJobs).update({
          progress: total > 0 ? Math.round((processed / total) * 100) : 100,
        }).eq('id', jobId)
      }

      await mergeJobResults(jobId, selectedSources)
    }

    const duration = Math.round((Date.now() - startTime) / 1000)
    const { count: successCount } = await admin
      .from(DB_TABLES.verbScrapingResults)
      .select('*', { count: 'exact', head: true })
      .eq('job_id', jobId)
      .eq('status', 'completed')

    const { count: errorCount } = await admin
      .from(DB_TABLES.verbScrapingResults)
      .select('*', { count: 'exact', head: true })
      .eq('job_id', jobId)
      .in('status', ['failed', 'skipped'])

    await admin.from(DB_TABLES.verbScrapingJobs).update({
      status: 'completed',
      total_fetched: successCount ?? 0,
      total_errors: errorCount ?? 0,
      progress: 100,
      completed_at: new Date().toISOString(),
      duration_seconds: duration,
    }).eq('id', jobId)

    console.log(`[Scrape Job ${jobId}] Completed: ${successCount ?? 0} saved, ${errorCount ?? 0} errors in ${duration}s`)
  } catch (err) {
    const message = err instanceof Error ? err.message : 'Unknown scraping error'
    console.error(`[Scrape Job ${jobId}] Fatal error:`, err)
    await failJob(jobId, message)
  }
}

async function saveScrapingResult(
  result: ScrapedVerbResult, jobId: string, sourceId: string | null, durationMs?: number,
): Promise<void> {
  const admin = getAdminClient()

  const { error: insertError } = await admin.from(DB_TABLES.verbScrapingResults).insert({
    job_id: jobId,
    infinitive: result.infinitive,
    source_name: result.source_name,
    source_id: sourceId,
    source_url: result.source_url || null,
    raw_data: result as any,
    confidence: result.confidence,
    status: 'completed',
    duration_ms: durationMs ?? 0,
  })

  if (insertError) {
    console.error(`[Scrape] Failed to save result for ${result.infinitive}/${result.source_name}: ${insertError.message}`)
    throw insertError
  }

  console.log(`[Scrape] Result saved: ${result.infinitive} from ${result.source_name} (conf: ${result.confidence})`)
}

async function mergeJobResults(jobId: string, sources: string[]): Promise<void> {
  const admin = getAdminClient()

  const { data: results } = await admin
    .from(DB_TABLES.verbScrapingResults)
    .select('*')
    .eq('job_id', jobId)
    .eq('status', 'completed')

  if (!results?.length) return

  const byVerb = new Map<string, typeof results>()
  for (const r of results) {
    if (!byVerb.has(r.infinitive)) byVerb.set(r.infinitive, [])
    byVerb.get(r.infinitive)!.push(r)
  }

  for (const [infinitive, verbResults] of byVerb) {
    const merged = await mergeSourceResults(infinitive, verbResults, sources)
    if (merged) {
      const sid = verbResults.find(r => r.source_id)?.source_id || null
      await saveScrapedData(merged, jobId, sid)
    }
  }
}

async function mergeSourceResults(
  infinitive: string,
  results: any[],
  sources: string[],
): Promise<ScrapedVerbResult | null> {
  if (results.length === 0) return null

  const bestConfidence = (field: string): string | undefined => {
    const values = results
      .map(r => ({ value: r.raw_data?.[field], confidence: r.confidence || 0 }))
      .filter(v => v.value != null && v.value !== '')
    if (values.length === 0) return undefined
    const byValue = new Map<string, { value: string; confidence: number }[]>()
    for (const v of values) {
      const key = String(v.value)
      if (!byValue.has(key)) byValue.set(key, [])
      byValue.get(key)!.push(v)
    }
    let best = ''
    let bestWeight = 0
    for (const [val, entries] of byValue) {
      const weight = entries.reduce((s, e) => s + e.confidence, 0)
      if (weight > bestWeight) { bestWeight = weight; best = val }
    }
    return best
  }

  const bestConjugations = (): Record<string, Record<string, string>> | undefined => {
    const all = results
      .map(r => r.raw_data?.conjugations)
      .filter(Boolean)
    if (all.length === 0) return undefined

    const merged: Record<string, Record<string, string>> = {}
    const tenses = new Set<string>()
    for (const conj of all) {
      for (const tense of Object.keys(conj)) tenses.add(tense)
    }
    for (const tense of tenses) {
      const persons = new Set<string>()
      for (const conj of all) {
        if (conj[tense]) for (const person of Object.keys(conj[tense])) persons.add(person)
      }
      const forms: Record<string, string> = {}
      for (const person of persons) {
        const personForms = all
          .map(c => c[tense]?.[person])
          .filter(Boolean)
        forms[person] = personForms[0] || ''
      }
      if (Object.keys(forms).length > 0) merged[tense] = forms
    }
    return Object.keys(merged).length > 0 ? merged : undefined
  }

  const bestSynonyms = (): string[] => {
    const all = results.flatMap(r => r.raw_data?.synonyms || [])
    return [...new Set<string>(all)]
  }

  const bestExamples = (): { german: string; english?: string }[] => {
    const seen = new Set<string>()
    const all: { german: string; english?: string }[] = []
    for (const r of results) {
      for (const ex of r.raw_data?.examples || []) {
        if (!seen.has(ex.german)) {
          seen.add(ex.german)
          all.push(ex)
        }
      }
    }
    return all
  }

  const topResult = results.reduce((a, b) => (a.confidence || 0) > (b.confidence || 0) ? a : b)
  const rawData = topResult.raw_data || {}

  return {
    infinitive,
    translation: bestConfidence('translation') || rawData.translation,
    ipa: bestConfidence('ipa') || rawData.ipa,
    cefr_level: bestConfidence('cefr_level') || rawData.cefr_level,
    frequency: bestConfidence('frequency') || rawData.frequency,
    verb_type: bestConfidence('verb_type') || rawData.verb_type,
    auxiliary: bestConfidence('auxiliary') || rawData.auxiliary,
    partizip_2: bestConfidence('partizip_2') || rawData.partizip_2,
    praeteritum: bestConfidence('praeteritum') || rawData.praeteritum,
    separable_prefix: bestConfidence('separable_prefix') || rawData.separable_prefix,
    prefix: bestConfidence('prefix') || rawData.prefix,
    is_reflexive: !!rawData.is_reflexive,
    reflexive_pronoun: bestConfidence('reflexive_pronoun') || rawData.reflexive_pronoun,
    preposition: bestConfidence('preposition') || rawData.preposition,
    object_case: bestConfidence('object_case') || rawData.object_case,
    transitivity: bestConfidence('transitivity') || rawData.transitivity,
    conjugations: bestConjugations(),
    examples: bestExamples(),
    synonyms: bestSynonyms(),
    antonyms: [...new Set<string>(results.flatMap(r => r.raw_data?.antonyms || []))],
    source_name: `Merged (${sources.join(', ')})`,
    source_url: topResult.source_url,
    confidence: Math.round(results.reduce((s, r) => s + (r.confidence || 0), 0) / results.length),
  }
}

async function saveScrapedData(result: ScrapedVerbResult, jobId: string, sourceId: string | null): Promise<void> {
  const admin = getAdminClient()
  const hash = createHash('sha256').update(JSON.stringify(result)).digest('hex')
  const rawHtmlHash = hash.slice(0, 16)

  const isDup = await isDuplicateInfinitive(result.infinitive)
  if (isDup) {
    console.log(`[Scrape] Skipping duplicate merged: ${result.infinitive} (already exists in pipeline)`)
    return
  }

  const cefrMap: Record<string, string> = { A1: 'A1', A2: 'A2', B1: 'B1', B2: 'B2', C1: 'C1', C2: 'C2' }
  const cefr = result.cefr_level && cefrMap[result.cefr_level.toUpperCase()]
    ? result.cefr_level.toUpperCase()
    : null

  const { data: inserted, error: insertError } = await admin.from(DB_TABLES.verbScrapedData).insert({
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
    source_id: sourceId,
    confidence: result.confidence,
    status: 'PENDING',
    job_id: jobId,
    raw_html_hash: rawHtmlHash,
  }).select().single()

  if (insertError) {
    console.error(`[Scrape] Failed to save merged ${result.infinitive}: ${insertError.message}`)
    return
  }

  const scrapedDataId = inserted?.id
  if (scrapedDataId) {
    await admin.from(DB_TABLES.verbScrapingResults)
      .update({ scraped_data_id: scrapedDataId })
      .eq('job_id', jobId)
      .eq('infinitive', result.infinitive)
  }

  console.log(`[Scrape] Merged saved: ${result.infinitive} (conf: ${result.confidence}, sources: ${result.source_name})`)
}

export async function getJobResults(jobId: string): Promise<any[]> {
  const admin = getAdminClient()
  const { data } = await admin
    .from(DB_TABLES.verbScrapingResults)
    .select('*')
    .eq('job_id', jobId)
    .order('infinitive', { ascending: true })
  return data ?? []
}

export async function getJobResultsByVerb(jobId: string, infinitive: string): Promise<any[]> {
  const admin = getAdminClient()
  const { data } = await admin
    .from(DB_TABLES.verbScrapingResults)
    .select('*')
    .eq('job_id', jobId)
    .eq('infinitive', infinitive)
    .order('source_name', { ascending: true })
  return data ?? []
}

export async function getVerbComparison(infinitive: string): Promise<{
  results: any[]
  merged: ScrapedDataRecord | null
  conflicts: any[]
}> {
  const admin = getAdminClient()

  const { data: results } = await admin
    .from(DB_TABLES.verbScrapingResults)
    .select('*')
    .eq('infinitive', infinitive)
    .eq('status', 'completed')
    .order('source_name', { ascending: true })

  const { data: merged } = await admin
    .from(DB_TABLES.verbScrapedData)
    .select('*')
    .eq('infinitive', infinitive)
    .eq('status', 'PENDING')
    .maybeSingle()

  const { data: conflicts } = await admin
    .from(DB_TABLES.verbConflicts)
    .select('*')
    .eq('infinitive', infinitive)
    .order('created_at', { ascending: false })

  return {
    results: results ?? [],
    merged: merged as ScrapedDataRecord | null,
    conflicts: conflicts ?? [],
  }
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

async function fetchMoreTerms(sources: string[], existingVerbs: string[], needed: number): Promise<string[]> {
  const additional: string[] = []
  const existingSet = new Set(existingVerbs)

  for (const sourceName of sources) {
    if (additional.length >= needed) break
    const adapter = getAdapterForSource(sourceName)
    if (!adapter?.search) continue

    try {
      const results = await adapter.search('', { limit: needed * 3 })
      for (const result of results) {
        const verb = result.infinitive
        if (!existingSet.has(verb) && !additional.includes(verb)) {
          additional.push(verb)
          existingSet.add(verb)
          if (additional.length >= needed) break
        }
      }
    } catch {
      continue
    }
  }

  return additional
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
