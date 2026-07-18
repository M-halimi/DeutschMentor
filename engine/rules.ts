/**
 * German Verb Conjugation Rules
 *
 * Implements German linguistic rules for verb conjugation:
 * - Standard endings for all tenses
 * - S-Verschmelzung (s-elision) for stems ending in s/ß/x/z
 * - e-Einschub (e-insertion) for stems ending in d/t/m/n
 * - Vowel changes (Umlaut/Abaut) for strong verbs
 * - Separable prefix handling
 * - Reflexive pronoun assignment
 * - -eln/-ern verb special rules
 */

import type { EndingsTable, Person, VerbEntry, VerbCategory } from './types'

// ---------------------------------------------------------------------------
// STANDARD ENDINGS
// ---------------------------------------------------------------------------

/**
 * Präsens personal endings (standard)
 *
 * ich → -e
 * du  → -st
 * er  → -t
 * wir → -en
 * ihr → -t
 * Sie → -en
 */
export const PRAESENS_ENDINGS: EndingsTable = {
  ich: 'e',
  du: 'st',
  er_sie_es: 't',
  wir: 'en',
  ihr: 't',
  sie: 'en',
  Sie: 'en',
}

/**
 * Präteritum weak endings (-te conjugation)
 *
 * Used by regular (weak) verbs and mixed verbs.
 *
 * ich → -te
 * du  → -test
 * er  → -te
 * wir → -ten
 * ihr → -tet
 * Sie → -ten
 */
export const PRAETERITUM_WEAK_ENDINGS: EndingsTable = {
  ich: 'te',
  du: 'test',
  er_sie_es: 'te',
  wir: 'ten',
  ihr: 'tet',
  sie: 'ten',
  Sie: 'ten',
}

/**
 * Präteritum strong endings (direct stem + endings)
 *
 * Used by strong (irregular) verbs. Many strong verbs have
 * zero ending in ich/er forms.
 *
 * ich → - (none, or -e optional)
 * du  → -st
 * er  → - (none)
 * wir → -en
 * ihr → -t
 * Sie → -en
 */
export const PRAETERITUM_STRONG_ENDINGS: EndingsTable = {
  ich: '',
  du: 'st',
  er_sie_es: '',
  wir: 'en',
  ihr: 't',
  sie: 'en',
  Sie: 'en',
}

/**
 * Konjunktiv II endings (subjunctive)
 *
 * Derived from Präteritum stem + Umlaut (if vowel is a/o/u) + these endings.
 *
 * ich → -e
 * du  → -est
 * er  → -e
 * wir → -en
 * ihr → -et
 * Sie → -en
 */
export const KONJUNKTIV_II_ENDINGS: EndingsTable = {
  ich: 'e',
  du: 'est',
  er_sie_es: 'e',
  wir: 'en',
  ihr: 'et',
  sie: 'en',
  Sie: 'en',
}

/**
 * Konjunktiv I endings (reported speech)
 *
 * ich → -e
 * du  → -est
 * er  → -e
 * wir → -en
 * ihr → -et
 * Sie → -en
 */
export const KONJUNKTIV_I_ENDINGS: EndingsTable = {
  ich: 'e',
  du: 'est',
  er_sie_es: 'e',
  wir: 'en',
  ihr: 'et',
  sie: 'en',
  Sie: 'en',
}

// ---------------------------------------------------------------------------
// STEM DERIVATION
// ---------------------------------------------------------------------------

/**
 * Extracts the stem of a verb by removing the infinitive ending.
 *
 * German infinitive endings: -en (>95% of verbs), -n (for -eln/-ern verbs)
 *
 * @example
 *   "machen"  → "mach"
 *   "kommen"  → "komm"
 *   "handeln" → "handel"
 *   "ändern"  → "änder"
 *   "sein"    → "sei"   (irregular, handled by exceptions)
 */
export function deriveStem(infinitive: string): string {
  // Strip separable prefix first to get the base infinitive
  const base = getBaseVerb(infinitive)
  if (base.endsWith('en')) {
    return base.slice(0, -2)
  }
  // Verbs ending in -eln or -ern: remove only -n
  if (base.endsWith('n') && (base.endsWith('eln') || base.endsWith('ern'))) {
    return base.slice(0, -1)
  }
  // Fallback: remove -en
  if (base.endsWith('en')) {
    return base.slice(0, -2)
  }
  return base
}

