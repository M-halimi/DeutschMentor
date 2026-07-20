import { createAdminClient } from '@/lib/supabase/admin'

export interface ReferenceIssue {
  verb_id: string
  infinitive: string
  field: string
  issue_type: string
  current_value: string | null
  expected_value: string | null
  reason: string
  source: string
  source_reference: string | null
  reference_confidence: number
  severity: 'error' | 'warning' | 'info'
}

export interface ReferenceAuditResult {
  total_verbs: number
  total_reference: number
  total_issues: number
  errors: number
  warnings: number
  infos: number
  issues: ReferenceIssue[]
  missing_from_reference: string[]
  missing_from_production: string[]
}

export interface ReferenceReport {
  total_verbs: number
  errors: number
  warnings: number
  verified: number
  missing_references: number
  top_problematic: { infinitive: string; issues: number }[]
}

const VERB_TYPE_EXPLANATIONS: Record<string, string> = {
  auxiliary: 'Hilfsverb',
  regular: 'regelmäßiges Verb',
  irregular: 'unregelmäßiges Verb',
  mixed: 'Mischverb',
  separable: 'trennbares Verb',
  inseparable: 'untrennbares Verb',
  reflexive: 'reflexives Verb',
  verb_preposition: 'Verb mit Präposition',
  reflexive_preposition: 'reflexives Verb mit Präposition',
  modal: 'Modalverb',
}

function emptyToNull(value: unknown): string | null {
  if (value === null || value === undefined) return null
  if (typeof value === 'string' && value.trim() === '') return null
  if (typeof value === 'boolean') return String(value)
  return String(value)
}

function normalizeBoolean(value: unknown): string | null {
  if (value === null || value === undefined) return null
  if (typeof value === 'boolean') return String(value)
  if (typeof value === 'string') {
    if (value === 'true' || value === '1') return 'true'
    if (value === 'false' || value === '0') return 'false'
    return value
  }
  return String(value)
}

