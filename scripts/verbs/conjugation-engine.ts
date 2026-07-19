import { GermanVerbEntry, ConjugationSet } from './types'

export type ConjugationResult = Record<string, string | null>

export interface VerbConjugations {
  praesens: ConjugationResult
  praeteritum: ConjugationResult
  perfekt: ConjugationResult
  plusquamperfekt: ConjugationResult
  futuri: ConjugationResult
  futurii: ConjugationResult
  konjunktivii: ConjugationResult
  imperativ: ConjugationResult
  passiv: ConjugationResult | null
}

const PERSONS = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie'] as const
const INSEPARABLE_PREFIXES = ['be', 'ge', 'er', 'ver', 'zer', 'ent', 'emp', 'miss', 'wider', 'hinter']

function stem(infinitive: string): string {
  return infinitive.replace(/(en|n)$/, '')
}

function endings(st: string, vowels?: { du?: string; er_sie_es?: string }): ConjugationResult {
  const endsDent = /[dt]$/.test(st)
  const endsSib = /[sßz]$/.test(st)
  return {
    ich: `${st}e`,
    du: endsSib ? `${st}t` : endsDent ? `${st}est` : `${st}st`,
    er_sie_es: endsDent ? `${st}et` : `${st}t`,
    wir: `${st}en`,
    ihr: endsDent ? `${st}et` : `${st}t`,
    Sie: `${st}en`,
  }
}

function strongEndings(st: string): ConjugationResult {
  return {
    ich: st,
    du: /[dt]$/.test(st) ? `${st}est` : /[sßz]$/.test(st) ? `${st}t` : `${st}st`,
    er_sie_es: st,
    wir: `${st}en`,
    ihr: /[dt]$/.test(st) ? `${st}et` : `${st}t`,
    Sie: `${st}en`,
  }
}

function applyVowelChange(st: string, change: string): string {
  const m = st.match(/([aeiouäöü]{1,2})([^aeiouäöü]*)$/)
  if (!m) return st
  const idx = m.index!
  return st.slice(0, idx) + change + st.slice(idx + m[1].length)
}

function toSet(obj: ConjugationResult): ConjugationSet {
  return { ich: obj.ich!, du: obj.du!, er_sie_es: obj.er_sie_es!, wir: obj.wir!, ihr: obj.ihr!, Sie: obj.Sie! }
}

function mapSet(fn: (v: string) => string): (s: ConjugationSet) => ConjugationSet {
  return (s) => ({
    ich: fn(s.ich), du: fn(s.du), er_sie_es: fn(s.er_sie_es),
    wir: fn(s.wir), ihr: fn(s.ihr), Sie: fn(s.Sie),
  })
}

function conjToResult(s: ConjugationSet): ConjugationResult {
  return { ...s }
}


// ===== AUXILIARY CONJUGATIONS =====
const habenConj: ConjugationSet = { ich: 'habe', du: 'hast', er_sie_es: 'hat', wir: 'haben', ihr: 'habt', Sie: 'haben' }
const habenPraet: ConjugationSet = { ich: 'hatte', du: 'hattest', er_sie_es: 'hatte', wir: 'hatten', ihr: 'hattet', Sie: 'hatten' }
const seinConj: ConjugationSet = { ich: 'bin', du: 'bist', er_sie_es: 'ist', wir: 'sind', ihr: 'seid', Sie: 'sind' }
const seinPraet: ConjugationSet = { ich: 'war', du: 'warst', er_sie_es: 'war', wir: 'waren', ihr: 'wart', Sie: 'waren' }
const werdenConj: ConjugationSet = { ich: 'werde', du: 'wirst', er_sie_es: 'wird', wir: 'werden', ihr: 'werdet', Sie: 'werden' }
const werdenPraet: ConjugationSet = { ich: 'wurde', du: 'wurdest', er_sie_es: 'wurde', wir: 'wurden', ihr: 'wurdet', Sie: 'wurden' }

