/**
 * Build verbs.json from existing TS sources + conjugation engine
 *
 * Reads verb metadata from the existing TS files (scripts/verbs/),
 * conjugates each verb using the new engine, and produces:
 * 1. engine/data/verbs.json — full conjugation database for the API
 * 2. SQL INSERT/UPDATE statements to fix Supabase data
 */

import { readFileSync, writeFileSync } from 'fs'
import { join } from 'path'
import { conjugateFull } from '../conjugator'
import { getIrregularEntry } from '../exceptions'
import { getSeparablePrefix } from '../rules'
import type { VerbEntry, VerbConjugation } from '../types'

const TS_SRC_DIR = join(__dirname, '..', '..', 'scripts', 'verbs')
const OUTPUT_JSON = join(__dirname, 'verbs.json')
const OUTPUT_SQL = join(__dirname, '..', '..', 'supabase', 'migrations', '00044_engine_repair.sql')

function parseVerbFile(filePath: string): VerbEntry[] {
  const text = readFileSync(filePath, 'utf-8')
  const verbs: VerbEntry[] = []
  const objRegex = /\{\s*infinitive\s*:\s*['"]([^'"]+)['"]([^}]+?)\}/gs
  let match: RegExpExecArray | null
  while ((match = objRegex.exec(text)) !== null) {
    const fullMatch = match[0]
    const infinitive = match[1]
    const body = match[2]
    function getVal(key: string): string | undefined {
      const m = new RegExp(`${key}\\s*:\\s*['"]([^'"]+)['"]`).exec(body)
      return m?.[1]
    }
    function getBool(key: string): boolean {
      const m = new RegExp(`${key}\\s*:\\s*(true|false)\\b`).exec(body)
      return m?.[1] === 'true'
    }
    const en = getVal('en') ?? ''
    const level = (getVal('level') ?? 'A1') as VerbEntry['level']
    const categoryRaw = getVal('type')
    const auxiliary = (getVal('auxiliary') ?? getVal('aux') ?? 'haben') as 'haben' | 'sein'
    const stem = getVal('stem')
    const partizipII = getVal('partizipII') ?? getVal('p2')
    const praeteritumStem = getVal('praeteritumStem')
    const isReflexive = getBool('isReflexive')
    const reflexivePronoun = getVal('reflexivePronoun')
    const reflexivePronounCase = getVal('reflexivePronounCase') as 'akkusativ' | 'dativ' | undefined
    let category: VerbEntry['category'] = 'regular'
    if (['sein', 'haben', 'werden'].includes(infinitive)) {
      category = 'auxiliary'
    } else if (categoryRaw === 'trennbar' || categoryRaw === 'separable') {
      category = 'separable'
    } else if (categoryRaw === 'untrennbar' || categoryRaw === 'inseparable') {
      category = 'inseparable'
    } else if (categoryRaw === 'stark' || categoryRaw === 'strong') {
      category = 'strong'
    } else if (categoryRaw === 'gemischt' || categoryRaw === 'mixed') {
      category = 'mixed'
    } else if (categoryRaw === 'modal') {
      category = 'modal'
    } else if (categoryRaw === 'irregular') {
      category = 'strong'
    }
    let vowelChange: VerbEntry['vowelChange'] | undefined
    const vcMatch = body.match(/vowelChange\s*:\s*\{([^}]+)\}/)
    if (vcMatch) {
      const vcBody = vcMatch[1]
      const present_du = /present_du\s*:\s*['"]([^'"]+)['"]/.exec(vcBody)?.[1]
      const present_er = /present_er\s*:\s*['"]([^'"]+)['"]/.exec(vcBody)?.[1]
      const praeteritum_stem = /praeteritum_stem\s*:\s*['"]([^'"]+)['"]/.exec(vcBody)?.[1]
      const partizip_stem = /partizip_stem\s*:\s*['"]([^'"]+)['"]/.exec(vcBody)?.[1]
      if (present_du || present_er || praeteritum_stem || partizip_stem) {
        vowelChange = {}
        if (present_du) vowelChange.present_du = present_du
        if (present_er) vowelChange.present_er = present_er
        if (praeteritum_stem) vowelChange.praeteritum_stem = praeteritum_stem
        if (partizip_stem) vowelChange.partizip_stem = partizip_stem
      }
    }
    const irreg = getIrregularEntry(infinitive)
    verbs.push({
      infinitive, en, level, category, auxiliary,
      stem, partizipII: partizipII ?? irreg?.partizipII,
      praeteritumStem: praeteritumStem ?? irreg?.preteriteStem,
      isReflexive, reflexivePronoun, reflexivePronounCase, vowelChange,
    })
  }
  return verbs
}

