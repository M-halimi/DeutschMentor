import { getAdminClient } from '../utils'
import { getAllAdapters } from '../sources/registry'
import { DB_TABLES, TENSE_ORDER } from '../constants'
import { ScrapedDataRecord, ConjugationImport, ConjugationGenerationResult } from '../types'
import { generateConjugationsByRule } from './rules'

const CONJUGATION_SOURCES = ['Verbformen', 'Canoonet', 'Wiktionary', 'PONS']

const REQUIRED_TENSES = ['praesens', 'praeteritum', 'perfekt', 'plusquamperfekt', 'futur_i', 'futur_ii', 'konjunktiv_i', 'konjunktiv_ii', 'imperativ', 'passiv']

const PERSONS = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie']

export async function generateConjugations(
  scrapedDataIds: string[],
  userId: string
): Promise<ConjugationGenerationResult> {
  const admin = getAdminClient()
  let totalGenerated = 0
  let totalSkipped = 0
  let totalFailed = 0
  const errors: string[] = []

  for (const id of scrapedDataIds) {
    const { data: scraped, error } = await admin
      .from(DB_TABLES.verbScrapedData)
      .select('*')
      .eq('id', id)
      .single()

    if (error || !scraped) {
      totalFailed++
      errors.push(`Scraped data not found: ${id}`)
      continue
    }

    if (scraped.status !== 'PENDING') {
      totalSkipped++
      continue
    }

    const existingImport = await findExistingImport(scraped.infinitive)
    if (existingImport && existingImport.status !== 'REJECTED') {
      totalSkipped++
      continue
    }

    console.log(`[Conjugation Generator] Scraping conjugations for: ${scraped.infinitive}`)

    try {
      const conjugations = await scrapeAllConjugations(scraped.infinitive, scraped.conjugations, scraped.auxiliary, scraped.separable_prefix)
      const tenseCount = Object.keys(conjugations).length
      const qualityScore = calculateConjugationQuality(conjugations)

      console.log(`[Conjugation Generator] ${scraped.infinitive}: ${tenseCount}/${REQUIRED_TENSES.length} tenses, quality=${qualityScore}`)

      const payload: Partial<ConjugationImport> = {
        scraped_data_id: scraped.id,
        infinitive: scraped.infinitive,
        translation: scraped.translation,
        cefr_level: scraped.cefr_level,
        verb_type: scraped.verb_type,
        source_name: scraped.source_name,
        auxiliary: scraped.auxiliary,
        separable_prefix: scraped.separable_prefix,
        is_reflexive: scraped.is_reflexive,
        reflexive_pronoun: scraped.reflexive_pronoun,
        conjugations,
        quality_score: qualityScore,
        status: 'pending_review',
        created_by: userId,
      }

      const { error: insertError } = await admin
        .from(DB_TABLES.verbConjugationImports)
        .insert(payload)

      if (insertError) {
        totalFailed++
        errors.push(`Failed to save conjugations for ${scraped.infinitive}: ${insertError.message}`)
        continue
      }

      await admin
        .from(DB_TABLES.verbScrapedData)
        .update({ status: 'CONJUGATION_GENERATED' })
        .eq('id', scraped.id)

      totalGenerated++
    } catch (err) {
      totalFailed++
      errors.push(`${scraped.infinitive}: ${err instanceof Error ? err.message : 'Unknown error'}`)
    }
  }

  return {
    total_scraped: scrapedDataIds.length,
    total_generated: totalGenerated,
    total_skipped: totalSkipped,
    total_failed: totalFailed,
    errors,
  }
}

async function findExistingImport(infinitive: string): Promise<ConjugationImport | null> {
  const admin = getAdminClient()
  const { data } = await admin
    .from(DB_TABLES.verbConjugationImports)
    .select('*')
    .eq('infinitive', infinitive)
    .maybeSingle()
  return data as ConjugationImport | null
}