// ===== MODAL CONJUGATIONS =====
export const modalVerbs: Record<string, { praesens: ConjugationSet; praeteritum: ConjugationSet; partizipII: string; konjunktivII: ConjugationSet }> = {
  können: {
    praesens: { ich: 'kann', du: 'kannst', er_sie_es: 'kann', wir: 'können', ihr: 'könnt', Sie: 'können' },
    praeteritum: { ich: 'konnte', du: 'konntest', er_sie_es: 'konnte', wir: 'konnten', ihr: 'konntet', Sie: 'konnten' },
    partizipII: 'gekonnt',
    konjunktivII: { ich: 'könnte', du: 'könntest', er_sie_es: 'könnte', wir: 'könnten', ihr: 'könntet', Sie: 'könnten' },
  },
  müssen: {
    praesens: { ich: 'muss', du: 'musst', er_sie_es: 'muss', wir: 'müssen', ihr: 'müsst', Sie: 'müssen' },
    praeteritum: { ich: 'musste', du: 'musstest', er_sie_es: 'musste', wir: 'mussten', ihr: 'musstet', Sie: 'mussten' },
    partizipII: 'gemusst',
    konjunktivII: { ich: 'müsste', du: 'müsstest', er_sie_es: 'müsste', wir: 'müssten', ihr: 'müsstet', Sie: 'müssten' },
  },
  dürfen: {
    praesens: { ich: 'darf', du: 'darfst', er_sie_es: 'darf', wir: 'dürfen', ihr: 'dürft', Sie: 'dürfen' },
    praeteritum: { ich: 'durfte', du: 'durftest', er_sie_es: 'durfte', wir: 'durften', ihr: 'durftet', Sie: 'durften' },
    partizipII: 'gedurft',
    konjunktivII: { ich: 'dürfte', du: 'dürftest', er_sie_es: 'dürfte', wir: 'dürften', ihr: 'dürftet', Sie: 'dürften' },
  },
  sollen: {
    praesens: { ich: 'soll', du: 'sollst', er_sie_es: 'soll', wir: 'sollen', ihr: 'sollt', Sie: 'sollen' },
    praeteritum: { ich: 'sollte', du: 'solltest', er_sie_es: 'sollte', wir: 'sollten', ihr: 'solltet', Sie: 'sollten' },
    partizipII: 'gesollt',
    konjunktivII: { ich: 'sollte', du: 'solltest', er_sie_es: 'sollte', wir: 'sollten', ihr: 'solltet', Sie: 'sollten' },
  },
  wollen: {
    praesens: { ich: 'will', du: 'willst', er_sie_es: 'will', wir: 'wollen', ihr: 'wollt', Sie: 'wollen' },
    praeteritum: { ich: 'wollte', du: 'wolltest', er_sie_es: 'wollte', wir: 'wollten', ihr: 'wolltet', Sie: 'wollten' },
    partizipII: 'gewollt',
    konjunktivII: { ich: 'wollte', du: 'wolltest', er_sie_es: 'wollte', wir: 'wollten', ihr: 'wolltet', Sie: 'wollten' },
  },
  mögen: {
    praesens: { ich: 'mag', du: 'magst', er_sie_es: 'mag', wir: 'mögen', ihr: 'mögt', Sie: 'mögen' },
    praeteritum: { ich: 'mochte', du: 'mochtest', er_sie_es: 'mochte', wir: 'mochten', ihr: 'mochtet', Sie: 'mochten' },
    partizipII: 'gemocht',
    konjunktivII: { ich: 'möchte', du: 'möchtest', er_sie_es: 'möchte', wir: 'möchten', ihr: 'möchtet', Sie: 'möchten' },
  },
}

// ===== STRONG VERB VOWEL PATTERNS =====
interface StrongPattern {
  present?: { du?: string; er_sie_es?: string }
  praeteritumStem: string
  partizipStem: string
}

export const strongPatterns: Record<string, StrongPattern> = {
  e_i:      { present: { du: 'i', er_sie_es: 'i' }, praeteritumStem: 'a', partizipStem: 'o' },
  e_ie:     { present: { du: 'ie', er_sie_es: 'ie' }, praeteritumStem: 'a', partizipStem: 'o' },
  a_ae:     { present: { du: 'ä', er_sie_es: 'ä' }, praeteritumStem: 'u', partizipStem: 'o' },
  au_aeu:   { present: { du: 'äu', er_sie_es: 'äu' }, praeteritumStem: 'ie', partizipStem: 'o' },
  o_oe:     { present: { du: 'ö', er_sie_es: 'ö' }, praeteritumStem: 'ie', partizipStem: 'o' },
  ei_ie:    { praeteritumStem: 'ie', partizipStem: 'ie' },
  ie_o:     { praeteritumStem: 'o', partizipStem: 'o' },
  ie_o_ie:  { praeteritumStem: 'o', partizipStem: 'ie' },
  ei_i:     { praeteritumStem: 'i', partizipStem: 'i' },
  i_a_u:    { praeteritumStem: 'a', partizipStem: 'u' },
  i_a_o:    { praeteritumStem: 'a', partizipStem: 'o' },
  e_a_o:    { present: { du: 'i', er_sie_es: 'i' }, praeteritumStem: 'a', partizipStem: 'o' },
  a_o_o:    { praeteritumStem: 'a', partizipStem: 'o' },
  a_ie_a:   { present: { du: 'ä', er_sie_es: 'ä' }, praeteritumStem: 'ie', partizipStem: 'a' },
  a_i_a:    { present: { du: 'ä', er_sie_es: 'ä' }, praeteritumStem: 'i', partizipStem: 'a' },
}

