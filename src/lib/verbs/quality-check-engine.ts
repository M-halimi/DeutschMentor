import { createAdminClient } from '@/lib/supabase/admin'

export interface QualityCheckInput {
  verb_id: string
  check_type: string
  field_name: string
  old_value: string | null
  suggested_value: string | null
  explanation: string
  confidence: number
}

export interface CheckResult {
  verb_id: string
  infinitive: string
  checks: QualityCheckInput[]
  status: 'valid' | 'warning' | 'error'
  error_count: number
  warning_count: number
}

const SEIN_VERBS = new Set([
  'sein', 'werden', 'bleiben', 'passieren', 'geschehen', 'gelingen', 'misslingen',
  'begegnen', 'folgen',
  'gehen', 'kommen', 'fahren', 'fliegen', 'laufen', 'reisen', 'wandern',
  'springen', 'fallen', 'steigen', 'schwimmen', 'rennen', 'kriechen',
  'klettern', 'rutschen', 'segeln', 'eilen', 'hetzen', 'stürzen', 'spazieren',
  'marschieren', 'reiten', 'rudern', 'gondeln', 'rodeln', 'traben', 'galoppieren',
  'schweben', 'gleiten', 'rasen', 'bummeln', 'schlendern',
  'sterben', 'einschlafen', 'aufwachen', 'erwachen', 'wachsen', 'gedeihen',
  'verblühen', 'vertrocknen', 'verwelken', 'platzen', 'bersten',
  'ertrinken', 'ersticken', 'scheitern', 'verdursten', 'verhungern',
  'entstehen', 'vergehen', 'verfallen', 'verschwinden', 'umkommen',
  'zerbrechen', 'zerspringen', 'zerfallen', 'verrotten', 'verwesen',
  'verderben', 'erstarken', 'erblühen', 'verarmen', 'genesen',
  'aufstehen', 'abfahren', 'ankommen', 'abreisen', 'anreisen', 'einsteigen',
  'aussteigen', 'mitkommen', 'mitfahren', 'mitreisen', 'umziehen',
  'wegfahren', 'weggehen', 'fortgehen', 'fortfahren',
  'hereinkommen', 'herauskommen', 'zurückkommen',
  'zurückfahren', 'zurückgehen', 'zurückreisen',
  'einschlafen', 'aufwachen', 'abbiegen', 'durchfallen', 'abstürzen',
  'aussterben', 'eintreten', 'ausbrechen', 'losfahren', 'losgehen', 'loslaufen',
])

const PREFIXES = [
  'ab', 'an', 'auf', 'aus', 'bei', 'ein', 'fest', 'her', 'hin', 'los',
  'mit', 'nach', 'vor', 'weg', 'zu', 'zurück', 'zusammen',
  'um', 'durch', 'über', 'unter',
  'entgegen', 'entlang', 'gegenüber',
  'herunter', 'herauf', 'hinauf', 'hinunter', 'hinein', 'herein',
  'hinaus', 'hervor', 'empor', 'nieder', 'fort',
  'voraus', 'vorbei', 'vorher', 'zurecht',
  'herab', 'hinab', 'daher', 'davon', 'dazu',
  'wider', 'wieder',
  'fehl', 'kaputt', 'tot', 'hoch',
]

const CEFR_THRESHOLDS: Record<string, number> = {
  a1: 1,
  a2: 601,
  b1: 1201,
  b2: 2501,
  c1: 4001,
  c2: 6001,
}

const HIGH_CEFR_BASIC = new Set([
  'sein', 'haben', 'werden', 'können', 'müssen', 'wollen', 'dürfen', 'sollen', 'mögen',
  'heißen', 'wohnen', 'kommen', 'gehen', 'machen', 'sagen', 'geben', 'nehmen', 'sehen',
  'hören', 'lesen', 'schreiben', 'sprechen', 'verstehen', 'lernen', 'arbeiten', 'spielen',
  'essen', 'trinken', 'kaufen', 'bezahlen', 'bringen', 'holen',
  'suchen', 'finden', 'brauchen', 'liegen', 'stehen', 'sitzen', 'schlafen',
  'aufstehen', 'anfangen', 'einkaufen', 'anrufen', 'einladen',
  'putzen', 'waschen', 'kochen', 'fahren', 'laufen', 'schwimmen',
  'tanzen', 'singen', 'malen', 'feiern', 'schenken', 'bekommen',
  'helfen', 'danken', 'wünschen', 'fragen', 'antworten', 'erzählen',
  'zeigen', 'glauben', 'denken', 'wissen', 'vergessen', 'bitten',
  'gefallen', 'schmecken', 'kosten', 'tun', 'lassen', 'bleiben', 'passieren',
])

