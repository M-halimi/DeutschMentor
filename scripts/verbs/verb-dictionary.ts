import { VerbEntry, GermanVerbEntry, VerbType } from './types'
import { exceptional, modalVerbs, strongVerbPattern, strongPatterns } from './conjugation-engine'

function verbTypeToNew(t: VerbEntry['type']): VerbType {
  const map: Record<string, VerbType> = {
    regular: 'regular', irregular: 'strong', mixed: 'mixed',
    separable: 'separable', inseparable: 'inseparable',
    reflexive: 'reflexive', verb_preposition: 'regular',
    reflexive_preposition: 'reflexive', modal: 'modal', auxiliary: 'auxiliary',
  }
  return map[t] || 'regular'
}

export function verbEntryToGermanVerbEntry(v: VerbEntry): GermanVerbEntry {
  const base = v.infinitive.replace(/^sich\s+/, '')
  const isSep = v.type === 'separable'
  const isRef = v.reflexive || v.type === 'reflexive' || v.type === 'reflexive_preposition'
  const newType = verbTypeToNew(v.type)
  const pref = v.sep || undefined

  let finalType = newType
  if (isRef && isSep) finalType = 'reflexive_separable'
  else if (isRef && v.type === 'inseparable') finalType = 'reflexive_inseparable'
  else if (isRef) finalType = 'reflexive'
  else if (isSep) finalType = 'separable'
  else if (v.type === 'inseparable') finalType = 'inseparable'
  else if (v.type === 'modal') finalType = 'modal'
  else if (v.type === 'auxiliary') finalType = 'auxiliary'

  const exceptionalEntry = exceptional[base] || exceptional[v.infinitive]
  const modalEntry = modalVerbs[base]
  const patternKey = strongVerbPattern[base]
  const patternData = patternKey ? strongPatterns[patternKey] : null

  const entry: GermanVerbEntry = {
    infinitive: v.infinitive,
    meaning: { en: v.en, ar: v.ar, fr: v.fr },
    level: v.level,
    verbType: finalType,
    prefix: pref,
    separable: isSep,
    reflexive: isRef,
    reflexivePronoun: isRef ? { akk: true } : undefined,
    auxiliary: v.aux === 'both' ? 'haben' : v.aux,
    transitive: v.tr === 'transitive' || v.tr === 'both',
    partizipII: v.p2,
    vowelChange: patternData?.present ? { present: patternData.present } : undefined,
    praeteritum: exceptionalEntry?.praeteritum
      ? { ...exceptionalEntry.praeteritum }
      : undefined,
    imperative: exceptionalEntry?.imperative
      ? { ...exceptionalEntry.imperative }
      : undefined,
    konjunktivII: exceptionalEntry?.konjunktivII
      ? { ...exceptionalEntry.konjunktivII }
      : undefined,
    notes: [],
  }

  if (modalEntry) {
    entry.praeteritum = modalEntry.praeteritum
    entry.konjunktivII = modalEntry.konjunktivII
  }

  if (exceptionalEntry?.praesens) {
    entry.vowelChange = undefined
  }

  return entry
}