/**
 * Extracts the base verb (without separable prefix).
 *
 * @example
 *   "ankommen" → "kommen"
 *   "aufstehen" → "stehen"
 *   "verstehen" → "verstehen" (inseparable)
 */
export function getBaseVerb(infinitive: string): string {
  // Known separable prefixes
  const separablePrefixes = [
    'ab', 'an', 'auf', 'aus', 'bei', 'da', 'dar', 'dabei', 'dafür',
    'dagegen', 'daran', 'darauf', 'darin', 'darunter', 'davon', 'davor', 'dazu',
    'ein', 'empor', 'entgegen', 'entlang', 'entzwei',
    'fehl', 'fern', 'fest', 'fort', 'frei', 'gegenüber', 'gleich',
    'heim', 'herauf', 'herunter', 'herüber', 'hinaus', 'hinein',
    'her', 'hin', 'hinterher',
    'hoch', 'los', 'mit', 'nach', 'nieder',
    'ran', 'rüber', 'rum', 'runter',
    'vor', 'voran', 'voraus', 'vorbei', 'vorher', 'vorweg', 'vorwärts',
    'weg', 'weiter', 'wider',
    'zu', 'zurecht', 'zurück', 'zusammen', 'zuschanden', 'zutage',
    'zwischen',
    'entgegen', 'entlang',
    'gegenüber',
    'hinterher',
  ].sort((a, b) => b.length - a.length) // longest first

  for (const prefix of separablePrefixes) {
    if (infinitive.startsWith(prefix) && infinitive.length > prefix.length) {
      // Exception: some verbs look separable but aren't (e.g., "wiederholen")
      const base = infinitive.slice(prefix.length)
      if (base.length >= 3) {
        return base
      }
    }
  }
  return infinitive
}

/**
 * Check if a verb has a separable prefix.
 */
export function isSeparable(infinitive: string): boolean {
  return getBaseVerb(infinitive) !== infinitive
}

/**
 * Extracts the separable prefix from a verb.
 *
 * @example
 *   "ankommen" → "an"
 *   "aufstehen" → "auf"
 *   "kommen" → "" (no prefix)
 */
export function getSeparablePrefix(infinitive: string): string {
  const base = getBaseVerb(infinitive)
  if (base !== infinitive) {
    return infinitive.slice(0, infinitive.length - base.length)
  }
  return ''
}

// ---------------------------------------------------------------------------
// ENDING ADAPTATION RULES (Phonological adjustments)
// ---------------------------------------------------------------------------

/**
 * German rule: S-Verschmelzung (s-elision)
 *
 * When a verb stem ends in s, ß, x, or z, the du-form ending
 * -st loses its -s- to avoid double sibilants.
 *
 * @example
 *   "heißen" (stem: heiß) → du heiß + st → *du heißst → du heißt
 *   "reisen" (stem: reis) → du reis + st → *du reisst → du reist
 *   "boxen"  (stem: box)  → du box + st → *du boxst → du boxt
 *   "tanzen" (stem: tanz) → du tanz + st → *du tanzst → du tanzt
 *
 * SS --> ß rule: when e-insertion doesn't apply and the stem ends in -s,
 * we need -t instead of -st
 */
export function applySElision(stem: string, ending: string, person: Person): string {
  if (person !== 'du') {
    // Also apply for er/sie/es if ending is 't' — when stem ends in s/ß/x/z,
    // the t merges with the stem

    // Actually for er-form, the ending is already just 't', so no
    // s-elision needed there. S-elision specifically means du-form
    // -st becomes -t because the stem already ends in a sibilant.
    return ending
  }

  const lastChar = stem.slice(-1)
  const sibilants = ['s', 'ß', 'x', 'z']

  if (sibilants.includes(lastChar) || stem.endsWith('ss')) {
    if (ending === 'st') return 't'
  }

  return ending
}

