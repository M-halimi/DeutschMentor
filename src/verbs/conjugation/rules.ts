const PERSONS = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie'] as const

function stem(infinitive: string): string {
  return infinitive.replace(/en$/, '').replace(/n$/, '')
}

export interface VerbRule {
  p1sg?: string
  p2sg?: string
  p3sg: string
  ps: string
  pp: string
  aux: 'haben' | 'sein'
  imp?: string
}

const IRREGULARS: Record<string, VerbRule> = {
  sein: { p1sg: 'bin', p2sg: 'bist', p3sg: 'ist', ps: 'war', pp: 'gewesen', aux: 'sein', imp: 'sei' },
  haben: { p2sg: 'hast', p3sg: 'hat', ps: 'hatte', pp: 'gehabt', aux: 'haben', imp: 'hab' },
  werden: { p2sg: 'wirst', p3sg: 'wird', ps: 'wurde', pp: 'geworden', aux: 'sein', imp: 'werd' },
  wissen: { p1sg: 'weiß', p2sg: 'weißt', p3sg: 'weiß', ps: 'wusste', pp: 'gewusst', aux: 'haben' },
  können: { p1sg: 'kann', p2sg: 'kannst', p3sg: 'kann', ps: 'konnte', pp: 'gekonnt', aux: 'haben' },
  müssen: { p1sg: 'muss', p2sg: 'musst', p3sg: 'muss', ps: 'musste', pp: 'gemusst', aux: 'haben' },
  dürfen: { p1sg: 'darf', p2sg: 'darfst', p3sg: 'darf', ps: 'durfte', pp: 'gedurft', aux: 'haben' },
  sollen: { p1sg: 'soll', p2sg: 'sollst', p3sg: 'soll', ps: 'sollte', pp: 'gesollt', aux: 'haben' },
  wollen: { p1sg: 'will', p2sg: 'willst', p3sg: 'will', ps: 'wollte', pp: 'gewollt', aux: 'haben' },
  mögen: { p1sg: 'mag', p2sg: 'magst', p3sg: 'mag', ps: 'mochte', pp: 'gemocht', aux: 'haben' },
  geben: { p2sg: 'gibst', p3sg: 'gibt', ps: 'gab', pp: 'gegeben', aux: 'haben' },
  gehen: { p3sg: 'geht', ps: 'ging', pp: 'gegangen', aux: 'sein' },
  kommen: { p2sg: 'kommst', p3sg: 'kommt', ps: 'kam', pp: 'gekommen', aux: 'sein' },
  stehen: { p3sg: 'steht', ps: 'stand', pp: 'gestanden', aux: 'haben' },
  bleiben: { p3sg: 'bleibt', ps: 'blieb', pp: 'geblieben', aux: 'sein' },
  reisen: { p3sg: 'reist', ps: 'reiste', pp: 'gereist', aux: 'sein' },
  fahren: { p2sg: 'fährst', p3sg: 'fährt', ps: 'fuhr', pp: 'gefahren', aux: 'sein' },
  fangen: { p2sg: 'fängst', p3sg: 'fängt', ps: 'fing', pp: 'gefangen', aux: 'haben' },
  fliegen: { p3sg: 'fliegt', ps: 'flog', pp: 'geflogen', aux: 'sein' },
  laufen: { p2sg: 'läufst', p3sg: 'läuft', ps: 'lief', pp: 'gelaufen', aux: 'sein' },
  springen: { p3sg: 'springt', ps: 'sprang', pp: 'gesprungen', aux: 'sein' },
  singen: { p3sg: 'singt', ps: 'sang', pp: 'gesungen', aux: 'haben' },
  trinken: { p3sg: 'trinkt', ps: 'trank', pp: 'getrunken', aux: 'haben' },
  finden: { p3sg: 'findet', ps: 'fand', pp: 'gefunden', aux: 'haben' },
  beginnen: { p3sg: 'beginnt', ps: 'begann', pp: 'begonnen', aux: 'haben' },
  gewinnen: { p3sg: 'gewinnt', ps: 'gewann', pp: 'gewonnen', aux: 'haben' },
  helfen: { p2sg: 'hilfst', p3sg: 'hilft', ps: 'half', pp: 'geholfen', aux: 'haben' },
  nehmen: { p2sg: 'nimmst', p3sg: 'nimmt', ps: 'nahm', pp: 'genommen', aux: 'haben' },
  sprechen: { p2sg: 'sprichst', p3sg: 'spricht', ps: 'sprach', pp: 'gesprochen', aux: 'haben' },
  treffen: { p2sg: 'triffst', p3sg: 'trifft', ps: 'traf', pp: 'getroffen', aux: 'haben' },
  werfen: { p2sg: 'wirfst', p3sg: 'wirft', ps: 'warf', pp: 'geworfen', aux: 'haben' },
  essen: { p2sg: 'isst', p3sg: 'isst', ps: 'aß', pp: 'gegessen', aux: 'haben' },
  fressen: { p2sg: 'frisst', p3sg: 'frisst', ps: 'fraß', pp: 'gefressen', aux: 'haben' },
  messen: { p2sg: 'misst', p3sg: 'misst', ps: 'maß', pp: 'gemessen', aux: 'haben' },
  vergessen: { p2sg: 'vergisst', p3sg: 'vergisst', ps: 'vergaß', pp: 'vergessen', aux: 'haben' },
  sehen: { p2sg: 'siehst', p3sg: 'sieht', ps: 'sah', pp: 'gesehen', aux: 'haben' },
  lesen: { p2sg: 'liest', p3sg: 'liest', ps: 'las', pp: 'gelesen', aux: 'haben' },
  liegen: { p3sg: 'liegt', ps: 'lag', pp: 'gelegen', aux: 'haben' },
  sitzen: { p3sg: 'sitzt', ps: 'saß', pp: 'gesessen', aux: 'haben' },
  tun: { p3sg: 'tut', ps: 'tat', pp: 'getan', aux: 'haben' },
  lassen: { p2sg: 'lässt', p3sg: 'lässt', ps: 'ließ', pp: 'gelassen', aux: 'haben' },
  heißen: { p3sg: 'heißt', ps: 'hieß', pp: 'geheißen', aux: 'haben' },
  schreiben: { p3sg: 'schreibt', ps: 'schrieb', pp: 'geschrieben', aux: 'haben' },
  greifen: { p3sg: 'greift', ps: 'griff', pp: 'gegriffen', aux: 'haben' },
  beißen: { p3sg: 'beißt', ps: 'biss', pp: 'gebissen', aux: 'haben' },
  gleichen: { p3sg: 'gleicht', ps: 'glich', pp: 'geglichen', aux: 'haben' },
  schließen: { p3sg: 'schließt', ps: 'schloss', pp: 'geschlossen', aux: 'haben' },
  ziehen: { p3sg: 'zieht', ps: 'zog', pp: 'gezogen', aux: 'haben' },
  tragen: { p2sg: 'trägst', p3sg: 'trägt', ps: 'trug', pp: 'getragen', aux: 'haben' },
  schlafen: { p2sg: 'schläfst', p3sg: 'schläft', ps: 'schlief', pp: 'geschlafen', aux: 'haben' },
  halten: { p2sg: 'hältst', p3sg: 'hält', ps: 'hielt', pp: 'gehalten', aux: 'haben' },
  laden: { p2sg: 'lädst', p3sg: 'lädt', ps: 'lud', pp: 'geladen', aux: 'haben' },
  raten: { p2sg: 'rätst', p3sg: 'rät', ps: 'riet', pp: 'geraten', aux: 'haben' },
  wachsen: { p2sg: 'wächst', p3sg: 'wächst', ps: 'wuchs', pp: 'gewachsen', aux: 'sein' },
  waschen: { p2sg: 'wäschst', p3sg: 'wäscht', ps: 'wusch', pp: 'gewaschen', aux: 'haben' },
  denken: { p3sg: 'denkt', ps: 'dachte', pp: 'gedacht', aux: 'haben' },
  bringen: { p3sg: 'bringt', ps: 'brachte', pp: 'gebracht', aux: 'haben' },
  nennen: { p3sg: 'nennt', ps: 'nannte', pp: 'genannt', aux: 'haben' },
  brennen: { p3sg: 'brennt', ps: 'brannte', pp: 'gebrannt', aux: 'haben' },
  kennen: { p3sg: 'kennt', ps: 'kannte', pp: 'gekannt', aux: 'haben' },
  senden: { p3sg: 'sendet', ps: 'sandte', pp: 'gesandt', aux: 'haben' },
  wenden: { p3sg: 'wendet', ps: 'wandte', pp: 'gewandt', aux: 'haben' },
  stehlen: { p2sg: 'stiehlst', p3sg: 'stiehlt', ps: 'stahl', pp: 'gestohlen', aux: 'haben' },
  empfehlen: { p2sg: 'empfiehlst', p3sg: 'empfiehlt', ps: 'empfahl', pp: 'empfohlen', aux: 'haben' },
  befehlen: { p2sg: 'befiehlst', p3sg: 'befiehlt', ps: 'befahl', pp: 'befohlen', aux: 'haben' },
  sterben: { p2sg: 'stirbst', p3sg: 'stirbt', ps: 'starb', pp: 'gestorben', aux: 'sein' },
  verderben: { p2sg: 'verdirbst', p3sg: 'verdirbt', ps: 'verdarb', pp: 'verdorben', aux: 'haben' },
  werben: { p2sg: 'wirbst', p3sg: 'wirbt', ps: 'warb', pp: 'geworben', aux: 'haben' },
  brechen: { p2sg: 'brichst', p3sg: 'bricht', ps: 'brach', pp: 'gebrochen', aux: 'haben' },
  stechen: { p2sg: 'stichst', p3sg: 'sticht', ps: 'stach', pp: 'gestochen', aux: 'haben' },
  treten: { p2sg: 'trittst', p3sg: 'tritt', ps: 'trat', pp: 'getreten', aux: 'sein' },
  schwimmen: { p3sg: 'schwimmt', ps: 'schwamm', pp: 'geschwommen', aux: 'sein' },
  klingen: { p3sg: 'klingt', ps: 'klang', pp: 'geklungen', aux: 'haben' },
  gelingen: { p3sg: 'gelingt', ps: 'gelang', pp: 'gelungen', aux: 'sein' },
  ringen: { p3sg: 'ringt', ps: 'rang', pp: 'gerungen', aux: 'haben' },
  zwingen: { p3sg: 'zwingt', ps: 'zwang', pp: 'gezwungen', aux: 'haben' },
  binden: { p3sg: 'bindet', ps: 'band', pp: 'gebunden', aux: 'haben' },
  dringen: { p3sg: 'dringt', ps: 'drang', pp: 'gedrungen', aux: 'sein' },
  kriechen: { p3sg: 'kriecht', ps: 'kroch', pp: 'gekrochen', aux: 'sein' },
  riechen: { p3sg: 'riecht', ps: 'roch', pp: 'gerochen', aux: 'haben' },
  fliehen: { p3sg: 'flieht', ps: 'floh', pp: 'geflohen', aux: 'sein' },
  genießen: { p3sg: 'genießt', ps: 'genoss', pp: 'genossen', aux: 'haben' },
  schießen: { p3sg: 'schießt', ps: 'schoss', pp: 'geschossen', aux: 'haben' },
  gießen: { p3sg: 'gießt', ps: 'goss', pp: 'gegossen', aux: 'haben' },
  wiegen: { p3sg: 'wiegt', ps: 'wog', pp: 'gewogen', aux: 'haben' },
  heben: { p3sg: 'hebt', ps: 'hob', pp: 'gehoben', aux: 'haben' },
  bewegen: { p3sg: 'bewegt', ps: 'bewog', pp: 'bewogen', aux: 'haben' },
  weben: { p3sg: 'webt', ps: 'wob', pp: 'geweben', aux: 'haben' },
  schaffen: { p3sg: 'schafft', ps: 'schuf', pp: 'geschaffen', aux: 'haben' },
  lügen: { p3sg: 'lügt', ps: 'log', pp: 'gelogen', aux: 'haben' },
  betrügen: { p3sg: 'betrügt', ps: 'betrog', pp: 'betrogen', aux: 'haben' },
  hauen: { p3sg: 'haut', ps: 'haute', pp: 'gehauen', aux: 'haben' },
  rufen: { p3sg: 'ruft', ps: 'rief', pp: 'gerufen', aux: 'haben' },
  steigen: { p3sg: 'steigt', ps: 'stieg', pp: 'gestiegen', aux: 'sein' },
  schreiten: { p3sg: 'schreitet', ps: 'schritt', pp: 'geschritten', aux: 'sein' },
  streiten: { p3sg: 'streitet', ps: 'stritt', pp: 'gestritten', aux: 'haben' },
  schneiden: { p3sg: 'schneidet', ps: 'schnitt', pp: 'geschnitten', aux: 'haben' },
  leiden: { p3sg: 'leidet', ps: 'litt', pp: 'gelitten', aux: 'haben' },
  reiten: { p3sg: 'reitet', ps: 'ritt', pp: 'geritten', aux: 'sein' },
  meiden: { p3sg: 'meidet', ps: 'mied', pp: 'gemieden', aux: 'haben' },
  scheiden: { p3sg: 'scheidet', ps: 'schied', pp: 'geschieden', aux: 'sein' },
  preisen: { p3sg: 'preist', ps: 'pries', pp: 'gepriesen', aux: 'haben' },
  weisen: { p3sg: 'weist', ps: 'wies', pp: 'gewiesen', aux: 'haben' },
  spinnen: { p3sg: 'spinnt', ps: 'spann', pp: 'gesponnen', aux: 'haben' },
  stinken: { p3sg: 'stinkt', ps: 'stank', pp: 'gestunken', aux: 'haben' },
  sinken: { p3sg: 'sinkt', ps: 'sank', pp: 'gesunken', aux: 'sein' },
  schwingen: { p3sg: 'schwingt', ps: 'schwang', pp: 'geschwungen', aux: 'haben' },
  schlingen: { p3sg: 'schlingt', ps: 'schlang', pp: 'geschlungen', aux: 'haben' },
  schmelzen: { p2sg: 'schmilzt', p3sg: 'schmilzt', ps: 'schmolz', pp: 'geschmolzen', aux: 'sein' },
  quellen: { p2sg: 'quillst', p3sg: 'quillt', ps: 'quoll', pp: 'gequollen', aux: 'sein' },
  schwellen: { p2sg: 'schwillst', p3sg: 'schwillt', ps: 'schwoll', pp: 'geschwollen', aux: 'sein' },
  fechten: { p2sg: 'fichtst', p3sg: 'ficht', ps: 'focht', pp: 'gefochten', aux: 'haben' },
  flechten: { p2sg: 'flichtst', p3sg: 'flicht', ps: 'flocht', pp: 'geflochten', aux: 'haben' },
  saufen: { p2sg: 'säufst', p3sg: 'säuft', ps: 'soff', pp: 'gesoffen', aux: 'haben' },
}