// Which strong pattern each verb uses
export const strongVerbPattern: Record<string, string> = {
  essen: 'e_i', geben: 'e_i', helfen: 'e_i', sprechen: 'e_i', treffen: 'e_i', werfen: 'e_i',
  sehen: 'e_ie', lesen: 'e_ie',
  fahren: 'a_ae', schlafen: 'a_ie_a', tragen: 'a_ae', waschen: 'a_ae', halten: 'a_ie_a', laden: 'a_ae', schlagen: 'a_ae', fangen: 'a_i_a',
  laufen: 'au_aeu',
  stoßen: 'o_oe',
  bleiben: 'ei_ie', heißen: 'ei_ie', scheinen: 'ei_ie', schreiben: 'ei_ie', steigen: 'ei_ie', treiben: 'ei_ie', reiten: 'ei_ie',
  bieten: 'ie_o', fliegen: 'ie_o', fliehen: 'ie_o', genießen: 'ie_o', kriechen: 'ie_o', riechen: 'ie_o',
  schieben: 'ie_o', schließen: 'ie_o', gießen: 'ie_o', fließen: 'ie_o',
  frieren: 'ie_o_ie', verlieren: 'ie_o_ie', wiegen: 'ie_o_ie',
  beißen: 'ei_i', gleichen: 'ei_i', greifen: 'ei_i', leiden: 'ei_i', pfeifen: 'ei_i',
  reisen: 'ei_i', streichen: 'ei_i', streiten: 'ei_i', schweigen: 'ei_i', weichen: 'ei_i', schleichen: 'ei_i',
  binden: 'i_a_u', dringen: 'i_a_u', finden: 'i_a_u', gelingen: 'i_a_u', klingen: 'i_a_u',
  ringen: 'i_a_u', singen: 'i_a_u', sinken: 'i_a_u', springen: 'i_a_u', stinken: 'i_a_u',
  trinken: 'i_a_u', winden: 'i_a_u', zwingen: 'i_a_u', schwinden: 'i_a_u',
  beginnen: 'i_a_o', gewinnen: 'i_a_o', schwimmen: 'i_a_o',
  bergen: 'e_a_o', gelten: 'e_a_o', schelten: 'e_a_o', sterben: 'e_a_o', verderben: 'e_a_o', werben: 'e_a_o',

  rufen: 'ei_ie', heben: 'ie_o', lügen: 'ie_o', betrügen: 'ie_o', bewegen: 'ie_o',
  schmelzen: 'e_a_o', quellen: 'e_a_o',
  backen: 'a_ae', wachsen: 'a_ae',
}