const SEIN_VERBS = new Set([
  'abfahren', 'abfliegen', 'abreisen', 'abstürzen', 'abziehen',
  'anfahren', 'ankommen', 'anreisen', 'aufstehen', 'auftauchen',
  'mitkommen', 'mitgehen', 'mitfahren', 'mitlaufen',
  'ausgehen', 'ausreisen', 'aussteigen',
  'begegnen', 'bleiben', 'eilen',
  'einfahren', 'einsteigen', 'entkommen', 'entschlafen',
  'entstehen', 'erwachen', 'fahren', 'fallen', 'fliegen',
  'fliehen', 'gehen', 'gelingen', 'geraten',
  'geschehen', 'gleiten', 'kommen', 'kriechen',
  'laufen', 'misslingen', 'nachkommen', 'reisen',
  'reiten', 'rennen', 'rinnen', 'sausen',
  'scheiden', 'schleichen', 'schmelzen', 'schreiten',
  'schwimmen', 'segeln', 'sinken',
  'spazieren', 'springen', 'steigen', 'sterben',
  'stolpern', 'stürzen', 'tanzen', 'treten',
  'umziehen', 'verreisen', 'verschwinden', 'vorbeigehen',
  'wachsen', 'wandern', 'weichen',
  'zerfallen', 'zerfließen', 'ziehen',
  'sein', 'werden', 'bleiben',
])
const BOTH_VERBS = new Set(['fahren', 'fliegen', 'reiten', 'schwimmen', 'segeln', 'tanzen', 'wandern', 'ziehen'])
const HARD_PARTIZIP_II: Record<string, string> = {
  denken: 'gedacht', bringen: 'gebracht', kennen: 'gekannt',
  brennen: 'gebrannt', nennen: 'genannt', rennen: 'gerannt',
  senden: 'gesandt', wenden: 'gewandt',
}

function deduplicate(verbs: VerbEntry[]): VerbEntry[] {
  const seen = new Set<string>()
  return verbs.filter(v => {
    const base = v.infinitive.replace(/^sich\s+/, '')
    const isReflexive = v.infinitive.startsWith('sich ') || v.isReflexive
    const key = isReflexive ? `sich ${base}` : base
    if (seen.has(key)) return false
    seen.add(key)
    return true
  })
}

function fixVerbMetadata(verb: VerbEntry): VerbEntry {
  const fixed = { ...verb }
  const refMatch = fixed.infinitive.match(/^sich\s+(.+)$/)
  if (refMatch) {
    fixed.infinitive = refMatch[1]
    fixed.isReflexive = true
    fixed.reflexivePronoun = 'sich'
  }
  fixed.auxiliary = SEIN_VERBS.has(fixed.infinitive) ? 'sein' :
    BOTH_VERBS.has(fixed.infinitive) ? 'both' : 'haben'
  if (HARD_PARTIZIP_II[fixed.infinitive]) fixed.partizipII = HARD_PARTIZIP_II[fixed.infinitive]
  if (['sein', 'haben', 'werden'].includes(fixed.infinitive)) fixed.category = 'auxiliary'
  if (fixed.infinitive === 'wissen') fixed.category = 'modal'
  const irreg = getIrregularEntry(fixed.infinitive)
  if (irreg?.presentVowel && !irreg.noPresentVowelChange) {
    fixed.vowelChange = { present_du: irreg.presentVowel, present_er: irreg.presentVowel }
  }
  return fixed
}

const TYPE_MAP: Record<string, string> = {
  strong: 'irregular', regular: 'regular', mixed: 'mixed',
  separable: 'separable', inseparable: 'inseparable',
  modal: 'modal', auxiliary: 'auxiliary', reflexive: 'reflexive',
}

