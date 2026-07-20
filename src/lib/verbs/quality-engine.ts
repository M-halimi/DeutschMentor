import { createAdminClient } from '@/lib/supabase/admin'
import type { VerbQualityFinding } from './admin-types'

export interface QualityFindingInput {
  verb_id: string
  category: string
  field_name: string
  current_value: string | null
  expected_value: string | null
  explanation: string
  example_wrong: string
  example_correct: string
  source_reference: string
  severity: 'error' | 'warning' | 'info'
  confidence: number
}

const SEIN_VERBS = new Set([
  'sein', 'werden', 'bleiben', 'passieren', 'geschehen', 'gelingen', 'misslingen',
  'begegnen', 'folgen',
  'gehen', 'kommen', 'fahren', 'fliegen', 'laufen', 'reisen', 'wandern',
  'springen', 'fallen', 'steigen', 'schwimmen', 'rennen', 'kriechen',
  'klettern', 'rutschen', 'segeln', 'eilen', 'hetzen', 'stürzen', 'spazieren',
  'marschieren', 'reiten', 'rudern', 'gondeln', 'rodeln', 'traben', 'galoppieren',
  'schweben', 'gleiten', 'rasen', 'bummeln', 'schlendern', 'stromern',
  'streifen', 'ziehen', 'fliehen', 'entfliehen',
  'sterben', 'einschlafen', 'aufwachen', 'erwachen', 'wachsen', 'gedeihen',
  'verblühen', 'vertrocknen', 'verdorren', 'verwelken', 'platzen', 'bersten',
  'ertrinken', 'ersticken', 'scheitern', 'verdursten', 'verhungern',
  'entstehen', 'vergehen', 'verfallen', 'verschwinden', 'umkommen',
  'zerbrechen', 'zerspringen', 'zerfallen', 'verrotten', 'verwesen',
  'verderben', 'erstarken', 'erblühen', 'verarmen', 'genesen',
  'aufstehen', 'abfahren', 'ankommen', 'abreisen', 'anreisen', 'einsteigen',
  'aussteigen', 'mitkommen', 'mitfahren', 'mitreisen', 'umziehen',
  'nachkommen', 'vorbeikommen', 'vorbeigehen', 'wegfahren', 'weggehen', 'einziehen',
  'fortgehen', 'fortfahren', 'hinfallen', 'hineingehen', 'hinausgehen',
  'hereinkommen', 'herauskommen', 'herunterfallen', 'zurückkommen',
  'zurückfahren', 'zurückgehen', 'zurückreisen', 'vorkommen',
  'entgegenkommen', 'niederfallen', 'vorfahren', 'vorausgehen',
  'vorauseilen', 'mitgehen', 'mitlaufen',
  'einschlafen', 'aufwachen', 'abbiegen', 'durchfallen', 'umsteigen',
  'abstürzen', 'aufblühen', 'aussterben', 'eintreten', 'ausbrechen',
  'durchbrechen', 'einschreiten', 'nachgeben', 'losfahren', 'losgehen',
  'loslaufen', 'losrennen',
])

const SEIN_EXCEPTIONS = new Set([
  'sein', 'werden', 'bleiben', 'passieren', 'geschehen', 'gelingen', 'misslingen',
])

function extractPrefix(infinitive: string): string | null {
  const prefixes = [
    'ab', 'an', 'auf', 'aus', 'bei', 'ein', 'fest', 'her', 'hin', 'los',
    'mit', 'nach', 'vor', 'weg', 'zu', 'zurück', 'zusammen', 'um', 'durch',
    'über', 'unter', 'wider', 'entgegen', 'entlang', 'gegenüber', 'herunter',
    'herauf', 'hinauf', 'hinunter', 'hinein', 'herein', 'hinaus', 'hervor',
    'empor', 'nieder', 'fort', 'voraus', 'vorbei', 'vorher', 'zurecht',
    'herab', 'hinab', 'daher', 'davon', 'dazu',
  ]
  for (const p of prefixes) {
    if (infinitive.startsWith(p) && infinitive.length > p.length) return p
  }
  return null
}

