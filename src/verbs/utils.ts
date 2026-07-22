import { createAdminClient } from '@/lib/supabase/admin'
import CryptoJS from 'crypto-js'

export function generateChecksum(data: unknown): string {
  return CryptoJS.SHA256(JSON.stringify(data)).toString()
}

export function computeDiff(oldObj: Record<string, unknown> | null | undefined, newObj: Record<string, unknown>): Record<string, { old?: unknown; new?: unknown }> {
  const diff: Record<string, { old?: unknown; new?: unknown }> = {}
  const allKeys = new Set([...Object.keys(oldObj ?? {}), ...Object.keys(newObj)])
  for (const key of allKeys) {
    const oldVal = oldObj?.[key]
    const newVal = newObj[key]
    if (JSON.stringify(oldVal) !== JSON.stringify(newVal)) {
      diff[key] = { old: oldVal, new: newVal }
    }
  }
  return diff
}

export function generateSlug(infinitive: string): string {
  return infinitive
    .toLowerCase()
    .replace(/ä/g, 'ae')
    .replace(/ö/g, 'oe')
    .replace(/ü/g, 'ue')
    .replace(/ß/g, 'ss')
    .replace(/[^a-z0-9-]/g, '-')
    .replace(/-+/g, '-')
    .replace(/^-|-$/g, '')
}

export function generateUniqueSlug(infinitive: string, existingSlugs: string[]): string {
  const base = generateSlug(infinitive)
  if (!existingSlugs.includes(base)) return base
  let counter = 1
  while (existingSlugs.includes(`${base}-${counter}`)) counter++
  return `${base}-${counter}`
}

export function calculateConfidence(sources: { confidence: number }[]): number {
  if (sources.length === 0) return 0
  if (sources.length === 1) return sources[0].confidence
  const totalWeight = sources.reduce((sum, _, i) => sum + (sources.length - i), 0)
  const weightedSum = sources
    .sort((a, b) => b.confidence - a.confidence)
    .reduce((sum, source, i) => sum + source.confidence * (sources.length - i), 0)
  return Math.round(weightedSum / totalWeight)
}

export function computeDurationMs(startedAt: string): number {
  const start = new Date(startedAt).getTime()
  return Date.now() - start
}

export function getAdminClient() {
  return createAdminClient()
}