function esc(s: string): string { return s.replace(/'/g, "''") }

interface VerbResult { entry: VerbEntry; conjugation: VerbConjugation; sql: string[] }

function generateSQL(entry: VerbEntry, conjugation: VerbConjugation): string[] {
  const lines: string[] = []
  const dbInfinitive = entry.isReflexive && entry.reflexivePronoun === 'sich'
    ? `sich ${entry.infinitive}` : entry.infinitive
  const dbSlug = dbInfinitive.replace(/\s+/g, '-')
  const vtype = TYPE_MAP[entry.category] ?? 'regular'
  const prefix = getSeparablePrefix(entry.infinitive)

  // INSERT or UPDATE german_verbs (handles both existing and new verbs)
  lines.push(
    `INSERT INTO public.german_verbs (infinitive, slug, english_translation, is_reflexive, reflexive_pronoun, verb_type, auxiliary, partizip_2, separable_prefix, cefr_level) ` +
    `VALUES ('${esc(dbInfinitive)}', '${esc(dbSlug)}', '${esc(entry.en)}', ${entry.isReflexive ?? false}, '${entry.reflexivePronoun ?? ''}', '${vtype}', '${entry.auxiliary}', '${esc(conjugation.partizip_ii)}', '${prefix}', '${entry.level}') ` +
    `ON CONFLICT (slug) DO UPDATE SET verb_type = '${vtype}', auxiliary = '${entry.auxiliary}', partizip_2 = '${esc(conjugation.partizip_ii)}', separable_prefix = '${prefix}', is_reflexive = ${entry.isReflexive ?? false}, reflexive_pronoun = '${entry.reflexivePronoun ?? ''}';`
  )

  // DELETE old conjugations
  lines.push(`DELETE FROM public.verb_conjugations WHERE verb_id = (SELECT id FROM public.german_verbs WHERE "slug" = '${esc(dbSlug)}');`)

  // INSERT tense conjugations (flat per-person columns)
  const tenseMap: [string, keyof VerbConjugation][] = [
    ['praesens', 'praesens'], ['praeteritum', 'praeteritum'], ['perfekt', 'perfekt'],
    ['plusquamperfekt', 'plusquamperfekt'], ['futur_i', 'futur_i'], ['futur_ii', 'futur_ii'],
    ['konjunktiv_ii', 'konjunktiv_ii'],
  ]
  for (const [tenseName, tenseKey] of tenseMap) {
    const set = conjugation[tenseKey] as unknown as Record<string, string>
    if (!set) continue
    lines.push(
      `INSERT INTO public.verb_conjugations (verb_id, tense, ich, du, er_sie_es, wir, ihr, sie) ` +
      `VALUES ((SELECT id FROM public.german_verbs WHERE "slug" = '${esc(dbSlug)}'), '${tenseName}', ` +
      `'${esc(set['ich'])}', '${esc(set['du'])}', '${esc(set['er_sie_es'])}', ` +
      `'${esc(set['wir'])}', '${esc(set['ihr'])}', '${esc(set['Sie'])}') ON CONFLICT DO NOTHING;`
    )
  }

  // Imperativ (single row with all person columns, since unique=verb_id+tense)
  {
    const cols: string[] = []
    const vals: string[] = []
    for (const person of ['du', 'ihr', 'Sie', 'wir'] as const) {
      const form = conjugation.imperativ[person]
      if (form) { cols.push(person); vals.push(`'${esc(form)}'`) }
    }
    if (cols.length > 0) {
      lines.push(
        `INSERT INTO public.verb_conjugations (verb_id, tense, ${cols.join(', ')}) ` +
        `VALUES ((SELECT id FROM public.german_verbs WHERE "slug" = '${esc(dbSlug)}'), 'imperativ', ${vals.join(', ')}) ` +
        `ON CONFLICT (verb_id, tense) DO UPDATE SET ${cols.map(c => `${c} = EXCLUDED.${c}`).join(', ')};`
      )
    }
  }
  return lines
}

async function main() {
  console.log('Building verb database from TS sources...')
  const a1File = join(TS_SRC_DIR, 'verbs-a1.ts')
  const a2File = join(TS_SRC_DIR, 'verbs-a2.ts')

  const extraVerbs: VerbEntry[] = [
    { infinitive: 'wissen', en: 'to know (a fact)', level: 'A1', category: 'modal', transitivity: 'transitive', auxiliary: 'haben', partizipII: 'gewusst' },
    { infinitive: 'denken', en: 'to think', level: 'A1', category: 'mixed', transitivity: 'transitive', auxiliary: 'haben', stem: 'denk', partizipII: 'gedacht', praeteritumStem: 'dacht' },
    { infinitive: 'handeln', en: 'to act/trade', level: 'B1', category: 'regular', transitivity: 'transitive', auxiliary: 'haben', stem: 'handel', partizipII: 'gehandelt' },
    { infinitive: 'aussehen', en: 'to look/appear', level: 'A1', category: 'separable', transitivity: 'intransitive', auxiliary: 'haben', stem: 'seh', partizipII: 'ausgesehen' },
    { infinitive: 'mitkommen', en: 'to come along', level: 'A1', category: 'separable', transitivity: 'intransitive', auxiliary: 'sein', stem: 'komm', partizipII: 'mitgekommen' },
    { infinitive: 'mitnehmen', en: 'to take along', level: 'A1', category: 'separable', transitivity: 'transitive', auxiliary: 'haben', stem: 'nehm', partizipII: 'mitgenommen' },
    { infinitive: 'einkaufen', en: 'to shop', level: 'A1', category: 'separable', transitivity: 'transitive', auxiliary: 'haben', stem: 'kauf', partizipII: 'eingekauft' },
    { infinitive: 'anziehen', en: 'to put on/dress', level: 'A1', category: 'separable', transitivity: 'transitive', auxiliary: 'haben', stem: 'zieh', partizipII: 'angezogen' },
    { infinitive: 'ausziehen', en: 'to take off/undress', level: 'A1', category: 'separable', transitivity: 'transitive', auxiliary: 'haben', stem: 'zieh', partizipII: 'ausgezogen' },
    { infinitive: 'mitmachen', en: 'to participate', level: 'A1', category: 'separable', transitivity: 'intransitive', auxiliary: 'haben', stem: 'mach', partizipII: 'mitgemacht' },
  ]

  const allVerbs = deduplicate([...parseVerbFile(a1File), ...parseVerbFile(a2File), ...extraVerbs])
  console.log(`Found ${allVerbs.length} unique verbs (${extraVerbs.length} from manual additions)`)

  const results: VerbResult[] = []
  const failed: string[] = []
  for (let verb of allVerbs) {
    verb = fixVerbMetadata(verb)
    try {
      const conjugation = conjugateFull(verb)
      const sql = generateSQL(verb, conjugation)
      results.push({ entry: verb, conjugation, sql })
    } catch (err) {
      failed.push(`${verb.infinitive}: ${err}`)
    }
  }
  console.log(`Conjugated successfully: ${results.length}`)
  if (failed.length > 0) { console.log(`Failed: ${failed.length}`); for (const f of failed) console.log(`  x ${f}`) }

  const jsonData: Record<string, VerbConjugation> = {}
  for (const r of results) jsonData[r.entry.infinitive] = r.conjugation
  writeFileSync(OUTPUT_JSON, JSON.stringify(jsonData, null, 2), 'utf-8')
  console.log(`\nWrote ${OUTPUT_JSON}`)

  const sqlHeader = `-- Engine-based verb repair (00044)\n-- Generated by engine/data/build-verbs-json.ts\nBEGIN;\n\n`
  const allSQL = results.flatMap(r => r.sql)
  writeFileSync(OUTPUT_SQL, sqlHeader + allSQL.join('\n') + '\n\nCOMMIT;\n', 'utf-8')
  console.log(`Wrote ${OUTPUT_SQL} (${allSQL.length} statements)`)

  console.log('\n=== SUMMARY ===')
  console.log(`Verbs processed: ${results.length}`)
  console.log(`Verbs failed: ${failed.length}`)
  console.log('Done.')
}

main().catch(console.error)
