import { ScrapedVerbResult } from '../types'

export interface SourceAdapter {
  name: string
  confidence: number
  scrape(infinitive: string): Promise<ScrapedVerbResult | null>
  search(term: string, options?: { cefrLevel?: string; limit?: number }): Promise<ScrapedVerbResult[]>
  validate(result: ScrapedVerbResult): { valid: boolean; errors: string[] }
}

export class VerbformenAdapter implements SourceAdapter {
  name = 'Verbformen'
  confidence = 90

  async scrape(infinitive: string): Promise<ScrapedVerbResult | null> {
    const url = `https://www.verbformen.com/conjugation/?w=${encodeURIComponent(infinitive)}`
    try {
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return null
      const html = await response.text()
      return parseVerbformenHtml(html, infinitive, url)
    } catch {
      return null
    }
  }

  async search(term: string, options?: { cefrLevel?: string; limit?: number }): Promise<ScrapedVerbResult[]> {
    const limit = options?.limit ?? 20
    const results: ScrapedVerbResult[] = []
    const searchUrl = `https://www.verbformen.com/suche/?q=${encodeURIComponent(term)}`
    try {
      const response = await fetch(searchUrl, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return results
      const html = await response.text()
      const infinitives = extractInfinitivesFromSearchResults(html)
      const batch = await Promise.allSettled(infinitives.slice(0, limit).map(v => this.scrape(v)))
      for (const result of batch) {
        if (result.status === 'fulfilled' && result.value) results.push(result.value)
      }
    } catch { /* ignore */ }
    return results
  }

  validate(result: ScrapedVerbResult): { valid: boolean; errors: string[] } {
    const errors: string[] = []
    if (!result.infinitive) errors.push('Missing infinitive')
    if (!result.partizip_2) errors.push('Missing Partizip II')
    if (result.conjugations && !result.conjugations['praesens']) errors.push('Missing Präsens conjugation')
    return { valid: errors.length === 0, errors }
  }
}

export class WiktionaryAdapter implements SourceAdapter {
  name = 'Wiktionary'
  confidence = 80

  async scrape(infinitive: string): Promise<ScrapedVerbResult | null> {
    const url = `https://de.wiktionary.org/wiki/${encodeURIComponent(infinitive)}`
    try {
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return null
      const html = await response.text()
      return parseWiktionaryHtml(html, infinitive, url)
    } catch {
      return null
    }
  }

  async search(term: string, options?: { limit?: number }): Promise<ScrapedVerbResult[]> {
    const limit = options?.limit ?? 20
    const results: ScrapedVerbResult[] = []
    const searchUrl = `https://de.wiktionary.org/w/index.php?search=${encodeURIComponent(term)}`
    try {
      const response = await fetch(searchUrl, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return results
      const html = await response.text()
      const infinitives = extractWiktionaryVerbs(html, term)
      const batch = await Promise.allSettled(infinitives.slice(0, limit).map(v => this.scrape(v)))
      for (const result of batch) {
        if (result.status === 'fulfilled' && result.value) results.push(result.value)
      }
    } catch { /* ignore */ }
    return results
  }

  validate(result: ScrapedVerbResult): { valid: boolean; errors: string[] } {
    const errors: string[] = []
    if (!result.infinitive) errors.push('Missing infinitive')
    return { valid: errors.length === 0, errors }
  }
}

export class CanoonetAdapter implements SourceAdapter {
  name = 'Canoonet'
  confidence = 85

  async scrape(infinitive: string): Promise<ScrapedVerbResult | null> {
    const url = `https://www.canoonet.eu/inflection/${encodeURIComponent(infinitive)}`
    try {
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return null
      const html = await response.text()
      return parseCanoonetHtml(html, infinitive, url)
    } catch {
      return null
    }
  }

