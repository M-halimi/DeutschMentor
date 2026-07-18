/**
 * German Verb Conjugation — Exception Database
 *
 * Complete table of irregular/strong German verbs with their
 * vowel change patterns and special forms.
 *
 * Source: Duden, Wahrig, standard German grammar references
 */

export interface IrregularVerbEntry {
  infinitive: string
  /** Präsens 3rd-person singular stem vowel change */
  presentVowel?: string
  /** Präteritum stem (1st/3rd person singular) */
  preteriteStem: string
  /** Whether Präteritum is weak (adds -te) */
  preteriteWeak?: boolean
  /** Partizip II (full form, including ge- if applicable) */
  partizipII: string
  /** Ablaut pattern identifier */
  pattern?: string
  /** Notes */
  notes?: string
  /** Set true for verbs like "kommen" that LOOK like they should have vowel change but don't */
  noPresentVowelChange?: boolean
}

/**
 * Complete database of irregular German verbs.
 *
 * Includes:
 * - All strong verbs (starke Verben)
 * - All mixed verbs (gemischte Verben)
 * - All modal verbs
 * - sein, haben, werden
 *
 * Organized by Ablaut pattern where applicable.
 */
export const IRREGULAR_VERBS_DATABASE: Record<string, IrregularVerbEntry> = {
  // =========================================================================
  // AUXILIARY VERBS (Hilfsverben)
  // =========================================================================

  sein: {
    infinitive: 'sein',
    preteriteStem: 'war',
    partizipII: 'gewesen',
    pattern: 'U!',
    notes: 'vollständig unregelmäßig — complete suppletion',
  },
  haben: {
    infinitive: 'haben',
    presentVowel: 'ä',
    preteriteStem: 'hatt',
    preteriteWeak: true,
    partizipII: 'gehabt',
    pattern: 'U!',
    notes: 'Weak Präteritum, vowel change in du/er, unique forms',
  },
  werden: {
    infinitive: 'werden',
    presentVowel: 'i',
    preteriteStem: 'wurd',
    partizipII: 'geworden',
    pattern: 'U!',
    notes: 'vowel change in Präsens du/er, strong Präteritum',
  },

  // =========================================================================
  // MODAL VERBS (Modalverben)
  // =========================================================================

  können: {
    infinitive: 'können',
    presentVowel: 'ö',
    preteriteStem: 'konnt',
    preteriteWeak: true,
    partizipII: 'gekonnt',
    pattern: 'P',
    notes: 'Umlaut in infinitive root, no ending in ich/er',
  },
  dürfen: {
    infinitive: 'dürfen',
    presentVowel: 'ü',
    preteriteStem: 'durft',
    preteriteWeak: true,
    partizipII: 'gedurft',
    pattern: 'P',
    notes: 'Umlaut in infinitive, no ending in ich/er',
  },
  müssen: {
    infinitive: 'müssen',
    presentVowel: 'ü',
    preteriteStem: 'musst',
    preteriteWeak: true,
    partizipII: 'gemusst',
    pattern: 'P',
    notes: 'no ending in ich/er',
  },
  mögen: {
    infinitive: 'mögen',
    presentVowel: 'ö',
    preteriteStem: 'mocht',
    preteriteWeak: true,
    partizipII: 'gemocht',
    pattern: 'P',
    notes: 'ich/er: mag (unique form)',
  },
  sollen: {
    infinitive: 'sollen',
    preteriteStem: 'sollt',
    preteriteWeak: true,
    partizipII: 'gesollt',
    pattern: 'P',
    notes: 'no ending in ich/er',
  },
  wollen: {
    infinitive: 'wollen',
    presentVowel: 'i',
    preteriteStem: 'wollt',
    preteriteWeak: true,
    partizipII: 'gewollt',
    pattern: 'P',
    notes: 'vowel change in Präsens, no ending in ich/er',
  },
  wissen: {
    infinitive: 'wissen',
    presentVowel: 'ei',
    preteriteStem: 'wusst',
    preteriteWeak: true,
    partizipII: 'gewusst',
    pattern: 'P',
    notes: 'ich: weiß, du: weißt, er: weiß',
  },

  // =========================================================================
  // STRONG VERBS — Ablaut Reihe 1: ei – i – i (ie)
  // =========================================================================

  greifen: { infinitive: 'greifen', preteriteStem: 'griff', partizipII: 'gegriffen', pattern: '1a' },
  gleichen: { infinitive: 'gleichen', preteriteStem: 'glich', partizipII: 'geglichen', pattern: '1a' },
  beißen: { infinitive: 'beißen', preteriteStem: 'biss', partizipII: 'gebissen', pattern: '1a' },
  bleiben: { infinitive: 'bleiben', preteriteStem: 'blieb', partizipII: 'geblieben', pattern: '1b' },
  gedeihen: { infinitive: 'gedeihen', preteriteStem: 'gedieh', partizipII: 'gediehen', pattern: '1b' },
  leihen: { infinitive: 'leihen', preteriteStem: 'lieh', partizipII: 'geliehen', pattern: '1b' },
  meiden: { infinitive: 'meiden', preteriteStem: 'mied', partizipII: 'gemieden', pattern: '1b' },
  preisen: { infinitive: 'preisen', preteriteStem: 'pries', partizipII: 'gepriesen', pattern: '1b' },
  reiben: { infinitive: 'reiben', preteriteStem: 'rieb', partizipII: 'gerieben', pattern: '1b' },
  scheiden: { infinitive: 'scheiden', preteriteStem: 'schied', partizipII: 'geschieden', pattern: '1b' },
  scheinen: { infinitive: 'scheinen', preteriteStem: 'schien', partizipII: 'geschienen', pattern: '1b' },
  schreiben: { infinitive: 'schreiben', preteriteStem: 'schrieb', partizipII: 'geschrieben', pattern: '1b' },
  schreien: { infinitive: 'schreien', preteriteStem: 'schrie', partizipII: 'geschrien', pattern: '1b' },
  schweigen: { infinitive: 'schweigen', preteriteStem: 'schwieg', partizipII: 'geschwiegen', pattern: '1b' },
  speien: { infinitive: 'speien', preteriteStem: 'spie', partizipII: 'gespien', pattern: '1b' },
  steigen: { infinitive: 'steigen', preteriteStem: 'stieg', partizipII: 'gestiegen', pattern: '1b' },
  treiben: { infinitive: 'treiben', preteriteStem: 'trieb', partizipII: 'getrieben', pattern: '1b' },
  weisen: { infinitive: 'weisen', preteriteStem: 'wies', partizipII: 'gewiesen', pattern: '1b' },
  streichen: { infinitive: 'streichen', preteriteStem: 'strich', partizipII: 'gestrichen', pattern: '1a' },
  schleichen: { infinitive: 'schleichen', preteriteStem: 'schlich', partizipII: 'geschlichen', pattern: '1a' },

  // =========================================================================
  // STRONG VERBS — Ablaut Reihe 2: ie – o – o
  // =========================================================================

  biegen: { infinitive: 'biegen', preteriteStem: 'bog', partizipII: 'gebogen', pattern: '2a' },
  bieten: { infinitive: 'bieten', preteriteStem: 'bot', partizipII: 'geboten', pattern: '2b' },
  fliegen: { infinitive: 'fliegen', preteriteStem: 'flog', partizipII: 'geflogen', pattern: '2a' },
  fliehen: { infinitive: 'fliehen', preteriteStem: 'floh', partizipII: 'geflohen', pattern: '2a' },
  fließen: { infinitive: 'fließen', preteriteStem: 'floss', partizipII: 'geflossen', pattern: '2a' },
  frieren: { infinitive: 'frieren', preteriteStem: 'fror', partizipII: 'gefroren', pattern: '2a' },
  genießen: { infinitive: 'genießen', preteriteStem: 'genoss', partizipII: 'genossen', pattern: '2a' },
  gießen: { infinitive: 'gießen', preteriteStem: 'goss', partizipII: 'gegossen', pattern: '2a' },
  kriechen: { infinitive: 'kriechen', preteriteStem: 'kroch', partizipII: 'gekrochen', pattern: '2a' },
  riechen: { infinitive: 'riechen', preteriteStem: 'roch', partizipII: 'gerochen', pattern: '2a' },
  schieben: { infinitive: 'schieben', preteriteStem: 'schob', partizipII: 'geschoben', pattern: '2a' },
  schießen: { infinitive: 'schießen', preteriteStem: 'schoss', partizipII: 'geschossen', pattern: '2a' },
  schließen: { infinitive: 'schließen', preteriteStem: 'schloss', partizipII: 'geschlossen', pattern: '2a' },
  verdrießen: { infinitive: 'verdrießen', preteriteStem: 'verdross', partizipII: 'verdrossen', pattern: '2a' },
  verlieren: { infinitive: 'verlieren', preteriteStem: 'verlor', partizipII: 'verloren', pattern: '2a' },
  wiegen: { infinitive: 'wiegen', preteriteStem: 'wog', partizipII: 'gewogen', pattern: '2a' },
  ziehen: { infinitive: 'ziehen', preteriteStem: 'zog', partizipII: 'gezogen', pattern: '2a' },

  // =========================================================================
  // STRONG VERBS — Ablaut Reihe 3a: i – a – u
  // =========================================================================

  binden: { infinitive: 'binden', preteriteStem: 'band', partizipII: 'gebunden', pattern: '3a' },
  dringen: { infinitive: 'dringen', preteriteStem: 'drang', partizipII: 'gedrungen', pattern: '3a' },
  empfinden: { infinitive: 'empfinden', preteriteStem: 'empfand', partizipII: 'empfunden', pattern: '3a' },
  finden: { infinitive: 'finden', preteriteStem: 'fand', partizipII: 'gefunden', pattern: '3a' },
  gelingen: { infinitive: 'gelingen', preteriteStem: 'gelang', partizipII: 'gelungen', pattern: '3a' },
  klingen: { infinitive: 'klingen', preteriteStem: 'klang', partizipII: 'geklungen', pattern: '3a' },
  misslingen: { infinitive: 'misslingen', preteriteStem: 'misslang', partizipII: 'misslungen', pattern: '3a' },
  ringen: { infinitive: 'ringen', preteriteStem: 'rang', partizipII: 'gerungen', pattern: '3a' },
  schwingen: { infinitive: 'schwingen', preteriteStem: 'schwang', partizipII: 'geschwungen', pattern: '3a' },
  singen: { infinitive: 'singen', preteriteStem: 'sang', partizipII: 'gesungen', pattern: '3a' },
  sinken: { infinitive: 'sinken', preteriteStem: 'sank', partizipII: 'gesunken', pattern: '3a' },
  springen: { infinitive: 'springen', preteriteStem: 'sprang', partizipII: 'gesprungen', pattern: '3a' },
  stinken: { infinitive: 'stinken', preteriteStem: 'stank', partizipII: 'gestunken', pattern: '3a' },
  trinken: { infinitive: 'trinken', preteriteStem: 'trank', partizipII: 'getrunken', pattern: '3a' },
  winden: { infinitive: 'winden', preteriteStem: 'wand', partizipII: 'gewunden', pattern: '3a' },
  wringen: { infinitive: 'wringen', preteriteStem: 'wrang', partizipII: 'gewrungen', pattern: '3a' },
  zwingen: { infinitive: 'zwingen', preteriteStem: 'zwang', partizipII: 'gezwungen', pattern: '3a' },

  // =========================================================================
  // STRONG VERBS — Ablaut Reihe 3b: i – a – o
  // =========================================================================

  beginnen: { infinitive: 'beginnen', preteriteStem: 'begann', partizipII: 'begonnen', pattern: '3b' },
  gewinnen: { infinitive: 'gewinnen', preteriteStem: 'gewann', partizipII: 'gewonnen', pattern: '3b' },
  rinnen: { infinitive: 'rinnen', preteriteStem: 'rann', partizipII: 'geronnen', pattern: '3b' },
  schwimmen: { infinitive: 'schwimmen', preteriteStem: 'schwamm', partizipII: 'geschwommen', pattern: '3b' },
  sinnen: { infinitive: 'sinnen', preteriteStem: 'sann', partizipII: 'gesonnen', pattern: '3b' },
  spinnen: { infinitive: 'spinnen', preteriteStem: 'spann', partizipII: 'gesponnen', pattern: '3b' },

  // =========================================================================
  // STRONG VERBS — Ablaut Reihe 4: e – a – o
  // =========================================================================

  nehmen: {
    infinitive: 'nehmen',
    presentVowel: 'i',
    preteriteStem: 'nahm',
    partizipII: 'genommen',
    pattern: '4',
    notes: 'e→i in Präsens du/er, consonant change in Partizip',
  },
  sprechen: {
    infinitive: 'sprechen',
    presentVowel: 'i',
    preteriteStem: 'sprach',
    partizipII: 'gesprochen',
    pattern: '4',
    notes: 'e→i in Präsens du/er',
  },
  brechen: { infinitive: 'brechen', presentVowel: 'i', preteriteStem: 'brach', partizipII: 'gebrochen', pattern: '4' },
  erschrecken: {
    infinitive: 'erschrecken',
    presentVowel: 'i',
    preteriteStem: 'erschrak',
    partizipII: 'erschrocken',
    pattern: '4',
  },
  helfen: { infinitive: 'helfen', presentVowel: 'i', preteriteStem: 'half', partizipII: 'geholfen', pattern: '4' },
  gelten: { infinitive: 'gelten', presentVowel: 'i', preteriteStem: 'galt', partizipII: 'gegolten', pattern: '4' },
  kommen: {
    infinitive: 'kommen',
    presentVowel: 'ie',
    preteriteStem: 'kam',
    partizipII: 'gekommen',
    pattern: '4a',
    notes: 'special: du/er kommt (no vowel change in practise)',
    noPresentVowelChange: true
  },
  quellen: { infinitive: 'quellen', presentVowel: 'i', preteriteStem: 'quoll', partizipII: 'gequollen', pattern: '4' },
  schelten: { infinitive: 'schelten', presentVowel: 'i', preteriteStem: 'schalt', partizipII: 'gescholten', pattern: '4' },
  schmelzen: { infinitive: 'schmelzen', presentVowel: 'i', preteriteStem: 'schmolz', partizipII: 'geschmolzen', pattern: '4' },
  stehlen: { infinitive: 'stehlen', presentVowel: 'ie', preteriteStem: 'stahl', partizipII: 'gestohlen', pattern: '4' },
  sterben: { infinitive: 'sterben', presentVowel: 'i', preteriteStem: 'starb', partizipII: 'gestorben', pattern: '4' },
  treffen: { infinitive: 'treffen', presentVowel: 'i', preteriteStem: 'traf', partizipII: 'getroffen', pattern: '4' },
  verderben: { infinitive: 'verderben', presentVowel: 'i', preteriteStem: 'verdarb', partizipII: 'verdorben', pattern: '4' },
  werben: { infinitive: 'werben', presentVowel: 'i', preteriteStem: 'warb', partizipII: 'geworben', pattern: '4' },
  werfen: { infinitive: 'werfen', presentVowel: 'i', preteriteStem: 'warf', partizipII: 'geworfen', pattern: '4' },

  // =========================================================================
  // STRONG VERBS — Ablaut Reihe 5: e – a – e
  // =========================================================================

  geben: { infinitive: 'geben', presentVowel: 'i', preteriteStem: 'gab', partizipII: 'gegeben', pattern: '5' },
  essen: { infinitive: 'essen', presentVowel: 'i', preteriteStem: 'aß', partizipII: 'gegessen', pattern: '5' },
  fressen: { infinitive: 'fressen', presentVowel: 'i', preteriteStem: 'fraß', partizipII: 'gefressen', pattern: '5' },
  genesen: { infinitive: 'genesen', preteriteStem: 'genas', partizipII: 'genesen', pattern: '5' },
  geschehen: { infinitive: 'geschehen', presentVowel: 'ie', preteriteStem: 'geschah', partizipII: 'geschehen', pattern: '5' },
  lesen: { infinitive: 'lesen', presentVowel: 'ie', preteriteStem: 'las', partizipII: 'gelesen', pattern: '5' },
  messen: { infinitive: 'messen', presentVowel: 'i', preteriteStem: 'maß', partizipII: 'gemessen', pattern: '5' },
  sehen: { infinitive: 'sehen', presentVowel: 'ie', preteriteStem: 'sah', partizipII: 'gesehen', pattern: '5' },
  treten: { infinitive: 'treten', presentVowel: 'i', preteriteStem: 'trat', partizipII: 'getreten', pattern: '5' },
  vergessen: { infinitive: 'vergessen', presentVowel: 'i', preteriteStem: 'vergaß', partizipII: 'vergessen', pattern: '5' },

  // =========================================================================
  // STRONG VERBS — Ablaut Reihe 6: a – u – a
  // =========================================================================

  fahren: { infinitive: 'fahren', presentVowel: 'ä', preteriteStem: 'fuhr', partizipII: 'gefahren', pattern: '6' },
  graben: { infinitive: 'graben', presentVowel: 'ä', preteriteStem: 'grub', partizipII: 'gegraben', pattern: '6' },
  laden: { infinitive: 'laden', presentVowel: 'ä', preteriteStem: 'lud', partizipII: 'geladen', pattern: '6' },
  schaffen: { infinitive: 'schaffen', presentVowel: 'ä', preteriteStem: 'schuf', partizipII: 'geschaffen', pattern: '6', notes: 'strong: "create", weak: "work/manage"' },
  schlagen: { infinitive: 'schlagen', presentVowel: 'ä', preteriteStem: 'schlug', partizipII: 'geschlagen', pattern: '6' },
  tragen: { infinitive: 'tragen', presentVowel: 'ä', preteriteStem: 'trug', partizipII: 'getragen', pattern: '6' },
  wachsen: { infinitive: 'wachsen', presentVowel: 'ä', preteriteStem: 'wuchs', partizipII: 'gewachsen', pattern: '6' },
  waschen: { infinitive: 'waschen', presentVowel: 'ä', preteriteStem: 'wusch', partizipII: 'gewaschen', pattern: '6' },

  // =========================================================================
  // STRONG VERBS — Ablaut Reihe 7: a – ie – a
  // =========================================================================

  blasen: { infinitive: 'blasen', presentVowel: 'ä', preteriteStem: 'blies', partizipII: 'geblasen', pattern: '7' },
  braten: { infinitive: 'braten', presentVowel: 'ä', preteriteStem: 'briet', partizipII: 'gebraten', pattern: '7' },
  fallen: { infinitive: 'fallen', presentVowel: 'ä', preteriteStem: 'fiel', partizipII: 'gefallen', pattern: '7' },
  fangen: { infinitive: 'fangen', presentVowel: 'ä', preteriteStem: 'fing', partizipII: 'gefangen', pattern: '7' },
  halten: { infinitive: 'halten', presentVowel: 'ä', preteriteStem: 'hielt', partizipII: 'gehalten', pattern: '7' },
  lassen: { infinitive: 'lassen', presentVowel: 'ä', preteriteStem: 'ließ', partizipII: 'gelassen', pattern: '7' },
  raten: { infinitive: 'raten', presentVowel: 'ä', preteriteStem: 'riet', partizipII: 'geraten', pattern: '7' },
  schlafen: { infinitive: 'schlafen', presentVowel: 'ä', preteriteStem: 'schlief', partizipII: 'geschlafen', pattern: '7' },
  stoßen: { infinitive: 'stoßen', presentVowel: 'ö', preteriteStem: 'stieß', partizipII: 'gestoßen', pattern: '7' },
  heißen: { infinitive: 'heißen', preteriteStem: 'hieß', partizipII: 'geheißen', pattern: '7a' },
  laufen: { infinitive: 'laufen', presentVowel: 'äu', preteriteStem: 'lief', partizipII: 'gelaufen', pattern: '7b' },
  rufen: { infinitive: 'rufen', presentVowel: 'u', preteriteStem: 'rief', partizipII: 'gerufen', pattern: '7c' },
  saufen: { infinitive: 'saufen', presentVowel: 'äu', preteriteStem: 'soff', partizipII: 'gesoffen', pattern: '7b' },
  hauen: { infinitive: 'hauen', preteriteStem: 'hieb', partizipII: 'gehauen', pattern: '7' },

  // =========================================================================
  // MIXED VERBS (gemischte Verben)
  // =========================================================================

  bringen: { infinitive: 'bringen', preteriteStem: 'bracht', preteriteWeak: true, partizipII: 'gebracht', pattern: 'M' },
  denken: { infinitive: 'denken', preteriteStem: 'dacht', preteriteWeak: true, partizipII: 'gedacht', pattern: 'M' },
  kennen: { infinitive: 'kennen', preteriteStem: 'kannt', preteriteWeak: true, partizipII: 'gekannt', pattern: 'M' },
  brennen: { infinitive: 'brennen', preteriteStem: 'brannt', preteriteWeak: true, partizipII: 'gebrannt', pattern: 'M' },
  nennen: { infinitive: 'nennen', preteriteStem: 'nannt', preteriteWeak: true, partizipII: 'genannt', pattern: 'M' },
  rennen: { infinitive: 'rennen', preteriteStem: 'rannt', preteriteWeak: true, partizipII: 'gerannt', pattern: 'M' },
  senden: { infinitive: 'senden', preteriteStem: 'sandt', preteriteWeak: true, partizipII: 'gesandt', pattern: 'M', notes: 'mixed for "send", weak for "broadcast"' },
  wenden: { infinitive: 'wenden', preteriteStem: 'wandt', preteriteWeak: true, partizipII: 'gewandt', pattern: 'M', notes: 'mixed for "turn", weak for "change"' },

  // =========================================================================
  // OTHER IRREGULAR VERBS
  // =========================================================================

  backen: { infinitive: 'backen', presentVowel: 'ä', preteriteStem: 'buk', partizipII: 'gebacken', pattern: '7', notes: 'weak forms also accepted: backte, gebackt' },
  fechten: { infinitive: 'fechten', presentVowel: 'i', preteriteStem: 'focht', partizipII: 'gefochten', pattern: '4' },
  flechten: { infinitive: 'flechten', presentVowel: 'i', preteriteStem: 'flocht', partizipII: 'geflochten', pattern: '4' },
  gehen: { infinitive: 'gehen', preteriteStem: 'ging', partizipII: 'gegangen', pattern: 'S' },
  hängen: { infinitive: 'hängen', presentVowel: 'ä', preteriteStem: 'hing', partizipII: 'gehangen', pattern: '7', notes: 'strong: "hang (intransitive)", weak: "hang (transitive)"' },
  lügen: { infinitive: 'lügen', preteriteStem: 'log', partizipII: 'gelogen', pattern: '2' },
  mahlen: { infinitive: 'mahlen', preteriteStem: 'mahlte', preteriteWeak: true, partizipII: 'gemahlen', pattern: 'W' },
  salzen: { infinitive: 'salzen', preteriteStem: 'salzte', preteriteWeak: true, partizipII: 'gesalzen', pattern: 'W' },
  schneiden: { infinitive: 'schneiden', preteriteStem: 'schnitt', partizipII: 'geschnitten', pattern: '1a' },
  schrecken: { infinitive: 'schrecken', presentVowel: 'i', preteriteStem: 'schrak', partizipII: 'geschrocken', pattern: '4', notes: 'strong forms are archaic; weak (schreckte) more common' },
  schwören: { infinitive: 'schwören', preteriteStem: 'schwor', partizipII: 'geschworen', pattern: '6' },
  sitzen: { infinitive: 'sitzen', preteriteStem: 'saß', partizipII: 'gesessen', pattern: '5' },
  spleißen: { infinitive: 'spleißen', preteriteStem: 'spliss', partizipII: 'gesplissen', pattern: '1a' },
  streiten: { infinitive: 'streiten', preteriteStem: 'stritt', partizipII: 'gestritten', pattern: '1a' },
  tun: { infinitive: 'tun', preteriteStem: 'tat', partizipII: 'getan', pattern: 'S' },
  vertun: { infinitive: 'vertun', preteriteStem: 'vertat', partizipII: 'vertan', pattern: 'S' },
  weben: { infinitive: 'weben', preteriteStem: 'wob', partizipII: 'gewoben', pattern: '2', notes: 'weak forms: webte, gewebt' },
  weichen: { infinitive: 'weichen', preteriteStem: 'wich', partizipII: 'gewichen', pattern: '1a' },
  beweisen: { infinitive: 'beweisen', preteriteStem: 'bewies', partizipII: 'bewiesen', pattern: '1b' },
  zeihen: { infinitive: 'zeihen', preteriteStem: 'zieh', partizipII: 'geziehen', pattern: '1b' },
  zeugen: { infinitive: 'zeugen', preteriteStem: 'zeugte', preteriteWeak: true, partizipII: 'gezeugt', pattern: 'W' },
  // =========================================================================
  // MORE COMMON IRREGULAR VERBS
  // =========================================================================

  heben: { infinitive: 'heben', preteriteStem: 'hob', partizipII: 'gehoben', pattern: '2' },
  scheren: { infinitive: 'scheren', preteriteStem: 'schor', partizipII: 'geschoren', pattern: '2', notes: 'strong: "shear", weak: "care/bother"' },
  schwären: { infinitive: 'schwären', preteriteStem: 'schwor', partizipII: 'geschworen', pattern: '6' },
  sprießen: { infinitive: 'sprießen', preteriteStem: 'spross', partizipII: 'gesprossen', pattern: '2a' },
  stechen: { infinitive: 'stechen', presentVowel: 'i', preteriteStem: 'stach', partizipII: 'gestochen', pattern: '4' },
  stehen: { infinitive: 'stehen', preteriteStem: 'stand', partizipII: 'gestanden', pattern: 'S' },
  empfehlen: { infinitive: 'empfehlen', presentVowel: 'ie', preteriteStem: 'empfahl', partizipII: 'empfohlen', pattern: '4' },
  befehlen: { infinitive: 'befehen', presentVowel: 'ie', preteriteStem: 'befahl', partizipII: 'befohlen', pattern: '4', notes: "type: 'inseparable'" },
  zerbrechen: { infinitive: 'zerbrechen', presentVowel: 'i', preteriteStem: 'zerbrach', partizipII: 'zerbrochen', pattern: '4' },
  zerfallen: { infinitive: 'zerfallen', presentVowel: 'ä', preteriteStem: 'zerfiel', partizipII: 'zerfallen', pattern: '7' },
  zerlassen: { infinitive: 'zerlassen', presentVowel: 'ä', preteriteStem: 'zerließ', partizipII: 'zerlassen', pattern: '7' },
  zerschlagen: { infinitive: 'zerschlagen', presentVowel: 'ä', preteriteStem: 'zerschlug', partizipII: 'zerschlagen', pattern: '6' },
  zerstechen: { infinitive: 'zerstechen', presentVowel: 'i', preteriteStem: 'zerstach', partizipII: 'zerstochen', pattern: '4' },
  zerstieben: { infinitive: 'zerstieben', preteriteStem: 'zerstob', partizipII: 'zerstoben', pattern: '2' },
}