export async function runQualityAudit(verbId?: string): Promise<{ findings: QualityFindingInput[] }> {
  const admin = createAdminClient()
  const findings: QualityFindingInput[] = []

  let query = admin.from('german_verbs').select('*')
  if (verbId) query = query.eq('id', verbId)

  const { data: verbs, error } = await query
  if (error || !verbs) return { findings: [] }

  for (const v of verbs) {
    findings.push(...checkQualitySeparable(v))
    findings.push(...checkQualityAuxiliary(v))
    findings.push(...checkQualityReflexive(v))
    findings.push(...checkQualityPartizip2(v))
    findings.push(...checkQualitySlug(v))
    findings.push(...checkQualityVerbType(v))
    findings.push(...checkQualityTransitivity(v))
    findings.push(...checkQualityPreposition(v))
  }

  return { findings }
}

function checkQualitySeparable(v: any): QualityFindingInput[] {
  const result: QualityFindingInput[] = []

  if (v.verb_type === 'separable' && (!v.separable_prefix || v.separable_prefix === '' || v.separable_prefix === '-')) {
    const detectedPrefix = extractPrefix(v.infinitive)
    result.push({
      verb_id: v.id,
      category: 'separable_conjugation',
      field_name: 'separable_prefix',
      current_value: v.separable_prefix || null,
      expected_value: detectedPrefix || '[prefix]',
      explanation: `${v.infinitive} ist ein trennbares Verb. Im Präsens wandert der Präfix ans Satzende. Ohne Angabe des Präfixes kann die Konjugation nicht korrekt gebildet werden.`,
      example_wrong: `ich ${v.infinitive.replace(/^(.+?)(en)?$/, '$1')}e`,
      example_correct: v.separable_prefix
        ? `ich ${v.separable_prefix} ${v.infinitive.replace(v.separable_prefix, '').replace(/en$/, '')}e`
        : `ich [prefix] ${v.infinitive.replace(/en$/, '')}e`,
      source_reference: 'Duden – trennbare Verben',
      severity: 'error',
      confidence: 95,
    })
  }

  if (v.verb_type === 'separable' && v.separable_prefix && v.separable_prefix !== '' && v.separable_prefix !== '-') {
    const base = v.infinitive.replace(v.separable_prefix, '')
    const ichForm = base.replace(/en$/, '') + 'e'
    const conjugated = `ich ${ichForm}`
    const prefixed = `ich ${v.separable_prefix} ${ichForm}`
    result.push({
      verb_id: v.id,
      category: 'separable_conjugation',
      field_name: 'conjugation_praesens',
      current_value: conjugated,
      expected_value: prefixed,
      explanation: `${v.infinitive} ist ein trennbares Verb (Präfix: ${v.separable_prefix}). In der Gegenwart (Präsens) wird der Präfix abgetrennt und ans Ende des Satzes gestellt. Die Personalform bleibt an Position 2.`,
      example_wrong: `Ich ${conjugated.replace('ich ', '')} das Licht an.`,
      example_correct: `Ich ${ichForm} das Licht ${v.separable_prefix}.`,
      source_reference: 'Canoonet – trennbare Verben',
      severity: 'warning',
      confidence: 90,
    })
  }

  if (v.verb_type !== 'separable' && v.separable_prefix && v.separable_prefix !== '' && v.separable_prefix !== '-') {
    result.push({
      verb_id: v.id,
      category: 'verb_type',
      field_name: 'separable_prefix',
      current_value: v.separable_prefix,
      expected_value: null,
      explanation: `${v.infinitive} ist als "${v.verb_type}" markiert, hat aber einen trennbaren Präfix "${v.separable_prefix}". Wenn der Präfix trennbar ist, sollte der Verb-Typ "separable" sein.`,
      example_wrong: `${v.infinitive} (Typ: ${v.verb_type}) mit Präfix ${v.separable_prefix}`,
      example_correct: `${v.infinitive} (Typ: separable) mit Präfix ${v.separable_prefix}`,
      source_reference: 'Duden – Verbtypen',
      severity: 'warning',
      confidence: 85,
    })
  }

  return result
}