export function compareWithReference(
  verb: Record<string, unknown>,
  reference: Record<string, unknown>
): ReferenceIssue[] {
  const issues: ReferenceIssue[] = []
  const infinitive = String(verb.infinitive || '')
  const verbId = String(verb.id || '')
  const source = String(reference.source_name || 'Unbekannt')
  const sourceRef = reference.source_reference ? String(reference.source_reference) : null
  const refConfidence = typeof reference.confidence === 'number' ? reference.confidence : 50

  // auxiliary
  const verbAux = emptyToNull(verb.auxiliary)
  const refAux = emptyToNull(reference.auxiliary)
  if (refAux !== null && verbAux !== refAux) {
    issues.push({
      verb_id: verbId,
      infinitive,
      field: 'auxiliary',
      issue_type: 'auxiliary_mismatch',
      current_value: verbAux,
      expected_value: refAux,
      reason: `Das Verb '${infinitive}' verwendet in den Produktionsdaten das Hilfsverb '${verbAux}', aber die Referenzdaten geben '${refAux}' an.`,
      source,
      source_reference: sourceRef,
      reference_confidence: refConfidence,
      severity: 'error',
    })
  }

  // verb_type
  const verbType = emptyToNull(verb.verb_type)
  const refType = emptyToNull(reference.verb_type)
  if (refType !== null && verbType !== null && verbType !== refType) {
    const currentLabel = VERB_TYPE_EXPLANATIONS[verbType] || verbType
    const expectedLabel = VERB_TYPE_EXPLANATIONS[refType] || refType
    issues.push({
      verb_id: verbId,
      infinitive,
      field: 'verb_type',
      issue_type: 'verb_type_mismatch',
      current_value: verbType,
      expected_value: refType,
      reason: `Das Verb '${infinitive}' ist als '${currentLabel}' (${verbType}) klassifiziert, sollte laut Referenzdaten jedoch '${expectedLabel}' (${refType}) sein. Dies kann Auswirkungen auf die Konjugation und den Satzbau haben.`,
      source,
      source_reference: sourceRef,
      reference_confidence: refConfidence,
      severity: 'warning',
    })
  }

  // separable_prefix
  const verbPrefix = emptyToNull(verb.separable_prefix)
  const refPrefix = emptyToNull(reference.separable_prefix)
  if (refPrefix !== null && verbPrefix !== refPrefix) {
    issues.push({
      verb_id: verbId,
      infinitive,
      field: 'separable_prefix',
      issue_type: 'prefix_mismatch',
      current_value: verbPrefix,
      expected_value: refPrefix,
      reason: refPrefix
        ? `Das Verb '${infinitive}' hat nach Referenzdaten den trennbaren Präfix '${refPrefix}', in den Produktionsdaten ist jedoch '${verbPrefix || '(kein Präfix)'}' angegeben.`
        : `Das Verb '${infinitive}' sollte laut Referenzdaten keinen trennbaren Präfix haben, in den Produktionsdaten ist jedoch '${verbPrefix}' angegeben.`,
      source,
      source_reference: sourceRef,
      reference_confidence: refConfidence,
      severity: 'error',
    })
  }

  // is_reflexive
  const verbReflexive = normalizeBoolean(verb.is_reflexive)
  const refReflexive = normalizeBoolean(reference.is_reflexive)
  if (refReflexive !== null && verbReflexive !== refReflexive) {
    issues.push({
      verb_id: verbId,
      infinitive,
      field: 'is_reflexive',
      issue_type: 'reflexive_mismatch',
      current_value: verbReflexive,
      expected_value: refReflexive,
      reason: refReflexive === 'true'
        ? `Das Verb '${infinitive}' ist in den Referenzdaten als reflexiv markiert, in den Produktionsdaten jedoch nicht.`
        : `Das Verb '${infinitive}' ist in den Produktionsdaten als reflexiv markiert, in den Referenzdaten jedoch nicht.`,
      source,
      source_reference: sourceRef,
      reference_confidence: refConfidence,
      severity: 'error',
    })
  }

  // reflexive_pronoun
  const verbReflPron = emptyToNull(verb.reflexive_pronoun)
  const refReflPron = emptyToNull(reference.reflexive_pronoun)
  if (refReflPron !== null && verbReflPron !== refReflPron) {
    issues.push({
      verb_id: verbId,
      infinitive,
      field: 'reflexive_pronoun',
      issue_type: 'reflexive_pronoun_mismatch',
      current_value: verbReflPron,
      expected_value: refReflPron,
      reason: refReflPron
        ? `Das Verb '${infinitive}' verwendet nach Referenzdaten das Reflexivpronomen '${refReflPron}', in den Produktionsdaten ist jedoch '${verbReflPron || '(keines)'}' angegeben.`
        : `Das Verb '${infinitive}' hat laut Referenzdaten kein Reflexivpronomen, in den Produktionsdaten ist jedoch '${verbReflPron}' angegeben.`,
      source,
      source_reference: sourceRef,
      reference_confidence: refConfidence,
      severity: 'warning',
    })
  }

  // partizip_2
  const verbPartizip = emptyToNull(verb.partizip_2)
  const refPartizip = emptyToNull(reference.partizip_2)
  if (refPartizip !== null && verbPartizip !== refPartizip) {
    issues.push({
      verb_id: verbId,
      infinitive,
      field: 'partizip_2',
      issue_type: 'partizip_2_mismatch',
      current_value: verbPartizip,
      expected_value: refPartizip,
      reason: refPartizip
        ? `Das Partizip II von '${infinitive}' lautet nach Referenzdaten '${refPartizip}', in den Produktionsdaten ist jedoch '${verbPartizip || '(fehlt)'}' angegeben.`
        : `Das Partizip II von '${infinitive}' sollte laut Referenzdaten nicht gesetzt sein, in den Produktionsdaten ist jedoch '${verbPartizip}' angegeben.`,
      source,
      source_reference: sourceRef,
      reference_confidence: refConfidence,
      severity: 'error',
    })
  }

  // cefr_level
  const verbCefr = emptyToNull(verb.cefr_level)
  const refCefr = emptyToNull(reference.cefr_level)
  if (refCefr !== null && verbCefr !== null && verbCefr !== refCefr) {
    issues.push({
      verb_id: verbId,
      infinitive,
      field: 'cefr_level',
      issue_type: 'cefr_level_mismatch',
      current_value: verbCefr,
      expected_value: refCefr,
      reason: `Das CEFR-Niveau von '${infinitive}' ist in den Produktionsdaten '${verbCefr}', die Referenzdaten geben jedoch '${refCefr}' an.`,
      source,
      source_reference: sourceRef,
      reference_confidence: refConfidence,
      severity: 'info',
    })
  }

  return issues
}

