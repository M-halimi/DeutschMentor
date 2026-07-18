// German Verb Conjugation Engine
// Handles all verb types: regular, irregular, mixed, separable, reflexive, modal, auxiliary

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

const persons = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie'] as const

function stem(infinitive: string): string {
  return infinitive.replace(/(en|n)$/, '')
}

function addGe(stem: string, separablePrefix: string): string {
  const base = separablePrefix ? `${separablePrefix}ge${stem}` : `ge${stem}`
  return base
}

// Vowel change patterns for irregular verbs
interface VowelChange {
  present: Record<string, string>  // e.g. { du: 'i', er_sie_es: 'i' }
  praeteritum_stem: string
  partizip_stem: string
}

const irregularPatterns: Record<string, VowelChange> = {
  // e → i (essen, geben, helfen, nehmen, sprechen, treffen, werfen)
  e_i: {
    present: { du: 'i', er_sie_es: 'i' },
    praeteritum_stem: 'a',
    partizip_stem: 'o'
  },
  // e → ie (sehen, lesen, empfehlen, geschehen)
  e_ie: {
    present: { du: 'ie', er_sie_es: 'ie' },
    praeteritum_stem: 'a',
    partizip_stem: 'o'
  },
  // a → ä (fahren, schlafen, tragen, waschen, halten, laden)
  a_ae: {
    present: { du: 'ä', er_sie_es: 'ä' },
    praeteritum_stem: 'u',
    partizip_stem: 'o'
  },
  // au → äu (laufen)
  au_aeu: {
    present: { du: 'äu', er_sie_es: 'äu' },
    praeteritum_stem: 'ie',
    partizip_stem: 'o'
  },
  // o → ö (stoßen)
  o_oe: {
    present: { du: 'ö', er_sie_es: 'ö' },
    praeteritum_stem: 'ie',
    partizip_stem: 'o'
  },
  // Special: bleiben, heißen, reiten, scheinen, schreiben, steigen, treiben
  ei_ie: {
    present: {},
    praeteritum_stem: 'ie',
    partizip_stem: 'ie'
  },
  // Special: bieten, fliegen, fliehen, fließen, genießen, gießen, kriechen, riechen, schieben, schließen, stieben
  ie_o: {
    present: {},
    praeteritum_stem: 'o',
    partizip_stem: 'o'
  },
  // Special: frieren, verlieren, wiegen
  ie_o_ie: {
    present: {},
    praeteritum_stem: 'o',
    partizip_stem: 'ie'
  },
  // Special: beißen, gleichen, greifen, leiden, pfeifen, reisen, streichen, streiten
  ei_i: {
    present: {},
    praeteritum_stem: 'i',
    partizip_stem: 'i'
  },
  // Special: binden, dringen, finden, gelingen, klingen, ringen, schlingen, schwinden, singen, sinken, springen, stinken, trinken, winden, zwingen
  i_a_u: {
    present: {},
    praeteritum_stem: 'a',
    partizip_stem: 'u'
  },
  // Special: beginnen, gewinnen, rinnen, sinnen, spinnen
  i_a_o: {
    present: {},
    praeteritum_stem: 'a',
    partizip_stem: 'o'
  },
  // Special: bergen, gelten, schelten, sterben, verderben, werben, werden
  e_a_o: {
    present: { du: 'i', er_sie_es: 'i' },
    praeteritum_stem: 'a',
    partizip_stem: 'o'
  },
  // Special: brechen, erschrecken, nehmen, sprechen, stechen, treffen
  e_a_o2: {
    present: { du: 'i', er_sie_es: 'i' },
    praeteritum_stem: 'a',
    partizip_stem: 'o'
  },
  // Special: befehlen, empfehlen, stehlen
  e_a_o3: {
    present: { du: 'ie', er_sie_es: 'ie' },
    praeteritum_stem: 'a',
    partizip_stem: 'o'
  },
  // Special: kommen
  a_o_o: {
    present: { du: 'i', er_sie_es: 'i' },
    praeteritum_stem: 'a',
    partizip_stem: 'o'
  }
}

