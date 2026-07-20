import { detectSeparablePrefix } from './prefixes'
import type { SourceAdapter, SourceVerbEntry } from './types'

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

  async fetchByLevel(level: string): Promise<SourceVerbEntry[]> {
    console.warn(`Canoonet does not support bulk fetch by CEFR level. Use fetchSingle for individual verbs.`)
    return []
  }

  async fetchSingle(infinitive: string): Promise<SourceVerbEntry | null> {
    try {
      const url = `https://www.canoonet.eu/services/Controller?service=verben&input=${encodeURIComponent(infinitive)}`
      const res = await fetch(url, {
        headers: { 'User-Agent': 'Mozilla/5.0 (compatible; DeutschMentor/1.0)' },
        signal: AbortSignal.timeout(10000),
      })
      if (!res.ok) return null
      const html = await res.text()
      return parseCanoonetHtml(html, infinitive)
    } catch {
      return null
    }
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
    cefr_level: null,
    translation: null,
  }
}