  async search(term: string, options?: { limit?: number }): Promise<ScrapedVerbResult[]> {
    const limit = options?.limit ?? 20
    const results: ScrapedVerbResult[] = []
    try {
      const url = `https://www.canoonet.eu/suche?q=${encodeURIComponent(term)}`
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return results
      const html = await response.text()
      const infinitives = extractCanoonetVerbs(html)
      const batch = await Promise.allSettled(infinitives.slice(0, limit).map(v => this.scrape(v)))
      for (const result of batch) {
        if (result.status === 'fulfilled' && result.value) results.push(result.value)
      }
    } catch { /* ignore */ }
    return results
  }

  validate(result: ScrapedVerbResult): { valid: boolean; errors: string[] } {
    const errors: string[] = []
    if (!result.infinitive) errors.push('Missing infinitive')
    return { valid: errors.length === 0, errors }
  }
}

export class DWDSAdapter implements SourceAdapter {
  name = 'DWDS'
  confidence = 88

  async scrape(infinitive: string): Promise<ScrapedVerbResult | null> {
    const url = `https://www.dwds.de/wb/${encodeURIComponent(infinitive)}`
    try {
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return null
      const html = await response.text()
      return parseDWDSHtml(html, infinitive, url)
    } catch {
      return null
    }
  }

  async search(term: string, options?: { limit?: number }): Promise<ScrapedVerbResult[]> {
    const results: ScrapedVerbResult[] = []
    try {
      const url = `https://www.dwds.de/api/search/?q=${encodeURIComponent(term)}`
      const response = await fetch(url, { headers: { 'Accept': 'application/json' } })
      if (!response.ok) return results
      const data = await response.json() as { words?: string[] }
      const verbs = (data.words ?? []).slice(0, options?.limit ?? 20)
      const batch = await Promise.allSettled(verbs.map(v => this.scrape(v)))
      for (const result of batch) {
        if (result.status === 'fulfilled' && result.value) results.push(result.value)
      }
    } catch { /* ignore */ }
    return results
  }

  validate(result: ScrapedVerbResult): { valid: boolean; errors: string[] } {
    return { valid: !!result.infinitive, errors: result.infinitive ? [] : ['Missing infinitive'] }
  }
}

export class CustomJsonAdapter implements SourceAdapter {
  name = 'Custom JSON'
  confidence = 95

  private customData: ScrapedVerbResult[] = []

  constructor(data?: ScrapedVerbResult[]) {
    if (data) this.customData = data
  }

  async scrape(infinitive: string): Promise<ScrapedVerbResult | null> {
    return this.customData.find(v => v.infinitive === infinitive) ?? null
  }

  async search(_term: string, options?: { limit?: number }): Promise<ScrapedVerbResult[]> {
    return this.customData.slice(0, options?.limit ?? 50)
  }

  validate(result: ScrapedVerbResult): { valid: boolean; errors: string[] } {
    return { valid: !!result.infinitive, errors: [] }
  }
}

export class DudenAdapter implements SourceAdapter {
  name = 'Duden'
  confidence = 92

  async scrape(infinitive: string): Promise<ScrapedVerbResult | null> {
    const url = `https://www.duden.de/rechtschreibung/${encodeURIComponent(infinitive)}`
    try {
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return null
      const html = await response.text()
      return parseDudenHtml(html, infinitive, url)
    } catch {
      return null
    }
  }

  async search(term: string, options?: { limit?: number }): Promise<ScrapedVerbResult[]> {
    const limit = options?.limit ?? 20
    const results: ScrapedVerbResult[] = []
    const searchUrl = `https://www.duden.de/suchen/dudenonline/${encodeURIComponent(term)}`
    try {
      const response = await fetch(searchUrl, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return results
      const html = await response.text()
      const words = extractDudenVerbs(html)
      const batch = await Promise.allSettled(words.slice(0, limit).map(v => this.scrape(v)))
      for (const item of batch) {
        if (item.status === 'fulfilled' && item.value) results.push(item.value)
      }
    } catch { /* ignore */ }
    return results
  }

  validate(result: ScrapedVerbResult): { valid: boolean; errors: string[] } {
    const errors: string[] = []
    if (!result.infinitive) errors.push('Missing infinitive')
    return { valid: errors.length === 0, errors }
  }
}

export class PONSAdapter implements SourceAdapter {
  name = 'PONS'
  confidence = 82