const LOW_CEFR_ADVANCED = new Set([
  'abdanken', 'abbestellen', 'abberufen', 'abqualifizieren',
  'ahnden', 'approbieren', 'attestieren', 'avancieren',
  'beglaubigen', 'beheiligen', 'bekunden', 'bemächtigen',
  'benachteiligen', 'beschlagnahmen', 'beschwichtigen',
  'beurkunden', 'bevorraten', 'bewilligen', 'bezichtigen',
  'einberufen', 'einbürgern', 'einheimsen',
  'enteignen', 'entmündigen', 'entschädigungen',
  'eruieren', 'eskalieren', 'exmatrikulieren',
  'fusionieren', 'heraufbeschwören',
  'katalogisieren', 'kollabieren', 'kompensieren',
  'liquidieren', 'monieren', 'nachweis',
  'opponieren', 'oktroyieren',
  'paktieren', 'plädieren', 'präjudizieren',
  'recherchieren', 'reklamieren', 'resümieren',
  'sanktionieren', 'spekulieren',
  'taxieren', 'thesaurieren',
])

export async function runBatchQualityCheck(
  batchSize: number = 100,
  offset: number = 0
): Promise<{
  processed: number
  total: number
  checks_found: number
  next_offset: number | null
  results: CheckResult[]
}> {
  const admin = createAdminClient()

  const { count } = await admin
    .from('german_verbs')
    .select('*', { count: 'exact', head: true })

  const total = count || 0

  const { data: verbs, error } = await admin
    .from('german_verbs')
    .select('*')
    .order('id')
    .range(offset, offset + batchSize - 1)

  if (error || !verbs) {
    throw new Error(`Failed to fetch verbs: ${error?.message || 'no data'}`)
  }

  const verbIds = verbs.map(v => v.id)

  const { data: allConjugations } = await admin
    .from('verb_conjugations')
    .select('verb_id, tense')
    .in('verb_id', verbIds)

  const conjugationsByVerb: Record<string, Set<string>> = {}
  for (const c of allConjugations || []) {
    if (!conjugationsByVerb[c.verb_id]) conjugationsByVerb[c.verb_id] = new Set()
    conjugationsByVerb[c.verb_id].add(c.tense)
  }

  const results: CheckResult[] = []
  const allChecks: QualityCheckInput[] = []

  for (const v of verbs) {
    const checks: QualityCheckInput[] = []
    const existingTenses = conjugationsByVerb[v.id] || new Set()

    checks.push(...checkInfinitiveFormat(v))
    checks.push(...checkCEFRConsistency(v))
    checks.push(...checkPartizip2(v))
    checks.push(...checkAuxiliary(v))
    checks.push(...checkReflexive(v))
    checks.push(...checkSeparablePrefix(v))
    checks.push(...checkVerbType(v))
    checks.push(...checkTransitivity(v))
    checks.push(...checkObjectCase(v))
    checks.push(...checkPreposition(v))
    checks.push(...checkConjugationCompleteness(v, existingTenses))

    const errorCount = checks.filter(c => c.confidence >= 80).length
    const warningCount = checks.filter(c => c.confidence >= 50 && c.confidence < 80).length
    let status: 'valid' | 'warning' | 'error' = 'valid'
    if (errorCount > 0) status = 'error'
    else if (warningCount > 0) status = 'warning'

    results.push({
      verb_id: v.id,
      infinitive: v.infinitive,
      checks,
      status,
      error_count: errorCount,
      warning_count: warningCount,
    })

    allChecks.push(...checks)
  }

  let checksFound = 0
  if (allChecks.length > 0) {
    const { data: existing } = await admin
      .from('verb_quality_checks')
      .select('verb_id, check_type, field_name, status')
      .eq('status', 'open')
      .in('verb_id', verbIds)

    const existingSet = new Set(
      (existing || []).map(e => `${e.verb_id}:${e.check_type}:${e.field_name}`)
    )

    const toInsert = allChecks.filter(
      c => !existingSet.has(`${c.verb_id}:${c.check_type}:${c.field_name}`)
    )

    if (toInsert.length > 0) {
      const { error: insertError } = await admin
        .from('verb_quality_checks')
        .insert(toInsert.map(c => ({
          verb_id: c.verb_id,
          check_type: c.check_type,
          field_name: c.field_name,
          old_value: c.old_value,
          suggested_value: c.suggested_value,
          explanation: c.explanation,
          confidence: c.confidence,
        })))

      if (insertError) {
        console.error('Failed to persist quality checks:', insertError.message)
      } else {
        checksFound = toInsert.length
      }
    }
  }

  const nextOffset = offset + verbs.length < total ? offset + verbs.length : null

  return {
    processed: verbs.length,
    total,
    checks_found: checksFound,
    next_offset: nextOffset,
    results,
  }
}