// Manual irregular conjugations for common verbs that don't follow patterns
const manualIrregulars: Record<string, {
  praesens?: ConjugationResult
  praeteritum?: ConjugationResult
  partizip_2?: string
  konjunktiv_ii?: ConjugationResult
}> = {
  'sein': {
    praesens: { ich: 'bin', du: 'bist', er_sie_es: 'ist', wir: 'sind', ihr: 'seid', Sie: 'sind' },
    praeteritum: { ich: 'war', du: 'warst', er_sie_es: 'war', wir: 'waren', ihr: 'wart', Sie: 'waren' },
    partizip_2: 'gewesen',
    konjunktiv_ii: { ich: 'wäre', du: 'wärst', er_sie_es: 'wäre', wir: 'wären', ihr: 'wäret', Sie: 'wären' }
  },
  'haben': {
    praesens: { ich: 'habe', du: 'hast', er_sie_es: 'hat', wir: 'haben', ihr: 'habt', Sie: 'haben' },
    praeteritum: { ich: 'hatte', du: 'hattest', er_sie_es: 'hatte', wir: 'hatten', ihr: 'hattet', Sie: 'hatten' },
    partizip_2: 'gehabt',
    konjunktiv_ii: { ich: 'hätte', du: 'hättest', er_sie_es: 'hätte', wir: 'hätten', ihr: 'hättet', Sie: 'hätten' }
  },
  'werden': {
    praesens: { ich: 'werde', du: 'wirst', er_sie_es: 'wird', wir: 'werden', ihr: 'werdet', Sie: 'werden' },
    praeteritum: { ich: 'wurde', du: 'wurdest', er_sie_es: 'wurde', wir: 'wurden', ihr: 'wurdet', Sie: 'wurden' },
    partizip_2: 'geworden',
    konjunktiv_ii: { ich: 'würde', du: 'würdest', er_sie_es: 'würde', wir: 'würden', ihr: 'würdet', Sie: 'würden' }
  },
  'wissen': {
    praesens: { ich: 'weiß', du: 'weißt', er_sie_es: 'weiß', wir: 'wissen', ihr: 'wisst', Sie: 'wissen' },
    praeteritum: { ich: 'wusste', du: 'wusstest', er_sie_es: 'wusste', wir: 'wussten', ihr: 'wusstet', Sie: 'wussten' },
    partizip_2: 'gewusst',
    konjunktiv_ii: { ich: 'wüsste', du: 'wüsstest', er_sie_es: 'wüsste', wir: 'wüssten', ihr: 'wüsstet', Sie: 'wüssten' }
  },
  'können': {
    praesens: { ich: 'kann', du: 'kannst', er_sie_es: 'kann', wir: 'können', ihr: 'könnt', Sie: 'können' },
    praeteritum: { ich: 'konnte', du: 'konntest', er_sie_es: 'konnte', wir: 'konnten', ihr: 'konntet', Sie: 'konnten' },
    partizip_2: 'gekonnt',
    konjunktiv_ii: { ich: 'könnte', du: 'könntest', er_sie_es: 'könnte', wir: 'könnten', ihr: 'könntet', Sie: 'könnten' }
  },
  'müssen': {
    praesens: { ich: 'muss', du: 'musst', er_sie_es: 'muss', wir: 'müssen', ihr: 'müsst', Sie: 'müssen' },
    praeteritum: { ich: 'musste', du: 'musstest', er_sie_es: 'musste', wir: 'mussten', ihr: 'musstet', Sie: 'mussten' },
    partizip_2: 'gemusst',
    konjunktiv_ii: { ich: 'müsste', du: 'müsstest', er_sie_es: 'müsste', wir: 'müssten', ihr: 'müsstet', Sie: 'müssten' }
  },
  'dürfen': {
    praesens: { ich: 'darf', du: 'darfst', er_sie_es: 'darf', wir: 'dürfen', ihr: 'dürft', Sie: 'dürfen' },
    praeteritum: { ich: 'durfte', du: 'durftest', er_sie_es: 'durfte', wir: 'durften', ihr: 'durftet', Sie: 'durften' },
    partizip_2: 'gedurft',
    konjunktiv_ii: { ich: 'dürfte', du: 'dürftest', er_sie_es: 'dürfte', wir: 'dürften', ihr: 'dürftet', Sie: 'dürften' }
  },
  'sollen': {
    praesens: { ich: 'soll', du: 'sollst', er_sie_es: 'soll', wir: 'sollen', ihr: 'sollt', Sie: 'sollen' },
    praeteritum: { ich: 'sollte', du: 'solltest', er_sie_es: 'sollte', wir: 'sollten', ihr: 'solltet', Sie: 'sollten' },
    partizip_2: 'gesollt',
    konjunktiv_ii: { ich: 'sollte', du: 'solltest', er_sie_es: 'sollte', wir: 'sollten', ihr: 'solltet', Sie: 'sollten' }
  },
  'wollen': {
    praesens: { ich: 'will', du: 'willst', er_sie_es: 'will', wir: 'wollen', ihr: 'wollt', Sie: 'wollen' },
    praeteritum: { ich: 'wollte', du: 'wolltest', er_sie_es: 'wollte', wir: 'wollten', ihr: 'wolltet', Sie: 'wollten' },
    partizip_2: 'gewollt',
    konjunktiv_ii: { ich: 'wollte', du: 'wolltest', er_sie_es: 'wollte', wir: 'wollten', ihr: 'wolltet', Sie: 'wollten' }
  },
  'mögen': {
    praesens: { ich: 'mag', du: 'magst', er_sie_es: 'mag', wir: 'mögen', ihr: 'mögt', Sie: 'mögen' },
    praeteritum: { ich: 'mochte', du: 'mochtest', er_sie_es: 'mochte', wir: 'mochten', ihr: 'mochtet', Sie: 'mochten' },
    partizip_2: 'gemocht',
    konjunktiv_ii: { ich: 'möchte', du: 'möchtest', er_sie_es: 'möchte', wir: 'möchten', ihr: 'möchtet', Sie: 'möchten' }
  },
  'gehen': {
    praesens: {},
    praeteritum: { ich: 'ging', du: 'gingst', er_sie_es: 'ging', wir: 'gingen', ihr: 'gingt', Sie: 'gingen' },
    partizip_2: 'gegangen',
    konjunktiv_ii: {}
  },
  'stehen': {
    praesens: {},
    praeteritum: { ich: 'stand', du: 'standst', er_sie_es: 'stand', wir: 'standen', ihr: 'standet', Sie: 'standen' },
    partizip_2: 'gestanden',
    konjunktiv_ii: {}
  },
  'bringen': {
    praesens: {},
    praeteritum: { ich: 'brachte', du: 'brachtest', er_sie_es: 'brachte', wir: 'brachten', ihr: 'brachtet', Sie: 'brachten' },
    partizip_2: 'gebracht',
    konjunktiv_ii: {}
  },
  'denken': {
    praesens: {},
    praeteritum: { ich: 'dachte', du: 'dachtest', er_sie_es: 'dachte', wir: 'dachten', ihr: 'dachtet', Sie: 'dachten' },
    partizip_2: 'gedacht',
    konjunktiv_ii: {}
  },
  'kennen': {
    praesens: {},
    praeteritum: { ich: 'kannte', du: 'kanntest', er_sie_es: 'kannte', wir: 'kannten', ihr: 'kanntet', Sie: 'kannten' },
    partizip_2: 'gekannt',
    konjunktiv_ii: {}
  },
  'nennen': {
    praesens: {},
    praeteritum: { ich: 'nannte', du: 'nanntest', er_sie_es: 'nannte', wir: 'nannten', ihr: 'nanntet', Sie: 'nannten' },
    partizip_2: 'genannt',
    konjunktiv_ii: {}
  },
  'brennen': {
    praesens: {},
    praeteritum: { ich: 'brannte', du: 'branntest', er_sie_es: 'brannte', wir: 'brannten', ihr: 'branntet', Sie: 'brannten' },
    partizip_2: 'gebrannt',
    konjunktiv_ii: {}
  },
  'rennen': {
    praesens: {},
    praeteritum: { ich: 'rannte', du: 'ranntest', er_sie_es: 'rannte', wir: 'rannten', ihr: 'ranntet', Sie: 'rannten' },
    partizip_2: 'gerannt',
    konjunktiv_ii: {}
  },
  'senden': {
    praesens: {},
    praeteritum: { ich: 'sandte', du: 'sandtest', er_sie_es: 'sandte', wir: 'sandten', ihr: 'sandtet', Sie: 'sandten' },
    partizip_2: 'gesandt',
    konjunktiv_ii: {}
  },
  'wenden': {
    praesens: {},
    praeteritum: { ich: 'wandte', du: 'wandtest', er_sie_es: 'wandte', wir: 'wandten', ihr: 'wandtet', Sie: 'wandten' },
    partizip_2: 'gewandt',
    konjunktiv_ii: {}
  },
  'tun': {
    praesens: { ich: 'tue', du: 'tust', er_sie_es: 'tut', wir: 'tun', ihr: 'tut', Sie: 'tun' },
    praeteritum: { ich: 'tat', du: 'tatst', er_sie_es: 'tat', wir: 'taten', ihr: 'tatet', Sie: 'taten' },
    partizip_2: 'getan',
    konjunktiv_ii: {}
  },
  'lassen': {
    praesens: {},
    praeteritum: { ich: 'ließ', du: 'ließt', er_sie_es: 'ließ', wir: 'ließen', ihr: 'ließt', Sie: 'ließen' },
    partizip_2: 'gelassen',
    konjunktiv_ii: {}
  },
  'lesen': {
    praesens: { ich: 'lese', du: 'liest', er_sie_es: 'liest', wir: 'lesen', ihr: 'lest', Sie: 'lesen' },
    praeteritum: { ich: 'las', du: 'last', er_sie_es: 'las', wir: 'lasen', ihr: 'last', Sie: 'lasen' },
    partizip_2: 'gelesen',
    konjunktiv_ii: {}
  },
  'sehen': {
    praesens: { ich: 'sehe', du: 'siehst', er_sie_es: 'sieht', wir: 'sehen', ihr: 'seht', Sie: 'sehen' },
    praeteritum: { ich: 'sah', du: 'sahst', er_sie_es: 'sah', wir: 'sahen', ihr: 'saht', Sie: 'sahen' },
    partizip_2: 'gesehen',
    konjunktiv_ii: {}
  },
  'geben': {
    praesens: { ich: 'gebe', du: 'gibst', er_sie_es: 'gibt', wir: 'geben', ihr: 'gebt', Sie: 'geben' },
    praeteritum: { ich: 'gab', du: 'gabst', er_sie_es: 'gab', wir: 'gaben', ihr: 'gabt', Sie: 'gaben' },
    partizip_2: 'gegeben',
    konjunktiv_ii: {}
  },
  'nehmen': {
    praesens: { ich: 'nehme', du: 'nimmst', er_sie_es: 'nimmt', wir: 'nehmen', ihr: 'nehmt', Sie: 'nehmen' },
    praeteritum: { ich: 'nahm', du: 'nahmst', er_sie_es: 'nahm', wir: 'nahmen', ihr: 'nahmt', Sie: 'nahmen' },
    partizip_2: 'genommen',
    konjunktiv_ii: {}
  },
  'essen': {
    praesens: { ich: 'esse', du: 'isst', er_sie_es: 'isst', wir: 'essen', ihr: 'esst', Sie: 'essen' },
    praeteritum: { ich: 'aß', du: 'aßt', er_sie_es: 'aß', wir: 'aßen', ihr: 'aßt', Sie: 'aßen' },
    partizip_2: 'gegessen',
    konjunktiv_ii: {}
  },
  'fahren': {
    praesens: {},
    praeteritum: { ich: 'fuhr', du: 'fuhrst', er_sie_es: 'fuhr', wir: 'fuhren', ihr: 'fuhrt', Sie: 'fuhren' },
    partizip_2: 'gefahren',
    konjunktiv_ii: {}
  },
  'sprechen': {
    praesens: { ich: 'spreche', du: 'sprichst', er_sie_es: 'spricht', wir: 'sprechen', ihr: 'sprecht', Sie: 'sprechen' },
    praeteritum: { ich: 'sprach', du: 'sprachst', er_sie_es: 'sprach', wir: 'sprachen', ihr: 'spracht', Sie: 'sprachen' },
    partizip_2: 'gesprochen',
    konjunktiv_ii: {}
  },
  'kommen': {
    praesens: {},
    praeteritum: { ich: 'kam', du: 'kamst', er_sie_es: 'kam', wir: 'kamen', ihr: 'kamt', Sie: 'kamen' },
    partizip_2: 'gekommen',
    konjunktiv_ii: {}
  },
  'finden': {
    praesens: {},
    praeteritum: { ich: 'fand', du: 'fandst', er_sie_es: 'fand', wir: 'fanden', ihr: 'fandet', Sie: 'fanden' },
    partizip_2: 'gefunden',
    konjunktiv_ii: {}
  },
  'bleiben': {
    praesens: {},
    praeteritum: { ich: 'blieb', du: 'bliebst', er_sie_es: 'blieb', wir: 'blieben', ihr: 'bliebt', Sie: 'blieben' },
    partizip_2: 'geblieben',
    konjunktiv_ii: {}
  },
  'liegen': {
    praesens: {},
    praeteritum: { ich: 'lag', du: 'lagst', er_sie_es: 'lag', wir: 'lagen', ihr: 'lagt', Sie: 'lagen' },
    partizip_2: 'gelegen',
    konjunktiv_ii: {}
  },
  'sitzen': {
    praesens: {},
    praeteritum: { ich: 'saß', du: 'saßt', er_sie_es: 'saß', wir: 'saßen', ihr: 'saßt', Sie: 'saßen' },
    partizip_2: 'gesessen',
    konjunktiv_ii: {}
  },
  'treffen': {
    praesens: { ich: 'treffe', du: 'triffst', er_sie_es: 'trifft', wir: 'treffen', ihr: 'trefft', Sie: 'treffen' },
    praeteritum: { ich: 'traf', du: 'trafst', er_sie_es: 'traf', wir: 'trafen', ihr: 'traft', Sie: 'trafen' },
    partizip_2: 'getroffen',
    konjunktiv_ii: {}
  },
  'schreiben': {
    praesens: {},
    praeteritum: { ich: 'schrieb', du: 'schriebst', er_sie_es: 'schrieb', wir: 'schrieben', ihr: 'schriebt', Sie: 'schrieben' },
    partizip_2: 'geschrieben',
    konjunktiv_ii: {}
  },
  'ziehen': {
    praesens: {},
    praeteritum: { ich: 'zog', du: 'zogst', er_sie_es: 'zog', wir: 'zogen', ihr: 'zogt', Sie: 'zogen' },
    partizip_2: 'gezogen',
    konjunktiv_ii: {}
  },
  'helfen': {
    praesens: { ich: 'helfe', du: 'hilfst', er_sie_es: 'hilft', wir: 'helfen', ihr: 'helft', Sie: 'helfen' },
    praeteritum: { ich: 'half', du: 'halfst', er_sie_es: 'half', wir: 'halfen', ihr: 'halft', Sie: 'halfen' },
    partizip_2: 'geholfen',
    konjunktiv_ii: {}
  },
  'tragen': {
    praesens: {},
    praeteritum: { ich: 'trug', du: 'trugst', er_sie_es: 'trug', wir: 'trugen', ihr: 'trugt', Sie: 'trugen' },
    partizip_2: 'getragen',
    konjunktiv_ii: {}
  },
  'laufen': {
    praesens: {},
    praeteritum: { ich: 'lief', du: 'liefst', er_sie_es: 'lief', wir: 'liefen', ihr: 'lieft', Sie: 'liefen' },
    partizip_2: 'gelaufen',
    konjunktiv_ii: {}
  },
  'heißen': {
    praesens: { ich: 'heiße', du: 'heißt', er_sie_es: 'heißt', wir: 'heißen', ihr: 'heißt', Sie: 'heißen' },
    praeteritum: { ich: 'hieß', du: 'hießt', er_sie_es: 'hieß', wir: 'hießen', ihr: 'hießt', Sie: 'hießen' },
    partizip_2: 'geheißen',
    konjunktiv_ii: {}
  },
  'schlafen': {
    praesens: {},
    praeteritum: { ich: 'schlief', du: 'schliefst', er_sie_es: 'schlief', wir: 'schliefen', ihr: 'schlieft', Sie: 'schliefen' },
    partizip_2: 'geschlafen',
    konjunktiv_ii: {}
  },
  'halten': {
    praesens: {},
    praeteritum: { ich: 'hielt', du: 'hieltst', er_sie_es: 'hielt', wir: 'hielten', ihr: 'hieltet', Sie: 'hielten' },
    partizip_2: 'gehalten',
    konjunktiv_ii: {}
  },
  'fangen': {
    praesens: {},
    praeteritum: { ich: 'fing', du: 'fingst', er_sie_es: 'fing', wir: 'fingen', ihr: 'fingt', Sie: 'fingen' },
    partizip_2: 'gefangen',
    konjunktiv_ii: {}
  },
  'sterben': {
    praesens: { ich: 'sterbe', du: 'stirbst', er_sie_es: 'stirbt', wir: 'sterben', ihr: 'sterbt', Sie: 'sterben' },
    praeteritum: { ich: 'starb', du: 'starbst', er_sie_es: 'starb', wir: 'starben', ihr: 'starbt', Sie: 'starben' },
    partizip_2: 'gestorben',
    konjunktiv_ii: {}
  },
  'werfen': {
    praesens: { ich: 'werfe', du: 'wirfst', er_sie_es: 'wirft', wir: 'werfen', ihr: 'werft', Sie: 'werfen' },
    praeteritum: { ich: 'warf', du: 'warfst', er_sie_es: 'warf', wir: 'warfen', ihr: 'warft', Sie: 'warfen' },
    partizip_2: 'geworfen',
    konjunktiv_ii: {}
  },
  'fliegen': {
    praesens: {},
    praeteritum: { ich: 'flog', du: 'flogst', er_sie_es: 'flog', wir: 'flogen', ihr: 'flogt', Sie: 'flogen' },
    partizip_2: 'geflogen',
    konjunktiv_ii: {}
  },
  'schwimmen': {
    praesens: {},
    praeteritum: { ich: 'schwamm', du: 'schwammst', er_sie_es: 'schwamm', wir: 'schwammen', ihr: 'schwammt', Sie: 'schwammen' },
    partizip_2: 'geschwommen',
    konjunktiv_ii: {}
  },
  'singen': {
    praesens: {},
    praeteritum: { ich: 'sang', du: 'sangst', er_sie_es: 'sang', wir: 'sangen', ihr: 'sangt', Sie: 'sangen' },
    partizip_2: 'gesungen',
    konjunktiv_ii: {}
  },
  'trinken': {
    praesens: {},
    praeteritum: { ich: 'trank', du: 'trankst', er_sie_es: 'trank', wir: 'tranken', ihr: 'trankt', Sie: 'tranken' },
    partizip_2: 'getrunken',
    konjunktiv_ii: {}
  },
  'beginnen': {
    praesens: {},
    praeteritum: { ich: 'begann', du: 'begannst', er_sie_es: 'begann', wir: 'begannen', ihr: 'begannt', Sie: 'begannen' },
    partizip_2: 'begonnen',
    konjunktiv_ii: {}
  },
  'gewinnen': {
    praesens: {},
    praeteritum: { ich: 'gewann', du: 'gewannst', er_sie_es: 'gewann', wir: 'gewannen', ihr: 'gewannt', Sie: 'gewannen' },
    partizip_2: 'gewonnen',
    konjunktiv_ii: {}
  },
  'bitten': {
    praesens: {},
    praeteritum: { ich: 'bat', du: 'batst', er_sie_es: 'bat', wir: 'baten', ihr: 'batet', Sie: 'baten' },
    partizip_2: 'gebeten',
    konjunktiv_ii: {}
  },
  'schneiden': {
    praesens: {},
    praeteritum: { ich: 'schnitt', du: 'schnittst', er_sie_es: 'schnitt', wir: 'schnitten', ihr: 'schnittet', Sie: 'schnitten' },
    partizip_2: 'geschnitten',
    konjunktiv_ii: {}
  },
  'leiden': {
    praesens: {},
    praeteritum: { ich: 'litt', du: 'littst', er_sie_es: 'litt', wir: 'litten', ihr: 'littet', Sie: 'litten' },
    partizip_2: 'gelitten',
    konjunktiv_ii: {}
  },
  'streiten': {
    praesens: {},
    praeteritum: { ich: 'stritt', du: 'strittst', er_sie_es: 'stritt', wir: 'stritten', ihr: 'strittet', Sie: 'stritten' },
    partizip_2: 'gestritten',
    konjunktiv_ii: {}
  },
  'reiten': {
    praesens: {},
    praeteritum: { ich: 'ritt', du: 'rittst', er_sie_es: 'ritt', wir: 'ritten', ihr: 'rittet', Sie: 'ritten' },
    partizip_2: 'geritten',
    konjunktiv_ii: {}
  },
  'scheinen': {
    praesens: {},
    praeteritum: { ich: 'schien', du: 'schienst', er_sie_es: 'schien', wir: 'schienen', ihr: 'schient', Sie: 'schienen' },
    partizip_2: 'geschienen',
    konjunktiv_ii: {}
  },
  'steigen': {
    praesens: {},
    praeteritum: { ich: 'stieg', du: 'stiegst', er_sie_es: 'stieg', wir: 'stiegen', ihr: 'stiegt', Sie: 'stiegen' },
    partizip_2: 'gestiegen',
    konjunktiv_ii: {}
  },
  'treiben': {
    praesens: {},
    praeteritum: { ich: 'trieb', du: 'triebst', er_sie_es: 'trieb', wir: 'trieben', ihr: 'triebt', Sie: 'trieben' },
    partizip_2: 'getrieben',
    konjunktiv_ii: {}
  },
  'schließen': {
    praesens: {},
    praeteritum: { ich: 'schloss', du: 'schlossest', er_sie_es: 'schloss', wir: 'schlossen', ihr: 'schlosst', Sie: 'schlossen' },
    partizip_2: 'geschlossen',
    konjunktiv_ii: {}
  },
  'genießen': {
    praesens: {},
    praeteritum: { ich: 'genoss', du: 'genossest', er_sie_es: 'genoss', wir: 'genossen', ihr: 'genosst', Sie: 'genossen' },
    partizip_2: 'genossen',
    konjunktiv_ii: {}
  },
  'verlieren': {
    praesens: {},
    praeteritum: { ich: 'verlor', du: 'verlorst', er_sie_es: 'verlor', wir: 'verloren', ihr: 'verlort', Sie: 'verloren' },
    partizip_2: 'verloren',
    konjunktiv_ii: {}
  },
  'bieten': {
    praesens: {},
    praeteritum: { ich: 'bot', du: 'botst', er_sie_es: 'bot', wir: 'boten', ihr: 'botet', Sie: 'boten' },
    partizip_2: 'geboten',
    konjunktiv_ii: {}
  },
  'schießen': {
    praesens: {},
    praeteritum: { ich: 'schoss', du: 'schossest', er_sie_es: 'schoss', wir: 'schossen', ihr: 'schosst', Sie: 'schossen' },
    partizip_2: 'geschossen',
    konjunktiv_ii: {}
  },
  'beweisen': {
    praesens: {},
    praeteritum: { ich: 'bewies', du: 'bewiesest', er_sie_es: 'bewies', wir: 'bewiesen', ihr: 'bewiest', Sie: 'bewiesen' },
    partizip_2: 'bewiesen',
    konjunktiv_ii: {}
  },
  'erschrecken': {
    praesens: { ich: 'erschrecke', du: 'erschrickst', er_sie_es: 'erschrickt', wir: 'erschrecken', ihr: 'erschreckt', Sie: 'erschrecken' },
    praeteritum: { ich: 'erschrak', du: 'erschrakst', er_sie_es: 'erschrak', wir: 'erschraken', ihr: 'erschrakt', Sie: 'erschraken' },
    partizip_2: 'erschrocken',
    konjunktiv_ii: {}
  },
  'geschehen': {
    praesens: { ich: 'geschehe', du: 'geschiehst', er_sie_es: 'geschieht', wir: 'geschehen', ihr: 'gescheht', Sie: 'geschehen' },
    praeteritum: { ich: 'geschah', du: 'geschahst', er_sie_es: 'geschah', wir: 'geschahen', ihr: 'geschaht', Sie: 'geschahen' },
    partizip_2: 'geschehen',
    konjunktiv_ii: {}
  },
  'empfehlen': {
    praesens: { ich: 'empfehle', du: 'empfiehlst', er_sie_es: 'empfiehlt', wir: 'empfehlen', ihr: 'empfehlt', Sie: 'empfehlen' },
    praeteritum: { ich: 'empfahl', du: 'empfahlst', er_sie_es: 'empfahl', wir: 'empfahlen', ihr: 'empfahlt', Sie: 'empfahlen' },
    partizip_2: 'empfohlen',
    konjunktiv_ii: {}
  },
  'rufen': {
    praesens: {},
    praeteritum: { ich: 'rief', du: 'riefst', er_sie_es: 'rief', wir: 'riefen', ihr: 'rieft', Sie: 'riefen' },
    partizip_2: 'gerufen',
    konjunktiv_ii: {}
  },
  'stoßen': {
    praesens: {},
    praeteritum: { ich: 'stieß', du: 'stießest', er_sie_es: 'stieß', wir: 'stießen', ihr: 'stießt', Sie: 'stießen' },
    partizip_2: 'gestoßen',
    konjunktiv_ii: {}
  },
  'wachsen': {
    praesens: {},
    praeteritum: { ich: 'wuchs', du: 'wuchsest', er_sie_es: 'wuchs', wir: 'wuchsen', ihr: 'wuchst', Sie: 'wuchsen' },
    partizip_2: 'gewachsen',
    konjunktiv_ii: {}
  },
  'backen': {
    praesens: {},
    praeteritum: { ich: 'backte', du: 'backtest', er_sie_es: 'backte', wir: 'backten', ihr: 'backtet', Sie: 'backten' },
    partizip_2: 'gebacken',
    konjunktiv_ii: {}
  },
  'laden': {
    praesens: {},
    praeteritum: { ich: 'lud', du: 'ludst', er_sie_es: 'lud', wir: 'luden', ihr: 'ludet', Sie: 'luden' },
    partizip_2: 'geladen',
    konjunktiv_ii: {}
  },
  'schelten': {
    praesens: { ich: 'schelte', du: 'schiltst', er_sie_es: 'schilt', wir: 'schelten', ihr: 'scheltet', Sie: 'schelten' },
    praeteritum: { ich: 'schalt', du: 'schaltst', er_sie_es: 'schalt', wir: 'schalten', ihr: 'schaltet', Sie: 'schalten' },
    partizip_2: 'gescholten',
    konjunktiv_ii: {}
  },
  'gelten': {
    praesens: { ich: 'gelte', du: 'giltst', er_sie_es: 'gilt', wir: 'gelten', ihr: 'geltet', Sie: 'gelten' },
    praeteritum: { ich: 'galt', du: 'galtst', er_sie_es: 'galt', wir: 'galten', ihr: 'galtet', Sie: 'galten' },
    partizip_2: 'gegolten',
    konjunktiv_ii: {}
  },
  'bergen': {
    praesens: { ich: 'berge', du: 'birgst', er_sie_es: 'birgt', wir: 'bergen', ihr: 'bergt', Sie: 'bergen' },
    praeteritum: { ich: 'barg', du: 'bargst', er_sie_es: 'barg', wir: 'bargen', ihr: 'bargt', Sie: 'bargen' },
    partizip_2: 'geborgen',
    konjunktiv_ii: {}
  },
  'verderben': {
    praesens: { ich: 'verderbe', du: 'verdirbst', er_sie_es: 'verdirbt', wir: 'verderben', ihr: 'verderbt', Sie: 'verderben' },
    praeteritum: { ich: 'verdarb', du: 'verdarbst', er_sie_es: 'verdarb', wir: 'verdarben', ihr: 'verdarbt', Sie: 'verdarben' },
    partizip_2: 'verdorben',
    konjunktiv_ii: {}
  },
  'löschen': {
    praesens: {},
    praeteritum: { ich: 'löschte', du: 'löschtest', er_sie_es: 'löschte', wir: 'löschten', ihr: 'löschtet', Sie: 'löschten' },
    partizip_2: 'gelöscht',
    konjunktiv_ii: {}
  },
  'erlöschen': {
    praesens: { ich: 'erlösche', du: 'erlischst', er_sie_es: 'erlischt', wir: 'erlöschen', ihr: 'erlöscht', Sie: 'erlöschen' },
    praeteritum: { ich: 'erlosch', du: 'erloschst', er_sie_es: 'erlosch', wir: 'erloschen', ihr: 'erloscht', Sie: 'erloschen' },
    partizip_2: 'erloschen',
    konjunktiv_ii: {}
  },
  'schaffen': {
    praesens: {},
    praeteritum: { ich: 'schuf', du: 'schufst', er_sie_es: 'schuf', wir: 'schufen', ihr: 'schuft', Sie: 'schufen' },
    partizip_2: 'geschaffen',
    konjunktiv_ii: {}
  },
  'schweigen': {
    praesens: {},
    praeteritum: { ich: 'schwieg', du: 'schwiegst', er_sie_es: 'schwieg', wir: 'schwiegen', ihr: 'schwiegt', Sie: 'schwiegen' },
    partizip_2: 'geschwiegen',
    konjunktiv_ii: {}
  },
  'hängen': {
    praesens: {},
    praeteritum: { ich: 'hing', du: 'hingst', er_sie_es: 'hing', wir: 'hingen', ihr: 'hingt', Sie: 'hingen' },
    partizip_2: 'gehangen',
    konjunktiv_ii: {}
  },
  'klingen': {
    praesens: {},
    praeteritum: { ich: 'klang', du: 'klangst', er_sie_es: 'klang', wir: 'klangen', ihr: 'klangt', Sie: 'klangen' },
    partizip_2: 'geklungen',
    konjunktiv_ii: {}
  },
  'springen': {
    praesens: {},
    praeteritum: { ich: 'sprang', du: 'sprangst', er_sie_es: 'sprang', wir: 'sprangen', ihr: 'sprangt', Sie: 'sprangen' },
    partizip_2: 'gesprungen',
    konjunktiv_ii: {}
  },
  'ringen': {
    praesens: {},
    praeteritum: { ich: 'rang', du: 'rangst', er_sie_es: 'rang', wir: 'rangen', ihr: 'rangt', Sie: 'rangen' },
    partizip_2: 'gerungen',
    konjunktiv_ii: {}
  },
  'zwingen': {
    praesens: {},
    praeteritum: { ich: 'zwang', du: 'zwangst', er_sie_es: 'zwang', wir: 'zwangen', ihr: 'zwangt', Sie: 'zwangen' },
    partizip_2: 'gezwungen',
    konjunktiv_ii: {}
  },
  'dringen': {
    praesens: {},
    praeteritum: { ich: 'drang', du: 'drangst', er_sie_es: 'drang', wir: 'drangen', ihr: 'drangt', Sie: 'drangen' },
    partizip_2: 'gedrungen',
    konjunktiv_ii: {}
  },
  'sinken': {
    praesens: {},
    praeteritum: { ich: 'sank', du: 'sankst', er_sie_es: 'sank', wir: 'sanken', ihr: 'sankt', Sie: 'sanken' },
    partizip_2: 'gesunken',
    konjunktiv_ii: {}
  },
  'stinken': {
    praesens: {},
    praeteritum: { ich: 'stank', du: 'stankst', er_sie_es: 'stank', wir: 'stanken', ihr: 'stankt', Sie: 'stanken' },
    partizip_2: 'gestunken',
    konjunktiv_ii: {}
  },
  'schwinden': {
    praesens: {},
    praeteritum: { ich: 'schwand', du: 'schwandst', er_sie_es: 'schwand', wir: 'schwanden', ihr: 'schwandet', Sie: 'schwanden' },
    partizip_2: 'geschwunden',
    konjunktiv_ii: {}
  },
  'gleichen': {
    praesens: {},
    praeteritum: { ich: 'glich', du: 'glichst', er_sie_es: 'glich', wir: 'glichen', ihr: 'glicht', Sie: 'glichen' },
    partizip_2: 'geglichen',
    konjunktiv_ii: {}
  },
  'weichen': {
    praesens: {},
    praeteritum: { ich: 'wich', du: 'wichst', er_sie_es: 'wich', wir: 'wichen', ihr: 'wicht', Sie: 'wichen' },
    partizip_2: 'gewichen',
    konjunktiv_ii: {}
  },
  'schleichen': {
    praesens: {},
    praeteritum: { ich: 'schlich', du: 'schlichst', er_sie_es: 'schlich', wir: 'schlichen', ihr: 'schlicht', Sie: 'schlichen' },
    partizip_2: 'geschlichen',
    konjunktiv_ii: {}
  },
  'kriechen': {
    praesens: {},
    praeteritum: { ich: 'kroch', du: 'krochst', er_sie_es: 'kroch', wir: 'krochen', ihr: 'krocht', Sie: 'krochen' },
    partizip_2: 'gekrochen',
    konjunktiv_ii: {}
  },
  'fliehen': {
    praesens: {},
    praeteritum: { ich: 'floh', du: 'flohst', er_sie_es: 'floh', wir: 'flohen', ihr: 'floht', Sie: 'flohen' },
    partizip_2: 'geflohen',
    konjunktiv_ii: {}
  },
  'schieben': {
    praesens: {},
    praeteritum: { ich: 'schob', du: 'schobst', er_sie_es: 'schob', wir: 'schoben', ihr: 'schobt', Sie: 'schoben' },
    partizip_2: 'geschoben',
    konjunktiv_ii: {}
  },
  'heben': {
    praesens: {},
    praeteritum: { ich: 'hob', du: 'hobst', er_sie_es: 'hob', wir: 'hoben', ihr: 'hobt', Sie: 'hoben' },
    partizip_2: 'gehoben',
    konjunktiv_ii: {}
  },
  'frieren': {
    praesens: {},
    praeteritum: { ich: 'fror', du: 'frorst', er_sie_es: 'fror', wir: 'froren', ihr: 'frort', Sie: 'froren' },
    partizip_2: 'gefroren',
    konjunktiv_ii: {}
  },
  'verlöschen': {
    praesens: {},
    praeteritum: { ich: 'verlosch', du: 'verloschst', er_sie_es: 'verlosch', wir: 'verloschen', ihr: 'verloscht', Sie: 'verloschen' },
    partizip_2: 'verloschen',
    konjunktiv_ii: {}
  },
  'wiegen': {
    praesens: {},
    praeteritum: { ich: 'wog', du: 'wogst', er_sie_es: 'wog', wir: 'wogen', ihr: 'wogt', Sie: 'wogen' },
    partizip_2: 'gewogen',
    konjunktiv_ii: {}
  },
  'lügen': {
    praesens: {},
    praeteritum: { ich: 'log', du: 'logst', er_sie_es: 'log', wir: 'logen', ihr: 'logt', Sie: 'logen' },
    partizip_2: 'gelogen',
    konjunktiv_ii: {}
  },
  'betrügen': {
    praesens: {},
    praeteritum: { ich: 'betrog', du: 'betrogst', er_sie_es: 'betrog', wir: 'betrogen', ihr: 'betrogt', Sie: 'betrogen' },
    partizip_2: 'betrogen',
    konjunktiv_ii: {}
  },
  'bewegen': {
    praesens: {},
    praeteritum: { ich: 'bewog', du: 'bewogst', er_sie_es: 'bewog', wir: 'bewogen', ihr: 'bewogt', Sie: 'bewogen' },
    partizip_2: 'bewogen',
    konjunktiv_ii: {}
  },
  'schmelzen': {
    praesens: {},
    praeteritum: { ich: 'schmolz', du: 'schmolzest', er_sie_es: 'schmolz', wir: 'schmolzen', ihr: 'schmolzt', Sie: 'schmolzen' },
    partizip_2: 'geschmolzen',
    konjunktiv_ii: {}
  },
  'quellen': {
    praesens: {},
    praeteritum: { ich: 'quoll', du: 'quollst', er_sie_es: 'quoll', wir: 'quollen', ihr: 'quollt', Sie: 'quollen' },
    partizip_2: 'gequollen',
    konjunktiv_ii: {}
  },
  'schallen': {
    praesens: {},
    praeteritum: { ich: 'scholl', du: 'schollst', er_sie_es: 'scholl', wir: 'schollen', ihr: 'schollt', Sie: 'schollen' },
    partizip_2: 'geschollen',
    konjunktiv_ii: {}
  },
  'mahlen': {
    praesens: {},
    praeteritum: { ich: 'mahlte', du: 'mahltest', er_sie_es: 'mahlte', wir: 'mahlten', ihr: 'mahltet', Sie: 'mahlten' },
    partizip_2: 'gemahlen',
    konjunktiv_ii: {}
  },
  'salzen': {
    praesens: {},
    praeteritum: { ich: 'salzte', du: 'salztest', er_sie_es: 'salzte', wir: 'salzten', ihr: 'salztet', Sie: 'salzten' },
    partizip_2: 'gesalzen',
    konjunktiv_ii: {}
  },
  'spalten': {
    praesens: {},
    praeteritum: { ich: 'spaltete', du: 'spaltetest', er_sie_es: 'spaltete', wir: 'spalteten', ihr: 'spaltetet', Sie: 'spalteten' },
    partizip_2: 'gespalten',
    konjunktiv_ii: {}
  },
  'stecken': {
    praesens: {},
    praeteritum: { ich: 'steckte', du: 'stecktest', er_sie_es: 'steckte', wir: 'steckten', ihr: 'stecktet', Sie: 'steckten' },
    partizip_2: 'gesteckt',
    konjunktiv_ii: {}
  }
}