  async scrape(infinitive: string): Promise<ScrapedVerbResult | null> {
    const url = `https://de.pons.com/verbtabelle/deutsch/${encodeURIComponent(infinitive)}`
    try {
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return null
      const html = await response.text()
      return parsePONSHtml(html, infinitive, url)
    } catch {
      return null
    }
  }

  async search(term: string, options?: { limit?: number }): Promise<ScrapedVerbResult[]> {
    const limit = options?.limit ?? 20
    const results: ScrapedVerbResult[] = []
    const searchUrl = `https://de.pons.com/übersetzung?q=${encodeURIComponent(term)}&l=deen`
    try {
      const response = await fetch(searchUrl, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return results
      const html = await response.text()
      const words = extractPONSVerbs(html)
      const batch = await Promise.allSettled(words.slice(0, limit).map(v => this.scrape(v)))
      for (const item of batch) {
        if (item.status === 'fulfilled' && item.value) results.push(item.value)
      }
    } catch { /* ignore */ }
    return results
  }

  validate(result: ScrapedVerbResult): { valid: boolean; errors: string[] } {
    const errors: string[] = []
    if (!result.infinitive) errors.push('Missing infinitive')
    return { valid: errors.length === 0, errors }
  }
}

export class LEOAdapter implements SourceAdapter {
  name = 'LEO'
  confidence = 78

  async scrape(infinitive: string): Promise<ScrapedVerbResult | null> {
    const url = `https://dict.leo.org/englisch-deutsch/${encodeURIComponent(infinitive)}`
    try {
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return null
      const html = await response.text()
      const result: ScrapedVerbResult = {
        infinitive, source_name: 'LEO', source_url: url, confidence: 78,
      }
      const extracts = extractHtmlData(html, {
        translation: /<span[^>]*class="[^"]*translation[^"]*"[^>]*>([^<]+)<\/span>/i,
        partizip_2: /Partizip[^:]*Perfekt[^:]*:\s*([^<\s]+)/i,
      })
      if (extracts.translation) result.translation = extracts.translation.trim()
      if (extracts.partizip_2) result.partizip_2 = extracts.partizip_2.trim()
      result.conjugations = extractConjugationTables(html)
      return result
    } catch { return null }
  }

  async search(term: string, options?: { limit?: number }): Promise<ScrapedVerbResult[]> {
    const results: ScrapedVerbResult[] = []
    const limit = options?.limit ?? 20
    try {
      const url = `https://dict.leo.org/englisch-deutsch/${encodeURIComponent(term)}`
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return results
      const html = await response.text()
      const words: string[] = []
      const regex = /<a[^>]*href="[^"]*\/([a-zäöüß]+(?:en|n|t|e))"[^>]*class="[^"]*dictLink[^"]*"/gi
      let m: RegExpExecArray | null
      while ((m = regex.exec(html)) !== null && words.length < limit) {
        if (m[1].endsWith('en') && !words.includes(m[1])) words.push(m[1])
      }
      const batch = await Promise.allSettled(words.slice(0, limit).map(v => this.scrape(v)))
      for (const item of batch) {
        if (item.status === 'fulfilled' && item.value) results.push(item.value)
      }
    } catch { /* ignore */ }
    return results
  }

  validate(result: ScrapedVerbResult): { valid: boolean; errors: string[] } {
    return { valid: !!result.infinitive, errors: result.infinitive ? [] : ['Missing infinitive'] }
  }
}

export class CollinsAdapter implements SourceAdapter {
  name = 'Collins'
  confidence = 80