function extractPrefix(infinitive: string): string | null {
  for (const p of PREFIXES) {
    if (infinitive.startsWith(p) && infinitive.length > p.length) return p
  }
  return null
}

function checkInfinitiveFormat(v: any): QualityCheckInput[] {
  const result: QualityCheckInput[] = []

  if (v.infinitive !== v.infinitive.trim()) {
    result.push({
      verb_id: v.id,
      check_type: 'infinitive_format',
      field_name: 'infinitive',
      old_value: v.infinitive,
      suggested_value: v.infinitive.trim(),
      explanation: 'Infinitive contains leading or trailing whitespace.',
      confidence: 98,
    })
  }

  if (v.infinitive !== v.infinitive.toLowerCase()) {
    result.push({
      verb_id: v.id,
      check_type: 'infinitive_format',
      field_name: 'infinitive',
      old_value: v.infinitive,
      suggested_value: v.infinitive.toLowerCase(),
      explanation: 'Infinitive should be lowercase.',
      confidence: 98,
    })
  }

  if (!v.infinitive.endsWith('n') && !v.infinitive.includes(' ')) {
    result.push({
      verb_id: v.id,
      check_type: 'infinitive_format',
      field_name: 'infinitive',
      old_value: v.infinitive,
      suggested_value: null,
      explanation: `"${v.infinitive}" does not end with -n. Most German infinitives end with -en or -n.`,
      confidence: 70,
    })
  }

  return result
}

function checkCEFRConsistency(v: any): QualityCheckInput[] {
  const result: QualityCheckInput[] = []
  const level = (v.cefr_level || '').toLowerCase()

  if (!level || !['a1', 'a2', 'b1', 'b2', 'c1', 'c2'].includes(level)) {
    result.push({
      verb_id: v.id,
      check_type: 'cefr_consistency',
      field_name: 'cefr_level',
      old_value: v.cefr_level,
      suggested_value: 'A1',
      explanation: `"${v.infinitive}" has no CEFR level set. Every verb should have a CEFR level.`,
      confidence: 90,
    })
    return result
  }

  if (HIGH_CEFR_BASIC.has(v.infinitive) && (level === 'c1' || level === 'c2')) {
    result.push({
      verb_id: v.id,
      check_type: 'cefr_consistency',
      field_name: 'cefr_level',
      old_value: v.cefr_level,
      suggested_value: level === 'c2' ? 'B1' : 'A2',
      explanation: `"${v.infinitive}" is a basic German verb but is marked as ${v.cefr_level}. Basic verbs like "${v.infinitive}" are typically A1-A2 level.`,
      confidence: 85,
    })
  }

  if (LOW_CEFR_ADVANCED.has(v.infinitive) && (level === 'a1' || level === 'a2')) {
    result.push({
      verb_id: v.id,
      check_type: 'cefr_consistency',
      field_name: 'cefr_level',
      old_value: v.cefr_level,
      suggested_value: level === 'a1' ? 'B2' : 'C1',
      explanation: `"${v.infinitive}" is an advanced/low-frequency verb but is marked as ${v.cefr_level}. Such verbs are typically B2-C2 level.`,
      confidence: 80,
    })
  }

  return result
}