function getPersonalEnding(tense: string, person: string, stem: string, vowelChange: string | null): string {
  const endsWithDent = /[dt]$/.test(stem)
  const endsWithSibilant = /[sßz]$/.test(stem)

  if (tense === 'praesens') {
    if (person === 'ich') return 'e'
    if (person === 'du') {
      if (endsWithSibilant) return 't'
      if (endsWithDent) return 'est'
      return 'st'
    }
    if (person === 'er_sie_es') {
      if (endsWithDent) return 'et'
      return 't'
    }
    if (person === 'wir') return 'en'
    if (person === 'ihr') return 't'
    if (person === 'Sie') return 'en'
  }

  if (tense === 'praeteritum') {
    if (person === 'ich') return 'te'
    if (person === 'du') return 'test'
    if (person === 'er_sie_es') return 'te'
    if (person === 'wir') return 'ten'
    if (person === 'ihr') return 'tet'
    if (person === 'Sie') return 'ten'
  }

  return ''
}

function generateRegularPraesens(infinitive: string, separablePrefix: string, stemOverride?: string): ConjugationResult {
  const st = stemOverride || stem(infinitive)
  const prefix = separablePrefix

  function applyPrefix(base: string): string {
    return prefix ? `${base} ${prefix}` : base
  }

  return {
    ich: applyPrefix(`${st}e`),
    du: applyPrefix(/[dt]$/.test(st) ? `${st}est` : /[sßz]$/.test(st) ? `${st}t` : `${st}st`),
    er_sie_es: applyPrefix(/[dt]$/.test(st) ? `${st}et` : `${st}t`),
    wir: applyPrefix(`${st}en`),
    ihr: applyPrefix(`${st}t`),
    Sie: applyPrefix(`${st}en`)
  }
}