const SEPARABLE_PREFIXES = [...new Set(['ab', 'an', 'auf', 'aus', 'bei', 'da', 'dar', 'davor', 'dazu', 'ein', 'fest', 'her', 'heraus', 'hin', 'hinaus', 'mit', 'nach', 'vor', 'weg', 'weiter', 'wieder', 'zu', 'zurück', 'zusammen', 'entgegen', 'gegenüber', 'herum', 'umher', 'voraus', 'vorbei', 'vorher', 'heim', 'fort', 'los', 'nieder', 'empor', 'entlang', 'gegen', 'statt', 'teil', 'fern'])].sort((a, b) => b.length - a.length)

const INSEPARABLE_PREFIXES = ['be', 'emp', 'ent', 'er', 'ge', 'miss', 'ver', 'zer']

function findRule(infinitive: string): { base: string; rule: VerbRule | null; prefix: string; isSeperable: boolean } {
  const direct = IRREGULARS[infinitive]
  if (direct) return { base: infinitive, rule: direct, prefix: '', isSeperable: false }

  for (const p of INSEPARABLE_PREFIXES) {
    if (infinitive.startsWith(p) && infinitive.length > p.length + 2) {
      const rest = infinitive.slice(p.length)
      const restRule = IRREGULARS[rest]
      if (restRule) {
        return {
          base: rest,
          rule: {
            p1sg: restRule.p1sg ? p + restRule.p1sg : undefined,
            p2sg: restRule.p2sg ? p + restRule.p2sg : undefined,
            p3sg: p + restRule.p3sg,
            ps: p + restRule.ps,
            pp: restRule.pp.startsWith('ge') ? p + restRule.pp.slice(2) : p + restRule.pp,
            aux: restRule.aux,
            imp: restRule.imp,
          },
          prefix: p,
          isSeperable: false,
        }
      }
    }
  }

  for (const p of SEPARABLE_PREFIXES) {
    if (infinitive.startsWith(p) && infinitive.length > p.length + 2) {
      const rest = infinitive.slice(p.length)
      const restRule = IRREGULARS[rest]
      if (restRule) {
        return { base: rest, rule: restRule, prefix: p, isSeperable: true }
      }
    }
  }
  for (const p of SEPARABLE_PREFIXES) {
    if (infinitive.startsWith(p) && infinitive.length > p.length + 2) {
      const rest = infinitive.slice(p.length)
      if (rest.endsWith('en')) {
        return { base: rest, rule: null, prefix: p, isSeperable: true }
      }
    }
  }

  return { base: infinitive, rule: null, prefix: '', isSeperable: false }
}

