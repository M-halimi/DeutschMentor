/**
 * German Verb Conjugation Engine — Main Conjugator
 *
 * Orchestrates all conjugation operations across tenses and moods
 * using the rules engine + exception database.
 *
 * Architecture:
 * 1. Parse verb metadata (category, prefix, stem, auxiliary)
 * 2. Look up irregular exceptions; fall back to regular rules
 * 3. Generate each tense using the appropriate stem + endings
 * 4. Apply post-processing (separable prefix placement, reflexives)
 */

import {
  deriveStem,
  getBaseVerb,
  getSeparablePrefix,
  isSeparable,
  PRAESENS_ENDINGS,
  PRAETERITUM_WEAK_ENDINGS,
  PRAETERITUM_STRONG_ENDINGS,
  KONJUNKTIV_II_ENDINGS,
  getReflexivePronoun,
  generatePartizipII,
  generateImperativ,
  applySElision,
  applyEInsertion,
  applyElnErnRule,
  umlaut,
  getStemWithVowelChange,
  stemEndsInSibilant,
  stemIsDental,
  stemIsNasal,
} from './rules'

import { getIrregularEntry } from './exceptions'
import type {
  VerbEntry,
  VerbConjugation,
  ConjugationSet,
  EndingsTable,
  Person,
  Tense,
  VerbCategory,
} from './types'

// =========================================================================
// PRESENT TENSE (Präsens)
// =========================================================================

/**
 * Conjugates a verb in the present tense (Präsens Indikativ).
 *
 * @param verb - Verb metadata entry
 * @returns ConjugationSet with all 6 persons
 *
 * German Präsens rules:
 * 1. Start with the verb stem
 * 2. Apply vowel change for strong verbs (du/er forms)
 * 3. Apply e-insertion for dental/nasal stems
 * 4. Apply s-elision for stems ending in s/ß/x/z
 * 5. Apply -eln/-ern contraction for ich-form
 * 6. Append personal endings
 * 7. Handle separable prefixes (move to end)
 * 8. Handle reflexive pronouns
 * 9. Handle sein/haben/werden special cases
 */
export function conjugatePraesens(verb: VerbEntry): ConjugationSet {
  const persons: Person[] = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie']
  const conjugation: Partial<ConjugationSet> = {}
  const stem = verb.stem ?? deriveStem(verb.infinitive)
  const prefix = getSeparablePrefix(verb.infinitive)
  const baseVerb = getBaseVerb(verb.infinitive)
  const irregular = getIrregularEntry(verb.infinitive)

  for (const person of persons) {
    let conjugated: string

    if (verb.infinitive === 'wissen') {
      conjugated = conjugateWissenPraesens(person)
    } else if (verb.category === 'auxiliary') {
      conjugated = conjugateAuxiliaryPraesens(verb.infinitive, person)
    } else if (verb.category === 'modal') {
      conjugated = conjugateModalPraesens(verb.infinitive, person)
    } else {
      let personStem = stem
      let ending = PRAESENS_ENDINGS[person]
      let stemVowelChanged = false

      // --- Vowel change for strong verbs (du/er forms) ---
      if (person === 'du' || person === 'er_sie_es') {
        let changeVowel: string | undefined

        if (verb.vowelChange?.present_du && verb.vowelChange.present_er) {
          // If du and er have different changes, use the appropriate one
          const change = person === 'du' ? verb.vowelChange.present_du : verb.vowelChange.present_er
          changeVowel = change
        } else if (verb.vowelChange?.present_du) {
          changeVowel = verb.vowelChange.present_du
        } else if (irregular?.presentVowel && !irregular.noPresentVowelChange) {
          changeVowel = irregular.presentVowel
        }

        if (changeVowel) {
          personStem = applyVowelChangeToStem(baseVerb, verb.infinitive, stem, changeVowel)
          stemVowelChanged = true
        }
      }

      // --- Special stem rules ---
      if (person === 'ich') {
        personStem = applyElnErnRule(personStem, person)
      }

      // --- Handle 't' ending in er-form for strong verbs ---
      // Strong verbs with vowel change may omit the -t in er-form
      if (person === 'er_sie_es' && stemVowelChanged) {
        const lastChar = personStem.slice(-1)
        if (lastChar === 'd' || lastChar === 't') {
          // Example: raten → er rät (not rätet)
          // The e-insertion is skipped because the stem vowel changed
          ending = ''
        }
        // For most strong verbs with vowel change, the 't' is still added
        // Example: fahren → er fährt, lesen → er liest
      }

      // --- Apply phonological rules ---
      ending = applyEInsertion(personStem, ending, person, stemVowelChanged)
      ending = applySElision(personStem, ending, person)

      // e-insertion disabled for vowel-changed strong verbs in er-form
      if (person === 'er_sie_es' && stemVowelChanged) {
        const lastChar = personStem.slice(-1)
        if (['d', 't'].includes(lastChar)) {
          ending = ''
        }
      }

      // --- Build conjugated form ---
      conjugated = personStem + ending
    }

    // --- Handle separable prefix ---
    if (prefix) {
      // In main clauses, the prefix goes to the end
      conjugated = conjugated + ' ' + prefix
    }

    // --- Handle reflexive pronouns ---
    if (verb.isReflexive) {
      const reflexivePronoun = getReflexivePronoun(person, verb.reflexivePronounCase)
      // In Präsens, reflexive pronoun comes BEFORE separable prefix
      if (prefix) {
        // Insert pronoun before the prefix
        conjugated = conjugated.replace(' ' + prefix, ' ' + reflexivePronoun + ' ' + prefix)
      } else {
        conjugated = conjugated + ' ' + reflexivePronoun
      }
    }

    conjugation[person] = conjugated
  }

  conjugation.sie = conjugation.Sie
  return conjugation as ConjugationSet
}