function checkPartizip2(v: any): QualityCheckInput[] {
  const result: QualityCheckInput[] = []

  if (!v.partizip_2 || v.partizip_2.trim() === '') {
    result.push({
      verb_id: v.id,
      check_type: 'partizip_2',
      field_name: 'partizip_2',
      old_value: null,
      suggested_value: v.verb_type === 'regular'
        ? `ge${v.infinitive.replace(/en$/, '').replace(/n$/, '')}t`
        : null,
      explanation: `"${v.infinitive}" is missing Partizip II. Every verb needs a Partizip II form for Perfekt tense.`,
      confidence: 98,
    })
    return result
  }

  if (v.verb_type === 'regular' || v.verb_type === 'mixed') {
    const detectedPrefix = extractPrefix(v.infinitive)
    const stem = detectedPrefix
      ? v.infinitive.replace(detectedPrefix, '')
      : v.infinitive
    const expectedP2 = detectedPrefix
      ? `${detectedPrefix}ge${stem.replace(/en$/, '')}t`
      : `ge${stem.replace(/en$/, '')}t`

    if (!v.partizip_2.endsWith('t') && !v.partizip_2.endsWith('et')) {
      result.push({
        verb_id: v.id,
        check_type: 'partizip_2',
        field_name: 'partizip_2',
        old_value: v.partizip_2,
        suggested_value: expectedP2,
        explanation: `"${v.infinitive}" is ${v.verb_type} but Partizip II "${v.partizip_2}" does not end with -t. Regular verbs form Partizip II as ge+stem+t (e.g., machen → gemacht).`,
        confidence: 75,
      })
    }
  }

  if (v.verb_type === 'irregular' && !v.partizip_2.endsWith('en')) {
    result.push({
      verb_id: v.id,
      check_type: 'partizip_2',
      field_name: 'partizip_2',
      old_value: v.partizip_2,
      suggested_value: null,
      explanation: `"${v.infinitive}" is irregular but Partizip II "${v.partizip_2}" does not end with -en. Strong/irregular verbs typically form Partizip II with ge+stem+en (e.g., gehen → gegangen).`,
      confidence: 65,
    })
  }

  const detectedPrefix = extractPrefix(v.infinitive)
  if (detectedPrefix && !v.partizip_2.startsWith(detectedPrefix) && v.verb_type !== 'inseparable') {
    const stem = v.infinitive.replace(detectedPrefix, '')
    const expected = `${detectedPrefix}${stem.startsWith('ge') ? '' : 'ge'}${stem.replace(/^(ge)/, '')}`
    result.push({
      verb_id: v.id,
      check_type: 'partizip_2',
      field_name: 'partizip_2',
      old_value: v.partizip_2,
      suggested_value: null,
      explanation: `"${v.infinitive}" has separable prefix "${detectedPrefix}" but Partizip II "${v.partizip_2}" does not start with it. For separable verbs, the ge- goes between prefix and stem: ${detectedPrefix}ge...t/en.`,
      confidence: 80,
    })
  }

  return result
}

function checkAuxiliary(v: any): QualityCheckInput[] {
  const result: QualityCheckInput[] = []

  if (!v.auxiliary || !['haben', 'sein', 'both'].includes(v.auxiliary)) {
    result.push({
      verb_id: v.id,
      check_type: 'auxiliary',
      field_name: 'auxiliary',
      old_value: v.auxiliary,
      suggested_value: SEIN_VERBS.has(v.infinitive) ? 'sein' : 'haben',
      explanation: `"${v.infinitive}" has no auxiliary set. Required for Perfekt tense formation.`,
      confidence: 90,
    })
    return result
  }

  if (v.auxiliary === 'haben' && SEIN_VERBS.has(v.infinitive)) {
    const isMovement = ['gehen', 'kommen', 'fahren', 'laufen', 'reisen', 'fliegen', 'springen', 'rennen'].includes(v.infinitive)
    const explanation = isMovement
      ? `"${v.infinitive}" describes a change of location. Movement verbs form Perfekt with "sein".`
      : `"${v.infinitive}" describes a change of state. State-change verbs form Perfekt with "sein".`

    result.push({
      verb_id: v.id,
      check_type: 'auxiliary',
      field_name: 'auxiliary',
      old_value: 'haben',
      suggested_value: 'sein',
      explanation,
      confidence: isMovement ? 90 : 80,
    })
  }

  if (v.auxiliary === 'sein' && v.transitivity === 'transitive' && !['sein', 'werden', 'bleiben', 'passieren', 'geschehen', 'gelingen', 'misslingen'].includes(v.infinitive)) {
    result.push({
      verb_id: v.id,
      check_type: 'auxiliary',
      field_name: 'auxiliary',
      old_value: 'sein',
      suggested_value: 'haben',
      explanation: `"${v.infinitive}" is marked transitive (takes an Akkusativ object) but uses "sein". Transitive verbs form Perfekt with "haben".`,
      confidence: 90,
    })
  }

  return result
}