/**
 * German rule: e-Einschub (e-insertion) for dental/nasal stems
 *
 * When a verb stem ends in d, t, or consonant+m/n,
 * an -e- is inserted before the ending for du, er, ihr forms
 * to maintain pronounceability.
 *
 * @example
 *   "reden"   (stem: red) → du red-est, er red-et, ihr red-et
 *   "arbeiten" (stem: arbeit) → du arbeit-est, er arbeit-et
 *   "atmen"   (stem: atm) → du atm-est, er atm-et
 *   "rechnen" (stem: rechn) → du rechn-est, er rechn-et
 *
 * Exception: when the stem vowel also changes (strong verbs like "raten"),
 * the e-insertion does NOT apply: du rät-st, er rät (not *rätest, *rätet)
 *
 * Stems ending in t preceded by a consonant cluster trigger e-insertion
 */
export function applyEInsertion(
  stem: string,
  ending: string,
  person: Person,
  stemVowelChanged: boolean = false
): string {
  if (stemVowelChanged && (person === 'du' || person === 'er_sie_es')) {
    return ending // No e-insertion when stem vowel changed
  }

  const lastTwo = stem.slice(-2)
  const lastChar = stem.slice(-1)

  // Dental stems: ends in d or t
  const isDental = lastChar === 'd' || lastChar === 't'

  // Nasal stems: ends in consonant + m or consonant + n
  // But NOT -rm, -lm, -mm, -nn, -rn, -hm, -hn
  // (h before m/n is a vowel-length marker, not a real consonant cluster)
  const isNasal =
    (lastChar === 'm' || lastChar === 'n') &&
    stem.length >= 2 &&
    /[bcdfghjklmpqrstvwxyz][mn]$/.test(lastTwo) &&
    !/(?:r[mn]|l[mn]|[mn][mn]|h[mn])$/.test(stem.slice(-2))

  if (!isDental && !isNasal) {
    return ending
  }

  // Apply e-insertion for du, er, ihr
  if (person === 'du' || person === 'er_sie_es' || person === 'ihr') {
    // If ending already starts with 'e', no double insertion needed
    if (ending.startsWith('e')) {
      return ending
    }
    // If ending is 'st', insert e: st → est
    if (ending === 'st') {
      return 'est'
    }
    // If ending is 't', insert e: t → et
    if (ending === 't') {
      return 'et'
    }
  }

  return ending
}

/**
 * Apply the -eln/-ern special rule for present tense ich-form.
 *
 * Verbs ending in -eln typically drop the -e- in ich-form:
 *   handeln → ich handle (not *handele)
 * Verbs ending in -ern may optionally drop it:
 *   ändern → ich ändere (or ich ändre)
 */
export function applyElnErnRule(stem: string, person: Person): string {
  if (person !== 'ich') {
    return stem
  }

  // Handle -eln verbs: handel → handl-
  if (stem.endsWith('el')) {
    return stem.slice(0, -2) + 'l'
  }

  return stem
}

/**
 * Applies Umlaut (umlaut) to a stem vowel if possible.
 *
 * a → ä
 * o → ö
 * u → ü
 * au → äu
 */
export function umlaut(stem: string): string {
  const umlautRules: [RegExp, string][] = [
    [/au/g, 'äu'],
    [/a(?!u)/g, 'ä'],
    [/o/g, 'ö'],
    [/u/g, 'ü'],
  ]

  let result = stem
  for (const [pattern, replacement] of umlautRules) {
    result = result.replace(pattern, replacement)
  }
  return result
}

/**
 * Get the reflexive accusative pronoun for a given person.
 *
 * Personalpronomen (reflexiv, Akkusativ):
 *   ich → mich
 *   du → dich
 *   er/sie/es → sich
 *   wir → uns
 *   ihr → euch
 *   Sie → sich
 */
export function getReflexivePronoun(person: Person): string {
  const pronouns: Record<Person, string> = {
    ich: 'mich',
    du: 'dich',
    er_sie_es: 'sich',
    wir: 'uns',
    ihr: 'euch',
    sie: 'sich',
    Sie: 'sich',
  }
  return pronouns[person]
}

