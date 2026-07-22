import { getAdminClient, computeDiff } from '../utils'
import { DB_TABLES } from '../constants'
import { QualityFinding, QualitySummary, QualityCategory } from '../types'
import { GermanVerb, Conjugation } from '@/types'

export interface AuditResult {
  findings: QualityFinding[]
  score: number
  summary: QualitySummary
}

export async function runQualityAudit(verbId?: string): Promise<AuditResult[]> {
  const admin = getAdminClient()
  let query = admin.from('german_verbs').select('*, verb_conjugations(*)').order('infinitive', { ascending: true })
  if (verbId) query = query.eq('id', verbId)
  const { data: verbs, error } = await query
  if (error) throw new Error(`Failed to fetch verbs: ${error.message}`)
  if (!verbs || verbs.length === 0) return []

  const results: AuditResult[] = []
  for (const verb of verbs) {
    const result = await auditSingleVerb(verb as unknown as GermanVerb)
    results.push(result)
    await persistQualityFindings(result.findings)
    await refreshQualitySummary(verb.id, result)
  }

  return results
}

async function auditSingleVerb(verb: GermanVerb): Promise<AuditResult> {
  const findings: QualityFinding[] = []
  const conjugations = verb.conjugations ?? []

  checkPartizip2(verb, findings)
  checkAuxiliaryConsistency(verb, conjugations, findings)
  checkReflexive(verb, findings)
  checkConjugationGaps(verb, conjugations, findings)
  checkPresentTenseForms(verb, conjugations, findings)
  checkTransitivity(verb, findings)
  checkSlug(verb, findings)
  checkCEFRLevel(verb, findings)

  const score = calculateScore(findings)
  const summary: QualitySummary = {
    verb_id: verb.id,
    quality_score: score,
    total_issues: findings.length,
    error_count: findings.filter(f => f.severity === 'error').length,
    warning_count: findings.filter(f => f.severity === 'warning').length,
    info_count: findings.filter(f => f.severity === 'info').length,
    audit_status: score >= 80 ? 'passed' : score >= 50 ? 'pending' : 'failed',
    last_audited_at: new Date().toISOString(),
  }

  return { findings, score, summary }
}

function checkPartizip2(verb: GermanVerb, findings: QualityFinding[]): void {
  if (!verb.partizip_2 || verb.partizip_2.trim() === '') {
    if (!['modal', 'auxiliary'].includes(verb.verb_type)) {
      findings.push(createFinding(verb.id, 'partizip_2', 'partizip_2', verb.partizip_2, '', 'Partizip II is missing', 'error', 90))
    }
  } else if (!verb.partizip_2.startsWith('ge') && !['modal', 'auxiliary'].includes(verb.verb_type) && !verb.separable_prefix) {
    if (verb.separable_prefix && !verb.partizip_2.includes(verb.separable_prefix)) {
      findings.push(createFinding(verb.id, 'partizip_2', 'partizip_2', verb.partizip_2, `${verb.separable_prefix}ge...t/en`, 'Partizip II should contain separable prefix', 'warning', 70))
    }
    if (!['-ieren', '-eln', '-ern'].some(s => verb.infinitive.endsWith(s)) && !['be-', 'ge-', 'er-', 'ver-', 'zer-', 'ent-', 'emp-', 'miss-', 'über-', 'unter-'].some(p => verb.infinitive.startsWith(p))) {
      findings.push(createFinding(verb.id, 'partizip_2', 'partizip_2', verb.partizip_2, `ge${verb.partizip_2}`, 'Weak verbs should have ge- prefix in Partizip II (unless inseparable prefix)', 'info', 50))
    }
  }
}