function checkQualityAuxiliary(v: any): QualityFindingInput[] {
  const result: QualityFindingInput[] = []

  if (v.auxiliary === 'sein' && v.transitivity === 'transitive' && !SEIN_EXCEPTIONS.has(v.infinitive)) {
    result.push({
      verb_id: v.id,
      category: 'auxiliary_mismatch',
      field_name: 'auxiliary',
      current_value: 'sein',
      expected_value: 'haben',
      explanation: `${v.infinitive} ist als transitiv markiert (nimmt ein Akkusativobjekt), verwendet aber "sein" als Hilfsverb. Transitive Verben bilden das Perfekt normalerweise mit "haben". Ausnahmen: sein, werden, bleiben, passieren, gelingen, misslingen.`,
      example_wrong: `Ich bin den Brief geschrieben.`,
      example_correct: `Ich habe den Brief geschrieben.`,
      source_reference: 'Duden – Perfektbildung mit "haben" und "sein"',
      severity: 'error',
      confidence: 95,
    })
  }

  if (v.auxiliary === 'haben' && SEIN_VERBS.has(v.infinitive)) {
    const isMovement = ['gehen', 'kommen', 'fahren', 'laufen', 'reisen'].includes(v.infinitive)
    const explanation = isMovement
      ? `${v.infinitive} beschreibt eine Ortsveränderung und sollte daher Perfekt mit "sein" bilden. Verben der Bewegung (Wechsel des Ortes/der Position) verwenden "sein".`
      : `${v.infinitive} ist ein Verb der Zustandsänderung und sollte Perfekt mit "sein" bilden. Verben, die einen Zustandswechsel ausdrücken, verwenden "sein".`

    result.push({
      verb_id: v.id,
      category: 'auxiliary_mismatch',
      field_name: 'auxiliary',
      current_value: 'haben',
      expected_value: 'sein',
      explanation,
      example_wrong: `Ich habe ${v.infinitive === 'fahren' ? 'nach Berlin' : ''} ${v.partizip_2 || `${v.infinitive === 'gehen' ? 'gegangen' : v.infinitive.replace(/en$/, '') + 'en'}`}.`,
      example_correct: `Ich bin ${v.infinitive === 'fahren' ? 'nach Berlin' : ''} ${v.partizip_2 || `${v.infinitive === 'gehen' ? 'gegangen' : v.infinitive.replace(/en$/, '') + 'en'}`}.`,
      source_reference: 'DWDS – sein-Perfekt',
      severity: 'warning',
      confidence: isMovement ? 90 : 80,
    })
  }

  return result
}