/**
 * Conjugates auxiliary verbs (sein, haben, werden) in Präsens.
 */
function conjugateAuxiliaryPraesens(infinitive: string, person: Person): string {
  const forms: Record<string, Partial<ConjugationSet>> = {
    sein: {
      ich: 'bin',
      du: 'bist',
      er_sie_es: 'ist',
      wir: 'sind',
      ihr: 'seid',
      Sie: 'sind',
    },
    haben: {
      ich: 'habe',
      du: 'hast',
      er_sie_es: 'hat',
      wir: 'haben',
      ihr: 'habt',
      Sie: 'haben',
    },
    werden: {
      ich: 'werde',
      du: 'wirst',
      er_sie_es: 'wird',
      wir: 'werden',
      ihr: 'werdet',
      Sie: 'werden',
    },
  }
  return forms[infinitive]?.[person] ?? ''
}

/**
 * Conjugates modal verbs in Präsens.
 *
 * Modal verb rule: ich/er forms have no ending, just the changed stem.
 * du/ihr get -st/-t as normal.
 */
function conjugateModalPraesens(infinitive: string, person: Person): string {
  const modalStems: Record<string, string> = {
    können: 'kann',
    dürfen: 'darf',
    müssen: 'muss',
    mögen: 'mag',
    sollen: 'soll',
    wollen: 'will',
  }

  const stem = modalStems[infinitive]
  if (!stem) return ''

  // Ich and er/sie/es: no ending
  if (person === 'ich' || person === 'er_sie_es') {
    return stem
  }

  // All other persons: add endings to the modal stem
  if (person === 'du') return stem + 'st'
  if (person === 'wir' || person === 'Sie') return infinitive
  if (person === 'ihr') return stem + 't'

  return ''
}

/**
 * Conjugates "wissen" in Präsens.
 */
function conjugateWissenPraesens(person: Person): string {
  const forms: Partial<ConjugationSet> = {
    ich: 'weiß',
    du: 'weißt',
    er_sie_es: 'weiß',
    wir: 'wissen',
    ihr: 'wisst',
    Sie: 'wissen',
  }
  return forms[person] ?? ''
}

// =========================================================================
// PRETERITE TENSE (Präteritum / Imperfekt)
// =========================================================================

/**
 * Conjugates a verb in the preterite tense (Präteritum).
 *
 * German Präteritum rules:
 * - Weak (regular) verbs: add -te- + personal endings to stem
 * - Strong verbs: use vowel-changed Präteritum stem + strong endings
 * - Mixed verbs: use vowel-changed stem + weak endings (-te-)
 */