function checkAuxiliaryConsistency(verb: GermanVerb, _conjugations: Conjugation[], findings: QualityFinding[]): void {
  const perfekt = _conjugations.find(c => c.tense === 'perfekt')
  if (perfekt && verb.auxiliary) {
    const perfektForms = [perfekt.ich, perfekt.du, perfekt.er_sie_es, perfekt.wir, perfekt.ihr, perfekt.sie]
    const hasSein = perfektForms.some(f => f?.startsWith('bin') || f?.startsWith('bist') || f?.startsWith('ist') || f?.startsWith('sind') || f?.startsWith('seid'))
    const hasHaben = perfektForms.some(f => f?.startsWith('habe') || f?.startsWith('hast') || f?.startsWith('hat') || f?.startsWith('haben') || f?.startsWith('habt'))
    if (hasSein && verb.auxiliary === 'haben') {
      findings.push(createFinding(verb.id, 'auxiliary_mismatch', 'auxiliary', verb.auxiliary, 'sein', 'Perfekt uses sein but auxiliary is set to haben', 'error', 85))
    }
    if (hasHaben && verb.auxiliary === 'sein') {
      findings.push(createFinding(verb.id, 'auxiliary_mismatch', 'auxiliary', verb.auxiliary, 'haben', 'Perfekt uses haben but auxiliary is set to sein', 'error', 85))
    }
  }
}

function checkReflexive(verb: GermanVerb, findings: QualityFinding[]): void {
  if (verb.is_reflexive && (!verb.reflexive_pronoun || verb.reflexive_pronoun.trim() === '')) {
    findings.push(createFinding(verb.id, 'reflexive_pronoun', 'reflexive_pronoun', verb.reflexive_pronoun ?? '', 'sich', 'Reflexive verb missing reflexive pronoun', 'warning', 80))
  }
  if (verb.is_reflexive && verb.verb_type !== 'reflexive' && verb.verb_type !== 'reflexive_preposition') {
    findings.push(createFinding(verb.id, 'verb_type', 'verb_type', verb.verb_type, 'reflexive', 'Verb is marked reflexive but verb_type is not reflexive', 'info', 60))
  }
}

function checkConjugationGaps(verb: GermanVerb, conjugations: Conjugation[], findings: QualityFinding[]): void {
  const requiredTenses = ['praesens', 'praeteritum', 'perfekt']
  const existingTenses = new Set(conjugations.map(c => c.tense))
  for (const tense of requiredTenses) {
    if (!existingTenses.has(tense as Conjugation['tense'])) {
      const severity = tense === 'praesens' ? 'error' : 'warning'
      findings.push(createFinding(verb.id, 'conjugation_gap', `conjugations.${tense}`, '(missing)', '', `Missing ${tense} conjugation`, severity as 'error' | 'warning', 90))
    }
  }
}

function checkPresentTenseForms(verb: GermanVerb, conjugations: Conjugation[], findings: QualityFinding[]): void {
  const present = conjugations.find(c => c.tense === 'praesens')
  if (!present) return
  const persons = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'sie'] as const
  for (const p of persons) {
    if (!present[p] || present[p].trim() === '') {
      findings.push(createFinding(verb.id, 'conjugation_gap', `praesens.${p}`, '(missing)', '', `Missing ${p} form in Präsens`, 'warning', 80))
    }
  }
  if (present.er_sie_es && verb.infinitive) {
    const stem = verb.infinitive.replace(/en$/, '').replace(/n$/, '')
    if (stem && present.er_sie_es.endsWith('t')) {
      const expectedEr = `${stem}t`
      if (present.er_sie_es !== expectedEr && !verb.infinitive.startsWith('sich ') && !verb.separable_prefix) {
      }
    }
  }
}

function checkTransitivity(verb: GermanVerb, findings: QualityFinding[]): void {
  if (verb.transitivity === 'both' && verb.verb_type !== 'auxiliary' && verb.verb_type !== 'modal') {
    if (!verb.preposition && verb.verb_type !== 'inseparable' && verb.verb_type !== 'separable') {
    }
  }
}

function checkSlug(verb: GermanVerb, findings: QualityFinding[]): void {
  const expectedSlug = verb.infinitive
    .toLowerCase()
    .replace(/ä/g, 'ae').replace(/ö/g, 'oe').replace(/ü/g, 'ue').replace(/ß/g, 'ss')
    .replace(/[^a-z0-9-]/g, '-').replace(/-+/g, '-').replace(/^-|-$/g, '')
  if (verb.slug && !verb.slug.startsWith(expectedSlug)) {
    findings.push(createFinding(verb.id, 'slug_inconsistency', 'slug', verb.slug, expectedSlug, 'Slug does not match infinitive pattern', 'info', 60))
  }
}