  async scrape(infinitive: string): Promise<ScrapedVerbResult | null> {
    const url = `https://www.collinsdictionary.com/conjugation/german/${encodeURIComponent(infinitive)}`
    try {
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return null
      const html = await response.text()
      const result: ScrapedVerbResult = {
        infinitive, source_name: 'Collins', source_url: url, confidence: 80,
      }
      const extracts = extractHtmlData(html, {
        translation: /<span[^>]*class="[^"]*content[^"]*"[^>]*>([^<]+)<\/span>/i,
        auxiliary: /Hilfsverb[^:]*:\s*([^<\s]+)/i,
        partizip_2: /Partizip[^:]*II[^:]*:\s*([^<\s]+)/i,
      })
      if (extracts.translation) result.translation = extracts.translation.trim()
      if (extracts.auxiliary) result.auxiliary = extracts.auxiliary.trim().toLowerCase()
      if (extracts.partizip_2) result.partizip_2 = extracts.partizip_2.trim()
      result.conjugations = extractConjugationTables(html)
      return result
    } catch { return null }
  }

  async search(term: string, options?: { limit?: number }): Promise<ScrapedVerbResult[]> {
    const results: ScrapedVerbResult[] = []
    const limit = options?.limit ?? 20
    try {
      const url = `https://www.collinsdictionary.com/search/?q=${encodeURIComponent(term)}&dict=conjugation`
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return results
      const html = await response.text()
      const words: string[] = []
      const regex = /<a[^>]*href="\/conjugation\/german\/([^"&?]+)"/gi
      let m: RegExpExecArray | null
      while ((m = regex.exec(html)) !== null && words.length < limit) {
        const w = decodeURIComponent(m[1])
        if (!words.includes(w)) words.push(w)
      }
      const batch = await Promise.allSettled(words.slice(0, limit).map(v => this.scrape(v)))
      for (const item of batch) {
        if (item.status === 'fulfilled' && item.value) results.push(item.value)
      }
    } catch { /* ignore */ }
    return results
  }

  validate(result: ScrapedVerbResult): { valid: boolean; errors: string[] } {
    return { valid: !!result.infinitive, errors: result.infinitive ? [] : ['Missing infinitive'] }
  }
}

export class ReversoAdapter implements SourceAdapter {
  name = 'Reverso'
  confidence = 72

  async scrape(infinitive: string): Promise<ScrapedVerbResult | null> {
    const url = `https://context.reverso.net/übersetzung/deutsch-englisch/${encodeURIComponent(infinitive)}`
    try {
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return null
      const html = await response.text()
      const result: ScrapedVerbResult = {
        infinitive, source_name: 'Reverso', source_url: url, confidence: 72,
      }
      const extracts = extractHtmlData(html, {
        translation: /<span[^>]*class="[^"]*translation[^"]*"[^>]*>([^<]+)<\/span>/i,
      })
      if (extracts.translation) result.translation = extracts.translation.trim()
      return result
    } catch { return null }
  }

  async search(term: string, options?: { limit?: number }): Promise<ScrapedVerbResult[]> {
    const results: ScrapedVerbResult[] = []
    const limit = options?.limit ?? 20
    try {
      const url = `https://context.reverso.net/übersetzung/deutsch-englisch/${encodeURIComponent(term)}`
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return results
      const html = await response.text()
      const words: string[] = []
      const regex = /<a[^>]*href="\/übersetzung\/[^"]+\/([a-zäöüß-]+)"/gi
      let m: RegExpExecArray | null
      while ((m = regex.exec(html)) !== null && words.length < limit) {
        const w = decodeURIComponent(m[1])
        if (w.endsWith('en') && !words.includes(w)) words.push(w)
      }
      const batch = await Promise.allSettled(words.slice(0, limit).map(v => this.scrape(v)))
      for (const item of batch) {
        if (item.status === 'fulfilled' && item.value) results.push(item.value)
      }
    } catch { /* ignore */ }
    return results
  }