export function conjugatePraeteritum(verb: VerbEntry): ConjugationSet {
  const persons: Person[] = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie']
  const conjugation: Partial<ConjugationSet> = {}
  const stem = verb.stem ?? deriveStem(verb.infinitive)
  const irregular = getIrregularEntry(verb.infinitive)
  const prefix = getSeparablePrefix(verb.infinitive)

  for (const person of persons) {
    let conjugated: string

    if (verb.infinitive === 'sein') {
      const seinPraet: Partial<ConjugationSet> = {
        ich: 'war',
        du: 'warst',
        er_sie_es: 'war',
        wir: 'waren',
        ihr: 'wart',
        Sie: 'waren',
      }
      conjugated = seinPraet[person] ?? ''
    } else if (verb.infinitive === 'haben' || verb.infinitive === 'werden') {
      const auxPraet: Record<string, Partial<ConjugationSet>> = {
        haben: {
          ich: 'hatte',
          du: 'hattest',
          er_sie_es: 'hatte',
          wir: 'hatten',
          ihr: 'hattet',
          Sie: 'hatten',
        },
        werden: {
          ich: 'wurde',
          du: 'wurdest',
          er_sie_es: 'wurde',
          wir: 'wurden',
          ihr: 'wurdet',
          Sie: 'wurden',
        },
      }
      conjugated = auxPraet[verb.infinitive]?.[person] ?? ''
    } else if (verb.category === 'modal') {
      conjugated = conjugateModalPraeteritum(verb.infinitive, person)
    } else if (irregular?.preteriteWeak) {
      // Mixed verb: preterite stem already has vowel change + weak -t- marker
      // e.g. bringen → bracht- → ich brachte (not *brachtete)
      const praetStem = verb.praeteritumStem ?? irregular.preteriteStem ?? stem
      conjugated = conjugateWeakPraeteritum(praetStem, person, true)
    } else if (irregular) {
      // Strong verb Präteritum: use preterite stem + strong endings
      const praetStem = verb.praeteritumStem ?? irregular.preteriteStem
      conjugated = conjugateStrongPraeteritum(praetStem, person)
    } else {
      // Regular (weak) verb
      conjugated = conjugateWeakPraeteritum(stem, person)
    }

    // Handle separable prefix
    if (prefix) {
      conjugated = conjugated + ' ' + prefix
    }

    // Handle reflexive verbs
    if (verb.isReflexive) {
      conjugated = conjugated + ' ' + getReflexivePronoun(person, verb.reflexivePronounCase)
    }

    conjugation[person] = conjugated
  }

  conjugation.sie = conjugation.Sie
  return conjugation as ConjugationSet
}

function conjugateWeakPraeteritum(praetStem: string, person: Person, isMixed: boolean = false): string {
  // Dental/nasal-stem weak verbs (stem ending in t/d or consonant+m/n) need
  // an extra -e- before the weak suffix: arbeiten → arbeit-ete, atmen → atm-ete
  //
  // Mixed verbs (bringen → bracht-) already have the weak -t- marker
  // incorporated, so they just need plain endings: bracht + e → brachte
  const stemEndsInDental = praetStem.endsWith('t') || praetStem.endsWith('d')
  const stemEndsInNasal = stemIsNasal(praetStem)
  const needsEInsert = (stemEndsInDental || stemEndsInNasal) && !isMixed
  const endings: EndingsTable = {
    ich: needsEInsert ? 'ete' : (isMixed && stemEndsInDental ? 'e' : 'te'),
    du: needsEInsert ? 'etest' : (isMixed && stemEndsInDental ? 'est' : 'test'),
    er_sie_es: needsEInsert ? 'ete' : (isMixed && stemEndsInDental ? 'e' : 'te'),
    wir: needsEInsert ? 'eten' : (isMixed && stemEndsInDental ? 'en' : 'ten'),
    ihr: needsEInsert ? 'etet' : (isMixed && stemEndsInDental ? 'et' : 'tet'),
    sie: needsEInsert ? 'eten' : (isMixed && stemEndsInDental ? 'en' : 'ten'),
    Sie: needsEInsert ? 'eten' : (isMixed && stemEndsInDental ? 'en' : 'ten'),
  }
  return praetStem + endings[person]
}

function conjugateStrongPraeteritum(praetStem: string, person: Person): string {
  const endings: EndingsTable = {
    ich: '',
    du: 'st',
    er_sie_es: '',
    wir: 'en',
    ihr: 't',
    sie: 'en',
    Sie: 'en',
  }
  let ending = endings[person]

  // Apply s-elision in du-form if stem ends in sibilant
  if (person === 'du') {
    const lastChar = praetStem.slice(-1)
    if (['s', 'ß', 'x', 'z'].includes(lastChar)) {
      ending = 't'
    } else if (praetStem.endsWith('ss')) {
      ending = 't'
    }
  }

  return praetStem + ending
}