function checkReflexive(v: any): QualityCheckInput[] {
  const result: QualityCheckInput[] = []

  const startsWithSich = v.infinitive.toLowerCase().startsWith('sich ')

  if (startsWithSich && !v.is_reflexive) {
    result.push({
      verb_id: v.id,
      check_type: 'reflexive',
      field_name: 'is_reflexive',
      old_value: 'false',
      suggested_value: 'true',
      explanation: `"${v.infinitive}" starts with "sich" but is_reflexive is false. Verbs beginning with "sich" are reflexive.`,
      confidence: 95,
    })
  }

  if (v.is_reflexive && (!v.reflexive_pronoun || v.reflexive_pronoun.trim() === '')) {
    result.push({
      verb_id: v.id,
      check_type: 'reflexive',
      field_name: 'reflexive_pronoun',
      old_value: null,
      suggested_value: 'sich',
      explanation: `"${v.infinitive}" is reflexive but has no reflexive pronoun. Set to "sich" for standard reflexive verbs.`,
      confidence: 90,
    })
  }

  if (!startsWithSich && !v.is_reflexive && v.reflexive_pronoun && v.reflexive_pronoun.trim() !== '') {
    result.push({
      verb_id: v.id,
      check_type: 'reflexive',
      field_name: 'reflexive_pronoun',
      old_value: v.reflexive_pronoun,
      suggested_value: null,
      explanation: `"${v.infinitive}" has a reflexive pronoun "${v.reflexive_pronoun}" but is_reflexive is false. Either set is_reflexive=true or remove the pronoun.`,
      confidence: 85,
    })
  }

  return result
}

function checkSeparablePrefix(v: any): QualityCheckInput[] {
  const result: QualityCheckInput[] = []
  const detectedPrefix = extractPrefix(v.infinitive)

  if (v.verb_type === 'separable' && detectedPrefix) {
    if (v.separable_prefix !== detectedPrefix) {
      result.push({
        verb_id: v.id,
        check_type: 'separable_prefix',
        field_name: 'separable_prefix',
        old_value: v.separable_prefix || null,
        suggested_value: detectedPrefix,
        explanation: `"${v.infinitive}" is separable but the prefix "${v.separable_prefix || '(none)'}" doesn't match detected prefix "${detectedPrefix}".`,
        confidence: 90,
      })
    }
  }

  if (v.verb_type === 'separable' && !detectedPrefix) {
    result.push({
      verb_id: v.id,
      check_type: 'separable_prefix',
      field_name: 'separable_prefix',
      old_value: v.separable_prefix,
      suggested_value: null,
      explanation: `"${v.infinitive}" is marked separable but no known separable prefix was detected. Verify verb type.`,
      confidence: 70,
    })
  }

  if (v.separable_prefix && v.separable_prefix !== '' && v.verb_type !== 'separable' && v.verb_type !== 'inseparable') {
    result.push({
      verb_id: v.id,
      check_type: 'separable_prefix',
      field_name: 'verb_type',
      old_value: v.verb_type,
      suggested_value: 'separable',
      explanation: `"${v.infinitive}" has separable prefix "${v.separable_prefix}" but verb_type is "${v.verb_type}". Should be "separable".`,
      confidence: 85,
    })
  }

  if (detectedPrefix && (!v.separable_prefix || v.separable_prefix === '') && v.verb_type !== 'inseparable') {
    result.push({
      verb_id: v.id,
      check_type: 'separable_prefix',
      field_name: 'separable_prefix',
      old_value: null,
      suggested_value: detectedPrefix,
      explanation: `"${v.infinitive}" starts with known separable prefix "${detectedPrefix}" but separable_prefix is not set.`,
      confidence: 80,
    })
  }

  return result
}

