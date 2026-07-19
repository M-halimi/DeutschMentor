import { getSourceUrl } from './source-registry'

export interface ValidationResult {
  field: string
  currentValue: string | null
  expectedValue: string | null
  source: string
  sourceUrl: string
  confidence: number
}

const MOTION_PREFIXES = ['ab', 'an', 'auf', 'aus', 'bei', 'da', 'durch', 'ein', 'fort', 'heim', 'her', 'hin', 'los', 'mit', 'nach', 'neben', 'um', 'vor', 'weg', 'zu', 'zurück', 'zusammen']

const SEIN_EXCEPTIONS = new Set([
  'sein', 'werden', 'bleiben', 'passieren', 'geschehen', 'gelingen', 'misslingen',
])

const NON_MOTION_HABEN = new Set([
  'aufhören', 'aufpassen', 'zuhören', 'nachfragen',
  'abnehmen', 'zunehmen',
])

export function validateAuxiliary(verb: {
  infinitive: string
  auxiliary: string
  transitivity: string
  verb_type: string
  separable_prefix: string | null
}): ValidationResult | null {
  const inf = verb.infinitive

  if (verb.auxiliary === 'sein' && verb.transitivity === 'transitive' && !SEIN_EXCEPTIONS.has(inf)) {
    return {
      field: 'auxiliary',
      currentValue: 'sein',
      expectedValue: 'haben',
      source: 'Duden',
      sourceUrl: getSourceUrl('Duden', inf),
      confidence: 90,
    }
  }

  if (verb.auxiliary === 'haben' && verb.verb_type === 'separable' && verb.transitivity === 'intransitive') {
    const prefix = verb.separable_prefix || ''
    const isMotion = MOTION_PREFIXES.includes(prefix) && !NON_MOTION_HABEN.has(inf)
    if (isMotion) {
      return {
        field: 'auxiliary',
        currentValue: 'haben',
        expectedValue: 'sein',
        source: 'Duden',
        sourceUrl: getSourceUrl('Duden', inf),
        confidence: 70,
      }
    }
  }

  return null
}

export function validateSeparablePrefix(verb: {
  infinitive: string
  verb_type: string
  separable_prefix: string | null
}): ValidationResult | null {
  if (verb.verb_type === 'separable' && (!verb.separable_prefix || verb.separable_prefix === '')) {
    return {
      field: 'separable_prefix',
      currentValue: null,
      expectedValue: '[prefix — check source]',
      source: 'Duden',
      sourceUrl: getSourceUrl('Duden', verb.infinitive),
      confidence: 50,
    }
  }

  if (verb.verb_type !== 'separable' && verb.separable_prefix && verb.separable_prefix !== '') {
    return {
      field: 'separable_prefix',
      currentValue: verb.separable_prefix,
      expectedValue: 'null (not separable)',
      source: 'Duden',
      sourceUrl: getSourceUrl('Duden', verb.infinitive),
      confidence: 60,
    }
  }

  return null
}

export function validateReflexive(verb: {
  infinitive: string
  is_reflexive: boolean
  reflexive_pronoun: string | null
}): ValidationResult | null {
  if (verb.is_reflexive && (!verb.reflexive_pronoun || verb.reflexive_pronoun === '')) {
    return {
      field: 'reflexive_pronoun',
      currentValue: null,
      expectedValue: 'sich',
      source: 'Duden',
      sourceUrl: getSourceUrl('Duden', verb.infinitive),
      confidence: 80,
    }
  }

  return null
}

export function validatePartizip(verb: {
  infinitive: string
  verb_type: string
  separable_prefix: string | null
  partizip_2: string | null
}): ValidationResult | null {
  if (!verb.partizip_2) return null

  const hasGePrefix = verb.partizip_2.startsWith('ge')
  const expectedPrefix = verb.verb_type === 'separable' ? (verb.separable_prefix || '') + 'ge' : 'ge'
  const hasExpectedGe = verb.partizip_2.startsWith(expectedPrefix) || verb.partizip_2.startsWith('ge')

  if (verb.verb_type === 'separable' && !verb.partizip_2.includes(verb.separable_prefix || '')) {
    return {
      field: 'partizip_2',
      currentValue: verb.partizip_2,
      expectedValue: `${verb.separable_prefix}ge${verb.infinitive.slice((verb.separable_prefix || '').length - 1)}t`,
      source: 'Duden',
      sourceUrl: getSourceUrl('Duden', verb.infinitive),
      confidence: 40,
    }
  }

  if (verb.verb_type === 'regular' && !hasGePrefix) {
    return {
      field: 'partizip_2',
      currentValue: verb.partizip_2,
      expectedValue: `ge${verb.infinitive.slice(0, -1)}t`,
      source: 'Duden',
      sourceUrl: getSourceUrl('Duden', verb.infinitive),
      confidence: 60,
    }
  }

  return null
}

export function validateCEFR(verb: {
  infinitive: string
  cefr_level: string | null
}): ValidationResult | null {
  if (!verb.cefr_level) return null

  const beginnerVerbs = ['sein', 'haben', 'werden', 'können', 'müssen', 'wollen', 'sagen', 'gehen', 'kommen', 'machen', 'geben', 'nehmen', 'sehen', 'finden', 'wissen', 'denken', 'tun', 'lassen', 'heißen', 'sprechen', 'lesen', 'schreiben', 'wohnen', 'leben', 'arbeiten', 'spielen', 'lernen', 'studieren', 'essen', 'trinken', 'schlafen', 'fahren', 'fliegen', 'tanzen', 'singen']
  const advancedVerbs = ['erörtern', 'konzipieren', 'exzerpieren', 'rezensieren', 'extrahieren', 'kategorisieren', 'spekulieren']

  if (verb.cefr_level === 'B2' && beginnerVerbs.includes(verb.infinitive)) {
    return {
      field: 'cefr_level',
      currentValue: 'B2',
      expectedValue: 'A1 or A2',
      source: 'Goethe',
      sourceUrl: getSourceUrl('Goethe', verb.infinitive),
      confidence: 60,
    }
  }

  if (verb.cefr_level === 'A2' && advancedVerbs.includes(verb.infinitive)) {
    return {
      field: 'cefr_level',
      currentValue: 'A2',
      expectedValue: 'B2 or C1',
      source: 'Goethe',
      sourceUrl: getSourceUrl('Goethe', verb.infinitive),
      confidence: 50,
    }
  }

  return null
}

export function validateVerb(verb: {
  infinitive: string
  auxiliary: string
  transitivity: string
  verb_type: string
  separable_prefix: string | null
  partizip_2: string | null
  is_reflexive: boolean
  reflexive_pronoun: string | null
  cefr_level: string | null
}): ValidationResult[] {
  const results: ValidationResult[] = []

  const aux = validateAuxiliary(verb)
  if (aux) results.push(aux)

  const sep = validateSeparablePrefix(verb)
  if (sep) results.push(sep)

  const ref = validateReflexive(verb)
  if (ref) results.push(ref)

  const part = validatePartizip(verb)
  if (part) results.push(part)

  const cefr = validateCEFR(verb)
  if (cefr) results.push(cefr)

  return results
}