function conjugateModalPraeteritum(infinitive: string, person: Person): string {
  const modalPraetStems: Record<string, string> = {
    können: 'konnte',
    dürfen: 'durfte',
    müssen: 'musste',
    mögen: 'mochte',
    sollen: 'sollte',
    wollen: 'wollte',
    wissen: 'wusste',
  }

  const base = modalPraetStems[infinitive]
  if (!base) return ''

  // These are weak-type Präteritum
  if (person === 'ich' || person === 'er_sie_es') return base
  if (person === 'du') return base + 'st'
  if (person === 'wir' || person === 'Sie') return base + 'n'
  if (person === 'ihr') return base + 't'

  return ''
}

// =========================================================================
// PERFEKT TENSE
// =========================================================================

/**
 * Conjugates a verb in the perfect tense (Perfekt).
 *
 * Perfekt = present tense of "haben" or "sein" + Partizip II
 *
 * Rules for auxiliary choice:
 * - sein: movement verbs (gehen, fahren, kommen), state change (werden, sterben)
 * - haben: all other verbs (transitive, reflexive, modal)
 */
export function conjugatePerfekt(verb: VerbEntry, partizipII?: string): ConjugationSet {
  const persons: Person[] = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie']
  const conjugation: Partial<ConjugationSet> = {}

  const aux = verb.auxiliary === 'both' ? 'sein' : verb.auxiliary
  const p2 = partizipII ?? verb.partizipII ?? ''

  for (const person of persons) {
    let auxConjugated: string

    if (aux === 'sein') {
      auxConjugated = conjugateAuxiliaryPraesens('sein', person)
    } else {
      auxConjugated = conjugateAuxiliaryPraesens('haben', person)
    }

    let conjugated = `${auxConjugated} ${p2}`

    // Reflexive: pronoun goes between auxiliary and participle
    if (verb.isReflexive) {
      const ref = getReflexivePronoun(person, verb.reflexivePronounCase)
      conjugated = `${auxConjugated} ${ref} ${p2}`
    }

    conjugation[person] = conjugated
  }

  conjugation.sie = conjugation.Sie
  return conjugation as ConjugationSet
}

// =========================================================================
// PLUSQUAMPERFEKT
// =========================================================================

/**
 * Conjugates a verb in the past perfect tense (Plusquamperfekt).
 *
 * Plusquamperfekt = Präteritum of "haben"/"sein" + Partizip II
 */
export function conjugatePlusquamperfekt(verb: VerbEntry, partizipII?: string): ConjugationSet {
  const persons: Person[] = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie']
  const conjugation: Partial<ConjugationSet> = {}

  const aux = verb.auxiliary === 'both' ? 'sein' : verb.auxiliary
  const p2 = partizipII ?? verb.partizipII ?? ''

  for (const person of persons) {
    let auxConjugated: string

    const auxPraet: Record<string, Partial<ConjugationSet>> = {
      sein: {
        ich: 'war', du: 'warst', er_sie_es: 'war',
        wir: 'waren', ihr: 'wart', Sie: 'waren',
      },
      haben: {
        ich: 'hatte', du: 'hattest', er_sie_es: 'hatte',
        wir: 'hatten', ihr: 'hattet', Sie: 'hatten',
      },
    }

    auxConjugated = auxPraet[aux]?.[person] ?? ''

    let conjugated = `${auxConjugated} ${p2}`

    if (verb.isReflexive) {
      const ref = getReflexivePronoun(person, verb.reflexivePronounCase)
      conjugated = `${auxConjugated} ${ref} ${p2}`
    }

    conjugation[person] = conjugated
  }

  conjugation.sie = conjugation.Sie
  return conjugation as ConjugationSet
}

// =========================================================================
// FUTUR I
// =========================================================================

/**
 * Conjugates a verb in the future I tense (Futur I).
 *
 * Futur I = present tense of "werden" + infinitive
 *
 * For separable verbs: prefix + base infinitive → "ankommen"
 * For reflexive verbs: sich + infinitive
 */
