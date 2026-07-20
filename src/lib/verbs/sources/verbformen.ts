import { detectSeparablePrefix } from './prefixes'
import type { SourceAdapter, SourceVerbEntry } from './types'

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

  async fetchByLevel(level: string): Promise<SourceVerbEntry[]> {
    // Verbformen doesn't support bulk fetch by CEFR level directly.
    // We use a curated list approach - return empty array for bulk,
    // individual lookups work via fetchSingle.
    console.warn(`Verbformen does not support bulk fetch by CEFR level. Use fetchSingle for individual verbs.`)
    return []
  }

  async fetchSingle(infinitive: string): Promise<SourceVerbEntry | null> {
    try {
      const url = `https://www.verbformen.com/?w=${encodeURIComponent(infinitive)}`
      const res = await fetch(url, {
        headers: { 'User-Agent': 'Mozilla/5.0 (compatible; DeutschMentor/1.0)' },
        signal: AbortSignal.timeout(10000),
      })
      if (!res.ok) return null
      const html = await res.text()
      return parseVerbformenHtml(html, infinitive)
    } catch {
      return null
    }
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
    const prefixArea = prefixMatch[1].trim()
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
    cefr_level: null,
    translation: null,
  }
}
