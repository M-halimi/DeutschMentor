import { detectSeparablePrefix } from './prefixes'
import type { SourceAdapter, SourceVerbEntry } from './types'

export class WiktionaryAdapter implements SourceAdapter {
  name = 'Wiktionary'

  async testConnection(): Promise<{ ok: boolean; message: string; latency?: number }> {
    const start = performance.now()
    try {
      const res = await fetch('https://de.wiktionary.org/wiki/sein', {
        headers: { 'User-Agent': 'Mozilla/5.0 (compatible; DeutschMentor/1.0)' },
        signal: AbortSignal.timeout(10000),
      })
      const latency = Math.round(performance.now() - start)
      if (res.ok) return { ok: true, message: `Wiktionary responded with status ${res.status}`, latency }
      return { ok: false, message: `Wiktionary returned status ${res.status}`, latency }
    } catch (err) {
      const latency = Math.round(performance.now() - start)
      return { ok: false, message: `Wiktionary connection failed: ${err}`, latency }
    }
  }

  async fetchByLevel(level: string): Promise<SourceVerbEntry[]> {
    // Wiktionary does not have CEFR-based categories in a machine-readable format
    console.warn(`Wiktionary does not support bulk fetch by CEFR level. Use fetchSingle for individual verbs.`)
    return []
  }

  async fetchSingle(infinitive: string): Promise<SourceVerbEntry | null> {
    try {
      const url = `https://de.wiktionary.org/wiki/${encodeURIComponent(infinitive)}`
      const res = await fetch(url, {
        headers: { 'User-Agent': 'Mozilla/5.0 (compatible; DeutschMentor/1.0)' },
        signal: AbortSignal.timeout(10000),
      })
      if (!res.ok) return null
      const html = await res.text()
      return parseWiktionaryHtml(html, infinitive)
    } catch {
      return null
    }
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
    cefr_level: null,
    translation: null,
  }
}