function isStemTDForm(base: string): boolean {
  return /[td]$/.test(base) || /(chn|ffn|dm|tm|gn)$/.test(base)
}

function isStemSSForm(base: string): boolean {
  return /[sßz]$/.test(base)
}

function presentEndingsFor(stem: string): string[] {
  if (isStemTDForm(stem)) return ['e', 'est', 'et', 'en', 'et', 'en']
  if (isStemSSForm(stem)) return ['e', 't', 't', 'en', 't', 'en']
  return ['e', 'st', 't', 'en', 't', 'en']
}

function presentConjugation(base: string, prefix: string, isSeperable: boolean, rule: VerbRule | null): Record<string, string> {
  const s = stem(base)
  const endings = presentEndingsFor(s)
  const r: Record<string, string> = {}

  if (rule?.p1sg && rule?.p2sg) {
    r['ich'] = rule.p1sg
    r['du'] = rule.p2sg
    r['er_sie_es'] = rule.p3sg
    r['wir'] = s + endings[3]
    r['ihr'] = s + endings[4]
    r['Sie'] = s + endings[5]
  } else if (rule?.p2sg) {
    r['ich'] = s + endings[0]
    r['du'] = rule.p2sg
    r['er_sie_es'] = rule.p3sg
    r['wir'] = s + endings[3]
    r['ihr'] = s + endings[4]
    r['Sie'] = s + endings[5]
  } else if (rule?.p3sg && rule.p3sg !== s + endings[2]) {
    r['ich'] = s + endings[0]
    r['du'] = s + endings[1]
    r['er_sie_es'] = rule.p3sg
    r['wir'] = s + endings[3]
    r['ihr'] = s + endings[4]
    r['Sie'] = s + endings[5]
  } else {
    for (let i = 0; i < PERSONS.length; i++) {
      r[PERSONS[i]] = s + endings[i]
    }
  }
  if (prefix && isSeperable) {
    for (const p of PERSONS) r[p] = r[p] + ' ' + prefix
  } else if (prefix) {
    for (const p of PERSONS) r[p] = prefix + r[p]
  }
  return r
}

