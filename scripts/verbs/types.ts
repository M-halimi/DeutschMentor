export type ReflexivePronounCase = 'akkusativ' | 'dativ' | 'both';

export interface VerbEntry {
  infinitive: string
  en: string
  ar?: string
  fr?: string
  level: 'A1' | 'A2' | 'B1' | 'B2' | 'C1' | 'C2'
  freq: 'very_common' | 'common' | 'less_common' | 'rare'
  type: 'regular' | 'irregular' | 'mixed' | 'separable' | 'inseparable' | 'reflexive' | 'verb_preposition' | 'reflexive_preposition' | 'modal' | 'auxiliary'
  tr: 'intransitive' | 'transitive' | 'both'
  obj: 'akkusativ' | 'dativ' | 'genitiv' | 'akkusativ_dativ' | 'both' | 'none'
  prep?: string
  prepCase?: 'akkusativ' | 'dativ' | 'wechsel'
  reflexive?: boolean
  reflexivePronoun?: string
  reflexivePronounCase?: ReflexivePronounCase
  aux: 'haben' | 'sein' | 'both'
  p2: string
  sep?: string
  ipa?: string
  stress?: string
  syn?: string[]
  ant?: string[]
  tags?: string[]
  // Reflexive metadata (from audit)
  requiresObject?: boolean
  objectPlaceholder?: string
  requiredPreposition?: string
  prepositionCase?: 'akkusativ' | 'dativ' | 'genitiv' | 'none'
}

export interface VerbGroup {
  level: string
  verbs: VerbEntry[]
}

export type VerbType =
  | 'regular' | 'strong' | 'mixed' | 'modal' | 'auxiliary'
  | 'separable' | 'inseparable'
  | 'reflexive' | 'reflexive_separable' | 'reflexive_inseparable'

export interface ConjugationSet {
  ich: string
  du: string
  er_sie_es: string
  wir: string
  ihr: string
  Sie: string
}

export interface GermanVerbEntry {
  infinitive: string
  meaning?: { en?: string; ar?: string; fr?: string }
  level?: 'A1' | 'A2' | 'B1' | 'B2' | 'C1' | 'C2'
  verbType: VerbType
  prefix?: string
  separable: boolean
  reflexive: boolean
  reflexivePronoun?: { akk?: boolean; dat?: boolean }
  reflexivePronounCase?: ReflexivePronounCase
  auxiliary: 'haben' | 'sein'
  transitive?: boolean
  vowelChange?: { present?: { du?: string; er_sie_es?: string } }
  praeteritum?: ConjugationSet
  praeteritumStem?: string
  partizipII: string
  imperative?: { du?: string; ihr?: string; Sie?: string }
  konjunktivII?: ConjugationSet
  notes?: string[]
}
