import { detectSeparablePrefix } from './prefixes'
import { getCEFRLevel, getAllVerbs, getVerbsByLevel } from './german-verbs-list'
import type { SourceAdapter, SourceVerbEntry, FetchResult } from './types'

export class VerbformenAdapter implements SourceAdapter {
  name = 'Verbformen'

  async testConnection(): Promise<{ ok: boolean; message: string; latency?: number }> {
    const start = performance.now()
    try {
      const res = await fetch('https://www.verbformen.com/?w=sein', {
        headers: { 'User-Agent': 'Mozilla/5.0 (compatible; DeutschMentor/1.0)' },
        signal: AbortSignal.timeout(10000),
      })
      const latency = Math.round(performance.now() - start)
      if (res.ok) return { ok: true, message: `Verbformen responded with status ${res.status}`, latency }
      return { ok: false, message: `Verbformen returned status ${res.status}`, latency }
    } catch (err) {
      const latency = Math.round(performance.now() - start)
      return { ok: false, message: `Verbformen connection failed: ${err}`, latency }
    }
  }

  async fetchAll(): Promise<FetchResult> {
    return scrapeVerbformen()
  }

  async fetchByLevel(level: string): Promise<FetchResult> {
    const allResult = await scrapeVerbformen()
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
      const url = `https://www.verbformen.com/?w=${encodeURIComponent(infinitive)}`
      const res = await fetch(url, {
        headers: { 'User-Agent': 'Mozilla/5.0 (compatible; DeutschMentor/1.0)' },
        signal: AbortSignal.timeout(15000),
      })
      if (!res.ok) return null
      const html = await res.text()
      return parseVerbformenHtml(html, infinitive)
    } catch {
      return null
    }
  }
}

async function scrapeVerbformen(): Promise<FetchResult> {
  const errors: string[] = []
  const fetchedAt = new Date().toISOString()

  try {
    // Verbformen has no public verb listing API. We attempt the sitemap or index page.
    const urls = [
      'https://www.verbformen.com/deklination/verben/',
      'https://www.verbformen.com/konjugation/verben/',
    ]

    for (const url of urls) {
      const res = await fetch(url, {
        headers: { 'User-Agent': 'Mozilla/5.0 (compatible; DeutschMentor/1.0)' },
        signal: AbortSignal.timeout(15000),
      })
      if (res.ok) {
        const html = await res.text()
        const entries = parseVerbListHtml(html, url)
        if (entries.length > 0) {
          return {
            entries,
            meta: {
              source_url: url,
              fetched_at: fetchedAt,
              total_found: entries.length,
              errors,
              live: true,
            },
          }
        }
      }
      errors.push(`${url} returned status ${res.status}`)
    }

    errors.push('All live attempts failed, using fallback list')
    return fallback(errors, fetchedAt)
  } catch (err: any) {
    errors.push(`Live scrape failed: ${err?.message || String(err)}`)
    return fallback(errors, fetchedAt)
  }
}

function parseVerbListHtml(html: string, sourceUrl: string): SourceVerbEntry[] {
  const entries: SourceVerbEntry[] = []
  const linkRegex = /<a\s+href="[^"]*"\s+title="([^"]+)"[^>]*>/gi
  let match: RegExpExecArray | null

  const seen = new Set<string>()

  while ((match = linkRegex.exec(html)) !== null) {
    let title = match[1].trim()
    if (!title || title.includes(' ')) continue
    if (title.endsWith(')')) continue
    if (!title.endsWith('en') && !title.endsWith('n')) continue
    const lower = title.toLowerCase()
    if (seen.has(lower)) continue
    seen.add(lower)

    entries.push({
      infinitive: title,
      auxiliary: null,
      verb_type: null,
      separable_prefix: detectSeparablePrefix(title),
      is_reflexive: false,
      reflexive_pronoun: null,
      partizip_2: null,
      cefr_level: getCEFRLevel(title),
      translation: null,
      source_url: `${sourceUrl}${encodeURIComponent(title)}`,
    })
  }

  return entries
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
    source_url: `https://www.verbformen.com/?w=${encodeURIComponent(v.infinitive)}`,
  }))

  return {
    entries,
    meta: {
      source_url: 'https://www.verbformen.com',
      fetched_at: fetchedAt,
      total_found: entries.length,
      errors,
      live: false,
    },
  }
}

function parseVerbformenHtml(html: string, infinitive: string): SourceVerbEntry | null {
  let auxiliary: string | null = null
  let partizip2: string | null = null
  let verbType: string | null = null
  let separablePrefix: string | null = null
  let isReflexive = false
  let reflexivePronoun: string | null = null

  const infoMatch = html.match(/Hilfsverb:\s*([^<.]+)/i)
  if (infoMatch) {
    const val = infoMatch[1].trim()
    if (val.toLowerCase().includes('sein') && val.toLowerCase().includes('haben')) auxiliary = 'both'
    else if (val.toLowerCase().includes('sein')) auxiliary = 'sein'
    else if (val.toLowerCase().includes('haben')) auxiliary = 'haben'
  }

  const p2Match = html.match(/Partizip\s+II[^<]*<[^>]*>([^<]+)/i)
  if (p2Match) partizip2 = p2Match[1].trim()

  if (html.toLowerCase().includes('sich ' + infinitive) || html.toLowerCase().includes(infinitive + ' sich')) {
    isReflexive = true
    reflexivePronoun = 'sich'
  }

  const prefixMatch = html.match(/trennbar[^<]*<[^>]*>([^<]+)/i)
  if (prefixMatch) {
    verbType = 'separable'
    separablePrefix = detectSeparablePrefix(infinitive)
  }

  if (!verbType) {
    if (html.includes('unregelmäßig') || html.includes('stark')) verbType = 'irregular'
    else if (html.includes('gemischt')) verbType = 'mixed'
    else if (html.includes('regelmäßig') || html.includes('schwach')) verbType = 'regular'
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
    source_url: `https://www.verbformen.com/?w=${encodeURIComponent(infinitive)}`,
  }
}