function checkQualityReflexive(v: any): QualityFindingInput[] {
  const result: QualityFindingInput[] = []

  if (v.is_reflexive && (!v.reflexive_pronoun || v.reflexive_pronoun === '')) {
    result.push({
      verb_id: v.id,
      category: 'reflexive_pronoun',
      field_name: 'reflexive_pronoun',
      current_value: null,
      expected_value: 'sich / mich / dir etc.',
      explanation: `${v.infinitive} ist als reflexiv markiert, aber es fehlt das Reflexivpronomen. Bei echten reflexiven Verben wird "sich" (3. Person) verwendet, bei unechten kann auch "mich/dich" etc. stehen.`,
      example_wrong: `Ich wasche. (unvollständig)`,
      example_correct: `Ich wasche mich. / Er wäscht sich.`,
      source_reference: 'Canoonet – reflexive Verben',
      severity: 'error',
      confidence: 95,
    })
  }

  if (v.is_reflexive && v.reflexive_pronoun && v.reflexive_pronoun !== '') {
    const caseInfo = v.reflexive_pronoun_case || (v.reflexive_pronoun === 'sich' ? 'akkusativ' : 'dativ')
    if (v.reflexive_pronoun === 'sich' && v.reflexive_pronoun_case !== 'dativ') {
      result.push({
        verb_id: v.id,
        category: 'reflexive_pronoun',
        field_name: 'reflexive_pronoun_case',
        current_value: v.reflexive_pronoun_case || 'not set',
        expected_value: 'akkusativ (default)',
        explanation: `${v.infinitive} verwendet "sich" als Reflexivpronomen. Standardmäßig steht es im Akkusativ. Falls ein Dativ-Reflexiv vorliegt, setze reflexive_pronoun_case auf "dativ" (z. B. "sich (Dat.) etwas kaufen").`,
        example_wrong: `Ich kaufe sich ein Auto. (falscher Kasus)`,
        example_correct: `Ich kaufe mir ein Auto. (Dativ) / Ich wasche mich. (Akkusativ)`,
        source_reference: 'Duden – Reflexivpronomen',
        severity: 'info',
        confidence: 70,
      })
    }
  }

  return result
}

function checkQualityPartizip2(v: any): QualityFindingInput[] {
  const result: QualityFindingInput[] = []

  if (!v.partizip_2 || v.partizip_2 === '') {
    result.push({
      verb_id: v.id,
      category: 'partizip_2',
      field_name: 'partizip_2',
      current_value: null,
      expected_value: '[Partizip II]',
      explanation: `${v.infinitive} hat kein Partizip II. Jedes deutsche Verb benötigt eine Partizip-II-Form für die Perfektbildung.`,
      example_wrong: `Ich habe ${v.infinitive === 'sein' ? 'gewesen' : '(fehlt)'}.`,
      example_correct: v.verb_type === 'regular'
        ? `Ich habe ${v.infinitive.replace(/en$/, '') + 't'}.`
        : `Ich habe ${v.infinitive === 'gehen' ? 'gegangen' : v.infinitive === 'kommen' ? 'gekommen' : v.infinitive === 'fahren' ? 'gefahren' : '(Partizip II)'}.`,
      source_reference: 'Duden – Partizip II',
      severity: 'error',
      confidence: 98,
    })
  }

  if (v.partizip_2 && v.partizip_2.startsWith('ge') && v.separable_prefix) {
    // Separable verbs: Partizip II should be prefix + ge + stem + t/en
    const expected = `${v.separable_prefix}ge${v.partizip_2.replace('ge', '')}`
    result.push({
      verb_id: v.id,
      category: 'partizip_2',
      field_name: 'partizip_2',
      current_value: v.partizip_2,
      expected_value: `${v.separable_prefix}${v.partizip_2}`,
      explanation: `${v.infinitive} ist trennbar (Präfix: ${v.separable_prefix}). Das Partizip II bei trennbaren Verben wird gebildet aus: Präfix + ge + Stamm + t/en. Aktuell fehlt die korrekte Position des Präfixes.`,
      example_wrong: `Ich habe ${v.partizip_2}.`,
      example_correct: `Ich habe ${v.separable_prefix}${v.partizip_2}.`,
      source_reference: 'Duden – Partizip II bei trennbaren Verben',
      severity: 'warning',
      confidence: 85,
    })
  }

  return result
}