export function conjugateFuturI(verb: VerbEntry): ConjugationSet {
  const persons: Person[] = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie']
  const conjugation: Partial<ConjugationSet> = {}

  for (const person of persons) {
    const werdenForm = conjugateAuxiliaryPraesens('werden', person)
    let infinitiveForm = verb.infinitive

    // Reflexive verbs need pronoun before infinitive
    if (verb.isReflexive) {
      const ref = getReflexivePronoun(person, verb.reflexivePronounCase)
      infinitiveForm = `${ref} ${infinitiveForm}`
    }

    conjugation[person] = `${werdenForm} ${infinitiveForm}`
  }

  conjugation.sie = conjugation.Sie
  return conjugation as ConjugationSet
}

// =========================================================================
// FUTUR II
// =========================================================================

/**
 * Conjugates a verb in the future II tense (Futur II).
 *
 * Futur II = werden + Partizip II + "haben"/"sein"
 */
export function conjugateFuturII(verb: VerbEntry, partizipII?: string): ConjugationSet {
  const persons: Person[] = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie']
  const conjugation: Partial<ConjugationSet> = {}

  const aux = verb.auxiliary === 'both' ? 'sein' : verb.auxiliary
  const p2 = partizipII ?? verb.partizipII ?? ''

  for (const person of persons) {
    const werdenForm = conjugateAuxiliaryPraesens('werden', person)

    let conjugated: string
    if (verb.isReflexive) {
      const ref = getReflexivePronoun(person, verb.reflexivePronounCase)
      conjugated = `${werdenForm} ${ref} ${p2} ${aux === 'sein' ? 'sein' : 'haben'}`
    } else {
      conjugated = `${werdenForm} ${p2} ${aux === 'sein' ? 'sein' : 'haben'}`
    }

    conjugation[person] = conjugated
  }

  conjugation.sie = conjugation.Sie
  return conjugation as ConjugationSet
}

// =========================================================================
// KONJUNKTIV II (Subjunctive II)
// =========================================================================

/**
 * Conjugates a verb in Konjunktiv II (subjunctive mood).
 *
 * Konjunktiv II formation:
 * 1. Start from Präteritum stem
 * 2. Umlaut the stem vowel if it's a/o/u (or apply known umlauted form)
 * 3. Add Konjunktiv II endings: -e, -est, -e, -en, -et, -en
 */
export function conjugateKonjunktivII(verb: VerbEntry): ConjugationSet {
  const persons: Person[] = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie']
  const conjugation: Partial<ConjugationSet> = {}
  const irregular = getIrregularEntry(verb.infinitive)

  // Check for special Konjunktiv II forms first
  const specialK2: Record<string, Partial<ConjugationSet>> = {
    sein: {
      ich: 'wäre', du: 'wärest', er_sie_es: 'wäre',
      wir: 'wären', ihr: 'wäret', Sie: 'wären',
    },
    haben: {
      ich: 'hätte', du: 'hättest', er_sie_es: 'hätte',
      wir: 'hätten', ihr: 'hättet', Sie: 'hätten',
    },
    werden: {
      ich: 'würde', du: 'würdest', er_sie_es: 'würde',
      wir: 'würden', ihr: 'würdet', Sie: 'würden',
    },
    wissen: {
      ich: 'wüsste', du: 'wüsstest', er_sie_es: 'wüsste',
      wir: 'wüssten', ihr: 'wüsstet', Sie: 'wüssten',
    },
  }

  if (specialK2[verb.infinitive]) {
    return specialK2[verb.infinitive] as ConjugationSet
  }

  // Modal verbs
  if (verb.category === 'modal') {
    const modalK2: Record<string, Partial<ConjugationSet>> = {
      können: {
        ich: 'könnte', du: 'könntest', er_sie_es: 'könnte',
        wir: 'könnten', ihr: 'könntet', Sie: 'könnten',
      },
      dürfen: {
        ich: 'dürfte', du: 'dürftest', er_sie_es: 'dürfte',
        wir: 'dürften', ihr: 'dürftet', Sie: 'dürften',
      },
      müssen: {
        ich: 'müsste', du: 'müsstest', er_sie_es: 'müsste',
        wir: 'müssten', ihr: 'müsstet', Sie: 'müssten',
      },
      mögen: {
        ich: 'möchte', du: 'möchtest', er_sie_es: 'möchte',
        wir: 'möchten', ihr: 'möchtet', Sie: 'möchten',
      },
      sollen: {
        ich: 'sollte', du: 'solltest', er_sie_es: 'sollte',
        wir: 'sollten', ihr: 'solltet', Sie: 'sollten',
      },
      wollen: {
        ich: 'wollte', du: 'wolltest', er_sie_es: 'wollte',
        wir: 'wollten', ihr: 'wolltet', Sie: 'wollten',
      },
    }

    if (modalK2[verb.infinitive]) {
      return modalK2[verb.infinitive] as ConjugationSet
    }
  }

  // Weak verbs: K2 = Präteritum (no change in modern German)
  // machen → machte, arbeiten → arbeitete
  if (!irregular) {
    return conjugatePraeteritum(verb)
  }

  // Strong/mixed verb: use preterite stem and apply umlaut
  // fahren → fuhr → führe, bringen → bracht → brächte
  let k2Stem: string
  const praetStem = verb.praeteritumStem ?? irregular.preteriteStem
  k2Stem = umlaut(praetStem)
  const prefix = getSeparablePrefix(verb.infinitive)

  for (const person of persons) {
    let ending = KONJUNKTIV_II_ENDINGS[person]

    // Apply e-insertion for dental stems
    ending = applyEInsertion(k2Stem, ending, person)

    let conjugated = k2Stem + ending

    if (prefix) {
      conjugated = conjugated + ' ' + prefix
    }

    if (verb.isReflexive) {
      conjugated = conjugated + ' ' + getReflexivePronoun(person, verb.reflexivePronounCase)
    }

    conjugation[person] = conjugated
  }

  conjugation.sie = conjugation.Sie
  return conjugation as ConjugationSet
}