// ---------------------------------------------------------------------------
// PARTIZIP II GENERATION RULES
// ---------------------------------------------------------------------------

/**
 * Determines the Partizip II form using German grammar rules.
 *
 * Rules:
 * 1. Regular (weak) verbs: ge- + stem + -t
 *    machen → gemacht
 *
 * 2. Strong verbs: ge- + (changed stem) + -en
 *    kommen → gekommen
 *    gehen → gegangen
 *
 * 3. Inseparable prefix verbs: NO ge- prefix
 *    verstehen → verstanden
 *    bekommen → bekommen
 *
 * 4. Verbs ending in -ieren: NO ge- prefix
 *    studieren → studiert
 *
 * 5. Separable prefix verbs: ge- between prefix and stem
 *    ankommen → angekommen
 *    aufstehen → aufgestanden
 *
 * Inseparable prefixes: be-, emp-, ent-, er-, ge-, miss-, ver-, zer-
 */
const INSEPARABLE_PREFIXES = ['be', 'emp', 'ent', 'er', 'ge', 'miss', 'miss', 'ver', 'zer']
const IEREN_SUFFIX = 'ieren'
const EINEN_SUFFIX = 'einen'

export function generatePartizipII(
  verb: VerbEntry,
  strongPartizip?: string
): string {
  const inf = verb.infinitive
  const stem = verb.stem ?? deriveStem(inf)
  const isSep = verb.category === 'separable' || isSeparable(inf)

  // Check if already stored
  if (verb.partizipII) {
    return verb.partizipII
  }

  // Strong verb: ge- + (vowel-changed stem) + -en
  if (verb.category === 'strong') {
    if (strongPartizip) {
      // strongPartizip should be like "gegangen" or "gekommen"
      const base = getBaseVerb(inf)
      // If separable: prefix + ge + strongPartizipBase
      if (isSep) {
        const prefix = getSeparablePrefix(inf)
        const strongBase = strongPartizip.startsWith('ge') ? strongPartizip.slice(2) : strongPartizip
        return prefix + 'ge' + strongBase
      }
      return strongPartizip
    }
    // Default: just return ge + stem + en
    if (isSep) {
      const prefix = getSeparablePrefix(inf)
      return prefix + 'ge' + stem + 'en'
    }
    return 'ge' + stem + 'en'
  }

  // Mixed verb: ge- + stem + -t (with vowel change)
  // For dental stems (arbeiten → gearbeitet), use -et instead of -t
  if (verb.category === 'mixed') {
    const mixedStem = verb.praeteritumStem ?? stem
    const p2Suffix = stemEndsInSibilant(mixedStem) || stemIsDental(mixedStem) ? 'et' : 't'
    if (isSep) {
      const prefix = getSeparablePrefix(inf)
      return prefix + 'ge' + mixedStem + p2Suffix
    }
    return 'ge' + mixedStem + p2Suffix
  }

  // Check for inseparable prefix
  const hasInseparablePrefix = INSEPARABLE_PREFIXES.some(p => inf.startsWith(p))
  if (hasInseparablePrefix) {
    // Inseparable verb: no ge- prefix
    // Example: verstehen → verstanden (mixed/strong)
    if (strongPartizip) {
      return strongPartizip
    }
    const p2Suffix = stemEndsInSibilant(stem) || stemIsDental(stem) ? 'et' : 't'
    return stem + p2Suffix
  }

  // Check for -ieren ending
  if (inf.endsWith(IEREN_SUFFIX)) {
    return stem + 't'
  }

  // Regular verb: ge- + stem + -t (or -et for dental stems: arbeit → gearbeitet)
  const p2Suffix = stemEndsInSibilant(stem) || stemIsDental(stem) ? 'et' : 't'

  if (isSep) {
    const prefix = getSeparablePrefix(inf)
    return prefix + 'ge' + stem + p2Suffix
  }

  return 'ge' + stem + p2Suffix
}

// ---------------------------------------------------------------------------
// IMPERATIV (Imperative mood)
// ---------------------------------------------------------------------------