// ===== EXCEPTIONAL IRREGULAR VERBS (fully specified) =====
export const exceptional: Record<string, {
  praesens?: ConjugationSet
  praeteritum: ConjugationSet
  partizipII: string
  konjunktivII?: ConjugationSet
  imperative?: { du: string; ihr: string; Sie: string }
}> = {
  sein: {
    praesens: { ich: 'bin', du: 'bist', er_sie_es: 'ist', wir: 'sind', ihr: 'seid', Sie: 'sind' },
    praeteritum: { ich: 'war', du: 'warst', er_sie_es: 'war', wir: 'waren', ihr: 'wart', Sie: 'waren' },
    partizipII: 'gewesen',
    konjunktivII: { ich: 'wäre', du: 'wärst', er_sie_es: 'wäre', wir: 'wären', ihr: 'wäret', Sie: 'wären' },
    imperative: { du: 'sei!', ihr: 'seid!', Sie: 'seien Sie!' },
  },
  nehmen: {
    praesens: { ich: 'nehme', du: 'nimmst', er_sie_es: 'nimmt', wir: 'nehmen', ihr: 'nehmt', Sie: 'nehmen' },
    praeteritum: { ich: 'nahm', du: 'nahmst', er_sie_es: 'nahm', wir: 'nahmen', ihr: 'nahmt', Sie: 'nahmen' },
    partizipII: 'genommen',
    konjunktivII: { ich: 'nähme', du: 'nähmest', er_sie_es: 'nähme', wir: 'nähmen', ihr: 'nähmet', Sie: 'nähmen' },
    imperative: { du: 'nimm!', ihr: 'nehmt!', Sie: 'nehmen Sie!' },
  },
  kommen: {
    praeteritum: { ich: 'kam', du: 'kamst', er_sie_es: 'kam', wir: 'kamen', ihr: 'kamt', Sie: 'kamen' },
    partizipII: 'gekommen',
    konjunktivII: { ich: 'käme', du: 'kämest', er_sie_es: 'käme', wir: 'kämen', ihr: 'kämet', Sie: 'kämen' },
  },
  haben: {
    praeteritum: { ich: 'hatte', du: 'hattest', er_sie_es: 'hatte', wir: 'hatten', ihr: 'hattet', Sie: 'hatten' },
    partizipII: 'gehabt',
    konjunktivII: { ich: 'hätte', du: 'hättest', er_sie_es: 'hätte', wir: 'hätten', ihr: 'hättet', Sie: 'hätten' },
    imperative: { du: 'habe!', ihr: 'habt!', Sie: 'haben Sie!' },
  },
  werden: {
    praeteritum: { ich: 'wurde', du: 'wurdest', er_sie_es: 'wurde', wir: 'wurden', ihr: 'wurdet', Sie: 'wurden' },
    partizipII: 'geworden',
    konjunktivII: { ich: 'würde', du: 'würdest', er_sie_es: 'würde', wir: 'würden', ihr: 'würdet', Sie: 'würden' },
    imperative: { du: 'werde!', ihr: 'werdet!', Sie: 'werden Sie!' },
  },
  wissen: {
    praesens: { ich: 'weiß', du: 'weißt', er_sie_es: 'weiß', wir: 'wissen', ihr: 'wisst', Sie: 'wissen' },
    praeteritum: { ich: 'wusste', du: 'wusstest', er_sie_es: 'wusste', wir: 'wussten', ihr: 'wusstet', Sie: 'wussten' },
    partizipII: 'gewusst',
    konjunktivII: { ich: 'wüsste', du: 'wüsstest', er_sie_es: 'wüsste', wir: 'wüssten', ihr: 'wüsstet', Sie: 'wüssten' },
  },
  gehen: {
    praeteritum: { ich: 'ging', du: 'gingst', er_sie_es: 'ging', wir: 'gingen', ihr: 'gingt', Sie: 'gingen' },
    partizipII: 'gegangen',
  },
  stehen: {
    praeteritum: { ich: 'stand', du: 'standst', er_sie_es: 'stand', wir: 'standen', ihr: 'standet', Sie: 'standen' },
    partizipII: 'gestanden',
  },
  bringen: {
    praeteritum: { ich: 'brachte', du: 'brachtest', er_sie_es: 'brachte', wir: 'brachten', ihr: 'brachtet', Sie: 'brachten' },
    partizipII: 'gebracht',
  },
  denken: {
    praeteritum: { ich: 'dachte', du: 'dachtest', er_sie_es: 'dachte', wir: 'dachten', ihr: 'dachtet', Sie: 'dachten' },
    partizipII: 'gedacht',
  },
  kennen: {
    praeteritum: { ich: 'kannte', du: 'kanntest', er_sie_es: 'kannte', wir: 'kannten', ihr: 'kanntet', Sie: 'kannten' },
    partizipII: 'gekannt',
  },
  nennen: {
    praeteritum: { ich: 'nannte', du: 'nanntest', er_sie_es: 'nannte', wir: 'nannten', ihr: 'nanntet', Sie: 'nannten' },
    partizipII: 'genannt',
  },
  brennen: {
    praeteritum: { ich: 'brannte', du: 'branntest', er_sie_es: 'brannte', wir: 'brannten', ihr: 'branntet', Sie: 'brannten' },
    partizipII: 'gebrannt',
  },
  rennen: {
    praeteritum: { ich: 'rannte', du: 'ranntest', er_sie_es: 'rannte', wir: 'rannten', ihr: 'ranntet', Sie: 'rannten' },
    partizipII: 'gerannt',
  },
  senden: {
    praeteritum: { ich: 'sandte', du: 'sandtest', er_sie_es: 'sandte', wir: 'sandten', ihr: 'sandtet', Sie: 'sandten' },
    partizipII: 'gesandt',
  },
  wenden: {
    praeteritum: { ich: 'wandte', du: 'wandtest', er_sie_es: 'wandte', wir: 'wandten', ihr: 'wandtet', Sie: 'wandten' },
    partizipII: 'gewandt',
  },
  tun: {
    praesens: { ich: 'tue', du: 'tust', er_sie_es: 'tut', wir: 'tun', ihr: 'tut', Sie: 'tun' },
    praeteritum: { ich: 'tat', du: 'tatst', er_sie_es: 'tat', wir: 'taten', ihr: 'tatet', Sie: 'taten' },
    partizipII: 'getan',
  },
  lassen: {
    praeteritum: { ich: 'ließ', du: 'ließt', er_sie_es: 'ließ', wir: 'ließen', ihr: 'ließt', Sie: 'ließen' },
    partizipII: 'gelassen',
  },
  sitzen: {
    praeteritum: { ich: 'saß', du: 'saßt', er_sie_es: 'saß', wir: 'saßen', ihr: 'saßt', Sie: 'saßen' },
    partizipII: 'gesessen',
  },
  liegen: {
    praeteritum: { ich: 'lag', du: 'lagst', er_sie_es: 'lag', wir: 'lagen', ihr: 'lagt', Sie: 'lagen' },
    partizipII: 'gelegen',
  },
  ziehen: {
    praeteritum: { ich: 'zog', du: 'zogst', er_sie_es: 'zog', wir: 'zogen', ihr: 'zogt', Sie: 'zogen' },
    partizipII: 'gezogen',
  },
  bitten: {
    praeteritum: { ich: 'bat', du: 'batst', er_sie_es: 'bat', wir: 'baten', ihr: 'batet', Sie: 'baten' },
    partizipII: 'gebeten',
  },
  schneiden: {
    praeteritum: { ich: 'schnitt', du: 'schnittst', er_sie_es: 'schnitt', wir: 'schnitten', ihr: 'schnitte', Sie: 'schnitten' },
    partizipII: 'geschnitten',
  },
  erschrecken: {
    praesens: { ich: 'erschrecke', du: 'erschrickst', er_sie_es: 'erschrickt', wir: 'erschrecken', ihr: 'erschreckt', Sie: 'erschrecken' },
    praeteritum: { ich: 'erschrak', du: 'erschrakst', er_sie_es: 'erschrak', wir: 'erschraken', ihr: 'erschrakt', Sie: 'erschraken' },
    partizipII: 'erschrocken',
  },
  empfehlen: {
    praesens: { ich: 'empfehle', du: 'empfiehlst', er_sie_es: 'empfiehlt', wir: 'empfehlen', ihr: 'empfehlt', Sie: 'empfehlen' },
    praeteritum: { ich: 'empfahl', du: 'empfahlst', er_sie_es: 'empfahl', wir: 'empfahlen', ihr: 'empfahlt', Sie: 'empfahlen' },
    partizipII: 'empfohlen',
  },
  schaffen: {
    praeteritum: { ich: 'schuf', du: 'schufst', er_sie_es: 'schuf', wir: 'schufen', ihr: 'schuft', Sie: 'schufen' },
    partizipII: 'geschaffen',
  },
  hängen: {
    praeteritum: { ich: 'hing', du: 'hingst', er_sie_es: 'hing', wir: 'hingen', ihr: 'hingt', Sie: 'hingen' },
    partizipII: 'gehangen',
  },
  mahlen: { praeteritum: { ich: 'mahlte', du: 'mahltest', er_sie_es: 'mahlte', wir: 'mahlten', ihr: 'mahltet', Sie: 'mahlten' }, partizipII: 'gemahlen' },
  salzen: { praeteritum: { ich: 'salzte', du: 'salztest', er_sie_es: 'salzte', wir: 'salzten', ihr: 'salztet', Sie: 'salzten' }, partizipII: 'gesalzen' },
  spalten: { praeteritum: { ich: 'spaltete', du: 'spaltetest', er_sie_es: 'spaltete', wir: 'spalteten', ihr: 'spaltetet', Sie: 'spalteten' }, partizipII: 'gespalten' },
  stecken: { praeteritum: { ich: 'steckte', du: 'stecktest', er_sie_es: 'steckte', wir: 'steckten', ihr: 'stecktet', Sie: 'steckten' }, partizipII: 'gesteckt' },
}