async function scrapeAllConjugations(
  infinitive: string,
  existingConjugations?: Record<string, Record<string, string>>,
  auxiliary?: string,
  separablePrefix?: string
): Promise<Record<string, Record<string, string>>> {
  const allAdapters = getAllAdapters()
  const conjugationAdapters = allAdapters.filter(a => CONJUGATION_SOURCES.includes(a.name))

  let merged: Record<string, Record<string, string>> = {}
  let sourceUsed = 'none'

  if (conjugationAdapters.length > 0) {
    const results = await Promise.allSettled(
      conjugationAdapters.map(async (adapter) => {
        try {
          const start = Date.now()
          const result = await adapter.scrape(infinitive)
          const ms = Date.now() - start
          console.log(`[Conjugation Generator] ${adapter.name} for ${infinitive}: ${result ? Object.keys(result.conjugations || {}).length + ' tenses' : 'null'} (${ms}ms)`)
          return { source: adapter.name, result }
        } catch (err) {
          console.error(`[Conjugation Generator] ${adapter.name} failed for ${infinitive}:`, err)
          return { source: adapter.name, result: null }
        }
      })
    )

    type SuccessResult = { source: string; result: import('../types').ScrapedVerbResult & { conjugations: Record<string, Record<string, string>> } }
    const successfulResults: SuccessResult[] = []
    for (const r of results) {
      if (r.status === 'fulfilled' && r.value.result?.conjugations && Object.keys(r.value.result.conjugations).length > 0) {
        successfulResults.push({ source: r.value.source, result: r.value.result as any })
      }
    }

    if (successfulResults.length > 0) {
      for (const tense of REQUIRED_TENSES) {
        const tenseResults = successfulResults
          .filter(r => r.result.conjugations[tense])
          .map(r => ({ source: r.source, forms: r.result.conjugations[tense] }))
        if (tenseResults.length === 0) continue

        const bestForms: Record<string, string> = {}
        for (const person of PERSONS) {
          const filled = tenseResults.filter(r => r.forms[person] && r.forms[person].trim() !== '')
          if (filled.length === 0) continue

          const formCounts = new Map<string, number>()
          for (const f of filled) {
            const form = f.forms[person].trim()
            formCounts.set(form, (formCounts.get(form) || 0) + 1)
          }
          let bestForm = ''
          let bestCount = 0
          for (const [form, count] of formCounts) {
            if (count > bestCount) { bestForm = form; bestCount = count }
          }
          if (bestForm) bestForms[person] = bestForm
        }
        if (Object.keys(bestForms).length > 0) merged[tense] = bestForms
      }
      sourceUsed = successfulResults.map(r => r.source).join(', ')
      console.log(`[Conjugation Generator] Live adapters gave ${Object.keys(merged).length} tenses for ${infinitive} from [${sourceUsed}]`)
    }
  }

  const mergedCount = Object.keys(merged).length

  if (mergedCount < REQUIRED_TENSES.length && existingConjugations && Object.keys(existingConjugations).length > 0) {
    const existingCount = Object.keys(existingConjugations).length
    console.log(`[Conjugation Generator] Falling back to existing scraped conjugations for ${infinitive} (${existingCount} tenses)`)
    for (const tense of REQUIRED_TENSES) {
      if (!merged[tense] && existingConjugations[tense]) {
        merged[tense] = existingConjugations[tense]
      }
    }
    if (Object.keys(merged).length > mergedCount) {
      sourceUsed = (sourceUsed !== 'none' ? sourceUsed + ', ' : '') + 'existing_data'
      console.log(`[Conjugation Generator] After existing data fallback: ${Object.keys(merged).length} tenses for ${infinitive}`)
    }
  }

  if (Object.keys(merged).length < REQUIRED_TENSES.length) {
    console.log(`[Conjugation Generator] Generating conjugations by rule for ${infinitive}`)
    const ruleConjugations = generateConjugationsByRule(infinitive, auxiliary, separablePrefix)
    for (const tense of REQUIRED_TENSES) {
      if (!merged[tense] && ruleConjugations[tense]) {
        merged[tense] = ruleConjugations[tense]
      }
    }
    sourceUsed = (sourceUsed !== 'none' ? sourceUsed + ', ' : '') + 'rules_engine'
    console.log(`[Conjugation Generator] Rules engine gave ${Object.keys(merged).length} tenses for ${infinitive} (source chain: ${sourceUsed})`)
  }

  return merged
}