/**
 * Generates imperative forms.
 *
 * Rules:
 *   du-form: stem + (e) → "Komm!", "Geh!", "Mach(e)!"
 *     Exception: stems ending in d/t must add -e → "Atme!", "Warte!"
 *   ihr-form: same as ihr Präsens without pronoun → "Kommt!", "Geht!"
 *   Sie-form: infinitive after "Sie" → "Kommen Sie!"
 *
 * For separable verbs:
 *   du: prefix at end → "Komm an!"
 *   ihr: prefix at end → "Kommt an!"
 *   Sie: prefix at end → "Kommen Sie an!"
 */
export function generateImperativ(
  verb: VerbEntry,
  praesensStem: string,
  partizipII?: string
): { du: string | null; ihr: string | null; sie: null; Sie: string | null; wir: string | null } {
  const inf = verb.infinitive
  const base = getBaseVerb(inf)
  const prefix = getSeparablePrefix(inf)
  const stem = deriveStem(inf)

  // === du form ===
  // For strong verbs with vowel change (e→i/ie), the imperative uses the changed stem
  // Example: geben → Gib! (not *Gebe!), nehmen → Nimm! (not *Nehme!)
  // Umlaut changes (a→ä, au→äu, o→ö) do NOT apply to the imperative
  // Example: fahren → Fahr! (not *Fähr!), lassen → Lass! (not *Läss!)
  let duStem: string

  const vc = verb.vowelChange
  if (vc?.present_du && vc.present_du === vc.present_er) {
    // Only apply e→i/ie vowel changes to imperative (not a→ä umlaut)
    const isUmlautChange = ['ä', 'ö', 'ü', 'äu'].includes(vc.present_du)
    if (!isUmlautChange) {
      const changedStem = getStemWithVowelChange(stem, vc.present_du)
      duStem = changedStem
    } else {
      duStem = stem
    }
  } else {
    duStem = praesensStem
  }

  let duForm: string | null

  // Modal/auxiliary verbs generally don't have imperative
  if (verb.category === 'modal' || verb.category === 'auxiliary') {
    if (verb.infinitive === 'sein') duForm = 'sei'
    else if (verb.infinitive === 'haben') duForm = 'hab'
    else if (verb.infinitive === 'werden') duForm = 'werde'
    else duForm = null
  } else {
    // Most verbs: stem + 'e' (optional in colloquial speech)
    // Stems ending in d/t require '-e'
    const lastChar = duStem.slice(-1)
    if (duStem.endsWith('el')) {
      // -eln verbs: handel → handle! (contracted), colloquially "handel!"
      duForm = duStem.slice(0, -2) + 'le'
    } else if (lastChar === 'd' || lastChar === 't') {
      duForm = duStem + 'e'
    } else {
      // Umgangssprachlich: no -e, but formal: with -e
      // Standard: "Komm!" (not "Komme!")
      duForm = duStem
    }
  }

  // === ihr form ===
  // Same as Präsens ihr-form without pronoun (NO vowel change)
  // geben → Gebt! (not *Gibt!), lesen → Lest! (not *Liest!)
  let ihrForm: string | null
  if (verb.category === 'modal' || verb.category === 'auxiliary') {
    if (verb.infinitive === 'sein') ihrForm = 'seid'
    else if (verb.infinitive === 'haben') ihrForm = 'habt'
    else if (verb.infinitive === 'werden') ihrForm = 'werdet'
    else ihrForm = null
  } else {
    const ending = applyEInsertion(stem, 't', 'ihr', false)
    ihrForm = stem + ending
  }

  // === Sie form ===
  // Sie imperative = base infinitive + "Sie" e.g. "Kommen Sie", "Gehen Sie"
  let SieForm: string | null
  if (verb.category === 'modal' || verb.category === 'auxiliary') {
    if (verb.infinitive === 'sein') SieForm = 'seien Sie'
    else if (verb.infinitive === 'haben') SieForm = 'haben Sie'
    else if (verb.infinitive === 'werden') SieForm = 'werden Sie'
    else SieForm = null
  } else {
    // All German infinitive verbs end in -n (-en, -eln, -ern)
    const sieStem = base.endsWith('n') ? base : base + 'en'
    SieForm = sieStem + ' Sie'
  }

  // === wir form (Adhortativ) ===
  // wir imperative = infinitive + "wir" e.g. "Kommen wir!", "Gehen wir!"
  let wirForm: string | null
  if (verb.category === 'modal' || verb.category === 'auxiliary') {
    if (verb.infinitive === 'sein') wirForm = 'seien wir'
    else if (verb.infinitive === 'haben') wirForm = 'haben wir'
    else if (verb.infinitive === 'werden') wirForm = 'werden wir'
    else wirForm = null
  } else {
    const wirStem = base.endsWith('n') ? base : base + 'en'
    wirForm = wirStem + ' wir'
  }

  // Apply separable prefix
  if (prefix) {
    if (duForm) duForm = duForm + ' ' + prefix
    if (ihrForm) ihrForm = ihrForm + ' ' + prefix
    if (SieForm) SieForm = SieForm + ' ' + prefix
    if (wirForm) wirForm = wirForm + ' ' + prefix
  }

  // Apply reflexive pronoun
  if (verb.isReflexive) {
    if (duForm) duForm = duForm + ' dich'
    if (ihrForm) ihrForm = ihrForm + ' euch'
    if (SieForm) SieForm = SieForm + ' sich'
    if (wirForm) wirForm = wirForm + ' uns'
  }

  return { du: duForm, ihr: ihrForm, sie: null, Sie: SieForm, wir: wirForm }
}

