/**
 * Trennbares Verb (German Separable Verb) Audit & Repair System
 *
 * Reads all verbs from the data files, detects separable verbs,
 * verifies their metadata, and reports issues.
 *
 * Rules:
 *  - A verb is separable iff its prefix can be separated in finite clauses
 *    (e.g., "Ich komme an" not "Ich ankomme")
 *  - Detection: prefix + base where base is a known German verb
 *  - Ambiguous prefixes (über, unter, um, durch, wieder) need manual review
 *
 * Usage: npx tsx scripts/verbs/repair-trennbare-verben.ts
 */

import type { VerbEntry } from './types'
import { a1Verbs } from './verbs-a1'
import { a2Verbs } from './verbs-a2'

const allVerbs: VerbEntry[] = [...a1Verbs, ...a2Verbs]
const KNOWN_INFINITIVES = new Set(allVerbs.map(v => v.infinitive))

const KNOWN_SEPARABLE_PREFIXES = [
  'zurück', 'zusammen', 'herunter', 'hinunter', 'herauf', 'hinauf',
  'herein', 'hinein', 'hinaus', 'voraus', 'vorbei', 'vorher',
  'auf', 'an', 'ab', 'aus', 'bei', 'ein', 'mit', 'nach', 'vor', 'zu',
  'weg', 'her', 'hin', 'los', 'fort', 'weiter',
  'fern', 'statt', 'um', 'durch', 'über', 'unter', 'wieder',
  'hoch', 'wider', 'entlang', 'entgegen', 'gegenüber',
].sort((a, b) => b.length - a.length)

const INSEP_PREFIXES = ['be', 'ge', 'er', 'ver', 'zer', 'ent', 'emp', 'miss', 'wider', 'hinter']
const NEVER_SEP = new Set(['ant', 'ent'])

function splitSep(infinitive: string, declared?: string): { base: string; prefix: string } {
  if (declared) {
    if (infinitive.startsWith(declared)) {
      const base = infinitive.slice(declared.length)
      if (base.length >= 2) return { base, prefix: declared }
    }
  }
  for (const np of NEVER_SEP) {
    if (infinitive.startsWith(np)) return { base: infinitive, prefix: '' }
  }
  for (const p of KNOWN_SEPARABLE_PREFIXES) {
    if (infinitive.startsWith(p) && infinitive.length > p.length + 2) {
      const base = infinitive.slice(p.length)
      if (INSEP_PREFIXES.some(ip => base.startsWith(ip))) continue
      if (KNOWN_INFINITIVES.has(base)) return { base, prefix: p }
      if (KNOWN_INFINITIVES.has(base + 'en')) return { base: base + 'en', prefix: p }
      if (KNOWN_INFINITIVES.has(base + 'n')) return { base: base + 'n', prefix: p }
    }
  }
  return { base: infinitive, prefix: '' }
}

const AMBIG_PREFIXES = new Set(['über', 'unter', 'um', 'durch', 'wieder'])

interface Issue {
  verb: string; level: string; field: string
  severity: 'error' | 'warning'
  message: string; current?: string; expected?: string
}

function audit(v: VerbEntry): Issue[] {
  const issues: Issue[] = []
  const mkSep = v.type === 'separable'
  const d = splitSep(v.infinitive, v.sep)
  const detSep = d.prefix !== ''

  // 1. Type mismatch
  if (mkSep && !detSep && !v.sep) {
    issues.push({
      verb: v.infinitive, level: v.level, field: 'type', severity: 'warning',
      message: `Marked separable but no prefix detected in "${v.infinitive}"`,
      current: 'separable',
    })
  }

  if (detSep && !mkSep && v.type !== 'inseparable' && !['modal', 'auxiliary', 'reflexive'].includes(v.type)) {
    if (AMBIG_PREFIXES.has(d.prefix)) {
      issues.push({
        verb: v.infinitive, level: v.level, field: 'type', severity: 'warning',
        message: `Prefix "${d.prefix}" is ambiguous (base: "${d.base}") — verify manually`,
        current: v.type, expected: 'separable or inseparable',
      })
    } else {
      issues.push({
        verb: v.infinitive, level: v.level, field: 'type', severity: 'error',
        message: `Should be separable (prefix "${d.prefix}", base "${d.base}") but type is "${v.type}"`,
        current: v.type, expected: 'separable',
      })
    }
  }

  // 2. sep field missing or wrong
  if (mkSep && (!v.sep || v.sep === '')) {
    issues.push({
      verb: v.infinitive, level: v.level, field: 'sep', severity: 'error',
      message: 'Missing sep field',
      expected: d.prefix || '(unknown)',
    })
  }

  if (mkSep && v.sep && !v.infinitive.startsWith(v.sep)) {
    issues.push({
      verb: v.infinitive, level: v.level, field: 'sep', severity: 'error',
      message: `sep "${v.sep}" doesn't match infinitive`,
      current: v.sep, expected: d.prefix || '(none)',
    })
  }

  return issues
}

// ============================================================
// MAIN
// ============================================================

function main() {
  console.log('=== Trennbares Verb — Audit ===\n')

  let sepCount = 0
  let fixed = 0
  const errors: Issue[] = []
  const warnings: Issue[] = []
  const errSeen = new Set<string>()
  const warnSeen = new Set<string>()

  for (const v of allVerbs) {
    const issues = audit(v)
    if (issues.length === 0) continue

    if (v.type === 'separable') sepCount++

    for (const issue of issues) {
      const key = `${issue.verb}|${issue.field}`
      if (issue.severity === 'error' && !errSeen.has(key)) {
        errSeen.add(key)
        errors.push(issue)
      } else if (issue.severity === 'warning' && !warnSeen.has(key)) {
        warnSeen.add(key)
        warnings.push(issue)
      }
    }
  }

  const markedSep = allVerbs.filter(v => v.type === 'separable').length

  console.log(`Total verbs scanned:      ${allVerbs.length}`)
  console.log(`Marked as separable:      ${markedSep}`)
  console.log()

  if (errors.length === 0 && warnings.length === 0) {
    console.log('✓ No issues found.')
    return
  }

  if (errors.length > 0) {
    console.log(`=== ${errors.length} ERROR(S) (auto-repairable) ===`)
    console.log()
    for (const e of errors) {
      console.log(`  ${e.verb.padEnd(18)} ${e.level}`)
      console.log(`  ${' '.repeat(18)} ${e.message}`)
      console.log(`  ${' '.repeat(18)} Current: ${e.current}  →  ${e.expected}`)
      console.log()
    }
  }

  if (warnings.length > 0) {
    console.log(`=== ${warnings.length} WARNING(S) (needs manual review) ===`)
    console.log()
    for (const w of warnings) {
      console.log(`  ${w.verb.padEnd(18)} ${w.level}`)
      console.log(`  ${' '.repeat(18)} ${w.message}`)
      console.log()
    }
  }

  console.log('=== AUDIT COMPLETE ===')
}

main()
