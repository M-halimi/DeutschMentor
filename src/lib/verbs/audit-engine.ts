import { createAdminClient } from '@/lib/supabase/admin'

export interface AuditIssue {
  verb_id: string | null
  issue_type: string
  severity: 'error' | 'warning' | 'info'
  field: string | null
  expected: string | null
  actual: string | null
  message: string
}

export interface AuditResult {
  totalVerbs: number
  issues: AuditIssue[]
  errors: number
  warnings: number
  infos: number
  confidence: number
}

// Verbs that always take "sein" as auxiliary in standard German.
// Covers: movement with change of location, change of state, and special cases.
const SEIN_VERBS = new Set([
  // Core / special (always take sein)
  'sein', 'werden', 'bleiben', 'passieren', 'geschehen', 'gelingen', 'misslingen',
  'begegnen', 'folgen',

  // Movement — change of location (intransitive use)
  'gehen', 'kommen', 'fahren', 'fliegen', 'laufen', 'reisen', 'wandern',
  'springen', 'fallen', 'steigen', 'schwimmen', 'rennen', 'kriechen',
  'klettern', 'rutschen', 'segeln', 'eilen', 'hetzen', 'stürzen', 'spazieren',
  'marschieren', 'reiten', 'rudern', 'gondeln', 'rodeln', 'traben', 'galoppieren',
  'schweben', 'gleiten', 'rasen', 'bummeln', 'schlendern', 'stromern',
  'streifen', 'ziehen', 'fliehen', 'entfliehen',

  // Change of state
  'sterben', 'einschlafen', 'aufwachen', 'erwachen', 'wachsen', 'gedeihen',
  'verblühen', 'vertrocknen', 'verdorren', 'verwelken', 'platzen', 'bersten',
  'ertrinken', 'ersticken', 'scheitern', 'verdursten', 'verhungern',
  'entstehen', 'vergehen', 'verfallen', 'verschwinden', 'umkommen',
  'zerbrechen', 'zerspringen', 'zerfallen', 'verrotten', 'verwesen',
  'verderben', 'erstarken', 'erblühen', 'verarmen', 'genesen',

  // Separable verbs that take sein
  'aufstehen', 'abfahren', 'ankommen', 'abreisen', 'anreisen', 'einsteigen',
  'aussteigen', 'mitkommen', 'mitfahren', 'mitreisen', 'umziehen',
  'nachkommen', 'vorbeikommen', 'vorbeigehen', 'wegfahren', 'weggehen', 'einziehen',
  'fortgehen', 'fortfahren', 'hinfallen', 'hineingehen', 'hinausgehen',
  'hereinkommen', 'herauskommen', 'herunterfallen', 'zurückkommen',
  'zurückfahren', 'zurückgehen', 'zurückreisen', 'vorkommen',
  'entgegenkommen', 'niederfallen', 'vorfahren', 'vorausgehen',
  'vorauseilen', 'mitgehen', 'mitlaufen',

  // Separable state-change verbs
  'einschlafen', 'aufwachen', 'abbiegen', 'durchfallen', 'umsteigen',
  'abstürzen', 'aufblühen', 'aussterben', 'eintreten', 'ausbrechen',
  'durchbrechen', 'einschreiten', 'nachgeben', 'losfahren', 'losgehen',
  'loslaufen', 'losrennen',
])

const SEIN_EXCEPTIONS = new Set([
  'sein', 'werden', 'bleiben', 'passieren', 'geschehen', 'gelingen', 'misslingen',
])

async function fetchAllVerbIds(admin: any): Promise<Set<string>> {
  const all = new Set<string>()
  const pageSize = 1000
  let from = 0
  while (true) {
    const { data } = await admin.from('verb_conjugations').select('verb_id').range(from, from + pageSize - 1)
    if (!data || data.length === 0) break
    for (const row of data) all.add(row.verb_id as string)
    from += pageSize
    if (data.length < pageSize) break
  }
  return all
}

async function fetchAllConjugationRows(admin: any): Promise<{ verb_id: string; tense: string }[]> {
  const all: { verb_id: string; tense: string }[] = []
  const pageSize = 1000
  let from = 0
  while (true) {
    const { data } = await admin.from('verb_conjugations').select('verb_id, tense').range(from, from + pageSize - 1)
    if (!data || data.length === 0) break
    all.push(...data as any)
    from += pageSize
    if (data.length < pageSize) break
  }
  return all
}

