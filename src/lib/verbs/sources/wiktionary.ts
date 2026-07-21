import { detectSeparablePrefix } from './prefixes'
import { getCEFRLevel, getAllVerbs, getVerbsByLevel } from './german-verbs-list'
import type { SourceAdapter, SourceVerbEntry, FetchResult } from './types'

const CATEGORY = 'Kategorie:Verb_(Deutsch)'
const API_BASE = 'https://de.wiktionary.org/w/api.php'

export class WiktionaryAdapter implements SourceAdapter {
  name = 'Wiktionary'

  async testConnection(): Promise<{ ok: boolean; message: string; latency?: number }> {
    const start = performance.now()
    try {
      const res = await fetch(`${API_BASE}?action=query&list=categorymembers&cmtitle=${encodeURIComponent(CATEGORY)}&cmlimit=1&format=json`, {
        headers: { 'User-Agent': 'Mozilla/5.0 (compatible; DeutschMentor/1.0)' },
        signal: AbortSignal.timeout(10000),
      })
      const latency = Math.round(performance.now() - start)
      if (res.ok) return { ok: true, message: `Wiktionary API responded with status ${res.status}`, latency }
      return { ok: false, message: `Wiktionary API returned status ${res.status}`, latency }
    } catch (err) {
      const latency = Math.round(performance.now() - start)
      return { ok: false, message: `Wiktionary API connection failed: ${err}`, latency }
    }
  }

  async fetchAll(): Promise<FetchResult> {
    return scrapeWiktionaryVerbs()
  }

  async fetchByLevel(level: string): Promise<FetchResult> {
    const allResult = await scrapeWiktionaryVerbs()
    const lowerLevel = level.toLowerCase()
    const filtered = allResult.entries.filter(e => {
      const cefr = e.cefr_level || getCEFRLevel(e.infinitive)
      return cefr?.toLowerCase() === lowerLevel
    })
    return {
      entries: filtered,
      meta: { ...allResult.meta, total_found: filtered.length },
    }
  }

  async fetchSingle(infinitive: string): Promise<SourceVerbEntry | null> {
    try {
      const url = `https://de.wiktionary.org/wiki/${encodeURIComponent(infinitive)}`
      const res = await fetch(url, {
        headers: { 'User-Agent': 'Mozilla/5.0 (compatible; DeutschMentor/1.0)' },
        signal: AbortSignal.timeout(15000),
      })
      if (!res.ok) return null
      const html = await res.text()
      return parseWiktionaryHtml(html, infinitive)
    } catch {
      return null
    }
  }
}

async function scrapeWiktionaryVerbs(): Promise<FetchResult> {
  const errors: string[] = []
  const allTitles: string[] = []
  const fetchedAt = new Date().toISOString()

  try {
    let cmcontinue: string | null = null
    let page = 0

    do {
      const params = new URLSearchParams({
        action: 'query',
        list: 'categorymembers',
        cmtitle: CATEGORY,
        cmlimit: '500',
        format: 'json',
      })
      if (cmcontinue) params.set('cmcontinue', cmcontinue)

      const res = await fetch(`${API_BASE}?${params}`, {
        headers: { 'User-Agent': 'Mozilla/5.0 (compatible; DeutschMentor/1.0)' },
        signal: AbortSignal.timeout(30000),
      })

      if (!res.ok) {
        errors.push(`API returned status ${res.status} on page ${page + 1}`)
        break
      }

      const data = await res.json() as any

      if (data?.query?.categorymembers) {
        for (const member of data.query.categorymembers) {
          if (member.ns === 0 && member.title) {
            allTitles.push(member.title)
          }
        }
      }

      cmcontinue = data?.continue?.cmcontinue ?? null
      page++
    } while (cmcontinue)

    const seen = new Set<string>()
    const unique = allTitles.filter(t => {
      const lower = t.toLowerCase()
      if (seen.has(lower)) return false
      seen.add(lower)
      return true
    })

    const entries: SourceVerbEntry[] = unique.map(title => ({
      infinitive: title,
      auxiliary: null,
      verb_type: null,
      separable_prefix: detectSeparablePrefix(title),
      is_reflexive: false,
      reflexive_pronoun: null,
      partizip_2: null,
      cefr_level: getCEFRLevel(title),
      translation: null,
      source_url: `https://de.wiktionary.org/wiki/${encodeURIComponent(title)}`,
    }))

    return {
      entries,
      meta: {
        source_url: 'https://de.wiktionary.org',
        fetched_at: fetchedAt,
        total_found: entries.length,
        errors,
        live: true,
      },
    }
  } catch (err: any) {
    errors.push(`Live scrape failed: ${err?.message || String(err)}`)
    return fallback(errors, fetchedAt)
  }
}

function fallback(errors: string[], fetchedAt: string): FetchResult {
  const all = getAllVerbs()
  const entries: SourceVerbEntry[] = all.map(v => ({
    infinitive: v.infinitive,
    auxiliary: null,
    verb_type: null,
    separable_prefix: detectSeparablePrefix(v.infinitive),
    is_reflexive: false,
    reflexive_pronoun: null,
    partizip_2: null,
    cefr_level: v.level.toUpperCase(),
    translation: null,
    source_url: `https://de.wiktionary.org/wiki/${encodeURIComponent(v.infinitive)}`,
  }))

  return {
    entries,
    meta: {
      source_url: 'https://de.wiktionary.org',
      fetched_at: fetchedAt,
      total_found: entries.length,
      errors,
      live: false,
    },
  }
}

function parseWiktionaryHtml(html: string, infinitive: string): SourceVerbEntry | null {
  let auxiliary: string | null = null
  let partizip2: string | null = null
  let verbType: string | null = null
  let separablePrefix: string | null = null
  let isReflexive = false
  let reflexivePronoun: string | null = null

  const auxMatch = html.match(/Hilfsverb[:\s]*([^<]+)/i)
  if (auxMatch) {
    const val = auxMatch[1].trim().toLowerCase()
    if (val.includes('sein') && val.includes('haben')) auxiliary = 'both'
    else if (val.includes('sein')) auxiliary = 'sein'
    else if (val.includes('haben')) auxiliary = 'haben'
  }

  const p2Match = html.match(/Partizip\s+II[^:]*:\s*([^<\n]+)/i)
  if (p2Match) partizip2 = p2Match[1].trim()

  if (html.includes('reflexiv') || html.includes('Reflexiv')) {
    isReflexive = true
    reflexivePronoun = 'sich'
  }

  if (html.includes('trennbar') || html.includes('Trennbar')) {
    verbType = 'separable'
  }

  separablePrefix = detectSeparablePrefix(infinitive)

  if (!verbType) {
    if (html.includes('stark') || html.includes('unregelmäßig')) verbType = 'irregular'
    else if (html.includes('gemischt')) verbType = 'mixed'
    else verbType = 'regular'
  }

  return {
    infinitive,
    auxiliary,
    verb_type: verbType,
    separable_prefix: separablePrefix,
    is_reflexive: isReflexive,
    reflexive_pronoun: reflexivePronoun,
    partizip_2: partizip2,
    cefr_level: getCEFRLevel(infinitive),
    translation: null,
    source_url: `https://de.wiktionary.org/wiki/${encodeURIComponent(infinitive)}`,
  }
}