function generateRegularPraeteritum(infinitive: string, separablePrefix: string, stemOverride?: string): ConjugationResult {
  const st = stemOverride || stem(infinitive)
  const prefix = separablePrefix

  function applyPrefix(base: string): string {
    return prefix ? `${base} ${prefix}` : base
  }

  return {
    ich: applyPrefix(`${st}te`),
    du: applyPrefix(`${st}test`),
    er_sie_es: applyPrefix(`${st}te`),
    wir: applyPrefix(`${st}ten`),
    ihr: applyPrefix(`${st}tet`),
    Sie: applyPrefix(`${st}ten`)
  }
}

function applyVowelChange(stem: string, change: string): string {
  const lastVowel = stem.match(/[aeiouäöü][^aeiouäöü]*$/)
  if (!lastVowel) return stem
  const idx = stem.lastIndexOf(lastVowel[0][0])
  return stem.slice(0, idx) + change + stem.slice(idx + 1)
}

// Recognized separable prefixes (longest first to avoid partial matches)
const KNOWN_SEPARABLE_PREFIXES = [
  'auf', 'an', 'ab', 'aus', 'bei', 'ein', 'mit', 'nach', 'vor', 'zu',
  'zurück', 'zusammen', 'weg', 'her', 'hin', 'los', 'fort', 'weiter',
  'fern', 'statt', 'um', 'durch', 'über', 'unter', 'wieder'
].sort((a, b) => b.length - a.length)