function checkQualitySlug(v: any): QualityFindingInput[] {
  const result: QualityFindingInput[] = []
  const umlauts: Record<string, string> = { 'ä': 'ae', 'ö': 'oe', 'ü': 'ue', 'ß': 'ss' }
  const hasUmlaut = Object.keys(umlauts).some(u => v.infinitive.includes(u))

  if (hasUmlaut && v.slug) {
    const expectedSlug = v.infinitive
      .replace(/ö/g, 'oe').replace(/Ö/g, 'oe')
      .replace(/ä/g, 'ae').replace(/Ä/g, 'ae')
      .replace(/ü/g, 'ue').replace(/Ü/g, 'ue')
      .replace(/ß/g, 'ss')
      .toLowerCase().replace(/\s+/g, '-')

    if (v.slug !== expectedSlug) {
      result.push({
        verb_id: v.id,
        category: 'slug_inconsistency',
        field_name: 'slug',
        current_value: v.slug,
        expected_value: expectedSlug,
        explanation: `${v.infinitive} enthält Umlaute/ß. Der Slug sollte Umlaute als ae/oe/ue/ss transliterieren, nicht als a/o/u/s. Dies ist nötig für URL-Konsistenz und Suchmaschinenfreundlichkeit.`,
        example_wrong: v.slug,
        example_correct: expectedSlug,
        source_reference: 'Projektkonvention – Slug-Formatierung',
        severity: 'info',
        confidence: 90,
      })
    }
  }

  return result
}

function checkQualityVerbType(v: any): QualityFindingInput[] {
  const result: QualityFindingInput[] = []

  const isReflexiveInfinitive = v.infinitive.toLowerCase().startsWith('sich ')
  if (isReflexiveInfinitive && v.verb_type !== 'reflexive' && v.verb_type !== 'reflexive_preposition') {
    result.push({
      verb_id: v.id,
      category: 'verb_type',
      field_name: 'verb_type',
      current_value: v.verb_type,
      expected_value: 'reflexive',
      explanation: `${v.infinitive} beginnt mit "sich" und sollte daher als reflexiv kategorisiert werden.`,
      example_wrong: `${v.infinitive} (Typ: ${v.verb_type})`,
      example_correct: `${v.infinitive} (Typ: reflexive)`,
      source_reference: 'Duden – reflexive Verben',
      severity: 'warning',
      confidence: 90,
    })
  }

  return result
}

function checkQualityTransitivity(v: any): QualityFindingInput[] {
  const result: QualityFindingInput[] = []

  if (v.verb_type === 'reflexive' && v.transitivity === 'transitive') {
    result.push({
      verb_id: v.id,
      category: 'transitivity',
      field_name: 'transitivity',
      current_value: 'transitive',
      expected_value: 'intransitive or both',
      explanation: `${v.infinitive} ist reflexiv. Reflexive Verben sind in ihrer reflexiven Verwendung intransitiv (das Reflexivpronomen ist kein Objekt). Setze transitivity auf "intransitive" oder "both".`,
      example_wrong: `Ich wasche mich. (als transitiv markiert)`,
      example_correct: `Ich wasche mich. (als intransitiv/both markiert)`,
      source_reference: 'Canoonet – transitivity',
      severity: 'warning',
      confidence: 80,
    })
  }

  return result
}

function checkQualityPreposition(v: any): QualityFindingInput[] {
  const result: QualityFindingInput[] = []

  if (v.verb_type === 'verb_preposition' && (!v.preposition || v.preposition === '')) {
    result.push({
      verb_id: v.id,
      category: 'preposition',
      field_name: 'preposition',
      current_value: null,
      expected_value: '[Präposition]',
      explanation: `${v.infinitive} ist als Verb+Präposition markiert, hat aber keine Präposition angegeben. Verben mit Präposition erfordern eine spezifische Präposition (z. B. "warten auf", "sorgen für").`,
      example_wrong: `Ich warte. (unvollständig)`,
      example_correct: `Ich warte auf den Bus.`,
      source_reference: 'Duden – Verben mit Präposition',
      severity: 'error',
      confidence: 95,
    })
  }

  if (v.verb_type === 'reflexive_preposition' && (!v.preposition || v.preposition === '')) {
    result.push({
      verb_id: v.id,
      category: 'preposition',
      field_name: 'preposition',
      current_value: null,
      expected_value: '[Präposition]',
      explanation: `${v.infinitive} ist als reflexiv+Präposition markiert, hat aber keine Präposition. Reflexive Verben mit Präposition (z. B. "sich freuen auf", "sich ärgern über") benötigen die Präposition.`,
      example_wrong: `Ich freue. (unvollständig)`,
      example_correct: `Ich freue mich auf den Urlaub.`,
      source_reference: 'Duden – reflexive Verben mit Präposition',
      severity: 'error',
      confidence: 95,
    })
  }

  return result
}