// =========================================================================
// PARTIZIP I (Present Participle)
// =========================================================================

/**
 * Generates the Partizip I (present participle).
 *
 * Rule: infinitive + "d"
 * Example: kommen → kommend, machen → machend
 * For separable verbs: prefix + base + "d"
 */
export function generatePartizipI(verb: VerbEntry): string {
  return verb.infinitive + 'd'
}

// =========================================================================
// INFINITIV MIT ZU
// =========================================================================

/**
 * Generates the "zu" + infinitive construction.
 *
 * Rules:
 * - Simple: "zu" + infinitive → "zu kommen"
 * - Separable: prefix + "zu" + base → "abzuholen"
 *   (zu goes between prefix and base)
 * - Reflexive: "sich zu" + infinitive → "sich zu erinnern"
 */
export function generateInfinitivMitZu(verb: VerbEntry): string {
  const prefix = getSeparablePrefix(verb.infinitive)
  const base = getBaseVerb(verb.infinitive)

  if (prefix) {
    const zuForm = `${prefix}zu${base}`
    if (verb.isReflexive) {
      return `sich ${zuForm}`
    }
    return zuForm
  }

  if (verb.isReflexive) {
    return `sich zu ${verb.infinitive}`
  }

  return `zu ${verb.infinitive}`
}

// =========================================================================
// HELPER: APPLY VOWEL CHANGE
// =========================================================================

/**
 * Applies vowel change to the stem for a given verb in present tense.
 *
 * Handles special cases:
 * - "nehmen" → "nimm" (e→i with consonant gemination)
 * - "treten" → "tritt" (e→i with consonant gemination)
 * - "sehen" → "siehst" / "sieht" (e→ie)
 * - "geben" → "gibst" / "gibt" (e→i)
 * - "essen" → "isst" (e→i)
 */