function checkVerbType(v: any): QualityCheckInput[] {
  const result: QualityCheckInput[] = []
  const validTypes = ['regular', 'irregular', 'mixed', 'separable', 'inseparable', 'reflexive', 'verb_preposition', 'reflexive_preposition', 'modal', 'auxiliary']

  if (!v.verb_type || !validTypes.includes(v.verb_type)) {
    result.push({
      verb_id: v.id,
      check_type: 'verb_type',
      field_name: 'verb_type',
      old_value: v.verb_type,
      suggested_value: 'regular',
      explanation: `"${v.infinitive}" has invalid or missing verb_type.`,
      confidence: 90,
    })
  }

  if (v.infinitive.toLowerCase().startsWith('sich ') && v.verb_type !== 'reflexive' && v.verb_type !== 'reflexive_preposition') {
    result.push({
      verb_id: v.id,
      check_type: 'verb_type',
      field_name: 'verb_type',
      old_value: v.verb_type,
      suggested_value: 'reflexive',
      explanation: `"${v.infinitive}" starts with "sich" but verb_type is "${v.verb_type}". Should be "reflexive" or "reflexive_preposition".`,
      confidence: 95,
    })
  }

  return result
}

function checkTransitivity(v: any): QualityCheckInput[] {
  const result: QualityCheckInput[] = []
  const validVals = ['transitive', 'intransitive', 'both']

  if (!v.transitivity || !validVals.includes(v.transitivity)) {
    result.push({
      verb_id: v.id,
      check_type: 'transitivity',
      field_name: 'transitivity',
      old_value: v.transitivity,
      suggested_value: 'intransitive',
      explanation: `"${v.infinitive}" has invalid or missing transitivity.`,
      confidence: 80,
    })
    return result
  }

  if (v.is_reflexive && v.transitivity === 'transitive') {
    result.push({
      verb_id: v.id,
      check_type: 'transitivity',
      field_name: 'transitivity',
      old_value: 'transitive',
      suggested_value: 'intransitive',
      explanation: `"${v.infinitive}" is reflexive but marked transitive. Reflexive verbs are intransitive in their reflexive use.`,
      confidence: 85,
    })
  }

  if (v.auxiliary === 'sein' && v.transitivity === 'transitive' && !['sein', 'werden', 'bleiben', 'passieren'].includes(v.infinitive)) {
    result.push({
      verb_id: v.id,
      check_type: 'transitivity',
      field_name: 'transitivity',
      old_value: 'transitive',
      suggested_value: 'intransitive',
      explanation: `"${v.infinitive}" uses "sein" as auxiliary but is marked transitive. Verbs with "sein" are typically intransitive.`,
      confidence: 80,
    })
  }

  return result
}

function checkObjectCase(v: any): QualityCheckInput[] {
  const result: QualityCheckInput[] = []
  const validCases = ['akkusativ', 'dativ', 'genitiv', 'akkusativ_dativ', 'both', 'none']

  if (v.object_case && !validCases.includes(v.object_case)) {
    result.push({
      verb_id: v.id,
      check_type: 'object_case',
      field_name: 'object_case',
      old_value: v.object_case,
      suggested_value: 'akkusativ',
      explanation: `"${v.infinitive}" has invalid object_case "${v.object_case}".`,
      confidence: 90,
    })
  }

  if (v.transitivity === 'transitive' && (!v.object_case || v.object_case === 'none')) {
    result.push({
      verb_id: v.id,
      check_type: 'object_case',
      field_name: 'object_case',
      old_value: v.object_case,
      suggested_value: 'akkusativ',
      explanation: `"${v.infinitive}" is transitive but object_case is "${v.object_case || 'not set'}". Transitive verbs typically take Akkusativ.`,
      confidence: 80,
    })
  }

  return result
}