function splitSeparable(infinitive: string, declaredPrefix?: string): { base: string; prefix: string } {
  if (declaredPrefix) {
    if (infinitive.startsWith(declaredPrefix)) {
      return { base: infinitive.slice(declaredPrefix.length), prefix: declaredPrefix }
    }
  }
  for (const p of KNOWN_SEPARABLE_PREFIXES) {
    if (infinitive.startsWith(p) && infinitive.length > p.length + 2) {
      return { base: infinitive.slice(p.length), prefix: p }
    }
  }
  return { base: infinitive, prefix: '' }
}

export function generateConjugations(
  infinitive: string,
  verbType: string,
  partizip2: string,
  auxiliary: string,
  separablePrefix: string,
  isReflexive: boolean,
  praeteritumStem?: string
): VerbConjugations {
  const prefix = separablePrefix || ''
  const { base: baseForLookup } = prefix
    ? splitSeparable(infinitive, prefix)
    : { base: infinitive }
  const manual = manualIrregulars[infinitive] || manualIrregulars[baseForLookup]
  const st = stem(prefix ? baseForLookup : infinitive)
  const useAux = auxiliary === 'both' ? 'sein' : auxiliary

  function applySep(base: string): string {
    return prefix ? `${base} ${prefix}` : base
  }

  function applySepReverse(base: string): string {
    return prefix ? `${prefix}${base}` : base
  }

  // Get Partizip II
  let p2 = partizip2
  if (!p2) {
    if (verbType === 'regular') {
      p2 = prefix ? `${prefix}ge${st}t` : `ge${st}t`
    } else if (['separable', 'inseparable'].includes(verbType)) {
      p2 = prefix ? `${prefix}ge${st}t` : `${st}t`
    } else {
      p2 = prefix ? `${prefix}ge${st}en` : `ge${st}en`
    }
  }

  // Determine if auxiliary is sein
  const auxVerb = useAux === 'sein' ? 'sein' : 'haben'
  const auxConj = manualIrregulars[auxVerb]?.praesens || generateRegularPraesens(auxVerb, '')
  const auxPraet = manualIrregulars[auxVerb]?.praeteritum || generateRegularPraeteritum(auxVerb, '')

  // Present tense
  let praesens: ConjugationResult
  if (manual?.praesens && Object.keys(manual.praesens).length > 0) {
    praesens = manual.praesens
    if (prefix) {
      praesens = Object.fromEntries(
        Object.entries(praesens).map(([k, v]) => [k, v ? applySep(v as string) : v])
      ) as ConjugationResult
    }
  } else {
    praesens = generateRegularPraesens(infinitive, prefix)
  }

  // Präteritum
  let praeteritum: ConjugationResult
  if (manual?.praeteritum && Object.keys(manual.praeteritum).length > 0) {
    praeteritum = manual.praeteritum
    if (prefix) {
      praeteritum = Object.fromEntries(
        Object.entries(praeteritum).map(([k, v]) => [k, v ? applySep(v as string) : v])
      ) as ConjugationResult
    }
  } else {
    praeteritum = praeteritumStem
      ? {
          ich: `${praeteritumStem}te`,
          du: `${praeteritumStem}test`,
          er_sie_es: `${praeteritumStem}te`,
          wir: `${praeteritumStem}ten`,
          ihr: `${praeteritumStem}tet`,
          Sie: `${praeteritumStem}ten`
        }
      : verbType === 'regular'
        ? generateRegularPraeteritum(infinitive, prefix)
        : {
            ich: `${st}te`,
            du: `${st}test`,
            er_sie_es: `${st}te`,
            wir: `${st}ten`,
            ihr: `${st}tet`,
            Sie: `${st}ten`
          }
  }

  // Imperativ
  const duForm = praesens.du
  const ihrForm = praesens.ihr
  const sieFormStem = prefix ? `${st}en ${prefix}` : `${st}en`

  let duImp: string | null
  if (prefix) {
    duImp = `${st}e ${prefix}`
  } else {
    duImp = duForm ? duForm.replace(/st$/, '') : `${st}e`
    if (duImp === duForm) duImp = `${st}e`
    if (duImp === 'se') duImp = 'sei'
  }

  const imperativ: ConjugationResult = {
    ich: null,
    du: duImp || `${st}e`,
    er_sie_es: null,
    wir: null,
    ihr: ihrForm ? `${ihrForm.replace(/t$/, '') }t` : `${st}t`,
    Sie: `${sieFormStem}`
  }

  // Perfekt
  const perfekt: ConjugationResult = {
    ich: `${auxConj.ich} ${p2}`,
    du: `${auxConj.du} ${p2}`,
    er_sie_es: `${auxConj.er_sie_es} ${p2}`,
    wir: `${auxConj.wir} ${p2}`,
    ihr: `${auxConj.ihr} ${p2}`,
    Sie: `${auxConj.Sie} ${p2}`
  }

  // Plusquamperfekt
  const plusquamperfekt: ConjugationResult = {
    ich: `${auxPraet.ich} ${p2}`,
    du: `${auxPraet.du} ${p2}`,
    er_sie_es: `${auxPraet.er_sie_es} ${p2}`,
    wir: `${auxPraet.wir} ${p2}`,
    ihr: `${auxPraet.ihr} ${p2}`,
    Sie: `${auxPraet.Sie} ${p2}`
  }

  // Futur I
  const futuri: ConjugationResult = {
    ich: `werde ${infinitive}`,
    du: `wirst ${infinitive}`,
    er_sie_es: `wird ${infinitive}`,
    wir: `werden ${infinitive}`,
    ihr: `werdet ${infinitive}`,
    Sie: `werden ${infinitive}`
  }

  // Futur II
  const infinitiveAux = auxVerb === 'sein' ? 'sein' : 'haben'
  const futurii: ConjugationResult = {
    ich: `werde ${p2} ${infinitiveAux}`,
    du: `wirst ${p2} ${infinitiveAux}`,
    er_sie_es: `wird ${p2} ${infinitiveAux}`,
    wir: `werden ${p2} ${infinitiveAux}`,
    ihr: `werdet ${p2} ${infinitiveAux}`,
    Sie: `werden ${p2} ${infinitiveAux}`
  }

  // Konjunktiv II
  let konjunktivii: ConjugationResult
  if (manual?.konjunktiv_ii && Object.keys(manual.konjunktiv_ii).length > 0) {
    konjunktivii = manual.konjunktiv_ii
  } else {
    konjunktivii = {
      ich: `würde ${infinitive}`,
      du: `würdest ${infinitive}`,
      er_sie_es: `würde ${infinitive}`,
      wir: `würden ${infinitive}`,
      ihr: `würdet ${infinitive}`,
      Sie: `würden ${infinitive}`
    }
  }

  // Passiv (only for transitive verbs)
  const passiv: ConjugationResult | null = null

  return {
    praesens,
    praeteritum,
    perfekt,
    plusquamperfekt,
    futuri,
    futurii,
    konjunktivii,
    imperativ,
    passiv
  }
}