function calculateConjugationQuality(
  conjugations: Record<string, Record<string, string>>
): number {
  let score = 100

  for (const tense of REQUIRED_TENSES) {
    const forms = conjugations[tense]
    if (!forms) {
      score -= 10
      continue
    }
    for (const person of PERSONS) {
      if (!forms[person] || forms[person].trim() === '') {
        score -= 2
      }
    }
  }

  return Math.max(0, score)
}

export async function getConjugationImports(options: {
  status?: string
  source?: string
  cefr_level?: string
  search?: string
  page?: number
  pageSize?: number
  sort_by?: string
  sort_order?: 'asc' | 'desc'
}): Promise<{ data: ConjugationImport[]; total: number }> {
  const admin = getAdminClient()
  const page = options.page ?? 1
  const pageSize = options.pageSize ?? 25
  const offset = (page - 1) * pageSize

  let query = admin.from(DB_TABLES.verbConjugationImports).select('*', { count: 'exact' })

  if (options.status) query = query.eq('status', options.status)
  if (options.source) query = query.eq('source_name', options.source)
  if (options.cefr_level) query = query.eq('cefr_level', options.cefr_level)
  if (options.search) query = query.ilike('infinitive', `%${options.search}%`)

  const sortCol = options.sort_by || 'created_at'
  const sortDir = options.sort_order === 'asc' ? { ascending: true } as const : { ascending: false } as const
  query = query.order(sortCol as any, sortDir)

  const { data, error, count } = await query.range(offset, offset + pageSize - 1)
  if (error) throw new Error(`Failed to fetch conjugation imports: ${error.message}`)
  return { data: data as ConjugationImport[], total: count ?? 0 }
}

export async function getConjugationImportStats(): Promise<{
  total: number; pending: number; in_review: number; approved: number; rejected: number; published: number
}> {
  const admin = getAdminClient()
  const [totalRes, pendingRes, reviewRes, approvedRes, rejectedRes, publishedRes] = await Promise.all([
    admin.from(DB_TABLES.verbConjugationImports).select('*', { count: 'exact', head: true }),
    admin.from(DB_TABLES.verbConjugationImports).select('*', { count: 'exact', head: true }).eq('status', 'pending_review'),
    admin.from(DB_TABLES.verbConjugationImports).select('*', { count: 'exact', head: true }).eq('status', 'IN_REVIEW'),
    admin.from(DB_TABLES.verbConjugationImports).select('*', { count: 'exact', head: true }).eq('status', 'APPROVED'),
    admin.from(DB_TABLES.verbConjugationImports).select('*', { count: 'exact', head: true }).eq('status', 'REJECTED'),
    admin.from(DB_TABLES.verbConjugationImports).select('*', { count: 'exact', head: true }).eq('status', 'PUBLISHED'),
  ])
  return {
    total: totalRes.count ?? 0,
    pending: pendingRes.count ?? 0,
    in_review: reviewRes.count ?? 0,
    approved: approvedRes.count ?? 0,
    rejected: rejectedRes.count ?? 0,
    published: publishedRes.count ?? 0,
  }
}

export async function sendConjugationToReview(importIds: string[]): Promise<number> {
  const admin = getAdminClient()
  const { count } = await admin
    .from(DB_TABLES.verbConjugationImports)
    .update({ status: 'IN_REVIEW', updated_at: new Date().toISOString() })
    .in('id', importIds)
    .eq('status', 'pending_review')
  return count ?? 0
}

export async function deleteConjugationImports(importIds: string[]): Promise<number> {
  const admin = getAdminClient()
  const { count } = await admin
    .from(DB_TABLES.verbConjugationImports)
    .update({ status: 'REJECTED', updated_at: new Date().toISOString() })
    .in('id', importIds)
    .in('status', ['pending_review', 'IN_REVIEW'])
  return count ?? 0
}