async function fetchAllRows(
  admin: ReturnType<typeof createAdminClient>,
  table: string
): Promise<Record<string, unknown>[]> {
  const allRows: Record<string, unknown>[] = []
  const pageSize = 1000
  let from = 0
  let to = pageSize - 1

  while (true) {
    const { data, error } = await admin
      .from(table)
      .select('*')
      .range(from, to)

    if (error) throw new Error(`Failed to fetch ${table}: ${error.message}`)
    if (!data || data.length === 0) break

    allRows.push(...data)
    if (data.length < pageSize) break
    from += pageSize
    to += pageSize
  }

  return allRows
}

export async function runReferenceAudit(
  admin: ReturnType<typeof createAdminClient>
): Promise<ReferenceAuditResult> {
  const [verbs, references] = await Promise.all([
    fetchAllRows(admin, 'german_verbs'),
    fetchAllRows(admin, 'verb_reference_data'),
  ])

  const referenceByInfinitive = new Map<string, Record<string, unknown>>()
  for (const ref of references) {
    const inf = String(ref.infinitive || '').toLowerCase().trim()
    if (inf) referenceByInfinitive.set(inf, ref)
  }

  const productionInfinitives = new Set<string>()
  const issues: ReferenceIssue[] = []
  let errors = 0
  let warnings = 0
  let infos = 0

  for (const verb of verbs) {
    const inf = String(verb.infinitive || '').toLowerCase().trim()
    if (!inf) continue
    productionInfinitives.add(inf)

    const ref = referenceByInfinitive.get(inf)
    if (ref) {
      const verbIssues = compareWithReference(verb, ref)
      for (const issue of verbIssues) {
        issues.push(issue)
        if (issue.severity === 'error') errors++
        else if (issue.severity === 'warning') warnings++
        else infos++
      }
    }
  }

  const referenceInfinitives = new Set<string>()
  for (const ref of references) {
    const inf = String(ref.infinitive || '').toLowerCase().trim()
    if (inf) referenceInfinitives.add(inf)
  }

  const missingFromReference: string[] = []
  for (const inf of productionInfinitives) {
    if (!referenceInfinitives.has(inf)) {
      missingFromReference.push(inf)
    }
  }

  const missingFromProduction: string[] = []
  for (const inf of referenceInfinitives) {
    if (!productionInfinitives.has(inf)) {
      missingFromProduction.push(inf)
    }
  }

  return {
    total_verbs: verbs.length,
    total_reference: references.length,
    total_issues: issues.length,
    errors,
    warnings,
    infos,
    issues,
    missing_from_reference: missingFromReference.sort(),
    missing_from_production: missingFromProduction.sort(),
  }
}

export function generateReport(result: ReferenceAuditResult): ReferenceReport {
  const issueCount = new Map<string, number>()
  for (const issue of result.issues) {
    issueCount.set(issue.infinitive, (issueCount.get(issue.infinitive) || 0) + 1)
  }

  const topProblematic = [...issueCount.entries()]
    .sort((a, b) => b[1] - a[1])
    .slice(0, 10)
    .map(([infinitive, issues]) => ({ infinitive, issues }))

  const verified = result.total_verbs - result.missing_from_reference.length

  return {
    total_verbs: result.total_verbs,
    errors: result.errors,
    warnings: result.warnings,
    verified,
    missing_references: result.missing_from_reference.length,
    top_problematic: topProblematic,
  }
}

export async function getVerbReference(infinitive: string): Promise<Record<string, unknown> | null> {
  const admin = createAdminClient()
  const { data, error } = await admin
    .from('verb_reference_data')
    .select('*')
    .ilike('infinitive', infinitive.trim())
    .maybeSingle()

  if (error) throw new Error(`Failed to fetch reference for '${infinitive}': ${error.message}`)
  return data || null
}

export function getReferenceConfidenceBadge(confidence: number): { label: string; color: string; variant: string } {
  if (confidence >= 90) {
    return { label: 'Verified', color: 'green', variant: 'high' }
  }
  if (confidence >= 70) {
    return { label: 'Needs Review', color: 'amber', variant: 'medium' }
  }
  return { label: 'Critical', color: 'red', variant: 'low' }
}