export async function persistQualityFindings(findings: QualityFindingInput[]): Promise<number> {
  if (findings.length === 0) return 0
  const admin = createAdminClient()

  const { data: existing } = await admin
    .from('verb_quality_findings')
    .select('verb_id, category, field_name, status')

  const existingSet = new Set(
    (existing || [])
      .filter(e => e.status === 'open')
      .map(e => `${e.verb_id}:${e.category}:${e.field_name}`)
  )

  const toInsert = findings.filter(
    f => !existingSet.has(`${f.verb_id}:${f.category}:${f.field_name}`)
  )

  if (toInsert.length === 0) return 0

  const { error } = await admin.from('verb_quality_findings').insert(toInsert)
  if (error) throw new Error(`Failed to persist findings: ${error.message}`)

  await refreshQualitySummaries()

  return toInsert.length
}

export async function refreshQualitySummaries(): Promise<void> {
  const admin = createAdminClient()

  const { data: findings } = await admin
    .from('verb_quality_findings')
    .select('verb_id, severity, status')

  if (!findings) return

  const grouped: Record<string, { errors: number; warnings: number; infos: number; total: number }> = {}
  for (const f of findings) {
    if (f.status !== 'open') continue
    if (!grouped[f.verb_id]) grouped[f.verb_id] = { errors: 0, warnings: 0, infos: 0, total: 0 }
    grouped[f.verb_id].total++
    if (f.severity === 'error') grouped[f.verb_id].errors++
    else if (f.severity === 'warning') grouped[f.verb_id].warnings++
    else grouped[f.verb_id].infos++
  }

  const upserts = Object.entries(grouped).map(([verbId, g]) => {
    const maxScore = 100
    const penalty = g.errors * 15 + g.warnings * 5 + g.infos * 1
    const qualityScore = Math.max(0, Math.min(100, maxScore - penalty))
    let auditStatus: string | null
    if (g.errors > 0) auditStatus = 'error'
    else if (g.warnings > 0) auditStatus = 'warning'
    else if (g.infos > 0) auditStatus = 'info'
    else auditStatus = null

    return {
      verb_id: verbId,
      quality_score: qualityScore,
      total_issues: g.total,
      error_count: g.errors,
      warning_count: g.warnings,
      info_count: g.infos,
      audit_status: auditStatus,
    }
  })

  for (const rec of upserts) {
    await admin.from('verb_quality_summary').upsert(rec, { onConflict: 'verb_id' })
  }
}

export async function getVerbQualityFindings(verbId: string): Promise<VerbQualityFinding[]> {
  const admin = createAdminClient()
  const { data } = await admin
    .from('verb_quality_findings')
    .select('*')
    .eq('verb_id', verbId)
    .order('severity', { ascending: true })
    .order('created_at', { ascending: false })

  return (data || []) as VerbQualityFinding[]
}

export async function getVerbQualitySummary(verbId: string): Promise<{
  quality_score: number
  total_issues: number
  error_count: number
  warning_count: number
  info_count: number
  audit_status: string | null
} | null> {
  const admin = createAdminClient()
  const { data } = await admin
    .from('verb_quality_summary')
    .select('*')
    .eq('verb_id', verbId)
    .maybeSingle()

  return data || null
}

export async function getBulkQualitySummaries(): Promise<Map<string, {
  quality_score: number
  total_issues: number
  error_count: number
  warning_count: number
  info_count: number
  audit_status: string | null
}>> {
  const admin = createAdminClient()
  const { data } = await admin
    .from('verb_quality_summary')
    .select('*')

  const map = new Map()
  for (const row of data || []) {
    map.set(row.verb_id, row)
  }
  return map
}