/**
 * Check if a verb is in the irregular exceptions database.
 */
export function getIrregularEntry(infinitive: string): IrregularVerbEntry | undefined {
  // First try exact match
  const exact = IRREGULAR_VERBS_DATABASE[infinitive]
  if (exact) return exact

  // Try to strip separable prefix and look up base
  const PREFIXES = [
    // Separable prefixes (trennbar)
    'ab', 'an', 'auf', 'aus', 'bei', 'da', 'dar', 'dabei', 'dafür',
    'dagegen', 'daran', 'darauf', 'darin', 'darunter', 'davon', 'davor', 'dazu',
    'ein', 'empor', 'entgegen', 'entlang', 'entzwei',
    'fehl', 'fern', 'fest', 'fort', 'frei',
    'heim', 'herauf', 'herunter', 'herüber', 'hinaus', 'hinein',
    'her', 'hin', 'hinterher',
    'hoch', 'los', 'mit', 'nach', 'nieder',
    'ran', 'rüber', 'rum', 'runter',
    'vor', 'vorbei', 'vorher', 'weg', 'weiter',
    'zu', 'zurecht', 'zurück', 'zusammen',
    // Inseparable prefixes (untrennbar) — also need fallback lookup
    'be', 'emp', 'ent', 'er', 'ge', 'ver', 'zer', 'miss', 'wider',
  ]
    .sort((a, b) => b.length - a.length)

  for (const prefix of PREFIXES) {
    if (infinitive.startsWith(prefix)) {
      const base = infinitive.slice(prefix.length)
      const baseEntry = IRREGULAR_VERBS_DATABASE[base]
      if (baseEntry) {
        // Apply prefix to Partizip II
        // Inseparable prefixes: no "ge-" prefix in Partizip II
        const INSEP_PREFIXES = ['be', 'emp', 'ent', 'er', 'ge', 'ver', 'zer', 'miss', 'wider']
        const isInseparable = INSEP_PREFIXES.includes(prefix)
        let prefixedPartizip: string

        if (isInseparable) {
          // Strip "ge-" from base partizip and prepend the inseparable prefix
          const baseP2 = baseEntry.partizipII.startsWith('ge')
            ? baseEntry.partizipII.slice(2)
            : baseEntry.partizipII
          prefixedPartizip = prefix + baseP2
        } else {
          // Separable prefix: ge- goes between prefix and stem
          prefixedPartizip = baseEntry.partizipII.startsWith('ge')
            ? prefix + baseEntry.partizipII
            : baseEntry.partizipII
        }

        return {
          ...baseEntry,
          infinitive,
          partizipII: prefixedPartizip,
        }
      }
    }
  }

  return undefined
}

/**
 * Normalise a verb infinitive by resolving the base verb.
 * This matches "widerrufen" → "rufen" for lookup.
 */
export function normaliseVerb(infinitive: string): { base: string; prefix: string } {
  const prefixes = ['ab', 'an', 'auf', 'aus', 'bei', 'da', 'dar', 'dabei', 'dafür',
    'dagegen', 'daran', 'darauf', 'darin', 'darunter', 'davon', 'davor', 'dazu',
    'ein', 'empor', 'entgegen', 'entlang',
    'fehl', 'fern', 'fest', 'fort', 'frei',
    'gegenüber',
    'heim', 'herauf', 'herunter', 'herüber', 'hinaus', 'hinein',
    'her', 'hin', 'hinterher', 'hoch',
    'los', 'mit', 'nach', 'nieder',
    'ran', 'rüber', 'rum', 'runter',
    'vor', 'vorbei', 'vorher', 'weg', 'weiter',
    'zu', 'zurecht', 'zurück', 'zusammen',
  ].sort((a, b) => b.length - a.length)

  for (const p of prefixes) {
    if (infinitive.startsWith(p)) {
      return { base: infinitive.slice(p.length), prefix: p }
    }
  }
  return { base: infinitive, prefix: '' }
}
