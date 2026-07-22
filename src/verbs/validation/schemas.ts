import { ScrapedVerbResult, VerbVersion } from '../types'

export interface ValidationIssue {
  field: string
  message: string
  severity: 'error' | 'warning' | 'info'
  expected?: string
  actual?: string
}

export interface ValidationReport {
  valid: boolean
  issues: ValidationIssue[]
  score: number
}

const KNOWN_AUXILIARIES = ['haben', 'sein', 'both']
const KNOWN_CEFR = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']
const KNOWN_TENSES = ['praesens', 'praeteritum', 'perfekt', 'plusquamperfekt', 'futur_i', 'futur_ii', 'konjunktiv_i', 'konjunktiv_ii', 'imperativ']
const REQUIRED_TENSES = ['praesens', 'praeteritum', 'perfekt']
const PERSONS = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'sie']

export function validateScrapedVerb(result: ScrapedVerbResult): ValidationReport {
  const issues: ValidationIssue[] = []

  if (!result.infinitive) {
    issues.push({ field: 'infinitive', message: 'Infinitive is required', severity: 'error' })
  }

  if (!result.partizip_2 && !result.verb_type?.includes('modal') && result.verb_type !== 'auxiliary') {
    issues.push({ field: 'partizip_2', message: 'Partizip II is missing', severity: 'warning', actual: '(missing)' })
  }

  if (result.auxiliary && !KNOWN_AUXILIARIES.includes(result.auxiliary.toLowerCase())) {
    issues.push({ field: 'auxiliary', message: `Unknown auxiliary: ${result.auxiliary}`, severity: 'error', actual: result.auxiliary, expected: 'haben, sein, or both' })
  }

  if (result.cefr_level && !KNOWN_CEFR.includes(result.cefr_level.toUpperCase())) {
    issues.push({ field: 'cefr_level', message: `Unknown CEFR level: ${result.cefr_level}`, severity: 'warning', actual: result.cefr_level, expected: 'A1-A2-B1-B2-C1-C2' })
  }

  if (result.conjugations) {
    for (const tense of REQUIRED_TENSES) {
      if (!result.conjugations[tense]) {
        issues.push({ field: `conjugation.${tense}`, message: `Missing ${tense} conjugation`, severity: 'warning' })
      }
    }
    for (const [tense, forms] of Object.entries(result.conjugations)) {
      if (KNOWN_TENSES.includes(tense)) {
        const missing = PERSONS.filter(p => !forms[p] || forms[p].trim() === '')
        if (missing.length > 0 && !['imperativ', 'passiv'].includes(tense)) {
          issues.push({ field: `conjugation.${tense}`, message: `Missing forms for: ${missing.join(', ')}`, severity: 'info', expected: PERSONS.join(', '), actual: missing.join(', ') })
        }
      }
    }
  }

  return compileReport(issues)
}

export function validateForPublishing(verb: Record<string, unknown>, conjugations?: Record<string, unknown>[], existingVersions?: VerbVersion[]): ValidationReport {
  const issues: ValidationIssue[] = []

  if (!verb['infinitive']) issues.push({ field: 'infinitive', message: 'Infinitive is required', severity: 'error' })
  if (!verb['english_translation'] && !verb['arabic_translation']) {
    issues.push({ field: 'translation', message: 'At least one translation is required', severity: 'warning' })
  }
  if (!verb['partizip_2']) issues.push({ field: 'partizip_2', message: 'Partizip II is required', severity: 'error' })
  if (!verb['slug']) issues.push({ field: 'slug', message: 'Slug is required', severity: 'error' })
  if (!verb['cefr_level']) issues.push({ field: 'cefr_level', message: 'CEFR level is recommended', severity: 'info' })

  if (conjugations) {
    const presentTense = conjugations.find(c => c['tense'] === 'praesens')
    if (!presentTense) issues.push({ field: 'conjugations', message: 'Präsens conjugation is required', severity: 'error' })
    const hasPerfekt = conjugations.some(c => c['tense'] === 'perfekt')
    if (!hasPerfekt) issues.push({ field: 'conjugations', message: 'Perfekt conjugation is recommended', severity: 'info' })
  }

  if (existingVersions && existingVersions.length > 0) {
    const lastVersion = existingVersions[existingVersions.length - 1]
    const lastSnapshot = lastVersion.verb_snapshot as Record<string, unknown>
    const changedFields: string[] = []
    for (const key of Object.keys(verb)) {
      if (JSON.stringify(verb[key]) !== JSON.stringify(lastSnapshot[key])) {
        changedFields.push(key)
      }
    }
    if (changedFields.length === 0) {
      issues.push({ field: '_unchanged', message: 'No changes detected since last version', severity: 'info', expected: '(changes expected)' })
    }
  }

  return compileReport(issues)
}

export function validateConjugationConsistency(conjugations: Record<string, Record<string, string>>): ValidationReport {
  const issues: ValidationIssue[] = []

  const indicativeTenses = ['praesens', 'praeteritum']
  for (const tense of indicativeTenses) {
    const forms = conjugations[tense]
    if (forms) {
      if (forms['ich'] && forms['er_sie_es'] && forms['ich'].toLowerCase().endsWith('e') && !forms['er_sie_es'].toLowerCase().endsWith('t') && !forms['er_sie_es'].toLowerCase().endsWith('t')) {
      }
    }
  }

  if (conjugations['praesens']) {
    const prs = conjugations['praesens']
    if (prs['er_sie_es'] && prs['wir'] && prs['er_sie_es'] === prs['wir']) {
      issues.push({ field: 'conjugation.praesens', message: 'er/sie/es and wir forms are identical - possible data issue', severity: 'info', actual: prs['er_sie_es'] })
    }
  }

  return compileReport(issues)
}

export function completeVerbData(verb: ScrapedVerbResult): ScrapedVerbResult {
  const completed = { ...verb }
  if (!completed.verb_type) {
    if (completed.separable_prefix) completed.verb_type = 'separable'
    else if (completed.infinitive?.startsWith('sich ')) { completed.is_reflexive = true; completed.verb_type = 'reflexive' }
    else completed.verb_type = 'regular'
  }
  if (!completed.transitivity) {
    completed.transitivity = 'both'
  }
  if (!completed.object_case) {
    completed.object_case = 'akkusativ'
  }
  return completed
}

function compileReport(issues: ValidationIssue[]): ValidationReport {
  const score = Math.max(0, 100 -
    issues.filter(i => i.severity === 'error').length * 15 -
    issues.filter(i => i.severity === 'warning').length * 5 -
    issues.filter(i => i.severity === 'info').length * 1
  )
  return {
    valid: !issues.some(i => i.severity === 'error'),
    issues,
    score,
  }
}