export async function runVerbAudit(): Promise<AuditResult> {
  const admin = createAdminClient()

  const { data: verbs } = await admin
    .from('german_verbs')
    .select('id, infinitive, slug, verb_type, cefr_level, frequency, auxiliary, partizip_2, separable_prefix, is_reflexive, reflexive_pronoun, transitivity')

  if (!verbs) return { totalVerbs: 0, issues: [], errors: 0, warnings: 0, infos: 0, confidence: 100 }

  const verbsWithConj = await fetchAllVerbIds(admin)

  const issues: AuditIssue[] = []

  const infinitiveMap = new Map<string, typeof verbs>()
  for (const v of verbs) {
    const list = infinitiveMap.get(v.infinitive) || []
    list.push(v)
    infinitiveMap.set(v.infinitive, list)
  }

  for (const v of verbs) {
    checkAuxiliary(v, issues)
    checkSeparablePrefix(v, issues)
    checkReflexivePronoun(v, issues)
    checkConjugations(v, verbsWithConj, issues)
    checkSlugConsistency(v, issues)
  }

  checkDuplicates(infinitiveMap, issues)
  await checkCefrCompleteness(admin, issues)
  await checkMissingTenses(admin, issues)

  const errors = issues.filter(i => i.severity === 'error').length
  const warnings = issues.filter(i => i.severity === 'warning').length
  const infos = issues.filter(i => i.severity === 'info').length
  const totalIssues = issues.length

  // Confidence = ratio of actual weighted penalty to theoretical maximum.
  //   weight(error)=8, weight(warning)=3, weight(info)=1
  //   maxPossible = verbs × 10 (the plausible worst case)
  // This produces a 0-100 score that degrades gracefully with issue density
  // and doesn't bottom out at the first sign of trouble.
  const totalWeighted = errors * 8 + warnings * 3 + infos * 1
  const maxPossible = (verbs.length || 1) * 10
  const confidence = totalIssues === 0
    ? 100
    : Math.min(100, Math.max(0, Math.round(
        (100 - (totalWeighted / maxPossible) * 100) * 100
      ) / 100))

  return {
    totalVerbs: verbs.length,
    issues,
    errors,
    warnings,
    infos,
    confidence,
  }
}

function checkAuxiliary(v: any, issues: AuditIssue[]) {
  // Rule 1: transitive verbs must use "haben", not "sein"
  // Exceptions: sein, werden, bleiben, passieren, geschehen, gelingen, misslingen
  if (v.auxiliary === 'sein' && v.transitivity === 'transitive' && !SEIN_EXCEPTIONS.has(v.infinitive)) {
    issues.push({
      verb_id: v.id,
      issue_type: 'auxiliary_mismatch',
      severity: 'error',
      field: 'auxiliary',
      expected: 'haben',
      actual: 'sein',
      message: `"${v.infinitive}" is transitive but uses "sein" — should use "haben"`,
    })
    return
  }

  // Rule 2: known sein-verbs incorrectly marked as haben
  if (v.auxiliary === 'haben' && SEIN_VERBS.has(v.infinitive)) {
    issues.push({
      verb_id: v.id,
      issue_type: 'auxiliary_mismatch',
      severity: 'warning',
      field: 'auxiliary',
      expected: 'sein',
      actual: 'haben',
      message: `"${v.infinitive}" is a movement/state-change verb but uses "haben" — should use "sein"`,
    })
  }
}

function checkSeparablePrefix(v: any, issues: AuditIssue[]) {
  if (v.verb_type === 'separable' && (!v.separable_prefix || v.separable_prefix === '' || v.separable_prefix === '-')) {
    issues.push({
      verb_id: v.id,
      issue_type: 'missing_separable_prefix',
      severity: 'error',
      field: 'separable_prefix',
      expected: '[prefix]',
      actual: v.separable_prefix || null,
      message: `"${v.infinitive}" is separable but has no separable_prefix (got: "${v.separable_prefix || 'none'}")`,
    })
  }

  if (v.verb_type !== 'separable' && v.separable_prefix && v.separable_prefix !== '' && v.separable_prefix !== '-') {
    issues.push({
      verb_id: v.id,
      issue_type: 'incorrect_separable_prefix',
      severity: 'warning',
      field: 'separable_prefix',
      expected: null,
      actual: v.separable_prefix,
      message: `"${v.infinitive}" has separable_prefix "${v.separable_prefix}" but verb_type is "${v.verb_type}"`,
    })
  }
}

function checkReflexivePronoun(v: any, issues: AuditIssue[]) {
  if (v.is_reflexive && (!v.reflexive_pronoun || v.reflexive_pronoun === '')) {
    issues.push({
      verb_id: v.id,
      issue_type: 'missing_reflexive_pronoun',
      severity: 'error',
      field: 'reflexive_pronoun',
      expected: 'sich / mich / dir etc.',
      actual: null,
      message: `"${v.infinitive}" is reflexive but has no reflexive_pronoun`,
    })
  }
}