function praeteritumConjugation(base: string, prefix: string, isSeperable: boolean, rule: VerbRule | null): Record<string, string> {
  const r: Record<string, string> = {}
  const s = stem(base)

  if (rule?.ps) {
    const ps = rule.ps
    if (ps.endsWith('te')) {
      const stemPs = ps.slice(0, -2)
      r['ich'] = ps
      r['du'] = stemPs + 'test'
      r['er_sie_es'] = ps
      r['wir'] = stemPs + 'ten'
      r['ihr'] = stemPs + 'tet'
      r['Sie'] = stemPs + 'ten'
    } else if (ps.endsWith('e') && !ps.endsWith('te')) {
      r['ich'] = ps
      r['du'] = ps + 'st'
      r['er_sie_es'] = ps
      r['wir'] = ps.slice(0, -1) + 'en'
      r['ihr'] = ps.slice(0, -1) + 't'
      r['Sie'] = ps.slice(0, -1) + 'en'
    } else {
      const needsEst = /[td]$/.test(ps)
      const needsEstSib = /[sßz]$/.test(ps)
      r['ich'] = ps
      r['du'] = ps + (needsEst || needsEstSib ? 'est' : 'st')
      r['er_sie_es'] = ps
      r['wir'] = ps + 'en'
      r['ihr'] = ps + (needsEst ? 'et' : 't')
      r['Sie'] = ps + 'en'
    }
  } else {
    const needE = isStemTDForm(s)
    const stemPs = needE ? s + 'e' : s
    r['ich'] = stemPs + 'te'
    r['du'] = stemPs + 'test'
    r['er_sie_es'] = stemPs + 'te'
    r['wir'] = stemPs + 'ten'
    r['ihr'] = stemPs + 'tet'
    r['Sie'] = stemPs + 'ten'
  }
  if (prefix && isSeperable) {
    for (const p of PERSONS) r[p] = r[p] + ' ' + prefix
  } else if (prefix) {
    for (const p of PERSONS) r[p] = prefix + r[p]
  }
  return r
}