function checkCEFRLevel(verb: GermanVerb, findings: QualityFinding[]): void {
  if (!verb.cefr_level) {
    findings.push(createFinding(verb.id, 'missing_cefr', 'cefr_level', '(missing)', '', 'CEFR level is not set', 'info', 40))
  }
}

function createFinding(
  verbId: string,
  category: QualityCategory,
  fieldName: string,
  currentValue: string | undefined | null,
  expectedValue: string,
  explanation: string,
  severity: 'error' | 'warning' | 'info',
  confidence: number
): QualityFinding {
  return {
    id: '',
    verb_id: verbId,
    category,
    field_name: fieldName,
    current_value: currentValue ?? undefined,
    expected_value: expectedValue,
    explanation,
    severity,
    confidence,
    status: 'open',
    created_at: new Date().toISOString(),
  }
}

function calculateScore(findings: QualityFinding[]): number {
  const score = Math.max(0, 100 -
    findings.filter(f => f.severity === 'error').length * 15 -
    findings.filter(f => f.severity === 'warning').length * 5 -
    findings.filter(f => f.severity === 'info').length * 1
  )
  return Math.min(100, score)
}

async function persistQualityFindings(findings: QualityFinding[]): Promise<void> {
  if (findings.length === 0) return
  const admin = getAdminClient()
  for (const finding of findings) {
    const { data: existing } = await admin
      .from(DB_TABLES.verbQualityFindings)
      .select('id')
      .eq('verb_id', finding.verb_id)
      .eq('category', finding.category)
      .eq('field_name', finding.field_name)
      .eq('status', 'open')
      .maybeSingle()
    if (!existing) {
      await admin.from(DB_TABLES.verbQualityFindings).insert({
        verb_id: finding.verb_id,
        category: finding.category,
        field_name: finding.field_name,
        current_value: finding.current_value,
        expected_value: finding.expected_value,
        explanation: finding.explanation,
        example_wrong: finding.example_wrong,
        example_correct: finding.example_correct,
        source_reference: finding.source_reference,
        severity: finding.severity,
        confidence: finding.confidence,
        status: 'open',
      })
    }
  }
}

async function refreshQualitySummary(verbId: string, result: AuditResult): Promise<void> {
  const admin = getAdminClient()
  const existingSummary = await admin
    .from(DB_TABLES.verbQualitySummary)
    .select('verb_id')
    .eq('verb_id', verbId)
    .maybeSingle()

  const payload = {
    verb_id: verbId,
    quality_score: result.score,
    total_issues: result.findings.length,
    error_count: result.findings.filter(f => f.severity === 'error').length,
    warning_count: result.findings.filter(f => f.severity === 'warning').length,
    info_count: result.findings.filter(f => f.severity === 'info').length,
    audit_status: result.summary.audit_status,
    last_audited_at: new Date().toISOString(),
  }

  if (existingSummary.data) {
    await admin.from(DB_TABLES.verbQualitySummary).update(payload).eq('verb_id', verbId)
  } else {
    await admin.from(DB_TABLES.verbQualitySummary).insert(payload)
  }
}

export async function getQualitySummary(verbId?: string): Promise<QualitySummary | QualitySummary[] | null> {
  const admin = getAdminClient()
  if (verbId) {
    const { data } = await admin.from(DB_TABLES.verbQualitySummary).select('*').eq('verb_id', verbId).single()
    return data as QualitySummary | null
  }
  const { data } = await admin.from(DB_TABLES.verbQualitySummary).select('*').order('quality_score', { ascending: true })
  return (data ?? []) as QualitySummary[]
}

export async function getQualityIssues(verbId: string): Promise<QualityFinding[]> {
  const admin = getAdminClient()
  const { data } = await admin
    .from(DB_TABLES.verbQualityFindings)
    .select('*')
    .eq('verb_id', verbId)
    .order('created_at', { ascending: false })
  return (data ?? []) as QualityFinding[]
}

export async function getDashboardQualityScore(): Promise<number> {
  const admin = getAdminClient()
  const { data } = await admin.from(DB_TABLES.verbQualitySummary).select('quality_score')
  if (!data || data.length === 0) return 100
  const total = data.reduce((sum: number, r: { quality_score: number }) => sum + r.quality_score, 0)
  return Math.round(total / data.length)
}
