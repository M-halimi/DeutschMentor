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
    praesens: /Präsens[\s\S]*?<table[^>]*>([\s\S]*?)<\/table>/i,
    praeteritum: /Präteritum[\s\S]*?<table[^>]*>([\s\S]*?)<\/table>/i,
    perfekt: /Perfekt[\s\S]*?<table[^>]*>([\s\S]*?)<\/table>/i,
    plusquamperfekt: /Plusquamperfekt[\s\S]*?<table[^>]*>([\s\S]*?)<\/table>/i,
    futur_i: /Futur I[\s\S]*?<table[^>]*>([\s\S]*?)<\/table>/i,
    konjunktiv_ii: /Konjunktiv II[\s\S]*?<table[^>]*>([\s\S]*?)<\/table>/i,
    imperativ: /Imperativ[\s\S]*?<table[^>]*>([\s\S]*?)<\/table>/i,
  }
  for (const [tense, pattern] of Object.entries(tensePatterns)) {
    const match = html.match(pattern)
    if (match) {
      const forms: Record<string, string> = {}
      const personRegex = /<td[^>]*>\s*(ich|du|er|sie|es|wir|ihr|Sie)\s*<\/td>\s*<td[^>]*>\s*([^<]+)\s*<\/td>/gi
      let personMatch: RegExpExecArray | null
      while ((personMatch = personRegex.exec(match[1])) !== null) {
        const person = personMatch[1].toLowerCase()
        const form = personMatch[2].trim()
        if (person === 'sie' && !forms['sie']) forms['sie'] = form
        else if (person === 'er') forms['er_sie_es'] = form
        else forms[person] = form
      }
      if (Object.keys(forms).length > 0) conjugations[tense] = forms
    }
  }
  return conjugations
}