function checkConjugations(v: any, verbsWithConj: Set<string>, issues: AuditIssue[]) {
  if (!verbsWithConj.has(v.id)) {
    issues.push({
      verb_id: v.id,
      issue_type: 'missing_conjugations',
      severity: 'warning',
      field: 'conjugations',
      expected: '8 tenses (praesens..imperativ)',
      actual: '0 rows',
      message: `"${v.infinitive}" has no conjugation data (0 of 8 tenses)`,
    })
  }
}

export async function checkMissingTenses(admin: any, issues: AuditIssue[]) {
  const { data: verbs } = await admin.from('german_verbs').select('id, infinitive')
  if (!verbs) return

  const allTenses = await fetchAllConjugationRows(admin)

  const byVerb: Record<string, Set<string>> = {}
  for (const row of allTenses) {
    if (!byVerb[row.verb_id]) byVerb[row.verb_id] = new Set()
    byVerb[row.verb_id].add(row.tense)
  }

  const REQUIRED_TENSES = ['praesens', 'praeteritum', 'perfekt', 'plusquamperfekt', 'futur_i', 'futur_ii', 'konjunktiv_ii', 'imperativ']

  for (const v of verbs) {
    const tenses = byVerb[v.id]
    if (!tenses) {
      issues.push({
        verb_id: v.id,
        issue_type: 'missing_conjugations',
        severity: 'warning',
        field: 'conjugations',
        expected: '8 tenses',
        actual: '0 rows',
        message: `"${v.infinitive}" has no conjugation data`,
      })
      continue
    }

    const missing = REQUIRED_TENSES.filter(t => !tenses.has(t))
    if (missing.length > 0) {
      issues.push({
        verb_id: v.id,
        issue_type: 'missing_tenses',
        severity: 'warning',
        field: 'conjugations',
        expected: `all 8 tenses`,
        actual: `${tenses.size} present, missing: ${missing.join(', ')}`,
        message: `"${v.infinitive}" is missing ${missing.length} tense(s): ${missing.join(', ')}`,
      })
    }
  }
}

function checkSlugConsistency(v: any, issues: AuditIssue[]) {
  const umlauts = ['ä', 'ö', 'ü', 'ß']
  const hasUmlaut = umlauts.some(u => v.infinitive.includes(u))

  if (hasUmlaut && v.slug) {
    const expectedOe = v.infinitive.replace(/ö/g, 'oe').replace(/Ö/g, 'oe').replace(/ä/g, 'ae').replace(/Ä/g, 'ae').replace(/ü/g, 'ue').replace(/Ü/g, 'ue').replace(/ß/g, 'ss')
    const slugNormalized = v.slug

    if (slugNormalized !== expectedOe) {
      issues.push({
        verb_id: v.id,
        issue_type: 'slug_inconsistency',
        severity: 'info',
        field: 'slug',
        expected: expectedOe,
        actual: slugNormalized,
        message: `"${v.infinitive}" slug is "${slugNormalized}" — expected "${expectedOe}" (umlaut→ae/oe/ue)`,
      })
    }
  }

  const prefix = v.separable_prefix
  if (prefix) {
    const expectedPrefix = v.infinitive.replace(prefix, '')
    if (v.infinitive.startsWith(prefix) && expectedPrefix !== v.infinitive) {
      // prefix matches start of infinitive, OK
    }
  }
}

function checkDuplicates(infinitiveMap: Map<string, any[]>, issues: AuditIssue[]) {
  for (const [infinitive, list] of infinitiveMap) {
    if (list.length > 1) {
      const slugs = list.map(v => v.slug).join(', ')
      issues.push({
        verb_id: list[0].id,
        issue_type: 'duplicate_verb',
        severity: 'error',
        field: 'infinitive',
        expected: '1 entry',
        actual: `${list.length} entries`,
        message: `"${infinitive}" appears ${list.length}x (slugs: ${slugs})`,
      })
    }
  }
}

async function checkCefrCompleteness(admin: any, issues: AuditIssue[]) {
  const { data: levels } = await admin
    .from('german_verbs')
    .select('cefr_level')

  if (!levels) return

  const counts: Record<string, number> = {}
  for (const v of levels) {
    counts[v.cefr_level] = (counts[v.cefr_level] || 0) + 1
  }

  const allLevels = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']
  for (const level of allLevels) {
    const count = counts[level] || 0
    if (count === 0) {
      issues.push({
        verb_id: null,
        issue_type: 'cefr_gap',
        severity: 'error',
        field: 'cefr_level',
        expected: `≥1 verb at ${level}`,
        actual: '0',
        message: `CEFR level ${level} has 0 verbs — complete gap`,
      })
    } else if (count < 10) {
      issues.push({
        verb_id: null,
        issue_type: 'cefr_gap',
        severity: 'warning',
        field: 'cefr_level',
        expected: `≥10 verbs at ${level}`,
        actual: String(count),
        message: `CEFR level ${level} has only ${count} verb${count === 1 ? '' : 's'} — severely underpopulated`,
      })
    }
  }
}