  validate(result: ScrapedVerbResult): { valid: boolean; errors: string[] } {
    return { valid: !!result.infinitive, errors: result.infinitive ? [] : ['Missing infinitive'] }
  }
}

export class OpenThesaurusAdapter implements SourceAdapter {
  name = 'OpenThesaurus'
  confidence = 70

  async scrape(infinitive: string): Promise<ScrapedVerbResult | null> {
    const url = `https://www.openthesaurus.de/synonyme/${encodeURIComponent(infinitive)}`
    try {
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return null
      const html = await response.text()
      const synonyms: string[] = []
      const regex = /<a[^>]*href="\/synonyme\/([^"#]+)"[^>]*class="[^"]*synonym[^"]*"/gi
      let m: RegExpExecArray | null
      while ((m = regex.exec(html)) !== null) {
        const w = decodeURIComponent(m[1]).replace(/_/g, ' ')
        if (w !== infinitive && !synonyms.includes(w)) synonyms.push(w)
      }
      return {
        infinitive, synonyms,
        source_name: 'OpenThesaurus', source_url: url, confidence: 70,
      }
    } catch { return null }
  }

  async search(term: string, options?: { limit?: number }): Promise<ScrapedVerbResult[]> {
    const results: ScrapedVerbResult[] = []
    const limit = options?.limit ?? 20
    try {
      const url = `https://www.openthesaurus.de/synonyme/search?q=${encodeURIComponent(term)}`
      const response = await fetch(url, { headers: { 'User-Agent': 'DeutschMentor/1.0' } })
      if (!response.ok) return results
      const html = await response.text()
      const words: string[] = []
      const regex = /<a[^>]*href="\/synonyme\/([^"#]+)"/gi
      let m: RegExpExecArray | null
      while ((m = regex.exec(html)) !== null && words.length < limit) {
        const w = decodeURIComponent(m[1]).replace(/_/g, ' ')
        if (!words.includes(w)) words.push(w)
      }
      const batch = await Promise.allSettled(words.slice(0, limit).map(v => this.scrape(v)))
      for (const item of batch) {
        if (item.status === 'fulfilled' && item.value) results.push(item.value)
      }
    } catch { /* ignore */ }
    return results
  }

  validate(result: ScrapedVerbResult): { valid: boolean; errors: string[] } {
    return { valid: !!result.infinitive, errors: result.infinitive ? [] : ['Missing infinitive'] }
  }
}

function extractInfinitivesFromSearchResults(html: string): string[] {
  const infinitives: string[] = []
  const regex = /<a[^>]*class="[^"]*verb[^"]*"[^>]*href="[^"]*\/conjugation\/\?w=([^"&]+)"/g
  let match: RegExpExecArray | null
  while ((match = regex.exec(html)) !== null) {
    try { infinitives.push(decodeURIComponent(match[1])) } catch { infinitives.push(match[1]) }
  }
  return [...new Set(infinitives)]
}

function extractWiktionaryVerbs(html: string, _term: string): string[] {
  const verbs: string[] = []
  const regex = /<a[^>]*href="\/wiki\/([^"#]+)"[^>]*>/g
  let match: RegExpExecArray | null
  const seen = new Set<string>()
  while ((match = regex.exec(html)) !== null && verbs.length < 50) {
    const word = decodeURIComponent(match[1].replace(/_/g, ' '))
    if (!seen.has(word) && word.endsWith('en') && !word.includes(':')) {
      seen.add(word)
      verbs.push(word)
    }
  }
  return verbs
}

function extractCanoonetVerbs(html: string): string[] {
  const verbs: string[] = []
  const regex = /<a[^>]*href="[^"]*\/inflection\/([^"&?]+)"/g
  let match: RegExpExecArray | null
  while ((match = regex.exec(html)) !== null) {
    const word = decodeURIComponent(match[1])
    if (word.endsWith('en')) verbs.push(word)
  }
  return [...new Set(verbs)]
}

function extractDudenVerbs(html: string): string[] {
  const verbs: string[] = []
  const regex = /<a[^>]*href="\/rechtschreibung\/([^"&?]+)"/g
  let match: RegExpExecArray | null
  while ((match = regex.exec(html)) !== null) {
    const word = decodeURIComponent(match[1])
    if (word.endsWith('en')) verbs.push(word)
  }
  return [...new Set(verbs)]
}