// ---------------------------------------------------------------------------
// VOWEL CHANGE APPLICATOR
// ---------------------------------------------------------------------------

/**
 * Applies a vowel change pattern to a stem.
 *
 * @example
 *   stem: "fahr", pattern: "ä" → "fähr"
 *   stem: "helf", pattern: "i" → "hilf"
 *   stem: "nehm", pattern: "i" → "nimm" (special: e→i also affects consonants)
 */
export function getStemWithVowelChange(stem: string, newVowel: string): string {
  // Find the LAST vowel in the stem (skip prefix vowels: ver-, be-, ge-)
  const allVowels = [...stem.matchAll(/[aeiouäöüAEIOUÄÖÜ]/g)]
  if (allVowels.length === 0) return stem

  const lastVowel = allVowels[allVowels.length - 1]
  const idx = lastVowel.index!
  const oldVowel = lastVowel[0]

  // Special case: "nehmen" → "nimm" (e→i + remove 'h' + double 'm')
  if (stem.endsWith('nehm') && newVowel === 'i') {
    return stem.slice(0, idx) + 'i' + stem.slice(idx + 1).replace(/h/, '').replace(/m$/, 'mm')
  }

  // Special case: "treten" → "tritt" (e→i + double consonant)
  if (stem.endsWith('tet') && newVowel === 'i') {
    return stem.slice(0, idx) + 'i' + stem.slice(idx + 1).replace(/e/, 'i')
  }

  // Standard replacement
  return stem.slice(0, idx) + newVowel + stem.slice(idx + 1)
}

/**
 * Check if the verb stem ends in a sibilant (for s-elision rule).
 */
export function stemEndsInSibilant(stem: string): boolean {
  const lastChar = stem.slice(-1)
  return ['s', 'ß', 'x', 'z'].includes(lastChar) || stem.endsWith('ss')
}

/**
 * Check if the verb is a dental stem (for e-insertion rule).
 */
export function stemIsDental(stem: string): boolean {
  const lastChar = stem.slice(-1)
  return lastChar === 'd' || lastChar === 't'
}

/**
 * Check if the verb is a nasal stem (for e-insertion rule).
 */
export function stemIsNasal(stem: string): boolean {
  const lastChar = stem.slice(-1)
  if (lastChar !== 'm' && lastChar !== 'n') return false
  if (stem.length < 2) return false
  const before = stem.slice(-2, -1)
  const isConsonant = /[bcdfghjklmnpqrstvwxyz]/.test(before)
  const isSpecialEnding = /[rl][mn]/.test(stem.slice(-2)) || /[mn][mn]/.test(stem.slice(-2))
  return isConsonant && !isSpecialEnding
}
