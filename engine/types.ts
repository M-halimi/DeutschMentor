/**
 * German Verb Conjugation Engine — Type Definitions
 *
 * These types represent the complete verb model for the German language,
 * supporting all verb categories and grammatical features.
 */

export type VerbCategory =
  | 'regular'       // schwache Verben: machen, sagen
  | 'strong'        // starke Verben: kommen, gehen, fahren
  | 'mixed'         // gemischte Verben: bringen → brachte
  | 'modal'         // Modalverben: können, müssen, dürfen
  | 'auxiliary'     // Hilfsverben: sein, haben, werden
  | 'separable'     // trennbare Verben: ankommen, aufstehen
  | 'inseparable'   // untrennbare Verben: verstehen, bekommen
  | 'reflexive'     // reflexive Verben: sich erinnern, sich freuen

export type Person = 'ich' | 'du' | 'er_sie_es' | 'wir' | 'ihr' | 'sie' | 'Sie'

export type Tense =
  | 'praesens'
  | 'praeteritum'
  | 'perfekt'
  | 'plusquamperfekt'
  | 'futur_i'
  | 'futur_ii'
  | 'konjunktiv_i'
  | 'konjunktiv_ii'
  | 'imperativ'

export type Mood = 'indikativ' | 'konjunktiv' | 'imperativ'

export type Numerus = 'singular' | 'plural'

export interface ConjugationSet {
  ich: string
  du: string
  er_sie_es: string
  wir: string
  ihr: string
  sie: string
  Sie: string
}

export interface VerbEntry {
  /** Infinitive form: "ankommen" */
  infinitive: string
  /** English translation */
  en: string
  /** Arabic translation */
  ar?: string
  /** French translation */
  fr?: string
  /** CEFR level */
  level: 'A1' | 'A2' | 'B1' | 'B2' | 'C1' | 'C2'
  /** Verb category */
  category: VerbCategory
  /** Transitivity */
  transitivity?: 'transitive' | 'intransitive' | 'both'
  /** Object case */
  objectCase?: 'akkusativ' | 'dativ' | 'genitiv' | 'none'
  /** Auxiliary for Perfekt: "haben" or "sein" */
  auxiliary: 'haben' | 'sein' | 'both'
  /** Separable prefix: "an" for "ankommen" */
  separablePrefix?: string
  /** Is reflexive */
  isReflexive?: boolean
  /** Reflexive pronoun: "sich" */
  reflexivePronoun?: string
  /** Partizip II (can be auto-generated) */
  partizipII?: string
  /** Stem (can be auto-derived from infinitive) */
  stem?: string
  /** Vowel change pattern for strong verbs */
  vowelChange?: VowelChange
  /** Präteritum stem for strong/mixed verbs */
  praeteritumStem?: string
  /** Example sentences */
  examples?: string[]
  /** IPA pronunciation */
  ipa?: string
  /** Frequency */
  frequency?: 'very_common' | 'common' | 'less_common' | 'rare'
  /** Tags */
  tags?: string[]
}

/**
 * Vowel change patterns for strong verbs (Ablautreihen)
 *
 * German strong verbs follow patterns of vowel change (Ablaut):
 *
 * Reihe 1: ei – i – i          (greifen, greift, griff, gegriffen)
 * Reihe 2: ie – o – o          (fliegen, fliegt, flog, geflogen)
 * Reihe 2a: ie – o – o          (bieten, bot, geboten)
 * Reihe 3a: i – a – u          (finden, fand, gefunden)
 * Reihe 3b: i – a – o          (beginnen, begann, begonnen)
 * Reihe 4: e – a – o           (nehmen, nahm, genommen)
 * Reihe 5: e – a – e           (geben, gab, gegeben)
 * Reihe 6: a – u – a           (fahren, fuhr, gefahren)
 * Reihe 7: a – ie – a          (schlafen, schlief, geschlafen)
 *         ei – ie – ei        (heißen, hieß, geheißen)
 *
 */
export interface VowelChange {
  /** Vowel change pattern identifier */
  pattern?: string
  /** Present tense du vowel change: fahren → du fährst */
  present_du?: string
  /** Present tense er/sie/es vowel change: fahren → er fährt */
  present_er?: string
  /** Präteritum stem vowel change: finden → fand */
  praeteritum_stem?: string
  /** Partizip II stem vowel change: finden → gefunden */
  partizip_stem?: string
  /** Whether Präteritum uses -te suffix (mixed verbs) */
  praeteritum_weak?: boolean
}

/**
 * Complete conjugation output for one verb
 */
export interface VerbConjugation {
  verb: string
  english: string
  category: VerbCategory
  auxiliary: string
  praesens: ConjugationSet
  praeteritum: ConjugationSet
  perfekt: ConjugationSet
  plusquamperfekt: ConjugationSet
  futur_i: ConjugationSet
  futur_ii: ConjugationSet
  konjunktiv_ii: ConjugationSet
  imperativ: {
    du: string | null
    ihr: string | null
    sie: null
    Sie: string | null
    wir: string | null
  }
  partizip_i: string
  partizip_ii: string
  infinitiv_mit_zu: string
}

/**
 * Endings table for present tense
 */
export interface EndingsTable {
  ich: string
  du: string
  er_sie_es: string
  wir: string
  ihr: string
  sie: string
  Sie: string
}