function extractPONSVerbs(html: string): string[] {
  const verbs: string[] = []
  const regex = /<a[^>]*href="\/verbtabelle\/[^"]+\/([^"&?]+)"/g
  let match: RegExpExecArray | null
  while ((match = regex.exec(html)) !== null) {
    const word = decodeURIComponent(match[1])
    if (word.endsWith('en')) verbs.push(word)
  }
  return [...new Set(verbs)]
}

function parseDudenHtml(html: string, infinitive: string, url: string): ScrapedVerbResult {
  const result: ScrapedVerbResult = {
    infinitive,
    source_name: 'Duden',
    source_url: url,
    confidence: 92,
  }
  const extracts = extractHtmlData(html, {
    translation: /Bedeutung[^:]*:\s*([^<]+)/i,
    partizip_2: /Partizip II[^:]*:\s*([^<\s]+)/i,
    auxiliary: /Hilfsverb[^:]*:\s*([^<\s]+)/i,
    ipa: /\/([^\/]+)\//,
  })
  if (extracts.translation) result.translation = extracts.translation.trim()
  if (extracts.partizip_2) result.partizip_2 = extracts.partizip_2.trim()
  if (extracts.auxiliary) result.auxiliary = extracts.auxiliary.trim().toLowerCase()
  if (extracts.ipa) result.ipa = extracts.ipa.trim()
  result.conjugations = extractConjugationTables(html)
  return result
}

function parsePONSHtml(html: string, infinitive: string, url: string): ScrapedVerbResult {
  const result: ScrapedVerbResult = {
    infinitive,
    source_name: 'PONS',
    source_url: url,
    confidence: 82,
  }
  const extracts = extractHtmlData(html, {
    translation: /Übersetzung[^:]*:\s*([^<]+)/i,
    partizip_2: /Partizip II[^:]*:\s*([^<\s<]+)/i,
    auxiliary: /Hilfsverb[^:]*:\s*([^<\s]+)/i,
  })
  if (extracts.translation) result.translation = extracts.translation.trim()
  if (extracts.partizip_2) result.partizip_2 = extracts.partizip_2.trim()
  if (extracts.auxiliary) result.auxiliary = extracts.auxiliary.trim().toLowerCase()
  result.conjugations = extractConjugationTables(html)
  return result
}

function parseVerbformenHtml(html: string, infinitive: string, url: string): ScrapedVerbResult {
  const result: ScrapedVerbResult = {
    infinitive,
    source_name: 'Verbformen',
    source_url: url,
    confidence: 90,
  }
  const extracts = extractHtmlData(html, {
    translation: /Übersetzung[^:]*:\s*([^<]+)/i,
    auxiliary: /Hilfsverb[^:]*:\s*([^<\s]+)/i,
    partizip_2: /Partizip II[^:]*:\s*([^<\s]+)/i,
    separable_prefix: /Präfix[^:]*:\s*([^<\s]+)/i,
    ipa: /IPA[^:]*:\s*([^<]+)/i,
  })
  if (extracts.translation) result.translation = extracts.translation.trim()
  if (extracts.auxiliary) result.auxiliary = extracts.auxiliary.trim().toLowerCase()
  if (extracts.partizip_2) result.partizip_2 = extracts.partizip_2.trim()
  if (extracts.separable_prefix) result.separable_prefix = extracts.separable_prefix.trim()
  if (extracts.ipa) result.ipa = extracts.ipa.trim()
  result.conjugations = extractConjugationTables(html)
  return result
}

function parseWiktionaryHtml(html: string, infinitive: string, url: string): ScrapedVerbResult {
  const result: ScrapedVerbResult = {
    infinitive,
    source_name: 'Wiktionary',
    source_url: url,
    confidence: 80,
  }
  const extracts = extractHtmlData(html, {
    translation: /Deutsch[^:]*:\s*([^<]+)/i,
    auxiliary: /Hilfsverb[^:]*:\s*([^<\s]+)/i,
    partizip_2: /Partizip II[^:]*:\s*([^<\s]+)/i,
    ipa: /IPA[^:]*:\s*([^<]+)/i,
  })
  if (extracts.translation) result.translation = extracts.translation.trim()
  if (extracts.auxiliary) result.auxiliary = extracts.auxiliary.trim().toLowerCase()
  if (extracts.partizip_2) result.partizip_2 = extracts.partizip_2.trim()
  if (extracts.ipa) result.ipa = extracts.ipa.trim()
  result.conjugations = extractConjugationTables(html)
  return result
}

function parseCanoonetHtml(html: string, infinitive: string, url: string): ScrapedVerbResult {
  const result: ScrapedVerbResult = {
    infinitive,
    source_name: 'Canoonet',
    source_url: url,
    confidence: 85,
  }
  const extracts = extractHtmlData(html, {
    partizip_2: /Partizip II[^:]*:\s*([^<\s]+)/i,
    auxiliary: /Hilfsverb[^:]*:\s*([^<\s]+)/i,
    separable_prefix: /Präfix[^:]*:\s*([^<\s]+)/i,
  })
  if (extracts.partizip_2) result.partizip_2 = extracts.partizip_2.trim()
  if (extracts.auxiliary) result.auxiliary = extracts.auxiliary.trim().toLowerCase()
  if (extracts.separable_prefix) result.separable_prefix = extracts.separable_prefix.trim()
  result.conjugations = extractConjugationTables(html)
  return result
}

function parseDWDSHtml(html: string, infinitive: string, url: string): ScrapedVerbResult {
  const result: ScrapedVerbResult = {
    infinitive,
    source_name: 'DWDS',
    source_url: url,
    confidence: 88,
  }
  const extracts = extractHtmlData(html, {
    translation: /Bedeutung[^:]*:\s*([^<]+)/i,
    ipa: /IPA[^:]*:\s*([^<]+)/i,
  })
  if (extracts.translation) result.translation = extracts.translation.trim()
  if (extracts.ipa) result.ipa = extracts.ipa.trim()
  result.conjugations = extractConjugationTables(html)
  return result
}

function extractHtmlData(html: string, patterns: Record<string, RegExp>): Record<string, string> {
  const result: Record<string, string> = {}
  for (const [key, regex] of Object.entries(patterns)) {
    const match = html.match(regex)
    if (match?.[1]) result[key] = match[1].trim()
  }
  return result
}

function extractConjugationTables(html: string): Record<string, Record<string, string>> {
  const conjugations: Record<string, Record<string, string>> = {}
  const tensePatterns: Record<string, RegExp> = {
    praesens: /(?:Präsens|Pr\u00e4sens)[\s\S]*?(?:<table[^>]*>([\s\S]*?)<\/table>|<div[^>]*class="[^"]*conjugation[^"]*"[\s\S]*?>([\s\S]*?)<\/div>)/i,
    praeteritum: /(?:Präteritum|Pr\u00e4teritum|Imperfekt)[\s\S]*?(?:<table[^>]*>([\s\S]*?)<\/table>|<div[^>]*class="[^"]*conjugation[^"]*"[\s\S]*?>([\s\S]*?)<\/div>)/i,
    perfekt: /(?:Perfekt|Vollendete Gegenwart)[\s\S]*?(?:<table[^>]*>([\s\S]*?)<\/table>|<div[^>]*class="[^"]*conjugation[^"]*"[\s\S]*?>([\s\S]*?)<\/div>)/i,
    plusquamperfekt: /(?:Plusquamperfekt|Vorvergangenheit)[\s\S]*?(?:<table[^>]*>([\s\S]*?)<\/table>|<div[^>]*class="[^"]*conjugation[^"]*"[\s\S]*?>([\s\S]*?)<\/div>)/i,
    futur_i: /Futur (?:I|1)[\s\S]*?(?:<table[^>]*>([\s\S]*?)<\/table>|<div[^>]*class="[^"]*conjugation[^"]*"[\s\S]*?>([\s\S]*?)<\/div>)/i,
    futur_ii: /Futur (?:II|2)[\s\S]*?(?:<table[^>]*>([\s\S]*?)<\/table>|<div[^>]*class="[^"]*conjugation[^"]*"[\s\S]*?>([\s\S]*?)<\/div>)/i,
    konjunktiv_i: /Konjunktiv (?:I|1)[\s\S]*?(?:<table[^>]*>([\s\S]*?)<\/table>|<div[^>]*class="[^"]*conjugation[^"]*"[\s\S]*?>([\s\S]*?)<\/div>)/i,
    konjunktiv_ii: /Konjunktiv (?:II|2)[\s\S]*?(?:<table[^>]*>([\s\S]*?)<\/table>|<div[^>]*class="[^"]*conjugation[^"]*"[\s\S]*?>([\s\S]*?)<\/div>)/i,
    imperativ: /Imperativ[\s\S]*?(?:<table[^>]*>([\s\S]*?)<\/table>|<div[^>]*class="[^"]*conjugation[^"]*"[\s\S]*?>([\s\S]*?)<\/div>)/i,
    passiv: /(?:Passiv|Vorgangspassiv|Zustandspassiv)[\s\S]*?(?:<table[^>]*>([\s\S]*?)<\/table>|<div[^>]*class="[^"]*conjugation[^"]*"[\s\S]*?>([\s\S]*?)<\/div>)/i,
  }
  for (const [tense, pattern] of Object.entries(tensePatterns)) {
    const match = html.match(pattern)
    if (match) {
      const tableContent = match[1] || match[2] || ''
      const forms: Record<string, string> = {}
      const personRegex = /(?:<td[^>]*>|<span[^>]*class="[^"]*person[^"]*"[^>]*>)\s*(ich|du|er|sie|es|wir|ihr|Sie)\s*(?:<\/td>|<\/span>)\s*(?:<td[^>]*>|<span[^>]*class="[^"]*form[^"]*"[^>]*>)\s*([^<]+)\s*(?:<\/td>|<\/span>)/gi
      let personMatch: RegExpExecArray | null
      while ((personMatch = personRegex.exec(tableContent)) !== null) {
        const person = personMatch[1].toLowerCase()
        const form = personMatch[2].trim()
        if (person === 'sie' && !forms['sie']) forms['sie'] = form
        else if (person === 'er') forms['er_sie_es'] = form
        else forms[person] = form
      }
      const fallbackRegex = /([\wäöüß]+)\s+(\w+)\s+(\w+)\s+(\w+)\s+(\w+)\s+(\w+)/i
      if (Object.keys(forms).length === 0) {
        const fallback = tableContent.match(fallbackRegex)
        if (fallback) {
          const personKeys = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie']
          for (let i = 0; i < personKeys.length && i + 1 < fallback.length; i++) {
            forms[personKeys[i]] = fallback[i + 1]
          }
        }
      }
      if (Object.keys(forms).length > 0) conjugations[tense] = forms
    }
  }
  return conjugations
}
