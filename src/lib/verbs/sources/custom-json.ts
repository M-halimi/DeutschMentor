import { readFileSync } from 'fs'
import { resolve } from 'path'
import type { SourceAdapter, SourceVerbEntry } from './types'

interface JsonEntry {
  infinitive: string
  source_name?: string
  auxiliary?: string | null
  verb_type?: string | null
  separable_prefix?: string | null
  is_reflexive?: boolean
  reflexive_pronoun?: string | null
  partizip_2?: string | null
  cefr_level?: string | null
  translation?: string | null
}

export class CustomJsonAdapter implements SourceAdapter {
  name = 'Custom JSON'

  async testConnection(): Promise<{ ok: boolean; message: string; latency?: number }> {
    const start = performance.now()
    try {
      const filePath = resolve('data/verb-reference.json')
      const raw = readFileSync(filePath, 'utf-8')
      const data = JSON.parse(raw)
      const latency = Math.round(performance.now() - start)
      const count = Array.isArray(data) ? data.length : Object.keys(data).length
      return { ok: true, message: `Found ${count} entries in verb-reference.json`, latency }
    } catch (err) {
      const latency = Math.round(performance.now() - start)
      return { ok: false, message: `File not found or invalid JSON: ${err}`, latency }
    }
  }

  private loadData(): JsonEntry[] {
    try {
      const filePath = resolve('data/verb-reference.json')
      const raw = readFileSync(filePath, 'utf-8')
      return JSON.parse(raw)
    } catch {
      return []
    }
  }

  async fetchByLevel(level: string): Promise<SourceVerbEntry[]> {
    const data = this.loadData()
    const lowerLevel = level.toLowerCase()

    return data
      .filter(entry => entry.cefr_level?.toLowerCase() === lowerLevel)
      .filter(entry => entry.infinitive && entry.infinitive.trim())
      .map(entry => ({
        infinitive: entry.infinitive.trim(),
        auxiliary: entry.auxiliary ?? null,
        verb_type: entry.verb_type ?? null,
        separable_prefix: entry.separable_prefix ?? null,
        is_reflexive: entry.is_reflexive ?? false,
        reflexive_pronoun: entry.reflexive_pronoun ?? null,
        partizip_2: entry.partizip_2 ?? null,
        cefr_level: entry.cefr_level ?? level,
        translation: entry.translation ?? null,
      }))
  }

  async fetchSingle(infinitive: string): Promise<SourceVerbEntry | null> {
    const data = this.loadData()
    const entry = data.find(e => e.infinitive.toLowerCase() === infinitive.toLowerCase())
    if (!entry) return null

    return {
      infinitive: entry.infinitive,
      auxiliary: entry.auxiliary ?? null,
      verb_type: entry.verb_type ?? null,
      separable_prefix: entry.separable_prefix ?? null,
      is_reflexive: entry.is_reflexive ?? false,
      reflexive_pronoun: entry.reflexive_pronoun ?? null,
      partizip_2: entry.partizip_2 ?? null,
      cefr_level: entry.cefr_level ?? null,
      translation: entry.translation ?? null,
    }
  }
}