function applyVowelChangeToStem(
  baseVerb: string,
  infinitive: string,
  stem: string,
  newVowel: string
): string {
  if (baseVerb === 'sein' || infinitive === 'sein') return stem

  const baseStem = deriveStem(baseVerb)

  // Find the LAST vowel/diphthong in the stem (skipping prefixes like ver-, be-, ge-)
  // The stem vowel is the one that changes in strong verbs
  const allVowels = [...baseStem.matchAll(/(?:au|ei|ie|eu|äu|[aeiouäöü])/gi)]
  if (allVowels.length === 0) return stem

  const lastMatch = allVowels[allVowels.length - 1]
  const vowelIndex = lastMatch.index!
  const oldVowel = lastMatch[0]

  // --- Special e→i cases (also affect following consonants) ---
  if (oldVowel === 'e' && newVowel === 'i') {
    if (baseVerb === 'nehmen') {
      return baseStem.slice(0, vowelIndex) + 'i' + baseStem.slice(vowelIndex + 1)
        .replace(/h/, '').replace(/m$/, 'mm')
    }
    if (baseVerb === 'treten') {
      return baseStem.slice(0, vowelIndex) + 'i' + baseStem.slice(vowelIndex + 1).replace(/e/, 'i')
    }
    if (baseVerb === 'geben') {
      return baseStem.slice(0, vowelIndex) + 'i' + baseStem.slice(vowelIndex + 1)
    }
    if (['essen', 'fressen', 'vergessen', 'messen'].includes(baseVerb)) {
      return baseStem.slice(0, vowelIndex) + 'i' + baseStem.slice(vowelIndex + 1)
    }
    if (['sehen', 'geschehen'].includes(baseVerb)) {
      return baseStem.slice(0, vowelIndex) + 'ie' + baseStem.slice(vowelIndex + 1)
    }
  }

  // Standard replacement—replace the full diphthong or single vowel
  const changedStem = baseStem.slice(0, vowelIndex) + newVowel + baseStem.slice(vowelIndex + oldVowel.length)

  return changedStem
}

// =========================================================================
// MAIN CONJUGATION API
// =========================================================================

/**
 * Generates the complete conjugation table for a verb.
 *
 * This is the main entry point for the conjugation engine.
 *
 * @param verb - Verb metadata entry
 * @returns Complete VerbConjugation object
 */
export function conjugateFull(verb: VerbEntry): VerbConjugation {
  // Generate Partizip II if not provided
  let p2 = verb.partizipII ?? ''
  if (!p2) {
    const irregular = getIrregularEntry(verb.infinitive)
    p2 = generatePartizipII(verb, irregular?.partizipII)
  }

  // Generate imperativ and capitalise du/ihr forms
  const stem = verb.stem ?? deriveStem(verb.infinitive)
  const rawImperativ = generateImperativ(verb, stem, p2)
  const imperativ = {
    du: rawImperativ.du ? rawImperativ.du.charAt(0).toUpperCase() + rawImperativ.du.slice(1) : null,
    ihr: rawImperativ.ihr ? rawImperativ.ihr.charAt(0).toUpperCase() + rawImperativ.ihr.slice(1) : null,
    sie: null,
    Sie: rawImperativ.Sie ? rawImperativ.Sie.charAt(0).toUpperCase() + rawImperativ.Sie.slice(1) : null,
    wir: rawImperativ.wir ? rawImperativ.wir.charAt(0).toUpperCase() + rawImperativ.wir.slice(1) : null,
  }

  return {
    verb: verb.infinitive,
    english: verb.en,
    category: verb.category,
    auxiliary: verb.auxiliary,
    praesens: conjugatePraesens(verb),
    praeteritum: conjugatePraeteritum(verb),
    perfekt: conjugatePerfekt(verb, p2),
    plusquamperfekt: conjugatePlusquamperfekt(verb, p2),
    futur_i: conjugateFuturI(verb),
    futur_ii: conjugateFuturII(verb, p2),
    konjunktiv_ii: conjugateKonjunktivII(verb),
    imperativ,
    partizip_i: generatePartizipI(verb),
    partizip_ii: p2,
    infinitiv_mit_zu: generateInfinitivMitZu(verb),
  }
}

/**
 * Conjugate a verb for a specific person and tense.
 *
 * This is a convenience function for targeted queries.
 *
 * @example
 *   conjugate('ankommen', 'ich', 'praesens')
 *   // Returns: "komme an"
 */
export function conjugate(
  verb: VerbEntry,
  person: Person,
  tense: Tense
): string {
  const full = conjugateFull(verb)

  switch (tense) {
    case 'praesens':
      return full.praesens[person]
    case 'praeteritum':
      return full.praeteritum[person]
    case 'perfekt':
      return full.perfekt[person]
    case 'plusquamperfekt':
      return full.plusquamperfekt[person]
    case 'futur_i':
      return full.futur_i[person]
    case 'futur_ii':
      return full.futur_ii[person]
    case 'konjunktiv_ii':
      return full.konjunktiv_ii[person]
    case 'imperativ':
      if (person === 'du') return full.imperativ.du ?? ''
      if (person === 'ihr') return full.imperativ.ihr ?? ''
      if (person === 'Sie') return full.imperativ.Sie ?? ''
      if (person === 'wir') return full.imperativ.wir ?? ''
      return ''
    default:
      return ''
  }
}