function checkPreposition(v: any): QualityCheckInput[] {
  const result: QualityCheckInput[] = []

  if ((v.verb_type === 'verb_preposition' || v.verb_type === 'reflexive_preposition') && (!v.preposition || v.preposition.trim() === '')) {
    result.push({
      verb_id: v.id,
      check_type: 'preposition',
      field_name: 'preposition',
      old_value: null,
      suggested_value: null,
      explanation: `"${v.infinitive}" is type "${v.verb_type}" but has no preposition set. A specific preposition is required (e.g., warten auf, sich freuen über).`,
      confidence: 95,
    })
  }

  if (v.verb_type !== 'verb_preposition' && v.verb_type !== 'reflexive_preposition' && v.preposition && v.preposition.trim() !== '') {
    result.push({
      verb_id: v.id,
      check_type: 'preposition',
      field_name: 'preposition',
      old_value: v.preposition,
      suggested_value: null,
      explanation: `"${v.infinitive}" has preposition "${v.preposition}" but verb_type is "${v.verb_type}". Either remove the preposition or change verb_type to "verb_preposition".`,
      confidence: 85,
    })
  }

  return result
}

function checkConjugationCompleteness(v: any, existingTenses: Set<string>): QualityCheckInput[] {
  const result: QualityCheckInput[] = []
  const requiredTenses = ['praesens', 'praeteritum', 'perfekt', 'plusquamperfekt', 'futur_i', 'futur_ii', 'konjunktiv_ii', 'imperativ', 'passiv']

  const missing = requiredTenses.filter(t => !existingTenses.has(t))

  if (missing.length > 0) {
    result.push({
      verb_id: v.id,
      check_type: 'conjugation_completeness',
      field_name: 'conjugation_tense',
      old_value: `${existingTenses.size}/9 tenses present`,
      suggested_value: 'all 9 tenses',
      explanation: `"${v.infinitive}" is missing ${missing.length} conjugation tense(s): ${missing.join(', ')}.`,
      confidence: Math.max(50, 100 - missing.length * 10),
    })
  }

  return result
}

export async function getQualityCheckResults(options?: {
  page?: number
  perPage?: number
  status?: string
  checkType?: string
  verbId?: string
}): Promise<{
  checks: any[]
  total: number
  summary: { total: number; open: number; accepted: number; rejected: number }
}> {
  const admin = createAdminClient()
  const { page = 1, perPage = 50, status, checkType, verbId } = options || {}

  let countQuery = admin
    .from('verb_quality_checks')
    .select('*', { count: 'exact', head: true })

  let dataQuery = admin
    .from('verb_quality_checks')
    .select('*, german_verbs!inner(infinitive, cefr_level, verb_type)')

  if (status) {
    countQuery = countQuery.eq('status', status)
    dataQuery = dataQuery.eq('status', status)
  }
  if (checkType) {
    countQuery = countQuery.eq('check_type', checkType)
    dataQuery = dataQuery.eq('check_type', checkType)
  }
  if (verbId) {
    countQuery = countQuery.eq('verb_id', verbId)
    dataQuery = dataQuery.eq('verb_id', verbId)
  }

  const from = (page - 1) * perPage
  const to = from + perPage - 1

  dataQuery = dataQuery.order('created_at', { ascending: false }).range(from, to)

  const [{ count }, { data, error }] = await Promise.all([countQuery, dataQuery])

  if (error) throw new Error(`Failed to fetch quality checks: ${error.message}`)

  const { data: counts } = await admin
    .from('verb_quality_checks')
    .select('status')

  const summary = { total: 0, open: 0, accepted: 0, rejected: 0 }
  for (const row of counts || []) {
    summary.total++
    const s = row.status as string
    if (s === 'open') summary.open++
    else if (s === 'accepted') summary.accepted++
    else if (s === 'rejected') summary.rejected++
  }

  return {
    checks: data || [],
    total: count || 0,
    summary,
  }
}

export async function updateQualityChecks(
  ids: string[],
  action: 'accept' | 'reject'
): Promise<number> {
  const admin = createAdminClient()
  const status = action === 'accept' ? 'accepted' : 'rejected'

  const { error } = await admin
    .from('verb_quality_checks')
    .update({ status, updated_at: new Date().toISOString() })
    .in('id', ids)
    .eq('status', 'open')

  if (error) throw new Error(`Failed to update quality checks: ${error.message}`)

  return ids.length
}