// ===== VALIDATION =====
const NEVER_VALID: RegExp[] = [
  /^ich ab\w+e$/i,
  /^geverstanden$/i,
  /^gestudiert$/i,
  /^ich erinnere$/i,
  /^ich habe gegangen$/i,
  /^du fahrest$/i,
  /^ge\w+iert$/,
  /\bgege\w+t\b/,
]

function validate(conj: VerbConjugations, infinitive: string, entry: GermanVerbEntry): string[] {
  const errors: string[] = []
  const TENSES = ['praesens','praeteritum','perfekt','plusquamperfekt','futuri','futurii','konjunktivii','imperativ'] as const
  const PPL = ['ich','du','er_sie_es','wir','ihr','Sie'] as const
  for (const tense of TENSES) {
    const forms = conj[tense] as Record<string, string | null> | undefined
    if (!forms) continue
    for (const person of PPL) {
      const value = forms[person]
      if (!value) continue
      for (const pattern of NEVER_VALID) {
        if (pattern.test(value)) {
          errors.push(`${tense}.${person}: "${value}" matches invalid pattern ${pattern}`)
        }
      }
      if (entry.separable && !entry.reflexive) {
        if (person === 'ich' && tense === 'praesens' && value.startsWith(entry.prefix || '')) {
          if (!value.includes(' ')) {
            errors.push(`${tense}.${person}: separable verb "${infinitive}" must have separator between prefix and stem: "${value}"`)
          }
        }
      }
      if (entry.reflexive && (tense === 'praesens' || tense === 'perfekt' || tense === 'plusquamperfekt')) {
        if (person === 'ich' && !value.includes(' mich') && !value.includes(' mir')) {
          errors.push(`${tense}.${person}: reflexive verb "${infinitive}" must include reflexive pronoun`)
        }
      }
    }
  }
  return errors
}