export function slugify(infinitive: string): string {
  return infinitive
    .toLowerCase()
    .replace(/^[^a-zäöüß]+/, '')
    .replace(/[^a-zäöüß0-9-]/g, '-')
    .replace(/-+/g, '-')
    .replace(/^-|-$/g, '')
}

export function generateIPA(infinitive: string, separablePrefix: string): string {
  const base = infinitive.replace(/en$/, 'ən')
  return separablePrefix
    ? `/${separablePrefix}ˈ${base}/`
    : `/${base}/`
}

export function generatePartizip2(infinitive: string, verbType: string, separablePrefix: string): string {
  const st = stem(infinitive)

  if (verbType === 'regular') {
    if (separablePrefix) {
      return `${separablePrefix}ge${st}t`
    }
    // Check if verb has inseparable prefix
    const inseparablePrefixes = ['be', 'ge', 'er', 'ver', 'zer', 'ent', 'emp', 'miss', 'wider', 'hinter']
    for (const ip of inseparablePrefixes) {
      if (infinitive.startsWith(ip) && infinitive.length > ip.length + 2) {
        return `${st}t`
      }
    }
    return `ge${st}t`
  }

  // Default fallback
  if (separablePrefix) {
    return `${separablePrefix}ge${st}en`
  }
  return `ge${st}en`
}