function partizip2Of(rule: VerbRule | null, baseInf: string, prefix: string, isSeperable: boolean): string {
  const base = stem(baseInf)
  if (rule) {
    const pp = rule.pp
    if (isSeperable) return prefix + pp
    return pp
  }
  const needsEt = isStemTDForm(base) || base.endsWith('ier')
  const pp = needsEt ? base + 'et' : base + 't'
  if (isSeperable) {
    const hasInnerInsepPrefix = INSEPARABLE_PREFIXES.some(p => baseInf.startsWith(p))
    if (hasInnerInsepPrefix) return prefix + pp
    return prefix + 'ge' + pp
  }
  if (INSEPARABLE_PREFIXES.includes(prefix)) return prefix + pp
  if (prefix) return prefix + 'ge' + pp
  return 'ge' + pp
}

function auxiliaryOf(rule: VerbRule | null, verbAux: string | undefined): 'haben' | 'sein' {
  if (rule?.aux) return rule.aux
  if (verbAux === 'sein' || verbAux === 'haben') return verbAux
  return 'haben'
}

export function generateConjugationsByRule(
  infinitive: string,
  auxiliary?: string,
  separablePrefix?: string
): Record<string, Record<string, string>> {
  const { base: baseInf, rule, prefix: detectedPrefix, isSeperable } = findRule(infinitive)
  const prefix = separablePrefix || detectedPrefix
  const sep = isSeperable || !!separablePrefix
  const aux = auxiliaryOf(rule, auxiliary)
  const s = stem(baseInf)

  const present = presentConjugation(baseInf, prefix, sep, rule)
  const praeteritum = praeteritumConjugation(baseInf, prefix, sep, rule)
  const p2 = partizip2Of(rule, baseInf, prefix, sep)

  const habenPres = ['habe', 'hast', 'hat', 'haben', 'habt', 'haben']
  const seinPres = ['bin', 'bist', 'ist', 'sind', 'seid', 'sind']
  const auxPresForms = aux === 'sein' ? seinPres : habenPres
  const perfekt: Record<string, string> = {}
  for (let i = 0; i < PERSONS.length; i++) {
    perfekt[PERSONS[i]] = `${auxPresForms[i]} ${p2}`
  }

  const habPraet = ['hatte', 'hattest', 'hatte', 'hatten', 'hattet', 'hatten']
  const war = ['war', 'warst', 'war', 'waren', 'wart', 'waren']
  const auxPraetForms = aux === 'sein' ? war : habPraet
  const plusquamperfekt: Record<string, string> = {}
  for (let i = 0; i < PERSONS.length; i++) {
    plusquamperfekt[PERSONS[i]] = `${auxPraetForms[i]} ${p2}`
  }

  const werde = ['werde', 'wirst', 'wird', 'werden', 'werdet', 'werden']
  const infWithPrefix = (prefix || '') + baseInf
  const futur_i: Record<string, string> = {}
  for (let i = 0; i < PERSONS.length; i++) {
    futur_i[PERSONS[i]] = `${werde[i]} ${infWithPrefix}`
  }

  const infinAux = aux === 'sein' ? 'sein' : 'haben'
  const futur_ii: Record<string, string> = {}
  for (let i = 0; i < PERSONS.length; i++) {
    futur_ii[PERSONS[i]] = `${werde[i]} ${p2} ${infinAux}`
  }

  const konjunktiv_i: Record<string, string> = {}
  const konj1Endings = ['e', 'est', 'e', 'en', 'et', 'en']
  for (let i = 0; i < PERSONS.length; i++) {
    konjunktiv_i[PERSONS[i]] = s + konj1Endings[i]
  }
  if (prefix && sep) {
    for (const p of PERSONS) konjunktiv_i[p] = konjunktiv_i[p] + ' ' + prefix
  } else if (prefix) {
    for (const p of PERSONS) konjunktiv_i[p] = prefix + konjunktiv_i[p]
  }

  const konjunktiv_ii: Record<string, string> = {}
  if (rule?.ps) {
    let konj2Stem = rule.ps.endsWith('te') ? rule.ps.slice(0, -2) : rule.ps
    if (konj2Stem.endsWith('e')) konj2Stem = konj2Stem.slice(0, -1)
    const vowelMap: Record<string, string> = { a: 'ä', o: 'ö', u: 'ü' }
    let foundVowel = ''
    let vowelIdx = -1
    for (let j = konj2Stem.length - 1; j >= 0; j--) {
      const c = konj2Stem[j]
      if (/[aou]/.test(c)) { foundVowel = c; vowelIdx = j; break }
    }
    if (vowelIdx >= 1 && konj2Stem.slice(vowelIdx - 1, vowelIdx + 1) === 'au') {
      konj2Stem = konj2Stem.slice(0, vowelIdx - 1) + 'äu' + konj2Stem.slice(vowelIdx + 1)
    } else if (foundVowel && vowelIdx >= 0) {
      konj2Stem = konj2Stem.slice(0, vowelIdx) + vowelMap[foundVowel] + konj2Stem.slice(vowelIdx + 1)
    }
    const konj2Endings = ['e', 'est', 'e', 'en', 'et', 'en']
    for (let i = 0; i < PERSONS.length; i++) {
      konjunktiv_ii[PERSONS[i]] = konj2Stem + konj2Endings[i]
    }
    if (prefix && sep) {
      for (const p of PERSONS) konjunktiv_ii[p] = konjunktiv_ii[p] + ' ' + prefix
    } else if (prefix) {
      for (const p of PERSONS) konjunktiv_ii[p] = prefix + konjunktiv_ii[p]
    }
  } else {
    for (let i = 0; i < PERSONS.length; i++) {
      konjunktiv_ii[PERSONS[i]] = `würde ${infWithPrefix}`
    }
  }

  const imperativ: Record<string, string> = {}
  let impDu: string
  if (rule?.imp) {
    impDu = rule.imp
  } else if (rule?.p2sg) {
    const duUmlaut = /[äöü]/.test(rule.p2sg)
    const sUmlaut = /[äöü]/.test(s)
    if (duUmlaut && !sUmlaut) {
      impDu = s
    } else {
      const endingIsSt = !isStemSSForm(s)
      impDu = endingIsSt ? rule.p2sg.slice(0, -2) : rule.p2sg.slice(0, -1)
    }
  } else {
    impDu = s
  }
  if (isStemTDForm(impDu)) {
    impDu = impDu + 'e'
  }
  if (prefix && sep) {
    imperativ['du'] = impDu + ' ' + prefix
    imperativ['ihr'] = (present['ihr'] || s + 't').replace(' ' + prefix, '') + ' ' + prefix
  } else {
    imperativ['du'] = (prefix || '') + impDu
    imperativ['ihr'] = present['ihr'] || (prefix || '') + s + 't'
  }
  imperativ['Sie'] = `${infWithPrefix} Sie`
  imperativ['wir'] = `${infWithPrefix} wir`
  imperativ['er_sie_es'] = '-'
  imperativ['ich'] = '-'

  const passiv: Record<string, string> = {}
  const werdePassiv = ['werde', 'wirst', 'wird', 'werden', 'werdet', 'werden']
  for (let i = 0; i < PERSONS.length; i++) {
    passiv[PERSONS[i]] = `${werdePassiv[i]} ${p2}`
  }

  return {
    praesens: present,
    praeteritum,
    perfekt,
    plusquamperfekt,
    futur_i,
    futur_ii,
    konjunktiv_i,
    konjunktiv_ii,
    imperativ,
    passiv,
  }
}