// ===== HELPER: find verb in any lookup, trying prefixed forms =====
function findExceptional(v: string): typeof exceptional[string] | undefined {
  let r = exceptional[v]
  if (r) return r
  for (const p of INSEPARABLE_PREFIXES) {
    if (v.startsWith(p)) { r = exceptional[v.slice(p.length)]; if (r) return r }
  }
  return undefined
}
function findModal(v: string) {
  let r = modalVerbs[v]
  if (r) return r
  for (const p of INSEPARABLE_PREFIXES) {
    if (v.startsWith(p)) { r = modalVerbs[v.slice(p.length)]; if (r) return r }
  }
  return undefined
}
function findPattern(v: string) {
  let r = strongVerbPattern[v]
  if (r) return r
  for (const p of INSEPARABLE_PREFIXES) {
    if (v.startsWith(p)) { r = strongVerbPattern[v.slice(p.length)]; if (r) return r }
  }
  return undefined
}

// ===== MAIN ENGINE =====
export function conjugate(entry: GermanVerbEntry): VerbConjugations {
  let baseInfinitive = entry.infinitive
  if (entry.reflexive) baseInfinitive = baseInfinitive.replace(/^sich\s+/i, '')
  if (entry.separable && entry.prefix) baseInfinitive = baseInfinitive.slice(entry.prefix.length)
  const st = stem(baseInfinitive)
  const prefix = entry.separable ? (entry.prefix || '') : ''
  const auxSet = entry.auxiliary === 'sein' ? seinConj : habenConj
  const auxPraet = entry.auxiliary === 'sein' ? seinPraet : habenPraet
  const p2 = entry.partizipII
  const exc = findExceptional(baseInfinitive)
  const modal = findModal(baseInfinitive)
  const pattern = findPattern(baseInfinitive)
  const patData = pattern ? strongPatterns[pattern] : null

  // Reflexive pronoun setup
  const reflexivePronounsAkk: Record<string, string> = {
    ich: 'mich', du: 'dich', er_sie_es: 'sich', wir: 'uns', ihr: 'euch', Sie: 'sich',
  }
  const reflexivePronounsDat: Record<string, string> = {
    ich: 'mir', du: 'dir', er_sie_es: 'sich', wir: 'uns', ihr: 'euch', Sie: 'sich',
  }
  const useDat = entry.reflexivePronounCase === 'dativ'
  const pronouns = useDat ? reflexivePronounsDat : reflexivePronounsAkk

  // Full infinitive without "sich" but WITH separable prefix (for compound tenses)
  const infinitiveWithoutSich = entry.reflexive
    ? entry.infinitive.replace(/^sich\s+/i, '')
    : entry.infinitive

  // Helper functions
  let praesens: ConjugationResult
  if (exc?.praesens) {
    praesens = conjToResult(exc.praesens)
  } else if (modal) {
    praesens = conjToResult(modal.praesens)
  } else if (patData?.present) {
    const changedSt = applyVowelChange(st, patData.present.du || '')
    const duSt = applyVowelChange(st, patData.present.du || '')
    const esSt = applyVowelChange(st, patData.present.er_sie_es || patData.present.du || '')
    praesens = {
      ich: `${st}e`,
      du: endings(duSt).du,
      er_sie_es: endings(esSt).er_sie_es,
      wir: `${st}en`,
      ihr: `${st}t`,
      Sie: `${st}en`,
    }
  } else {
    praesens = endings(st)
  }

  // --- PRÄTERITUM ---
  let praeteritum: ConjugationResult
  if (entry.praeteritum) {
    praeteritum = conjToResult(entry.praeteritum)
  } else if (exc) {
    praeteritum = conjToResult(exc.praeteritum)
  } else if (modal) {
    praeteritum = conjToResult(modal.praeteritum)
  } else if (entry.praeteritumStem) {
    const prSt = entry.praeteritumStem
    praeteritum = strongEndings(prSt)
  } else if (patData) {
    const prSt = applyVowelChange(st, patData.praeteritumStem)
    praeteritum = strongEndings(prSt)
  } else {
    const endsTD = /[td]$/.test(st)
    praeteritum = endsTD ? {
      ich: `${st}ete`, du: `${st}etest`, er_sie_es: `${st}ete`,
      wir: `${st}eten`, ihr: `${st}etet`, Sie: `${st}eten`,
    } : {
      ich: `${st}te`, du: `${st}test`, er_sie_es: `${st}te`,
      wir: `${st}ten`, ihr: `${st}tet`, Sie: `${st}ten`,
    }
  }

  // --- IMPERATIV ---
  let imperativ: ConjugationResult
  if (entry.imperative) {
    imperativ = { ich: null, du: entry.imperative.du || null, er_sie_es: null, wir: null, ihr: entry.imperative.ihr || null, Sie: entry.imperative.Sie || null }
  } else if (exc?.imperative) {
    imperativ = { ich: null, du: exc.imperative.du, er_sie_es: null, wir: null, ihr: exc.imperative.ihr, Sie: exc.imperative.Sie }
  } else {
    const duForm = praesens.du
    const ihrForm = praesens.ihr
    let duImp = duForm ? duForm.replace(/st$/, '') : `${st}`
    if (duImp === duForm) duImp = `${st}`
    if (duImp === 'se') duImp = 'sei'
    // Strong verbs with a→ä / au→äu vowel change: imperative uses stem without change
    if (patData?.present) {
      const changeTo = patData.present.du || ''
      if (changeTo === 'ä' || changeTo === 'äu') {
        duImp = st
      }
    }
    imperativ = {
      ich: null, du: duImp, er_sie_es: null, wir: null,
      ihr: ihrForm ? `${ihrForm.replace(/t$/, '')}t` : `${st}t`,
      Sie: `${st}en`,
    }
  }

  // --- PERFEKT (reflexive pronoun goes AFTER auxiliary, BEFORE participle) ---
  const perfekt: ConjugationResult = {}
  for (const p of PERSONS) {
    perfekt[p] = entry.reflexive
      ? `${auxSet[p]} ${pronouns[p]} ${p2}`
      : `${auxSet[p]} ${p2}`
  }

  // --- PLUSQUAMPERFEKT (reflexive pronoun goes AFTER auxiliary, BEFORE participle) ---
  const plusquamperfekt: ConjugationResult = {}
  for (const p of PERSONS) {
    plusquamperfekt[p] = entry.reflexive
      ? `${auxPraet[p]} ${pronouns[p]} ${p2}`
      : `${auxPraet[p]} ${p2}`
  }

  // For compound tenses, use infinitive without "sich" but WITH separable prefix
  const baseInfinitiveForCompound = infinitiveWithoutSich
  const infAux = entry.auxiliary === 'sein' ? 'sein' : 'haben'

  // --- FUTUR I ---
  const futuri: ConjugationResult = {}
  if (entry.reflexive) {
    futuri.ich = `werde ${pronouns.ich} ${baseInfinitiveForCompound}`
    futuri.du = `wirst ${pronouns.du} ${baseInfinitiveForCompound}`
    futuri.er_sie_es = `wird ${pronouns.er_sie_es} ${baseInfinitiveForCompound}`
    futuri.wir = `werden ${pronouns.wir} ${baseInfinitiveForCompound}`
    futuri.ihr = `werdet ${pronouns.ihr} ${baseInfinitiveForCompound}`
    futuri.Sie = `werden ${pronouns.Sie} ${baseInfinitiveForCompound}`
  } else {
    futuri.ich = `werde ${baseInfinitiveForCompound}`
    futuri.du = `wirst ${baseInfinitiveForCompound}`
    futuri.er_sie_es = `wird ${baseInfinitiveForCompound}`
    futuri.wir = `werden ${baseInfinitiveForCompound}`
    futuri.ihr = `werdet ${baseInfinitiveForCompound}`
    futuri.Sie = `werden ${baseInfinitiveForCompound}`
  }

  // --- FUTUR II ---
  const futurii: ConjugationResult = {}
  if (entry.reflexive) {
    futurii.ich = `werde ${pronouns.ich} ${p2} ${infAux}`
    futurii.du = `wirst ${pronouns.du} ${p2} ${infAux}`
    futurii.er_sie_es = `wird ${pronouns.er_sie_es} ${p2} ${infAux}`
    futurii.wir = `werden ${pronouns.wir} ${p2} ${infAux}`
    futurii.ihr = `werdet ${pronouns.ihr} ${p2} ${infAux}`
    futurii.Sie = `werden ${pronouns.Sie} ${p2} ${infAux}`
  } else {
    futurii.ich = `werde ${p2} ${infAux}`
    futurii.du = `wirst ${p2} ${infAux}`
    futurii.er_sie_es = `wird ${p2} ${infAux}`
    futurii.wir = `werden ${p2} ${infAux}`
    futurii.ihr = `werdet ${p2} ${infAux}`
    futurii.Sie = `werden ${p2} ${infAux}`
  }

  // --- KONJUNKTIV II ---
  let konjunktiviiIsWuerdeForm = false
  let konjunktivii: ConjugationResult = {}
  if (entry.konjunktivII) {
    konjunktivii = conjToResult(entry.konjunktivII)
  } else if (exc?.konjunktivII) {
    konjunktivii = conjToResult(exc.konjunktivII)
  } else if (modal) {
    konjunktivii = conjToResult(modal.konjunktivII)
  } else {
    konjunktiviiIsWuerdeForm = true
    // Konjunktiv II uses the infinitive. For separable verbs the prefix stays
    // attached to the infinitive (e.g. "würde anbieten"), so we use the full
    // infinitive here and deliberately do NOT apply the separable prefix below.
    if (entry.reflexive) {
      konjunktivii.ich = `würde ${pronouns.ich} ${baseInfinitiveForCompound}`
      konjunktivii.du = `würdest ${pronouns.du} ${baseInfinitiveForCompound}`
      konjunktivii.er_sie_es = `würde ${pronouns.er_sie_es} ${baseInfinitiveForCompound}`
      konjunktivii.wir = `würden ${pronouns.wir} ${baseInfinitiveForCompound}`
      konjunktivii.ihr = `würdet ${pronouns.ihr} ${baseInfinitiveForCompound}`
      konjunktivii.Sie = `würden ${pronouns.Sie} ${baseInfinitiveForCompound}`
    } else {
      konjunktivii = {
        ich: `würde ${baseInfinitiveForCompound}`, du: `würdest ${baseInfinitiveForCompound}`, er_sie_es: `würde ${baseInfinitiveForCompound}`,
        wir: `würden ${baseInfinitiveForCompound}`, ihr: `würdet ${baseInfinitiveForCompound}`, Sie: `würden ${baseInfinitiveForCompound}`,
      }
    }
  }

  // --- SEPARABLE PREFIX APPLICATION ---
  const applySep = (forms: ConjugationResult): ConjugationResult => {
    if (!prefix) return forms
    const result: ConjugationResult = {}
    for (const p of PERSONS) {
      result[p] = forms[p] ? `${forms[p]} ${prefix}` : null
    }
    return result
  }

  const applySepReflexive = (forms: ConjugationResult): ConjugationResult => {
    if (!prefix) return forms
    const result: ConjugationResult = {}
    for (const p of PERSONS) {
      result[p] = forms[p] ? `${forms[p]} ${prefix}` : null
    }
    return result
  }

  // --- REFLEXIVE PRONOUN APPLICATION ---
  const applyReflexive = (forms: ConjugationResult): ConjugationResult => {
    const result: ConjugationResult = {}
    for (const p of PERSONS) {
      const pron = pronouns[p]
      result[p] = forms[p] ? `${forms[p]} ${pron}` : null
    }
    return result
  }

  // Build the final result based on verb type
  let result: VerbConjugations = {
    praesens,
    praeteritum,
    perfekt,
    plusquamperfekt,
    futuri,
    futurii,
    konjunktivii,
    imperativ,
    passiv: null,
  }

  // Apply separable prefix
  if (entry.separable && prefix) {
    if (entry.reflexive) {
      result.praesens = applySepReflexive(praesens)
      result.praeteritum = applySepReflexive(praeteritum)
      result.futuri = futuri
      result.futurii = futurii
      result.konjunktivii = konjunktiviiIsWuerdeForm ? konjunktivii : applySepReflexive(konjunktivii)
    } else {
      result.praesens = applySep(praesens)
      result.praeteritum = applySep(praeteritum)
      result.futuri = futuri
      result.futurii = futurii
      result.konjunktivii = konjunktiviiIsWuerdeForm ? konjunktivii : applySep(konjunktivii)
    }
    // Non-reflexive separable imperative: add prefix after stem
    if (!entry.reflexive) {
      const cap = (s: string) => s.charAt(0).toUpperCase() + s.slice(1)
      const addSep = (s: string | null) => {
        const clean = (s || '').replace(/!$/, '').trim()
        return clean ? cap(`${clean} ${prefix}`) + '!' : ''
      }
      if (result.imperativ.du) result.imperativ.du = addSep(imperativ.du)
      if (result.imperativ.ihr) result.imperativ.ihr = addSep(imperativ.ihr)
      if (result.imperativ.Sie) result.imperativ.Sie = addSep(imperativ.Sie)
    }
  }

  // Apply reflexive pronoun
  if (entry.reflexive) {
    for (const tense of ['praesens', 'praeteritum'] as const) {
      result[tense] = applyReflexive(result[tense]!)
    }
    // Perfekt/Plusquamperfekt already have pronouns in correct position (after auxiliary)

    // Imperative: pronoun BEFORE separable prefix
    const fmtReflImp = (baseForm: string | null, pron: string, sepPrefix: string) => {
      if (!baseForm) return null
      const clean = baseForm.replace(/!$/, '').trim()
      return sepPrefix ? `${clean} ${pron} ${sepPrefix}` : `${clean} ${pron}`
    }
    result.imperativ.du = fmtReflImp(imperativ.du, pronouns.du, prefix)
    result.imperativ.ihr = fmtReflImp(imperativ.ihr, pronouns.ihr, prefix)
    result.imperativ.Sie = fmtReflImp(imperativ.Sie, pronouns.Sie, prefix)
  }

  // Final imperative formatting: capitalize and add !
  const fmtImp = (s: string | null) => {
    if (!s) return s
    let out = s.charAt(0).toUpperCase() + s.slice(1)
    if (!out.endsWith('!')) out += '!'
    return out
  }
  result.imperativ.du = fmtImp(result.imperativ.du)
  result.imperativ.ihr = fmtImp(result.imperativ.ihr)
  result.imperativ.Sie = fmtImp(result.imperativ.Sie)

  // Validation
  const errors = validate(result, entry.infinitive, entry)
  if (errors.length > 0) {
    console.error(`[CONJUGATION VALIDATION] ${entry.infinitive}:`, errors.join('; '))
  }

  return result
}
