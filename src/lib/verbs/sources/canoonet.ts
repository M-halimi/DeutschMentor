import { detectSeparablePrefix } from './prefixes'
import { getCEFRLevel, getAllVerbs, getVerbsByLevel } from './german-verbs-list'
import type { SourceAdapter, SourceVerbEntry, FetchResult } from './types'

export class CanoonetAdapter implements SourceAdapter {
  name = 'Canoonet'

  async testConnection(): Promise<{ ok: boolean; message: string; latency?: number }> {
    const start = performance.now()
    try {
      const res = await fetch('https://www.canoonet.eu/services/Controller?service=verben&input=sein', {
        headers: { 'User-Agent': 'Mozilla/5.0 (compatible; DeutschMentor/1.0)' },
        signal: AbortSignal.timeout(10000),
      })
      const latency = Math.round(performance.now() - start)
      if (res.ok) return { ok: true, message: `Canoonet responded with status ${res.status}`, latency }
      return { ok: false, message: `Canoonet returned status ${res.status}`, latency }
    } catch (err) {
      const latency = Math.round(performance.now() - start)
      return { ok: false, message: `Canoonet connection failed: ${err}`, latency }
    }
  }

  async fetchAll(): Promise<FetchResult> {
    return scrapeCanoonet()
  }

  async fetchByLevel(level: string): Promise<FetchResult> {
    const allResult = await scrapeCanoonet()
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
      const url = `https://www.canoonet.eu/services/Controller?service=verben&input=${encodeURIComponent(infinitive)}`
      const res = await fetch(url, {
        headers: { 'User-Agent': 'Mozilla/5.0 (compatible; DeutschMentor/1.0)' },
        signal: AbortSignal.timeout(15000),
      })
      if (!res.ok) return null
      const html = await res.text()
      return parseCanoonetHtml(html, infinitive)
    } catch {
      return null
    }
  }
}

async function scrapeCanoonet(): Promise<FetchResult> {
  const errors: string[] = []
  const fetchedAt = new Date().toISOString()

  try {
    const res = await fetch('https://www.canoonet.eu/services/Controller?service=verben&input=*', {
      headers: { 'User-Agent': 'Mozilla/5.0 (compatible; DeutschMentor/1.0)' },
      signal: AbortSignal.timeout(15000),
    })

    if (res.ok) {
      const text = await res.text()
      const entries = parseCanoonetList(text)
      if (entries.length > 0) {
        return {
          entries,
          meta: {
            source_url: 'https://www.canoonet.eu/services/Controller?service=verben',
            fetched_at: fetchedAt,
            total_found: entries.length,
            errors,
            live: true,
          },
        }
      }
      errors.push('Canoonet returned empty result')
    } else {
      errors.push(`Canoonet returned status ${res.status}`)
    }

    return fallback(errors, fetchedAt)
  } catch (err: any) {
    errors.push(`Live scrape failed: ${err?.message || String(err)}`)
    return fallback(errors, fetchedAt)
  }
}

function parseCanoonetList(text: string): SourceVerbEntry[] {
  const entries: SourceVerbEntry[] = []
  const seen = new Set<string>()

  const linkRegex = /<a[^>]*href="[^"]*input=([^"&]+)[^>]*>([^<]+)<\/a>/gi
  let match: RegExpExecArray | null

  while ((match = linkRegex.exec(text)) !== null) {
    const name = (match[2] || match[1]).trim()
    if (!name || name.includes(' ') || name.length < 2) continue
    const lower = name.toLowerCase()
    if (seen.has(lower)) continue
    seen.add(lower)

    entries.push({
      infinitive: name,
      auxiliary: null,
      verb_type: null,
      separable_prefix: detectSeparablePrefix(name),
      is_reflexive: false,
      reflexive_pronoun: null,
      partizip_2: null,
      cefr_level: getCEFRLevel(name),
      translation: null,
      source_url: `https://www.canoonet.eu/services/Controller?service=verben&input=${encodeURIComponent(name)}`,
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
    source_url: `https://www.canoonet.eu/services/Controller?service=verben&input=${encodeURIComponent(v.infinitive)}`,
  }))

  return {
    entries,
    meta: {
      source_url: 'https://www.canoonet.eu',
      fetched_at: fetchedAt,
      total_found: entries.length,
      errors,
      live: false,
    },
  }
}

function parseCanoonetHtml(html: string, infinitive: string): SourceVerbEntry | null {
  let auxiliary: string | null = null
  let partizip2: string | null = null
  let verbType: string | null = null
  let separablePrefix: string | null = null
  let isReflexive = false
  let reflexivePronoun: string | null = null

  const auxMatch = html.match(/Hilfsverb[:\s]*([^<\n]+)/i)
  if (auxMatch) {
    const val = auxMatch[1].trim().toLowerCase()
    if (val.includes('sein') && val.includes('haben')) auxiliary = 'both'
    else if (val.includes('sein')) auxiliary = 'sein'
    else if (val.includes('haben')) auxiliary = 'haben'
  }

  const p2Match = html.match(/Partizip\s+II[:\s]*([^<\n]+)/i)
  if (p2Match) partizip2 = p2Match[1].trim()

  if (html.includes('sich') && html.toLowerCase().includes('reflexiv')) {
    isReflexive = true
    reflexivePronoun = 'sich'
  }

  separablePrefix = detectSeparablePrefix(infinitive)
  if (separablePrefix) verbType = 'separable'

  if (!verbType) {
    if (html.includes('unregelmäßig') || html.includes('stark')) verbType = 'irregular'
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
    source_url: `https://www.canoonet.eu/services/Controller?service=verben&input=${encodeURIComponent(infinitive)}`,
  }
}
