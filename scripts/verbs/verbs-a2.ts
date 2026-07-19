import type { VerbEntry } from './types'

export const a2Verbs: VerbEntry[] = [
  // === DAILY LIFE & ROUTINES ===
  { infinitive: 'aufwachen', en: 'to wake up', ar: 'يستيقظ', fr: 'se réveiller', level: 'A2', freq: 'very_common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'sein', p2: 'aufgewacht', sep: 'auf', ipa: '/ˈaʊfˌvaxən/', tags: ['daily_life', 'morning_routine'] },
  { infinitive: 'ausschlafen', en: 'to sleep in', ar: 'ينام طويلاً', fr: 'faire la grasse matinée', level: 'A2', freq: 'common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'ausgeschlafen', sep: 'aus', tags: ['daily_life', 'sleep'] },
  { infinitive: 'sich ausruhen',
  reflexivePronounCase: 'akkusativ', en: 'to rest', ar: 'يستريح', fr: 'se reposer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'ausgeruht', reflexive: true, reflexivePronoun: 'sich', tags: ['daily_life', 'health'] },
  { infinitive: 'sich anziehen',
  reflexivePronounCase: 'akkusativ', en: 'to get dressed', ar: 'يرتدي', fr: 's\'habiller', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'angezogen', reflexive: true, reflexivePronoun: 'sich', tags: ['daily_life', 'clothing'] },
  { infinitive: 'sich ausziehen',
  reflexivePronounCase: 'akkusativ', en: 'to undress', ar: 'يخلع', fr: 'se déshabiller', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'ausgezogen', reflexive: true, reflexivePronoun: 'sich', tags: ['daily_life', 'clothing'] },
  { infinitive: 'sich waschen',
  reflexivePronounCase: 'akkusativ', en: 'to wash oneself', ar: 'يغتسل', fr: 'se laver', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gewaschen', reflexive: true, reflexivePronoun: 'sich', tags: ['hygiene', 'daily_life'] },
  { infinitive: 'sich duschen',
  reflexivePronounCase: 'akkusativ', en: 'to shower', ar: 'يستحم', fr: 'se doucher', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geduscht', reflexive: true, reflexivePronoun: 'sich', tags: ['hygiene', 'daily_life'] },
  { infinitive: 'sich rasieren',
  reflexivePronounCase: 'akkusativ', en: 'to shave', ar: 'يحلق', fr: 'se raser', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'rasiert', reflexive: true, reflexivePronoun: 'sich', tags: ['hygiene', 'daily_life'] },
  { infinitive: 'sich kämmen',
  reflexivePronounCase: 'akkusativ', en: 'to comb one\'s hair', ar: 'يمشط', fr: 'se peigner', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gekämmt', reflexive: true, reflexivePronoun: 'sich', tags: ['hygiene', 'daily_life'] },

  // === HEALTH & BODY ===
  { infinitive: 'schmerzen', en: 'to hurt, ache', ar: 'يؤلم', fr: 'faire mal', level: 'A2', freq: 'very_common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geschmerzt', tags: ['health', 'body'] },
  { infinitive: 'husten', en: 'to cough', ar: 'يسعل', fr: 'tousser', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gehustet', tags: ['health', 'symptoms'] },
  { infinitive: 'niesen', en: 'to sneeze', ar: 'يعطس', fr: 'éternuer', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geniest', tags: ['health', 'symptoms'] },
  { infinitive: 'sich erkälten',
  reflexivePronounCase: 'akkusativ', en: 'to catch a cold', ar: 'يصاب بنزلة برد', fr: 's\'enrhumer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'erkältet', reflexive: true, reflexivePronoun: 'sich', tags: ['health', 'illness'] },
  { infinitive: 'heilen', en: 'to heal', ar: 'يشفي', fr: 'guérir', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'geheilt', tags: ['health', 'medicine'] },
  { infinitive: 'pflegen', en: 'to care for', ar: 'يعتني', fr: 'soigner', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gepflegt', tags: ['health', 'care'] },
  { infinitive: 'sich fühlen',
  reflexivePronounCase: 'akkusativ', en: 'to feel', ar: 'يشعر', fr: 'se sentir', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gefühlt', reflexive: true, reflexivePronoun: 'sich', tags: ['feelings', 'health'] },
  { infinitive: 'sich erholen',
  reflexivePronounCase: 'akkusativ', en: 'to recover', ar: 'يتعافى', fr: 'se rétablir', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'erholt', reflexive: true, reflexivePronoun: 'sich', tags: ['health', 'recovery'] },
  { infinitive: 'abnehmen', en: 'to lose weight', ar: 'يفقد الوزن', fr: 'maigrir', level: 'A2', freq: 'common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'abgenommen', sep: 'ab', tags: ['health', 'body'] },
  { infinitive: 'zunehmen', en: 'to gain weight', ar: 'يزيد الوزن', fr: 'grossir', level: 'A2', freq: 'common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'zugenommen', sep: 'zu', tags: ['health', 'body'] },

  // === SHOPPING & SERVICES ===
  { infinitive: 'bestellen', en: 'to order', ar: 'يطلب', fr: 'commander', level: 'A2', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'bestellt', tags: ['shopping', 'restaurant'] },
  { infinitive: 'bezahlen', en: 'to pay', ar: 'يدفع', fr: 'payer', level: 'A2', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'bezahlt', tags: ['shopping', 'money'] },
  { infinitive: 'einkaufen', en: 'to shop', ar: 'يتسوق', fr: 'faire les courses', level: 'A2', freq: 'very_common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'eingekauft', sep: 'ein', tags: ['shopping', 'daily_life'] },
  { infinitive: 'umtauschen', en: 'to exchange', ar: 'يستبدل', fr: 'échanger', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'umgetauscht', sep: 'um', tags: ['shopping', 'store'] },
  { infinitive: 'probieren', en: 'to try on', ar: 'يجرب', fr: 'essayer', level: 'A2', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'probiert', tags: ['shopping', 'clothing'] },
  { infinitive: 'anprobieren', en: 'to try on (clothes)', ar: 'يقيس', fr: 'essayer (vêtements)', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'anprobiert', sep: 'an', tags: ['shopping', 'clothing'] },
  { infinitive: 'reservieren', en: 'to reserve', ar: 'يحجز', fr: 'réserver', level: 'A2', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'reserviert', tags: ['travel', 'restaurant'] },

  // === COMMUNICATION EXTENDED ===
  { infinitive: 'erwähnen', en: 'to mention', ar: 'يذكر', fr: 'mentionner', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'erwähnt', tags: ['communication'] },
  { infinitive: 'berichten', en: 'to report', ar: 'يخبر', fr: 'rapporter', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'dativ', aux: 'haben', p2: 'berichtet', tags: ['communication', 'media'] },
  { infinitive: 'beschreiben', en: 'to describe', ar: 'يصف', fr: 'décrire', level: 'A2', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'beschrieben', tags: ['communication', 'education'] },
  { infinitive: 'erklären', en: 'to explain', ar: 'يشرح', fr: 'expliquer', level: 'A2', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'dativ', aux: 'haben', p2: 'erklärt', tags: ['communication', 'education'] },
  { infinitive: 'diskutieren', en: 'to discuss', ar: 'يناقش', fr: 'discuter', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'diskutiert', tags: ['communication', 'social'] },
  { infinitive: 'überraschen', en: 'to surprise', ar: 'يفاجئ', fr: 'surprendre', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'überrascht', tags: ['feelings', 'social'] },
  { infinitive: 'sich unterhalten',
  reflexivePronounCase: 'akkusativ', en: 'to converse', ar: 'يتحدث', fr: 'converser', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'unterhalten', reflexive: true, reflexivePronoun: 'sich', tags: ['communication', 'social'] },
  { infinitive: 'zuhören', en: 'to listen to', ar: 'يستمع', fr: 'écouter', level: 'A2', freq: 'very_common', type: 'separable', tr: 'intransitive', obj: 'dativ', aux: 'haben', p2: 'zugehört', sep: 'zu', tags: ['communication', 'education'] },
  { infinitive: 'nachfragen', en: 'to inquire', ar: 'يستفسر', fr: 's\'enquérir', level: 'A2', freq: 'common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'nachgefragt', sep: 'nach', tags: ['communication', 'education'] },
  { infinitive: 'mitteilen', en: 'to inform', ar: 'يبلغ', fr: 'informer', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'dativ', aux: 'haben', p2: 'mitgeteilt', sep: 'mit', tags: ['communication'] },

  // === TRAVEL & TRANSPORTATION ===
  { infinitive: 'abreisen', en: 'to depart', ar: 'يسافر', fr: 'partir en voyage', level: 'A2', freq: 'common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'sein', p2: 'abgereist', sep: 'ab', tags: ['travel'] },
  { infinitive: 'anreisen', en: 'to arrive', ar: 'يصل', fr: 'arriver', level: 'A2', freq: 'common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'sein', p2: 'angereist', sep: 'an', tags: ['travel'] },
  { infinitive: 'einsteigen', en: 'to board', ar: 'يركب', fr: 'monter dans', level: 'A2', freq: 'very_common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'sein', p2: 'eingestiegen', sep: 'ein', tags: ['travel', 'transportation'] },
  { infinitive: 'aussteigen', en: 'to get off', ar: 'ينزل', fr: 'descendre', level: 'A2', freq: 'very_common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'sein', p2: 'ausgestiegen', sep: 'aus', tags: ['travel', 'transportation'] },
  { infinitive: 'umsteigen', en: 'to transfer', ar: 'يحول', fr: 'changer (train)', level: 'A2', freq: 'common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'sein', p2: 'umgestiegen', sep: 'um', tags: ['travel', 'transportation'] },
  { infinitive: 'parken', en: 'to park', ar: 'يركن', fr: 'stationner', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geparkt', tags: ['traffic', 'transportation'] },
  { infinitive: 'übernachten', en: 'to stay overnight', ar: 'يبيت', fr: 'passer la nuit', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'übernachtet', tags: ['travel', 'hotel'] },
  { infinitive: 'besichtigen', en: 'to visit (sights)', ar: 'يزور', fr: 'visiter', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'besichtigt', tags: ['travel', 'tourism'] },
  { infinitive: 'buchen', en: 'to book', ar: 'يحجز', fr: 'réserver', level: 'A2', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gebucht', tags: ['travel', 'hotel'] },
  { infinitive: 'stornieren', en: 'to cancel', ar: 'يلغي', fr: 'annuler', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'storniert', tags: ['travel', 'service'] },

  // === FOOD & COOKING ===
  { infinitive: 'zubereiten', en: 'to prepare (food)', ar: 'يحضر (طعام)', fr: 'préparer', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'zubereitet', sep: 'zu', tags: ['cooking', 'food'] },
  { infinitive: 'schmecken', en: 'to taste', ar: 'يتذوق', fr: 'goûter', level: 'A2', freq: 'very_common', type: 'regular', tr: 'intransitive', obj: 'dativ', aux: 'haben', p2: 'geschmeckt', tags: ['food', 'senses'] },
  { infinitive: 'kneten', en: 'to knead', ar: 'يعجن', fr: 'pétrir', level: 'A2', freq: 'less_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'geknetet', tags: ['cooking', 'baking'] },
  { infinitive: 'bestreichen', en: 'to spread', ar: 'يدهن', fr: 'tartiner', level: 'A2', freq: 'less_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'bestrichen', tags: ['cooking', 'food'] },
  { infinitive: 'dämpfen', en: 'to steam', ar: 'يتبخر', fr: 'cuire à la vapeur', level: 'A2', freq: 'less_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gedämpft', tags: ['cooking'] },
  { infinitive: 'einladen', en: 'to invite', ar: 'يدعو', fr: 'inviter', level: 'A2', freq: 'very_common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'eingeladen', sep: 'ein', tags: ['social', 'celebrations'] },

  // === WORK & PROFESSION ===
  { infinitive: 'bewerben', en: 'to apply', ar: 'يتقدم', fr: 'postuler', level: 'A2', freq: 'common', type: 'inseparable', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'beworben', tags: ['work', 'career'] },
  { infinitive: 'unterschreiben', en: 'to sign', ar: 'يوقع', fr: 'signer', level: 'A2', freq: 'common', type: 'inseparable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'unterschrieben', tags: ['work', 'office'] },
  { infinitive: 'kündigen', en: 'to resign, cancel', ar: 'يستقيل', fr: 'démissionner', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gekündigt', tags: ['work', 'career'] },
  { infinitive: 'einstellen', en: 'to hire', ar: 'يوظف', fr: 'embaucher', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'eingestellt', sep: 'ein', tags: ['work', 'business'] },
  { infinitive: 'entlassen', en: 'to dismiss, fire', ar: 'يطرد', fr: 'licencier', level: 'A2', freq: 'common', type: 'inseparable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'entlassen', tags: ['work', 'business'] },
  { infinitive: 'verdienen', en: 'to earn', ar: 'يكسب', fr: 'gagner', level: 'A2', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'verdient', tags: ['work', 'money'] },
  { infinitive: 'ausgeben', en: 'to spend (money)', ar: 'ينفق', fr: 'dépenser', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'ausgegeben', sep: 'aus', tags: ['money', 'shopping'] },
  { infinitive: 'sparen', en: 'to save', ar: 'يوفر', fr: 'économiser', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gespart', tags: ['money', 'finance'] },
  { infinitive: 'leihen', en: 'to borrow, lend', ar: 'يستعير/يقرض', fr: 'emprunter/prêter', level: 'A2', freq: 'common', type: 'irregular', tr: 'transitive', obj: 'dativ', aux: 'haben', p2: 'geliehen', tags: ['money', 'social'] },
  { infinitive: 'schenken', en: 'to give (as gift)', ar: 'يهدي', fr: 'offrir', level: 'A2', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'dativ', aux: 'haben', p2: 'geschenkt', tags: ['social', 'celebrations'] },

  // === EDUCATION ===
  { infinitive: 'prüfen', en: 'to test, examine', ar: 'يمتحن', fr: 'examiner', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'geprüft', tags: ['education', 'school'] },
  { infinitive: 'bestehen', en: 'to pass (exam)', ar: 'ينجح', fr: 'réussir', level: 'A2', freq: 'very_common', type: 'irregular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'bestanden', tags: ['education', 'achievement'] },
  { infinitive: 'durchfallen', en: 'to fail (exam)', ar: 'يرسب', fr: 'échouer', level: 'A2', freq: 'common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'sein', p2: 'durchgefallen', sep: 'durch', tags: ['education', 'school'] },
  { infinitive: 'wiederholen', en: 'to repeat', ar: 'يكرر', fr: 'répéter', level: 'A2', freq: 'very_common', type: 'inseparable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'wiederholt', tags: ['education', 'actions'] },
  { infinitive: 'vorbereiten', en: 'to prepare', ar: 'يحضر', fr: 'préparer', level: 'A2', freq: 'very_common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'vorbereitet', sep: 'vor', tags: ['education', 'work'] },
  { infinitive: 'sich konzentrieren',
  reflexivePronounCase: 'akkusativ', en: 'to concentrate', ar: 'يركز', fr: 'se concentrer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'konzentriert', reflexive: true, reflexivePronoun: 'sich', tags: ['education', 'work'] },
  { infinitive: 'aufpassen', en: 'to pay attention', ar: 'ينتبه', fr: 'faire attention', level: 'A2', freq: 'common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'aufgepasst', sep: 'auf', tags: ['education', 'school'] },
  { infinitive: 'nachschlagen', en: 'to look up', ar: 'يبحث', fr: 'chercher (réf.)', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'nachgeschlagen', sep: 'nach', tags: ['education', 'study'] },

  // === WEATHER EXTENDED ===
  { infinitive: 'donnern', en: 'to thunder', ar: 'يرعد', fr: 'tonner', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gedonnert', tags: ['weather', 'nature'] },
  { infinitive: 'blitzen', en: 'to lighten', ar: 'يبرق', fr: 'éclairer', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geblitzt', tags: ['weather', 'nature'] },
  { infinitive: 'stürmen', en: 'to storm', ar: 'يعصف', fr: 'tempêter', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gestürmt', tags: ['weather', 'nature'] },
  { infinitive: 'tauen', en: 'to thaw', ar: 'يذوب', fr: 'dégeler', level: 'A2', freq: 'less_common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'getaut', tags: ['weather'] },
  { infinitive: 'frieren', en: 'to freeze', ar: 'يجمد', fr: 'geler', level: 'A2', freq: 'very_common', type: 'irregular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gefroren', tags: ['weather', 'feelings'] },

  // === SPORTS & FREE TIME ===
  { infinitive: 'trainieren', en: 'to train', ar: 'يتدرب', fr: 's\'entraîner', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'trainiert', tags: ['sports', 'fitness'] },
  { infinitive: 'joggen', en: 'to jog', ar: 'يركض', fr: 'faire du jogging', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'sein', p2: 'gejoggt', tags: ['sports', 'fitness'] },
  { infinitive: 'klettern', en: 'to climb', ar: 'يتسلق', fr: 'escalader', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'sein', p2: 'geklettert', tags: ['sports', 'nature'] },
  { infinitive: 'angeln', en: 'to fish', ar: 'يصطاد', fr: 'pêcher', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geangelt', tags: ['free_time', 'nature'] },
  { infinitive: 'zelten', en: 'to camp', ar: 'يخيم', fr: 'camper', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gezeltet', tags: ['free_time', 'nature'] },
  { infinitive: 'grillen', en: 'to barbecue', ar: 'يشوي', fr: 'griller', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gegrillt', tags: ['food', 'free_time'] },
  { infinitive: 'basteln', en: 'to do crafts', ar: 'يعمل أشغال يدوية', fr: 'bricoler', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gebastelt', tags: ['hobby', 'creative'] },
  { infinitive: 'nähen', en: 'to sew', ar: 'يخيط', fr: 'coudre', level: 'A2', freq: 'less_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'genäht', tags: ['hobby', 'crafts'] },
  { infinitive: 'stricken', en: 'to knit', ar: 'يحيك', fr: 'tricoter', level: 'A2', freq: 'less_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gestrickt', tags: ['hobby', 'crafts'] },
  { infinitive: 'sich entspannen',
  reflexivePronounCase: 'akkusativ', en: 'to relax', ar: 'يسترخي', fr: 'se détendre', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'entspannt', reflexive: true, reflexivePronoun: 'sich', tags: ['free_time', 'health'] },

  // === FEELINGS EXTENDED ===
  { infinitive: 'sich ärgern',
  reflexivePronounCase: 'akkusativ', en: 'to get annoyed', ar: 'ينزعج', fr: 's\'énerver', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geärgert', reflexive: true, reflexivePronoun: 'sich', tags: ['feelings', 'emotions'] },
  { infinitive: 'sich freuen',
  reflexivePronounCase: 'akkusativ', en: 'to be happy', ar: 'يفرح', fr: 'se réjouir', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gefreut', reflexive: true, reflexivePronoun: 'sich', tags: ['feelings', 'emotions'] },
  { infinitive: 'sich wundern',
  reflexivePronounCase: 'akkusativ', en: 'to wonder', ar: 'يتعجب', fr: 's\'étonner', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gewundert', reflexive: true, reflexivePronoun: 'sich', tags: ['feelings', 'thought'] },
  { infinitive: 'sich langweilen',
  reflexivePronounCase: 'akkusativ', en: 'to be bored', ar: 'يضجر', fr: 's\'ennuyer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gelangweilt', reflexive: true, reflexivePronoun: 'sich', tags: ['feelings', 'emotions'] },
  { infinitive: 'sich schämen',
  reflexivePronounCase: 'akkusativ', en: 'to be ashamed', ar: 'يخجل', fr: 'avoir honte', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geschämt', reflexive: true, reflexivePronoun: 'sich', tags: ['feelings', 'emotions'] },
  { infinitive: 'sich kümmern',
  reflexivePronounCase: 'akkusativ', en: 'to care about', ar: 'يهتم', fr: 's\'occuper de', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gekümmert', reflexive: true, reflexivePronoun: 'sich', tags: ['feelings', 'relationships'] },
  { infinitive: 'sich sorgen',
  reflexivePronounCase: 'akkusativ', en: 'to worry', ar: 'يقلق', fr: 's\'inquiéter', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gesorgt', reflexive: true, reflexivePronoun: 'sich', tags: ['feelings', 'emotions'] },
  { infinitive: 'sich gewöhnen',
  reflexivePronounCase: 'akkusativ', en: 'to get used to', ar: 'يعتاد', fr: 's\'habituer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gewöhnt', reflexive: true, reflexivePronoun: 'sich', tags: ['daily_life', 'change'] },

  // === RELATIONSHIPS ===
  { infinitive: 'sich treffen',
  reflexivePronounCase: 'akkusativ', en: 'to meet (each other)', ar: 'يلتقي', fr: 'se rencontrer', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'getroffen', reflexive: true, reflexivePronoun: 'sich', tags: ['social', 'relationships'] },
  { infinitive: 'sich verabschieden',
  reflexivePronounCase: 'akkusativ', en: 'to say goodbye', ar: 'يودع', fr: 'dire au revoir', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'verabschiedet', reflexive: true, reflexivePronoun: 'sich', tags: ['social', 'communication'] },
  { infinitive: 'sich verlieben',
  reflexivePronounCase: 'akkusativ', en: 'to fall in love', ar: 'يقع في الحب', fr: 'tomber amoureux', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'verliebt', reflexive: true, reflexivePronoun: 'sich', tags: ['relationships', 'feelings'] },
  { infinitive: 'sich streiten',
  reflexivePronounCase: 'akkusativ', en: 'to argue', ar: 'يتجادل', fr: 'se disputer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gestritten', reflexive: true, reflexivePronoun: 'sich', tags: ['relationships', 'communication'] },
  { infinitive: 'sich vertragen',
  reflexivePronounCase: 'akkusativ', en: 'to get along', ar: 'يتوافق', fr: 's\'entendre', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'vertragen', reflexive: true, reflexivePronoun: 'sich', tags: ['relationships', 'social'] },
  { infinitive: 'sich trennen',
  reflexivePronounCase: 'akkusativ', en: 'to separate', ar: 'ينفصل', fr: 'se séparer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'getrennt', reflexive: true, reflexivePronoun: 'sich', tags: ['relationships'] },

  // === HOUSE & LIVING ===
  { infinitive: 'einziehen', en: 'to move in', ar: 'ينتقل للسكن', fr: 'emménager', level: 'A2', freq: 'common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'sein', p2: 'eingezogen', sep: 'ein', tags: ['house', 'moving'] },
  { infinitive: 'ausziehen', en: 'to move out', ar: 'ينتقل خارجا', fr: 'déménager', level: 'A2', freq: 'common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'sein', p2: 'ausgezogen', sep: 'aus', tags: ['house', 'moving'] },
  { infinitive: 'umziehen', en: 'to move', ar: 'ينتقل', fr: 'déménager', level: 'A2', freq: 'common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'sein', p2: 'umgezogen', sep: 'um', tags: ['house', 'moving'] },
  { infinitive: 'einrichten', en: 'to furnish', ar: 'يؤثث', fr: 'meubler', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'eingerichtet', sep: 'ein', tags: ['house', 'furniture'] },
  { infinitive: 'renovieren', en: 'to renovate', ar: 'يجدد', fr: 'rénover', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'renoviert', tags: ['house', 'home'] },
  { infinitive: 'reparieren', en: 'to repair', ar: 'يصلح', fr: 'réparer', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'repariert', tags: ['house', 'actions'] },

  // === TECHNOLOGY ===
  { infinitive: 'programmieren', en: 'to program', ar: 'يبرمج', fr: 'programmer', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'programmiert', tags: ['technology', 'computer'] },
  { infinitive: 'herunterladen', en: 'to download', ar: 'يحمل', fr: 'télécharger', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'heruntergeladen', sep: 'herunter', tags: ['technology', 'internet'] },
  { infinitive: 'hochladen', en: 'to upload', ar: 'يرفع', fr: 'téléverser', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'hochgeladen', sep: 'hoch', tags: ['technology', 'internet'] },
  { infinitive: 'surfen', en: 'to surf (internet)', ar: 'يتصفح', fr: 'surfer', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gesurft', tags: ['technology', 'internet'] },
  { infinitive: 'tippen', en: 'to type', ar: 'يطبع', fr: 'taper', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'getippt', tags: ['technology', 'office'] },
  { infinitive: 'löschen', en: 'to delete', ar: 'يحذف', fr: 'supprimer', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gelöscht', tags: ['technology', 'actions'] },
  { infinitive: 'speichern', en: 'to save', ar: 'يحفظ', fr: 'enregistrer', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gespeichert', tags: ['technology', 'computer'] },
  { infinitive: 'drucken', en: 'to print', ar: 'يطبع', fr: 'imprimer', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gedruckt', tags: ['office', 'technology'] },
  { infinitive: 'scannen', en: 'to scan', ar: 'يمسح', fr: 'scanner', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gescannt', tags: ['technology', 'office'] },
  { infinitive: 'kopieren', en: 'to copy', ar: 'ينسخ', fr: 'copier', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'kopiert', tags: ['technology', 'office'] },

  // === EXTRA A2 ===
  { infinitive: 'anmelden', en: 'to register, log in', ar: 'يسجل', fr: 's\'inscrire', level: 'A2', freq: 'very_common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'angemeldet', sep: 'an', tags: ['technology', 'administration'] },
  { infinitive: 'abmelden', en: 'to log out', ar: 'يسجل خروج', fr: 'se déconnecter', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'abgemeldet', sep: 'ab', tags: ['technology', 'administration'] },
  { infinitive: 'einwerfen', en: 'to drop in', ar: 'يرمي', fr: 'jeter (lettre)', level: 'A2', freq: 'less_common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'eingeworfen', sep: 'ein', tags: ['daily_life', 'post'] },
  { infinitive: 'ausfüllen', en: 'to fill out', ar: 'يملأ', fr: 'remplir', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'ausgefüllt', sep: 'aus', tags: ['administration', 'office'] },
  { infinitive: 'abgeben', en: 'to hand in', ar: 'يسلم', fr: 'rendre', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'abgegeben', sep: 'ab', tags: ['school', 'office'] },
  { infinitive: 'anbieten', en: 'to offer', ar: 'يعرض', fr: 'offrir', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'angeboten', sep: 'an', tags: ['business', 'social'] },
  { infinitive: 'annehmen', en: 'to accept', ar: 'يقبل', fr: 'accepter', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'angenommen', sep: 'an', tags: ['communication', 'business'] },
  { infinitive: 'ablehnen', en: 'to reject', ar: 'يرفض', fr: 'refuser', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'abgelehnt', sep: 'ab', tags: ['communication', 'business'] },
  { infinitive: 'sich beschweren',
  reflexivePronounCase: 'akkusativ', en: 'to complain', ar: 'يشكو', fr: 'se plaindre', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'beschwert', reflexive: true, reflexivePronoun: 'sich', tags: ['communication', 'service'] },
  { infinitive: 'sich entschuldigen',
  reflexivePronounCase: 'akkusativ', en: 'to apologize', ar: 'يعتذر', fr: 's\'excuser', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'entschuldigt', reflexive: true, reflexivePronoun: 'sich', tags: ['communication', 'politeness'] },
  { infinitive: 'verabreden', en: 'to arrange (meeting)', ar: 'يحدد موعد', fr: 'convenir d\'un rendez-vous', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'verabredet', tags: ['social', 'communication'] },
  { infinitive: 'verschieben', en: 'to postpone', ar: 'يؤجل', fr: 'reporter', level: 'A2', freq: 'common', type: 'irregular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'verschoben', tags: ['work', 'planning'] },
  { infinitive: 'stattfinden', en: 'to take place', ar: 'يقام', fr: 'avoir lieu', level: 'A2', freq: 'very_common', type: 'separable', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'stattgefunden', sep: 'statt', tags: ['events', 'organization'] },

  // === WEATHER ===
  { infinitive: 'regnen', en: 'to rain', ar: 'تمطر', fr: 'pleuvoir', level: 'A2', freq: 'very_common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geregnet', tags: ['weather'] },
  { infinitive: 'schneien', en: 'to snow', ar: 'تتساقط الثلوج', fr: 'neiger', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geschneit', tags: ['weather'] },
  { infinitive: 'scheinen', en: 'to shine', ar: 'تشرق', fr: 'briller', level: 'A2', freq: 'very_common', type: 'irregular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geschienen', tags: ['weather'] },
  { infinitive: 'hageln', en: 'to hail', ar: 'يسقط البرد', fr: 'grêler', level: 'A2', freq: 'common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gehagelt', tags: ['weather'] },
  


  // === ADMINISTRATION & INTEGRATION ===
{ infinitive: 'beantragen', en: 'to apply for/request', ar: 'يطلب / يقدم طلباً', fr: 'demander', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'beantragt', tags: ['administration', 'integration'] },

{ infinitive: 'erhalten', en: 'to receive', ar: 'يتلقى', fr: 'recevoir', level: 'A2', freq: 'very_common', type: 'irregular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'erhalten', tags: ['administration', 'daily_life'] },

{ infinitive: 'verlängern', en: 'to extend', ar: 'يمدد', fr: 'prolonger', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'verlängert', tags: ['administration'] },

{ infinitive: 'unterscheiden', en: 'to distinguish', ar: 'يميز', fr: 'distinguer', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'unterschieden', tags: ['learning'] },

{ infinitive: 'sich anmelden',
  reflexivePronounCase: 'akkusativ', en: 'to register', ar: 'يسجل نفسه', fr: 's’inscrire', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'angemeldet', reflexive: true, reflexivePronoun: 'sich', tags: ['administration'] },

{ infinitive: 'sich abmelden',
  reflexivePronounCase: 'akkusativ', en: 'to deregister', ar: 'يلغي التسجيل', fr: 'se désinscrire', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'abgemeldet', reflexive: true, reflexivePronoun: 'sich', tags: ['administration'] },


// === HOUSING ===
{ infinitive: 'mieten', en: 'to rent', ar: 'يستأجر', fr: 'louer', level: 'A2', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gemietet', tags: ['house', 'housing'] },

{ infinitive: 'vermieten', en: 'to rent out', ar: 'يؤجر', fr: 'louer (donner)', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'vermietet', tags: ['house', 'housing'] },

{ infinitive: 'putzen', en: 'to clean', ar: 'ينظف', fr: 'nettoyer', level: 'A2', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'geputzt', tags: ['house', 'daily_life'] },

{ infinitive: 'aufräumen', en: 'to tidy up', ar: 'يرتب', fr: 'ranger', level: 'A2', freq: 'very_common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'aufgeräumt', sep: 'auf', tags: ['house'] },

{ infinitive: 'wegwerfen', en: 'to throw away', ar: 'يرمي', fr: 'jeter', level: 'A2', freq: 'common', type: 'separable', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'weggeworfen', sep: 'weg', tags: ['daily_life'] },


// === COMMUNICATION ===
{ infinitive: 'besprechen', en: 'to discuss', ar: 'يناقش', fr: 'discuter', level: 'A2', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'besprochen', tags: ['communication'] },

{ infinitive: 'antworten', en: 'to answer', ar: 'يجيب', fr: 'répondre', level: 'A1', freq: 'very_common', type: 'regular', tr: 'intransitive', obj: 'dativ', aux: 'haben', p2: 'geantwortet', tags: ['communication'] },

{ infinitive: 'fragen', en: 'to ask', ar: 'يسأل', fr: 'demander', level: 'A1', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gefragt', tags: ['communication'] },

{ infinitive: 'erzählen', en: 'to tell', ar: 'يحكي', fr: 'raconter', level: 'A1', freq: 'very_common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'erzählt', tags: ['communication'] },

{ infinitive: 'beschweren', en: 'to complain', ar: 'يشتكي', fr: 'se plaindre', level: 'A2', freq: 'common', type: 'regular', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'beschwert', tags: ['service'] },


// === JOB & CAREER ===
{ infinitive: 'arbeiten', en: 'to work', ar: 'يعمل', fr: 'travailler', level: 'A1', freq: 'very_common', type: 'regular', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gearbeitet', tags: ['work'] },

{ infinitive: 'sich bewerben',
  reflexivePronounCase: 'akkusativ', en: 'to apply', ar: 'يتقدم للعمل', fr: 'postuler', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'beworben', reflexive: true, reflexivePronoun:'sich', tags:['work','career'] },

{ infinitive: 'vorstellen', en: 'to introduce/present', ar: 'يقدم / يعرف', fr: 'présenter', level: 'A2', freq: 'very_common', type: 'separable', tr: 'transitive', obj:'akkusativ', aux:'haben', p2:'vorgestellt', sep:'vor', tags:['communication','work'] },

// === IMPORTANT DAILY VERBS ===
{ infinitive:'ändern', en:'to change', ar:'يغير', fr:'changer', level:'A2', freq:'very_common', type:'regular', tr:'transitive', obj:'akkusativ', aux:'haben', p2:'geändert', tags:['daily_life'] },

{ infinitive:'merken', en:'to notice/remember', ar:'يلاحظ', fr:'remarquer', level:'A2', freq:'common', type:'regular', tr:'transitive', obj:'akkusativ', aux:'haben', p2:'gemerkt', tags:['learning'] },

{ infinitive:'vergessen', en:'to forget', ar:'ينسى', fr:'oublier', level:'A2', freq:'very_common', type:'irregular', tr:'transitive', obj:'akkusativ', aux:'haben', p2:'vergessen', tags:['memory'] },

{ infinitive:'sich erinnern',
  reflexivePronounCase: 'akkusativ', en:'to remember', ar:'يتذكر', fr:'se souvenir', level:'A2', freq:'very_common', type:'reflexive', tr:'intransitive', obj:'none', aux:'haben', p2:'erinnert', reflexive:true, reflexivePronoun:'sich', tags:['memory'] },

{ infinitive:'erlauben', en:'to allow', ar:'يسمح', fr:'permettre', level:'A2', freq:'common', type:'regular', tr:'transitive', obj:'dativ', aux:'haben', p2:'erlaubt', tags:['rules'] },

{ infinitive:'verbieten', en:'to forbid', ar:'يمنع', fr:'interdire', level:'A2', freq:'common', type:'irregular', tr:'transitive', obj:'akkusativ', aux:'haben', p2:'verboten', tags:['rules'] },

  // === ADDITIONAL REFLEXIVE VERBS ===
  { infinitive: 'sich bedanken',
  reflexivePronounCase: 'akkusativ', en: 'to thank', ar: 'يشكر', fr: 'remercier', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'bedankt', reflexive: true, reflexivePronoun: 'sich', tags: ['communication', 'politeness'] },
  { infinitive: 'sich beeilen',
  reflexivePronounCase: 'akkusativ', en: 'to hurry', ar: 'يستعجل', fr: 'se dépêcher', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'beeilt', reflexive: true, reflexivePronoun: 'sich', tags: ['daily_life'] },
  { infinitive: 'sich befinden',
  reflexivePronounCase: 'akkusativ', en: 'to be located', ar: 'يوجد / يكون في مكان', fr: 'se trouver', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'befunden', reflexive: true, reflexivePronoun: 'sich', tags: ['location'] },
  { infinitive: 'sich beklagen',
  reflexivePronounCase: 'akkusativ', en: 'to complain', ar: 'يشتكي', fr: 'se plaindre', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'beklagt', reflexive: true, reflexivePronoun: 'sich', tags: ['communication'] },
  { infinitive: 'sich entscheiden',
  reflexivePronounCase: 'akkusativ', en: 'to decide', ar: 'يقرر', fr: 'se décider', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'entschieden', reflexive: true, reflexivePronoun: 'sich', tags: ['decisions'] },
  { infinitive: 'sich einigen',
  reflexivePronounCase: 'akkusativ', en: 'to agree', ar: 'يتفق', fr: 's\'accorder', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geeinigt', reflexive: true, reflexivePronoun: 'sich', tags: ['communication'] },
  { infinitive: 'sich einleben',
  reflexivePronounCase: 'akkusativ', en: 'to settle in', ar: 'يتأقلم مع مكان جديد', fr: 's\'installer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'eingelebt', reflexive: true, reflexivePronoun: 'sich', sep: 'ein', tags: ['daily_life'] },
  { infinitive: 'sich einstellen',
  reflexivePronounCase: 'akkusativ', en: 'to adjust', ar: 'يضبط نفسه', fr: 's\'adapter', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'eingestellt', reflexive: true, reflexivePronoun: 'sich', sep: 'ein', tags: ['daily_life'] },
  { infinitive: 'sich informieren',
  reflexivePronounCase: 'akkusativ', en: 'to inform oneself', ar: 'يستعلم / يحصل على معلومات', fr: 's\'informer', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'informiert', reflexive: true, reflexivePronoun: 'sich', tags: ['communication'] },
  { infinitive: 'sich interessieren',
  reflexivePronounCase: 'akkusativ', en: 'to be interested', ar: 'يهتم بـ', fr: 's\'intéresser', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'interessiert', reflexive: true, reflexivePronoun: 'sich', tags: ['feelings'] },
  { infinitive: 'sich irren',
  reflexivePronounCase: 'akkusativ', en: 'to be mistaken', ar: 'يخطئ', fr: 'se tromper', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geirrt', reflexive: true, reflexivePronoun: 'sich', tags: ['communication'] },
  { infinitive: 'sich lohnen',
  reflexivePronounCase: 'akkusativ', en: 'to be worth it', ar: 'يستحق', fr: 'valoir la peine', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gelohnt', reflexive: true, reflexivePronoun: 'sich', tags: ['evaluation'] },
  { infinitive: 'sich melden',
  reflexivePronounCase: 'akkusativ', en: 'to report/contact', ar: 'يتصل / يبلغ', fr: 'se manifester', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gemeldet', reflexive: true, reflexivePronoun: 'sich', tags: ['communication'] },
  { infinitive: 'sich nähern',
  reflexivePronounCase: 'akkusativ', en: 'to approach', ar: 'يقترب', fr: 's\'approcher', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'genähert', reflexive: true, reflexivePronoun: 'sich', tags: ['movement'] },
  { infinitive: 'sich orientieren',
  reflexivePronounCase: 'akkusativ', en: 'to orient oneself', ar: 'يوجه نفسه', fr: 's\'orienter', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'orientiert', reflexive: true, reflexivePronoun: 'sich', tags: ['navigation'] },
  { infinitive: 'sich registrieren',
  reflexivePronounCase: 'akkusativ', en: 'to register', ar: 'يسجل', fr: 's\'inscrire', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'registriert', reflexive: true, reflexivePronoun: 'sich', tags: ['administration'] },
  { infinitive: 'sich schützen',
  reflexivePronounCase: 'akkusativ', en: 'to protect oneself', ar: 'يحمي نفسه', fr: 'se protéger', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'geschützt', reflexive: true, reflexivePronoun: 'sich', tags: ['safety'] },
  { infinitive: 'sich setzen',
  reflexivePronounCase: 'akkusativ', en: 'to sit down', ar: 'يجلس', fr: 's\'asseoir', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gesetzt', reflexive: true, reflexivePronoun: 'sich', tags: ['daily_life', 'position'] },
  { infinitive: 'sich umziehen',
  reflexivePronounCase: 'akkusativ', en: 'to change clothes', ar: 'يغير الملابس', fr: 'se changer', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'umgezogen', reflexive: true, reflexivePronoun: 'sich', sep: 'um', tags: ['daily_life', 'clothing'] },
  { infinitive: 'sich verabreden',
  reflexivePronounCase: 'akkusativ', en: 'to arrange to meet', ar: 'يتواعد / يتفق على لقاء', fr: 'se donner rendez-vous', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'verabredet', reflexive: true, reflexivePronoun: 'sich', tags: ['social'] },
  { infinitive: 'sich verbessern',
  reflexivePronounCase: 'akkusativ', en: 'to improve', ar: 'يتحسن', fr: 's\'améliorer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'verbessert', reflexive: true, reflexivePronoun: 'sich', tags: ['improvement'] },
  { infinitive: 'sich vorstellen',
  reflexivePronounCase: 'dativ', en: 'to introduce oneself', ar: 'يقدم نفسه / يتخيل', fr: 'se présenter', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'vorgestellt', reflexive: true, reflexivePronoun: 'sich', sep: 'vor', tags: ['communication', 'introduction'] },
  { infinitive: 'sich vorbereiten',
  reflexivePronounCase: 'akkusativ', en: 'to prepare', ar: 'يستعد', fr: 'se préparer', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'vorbereitet', reflexive: true, reflexivePronoun: 'sich', sep: 'vor', tags: ['preparation'] },
  { infinitive: 'sich wehren',
  reflexivePronounCase: 'akkusativ', en: 'to defend oneself', ar: 'يدافع عن نفسه', fr: 'se défendre', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gewehrt', reflexive: true, reflexivePronoun: 'sich', tags: ['conflict'] },
  { infinitive: 'sich wiederholen',
  reflexivePronounCase: 'akkusativ', en: 'to repeat', ar: 'يتكرر', fr: 'se répéter', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'wiederholt', reflexive: true, reflexivePronoun: 'sich', sep: 'wieder', tags: ['repetition'] },
  { infinitive: 'sich wünschen',
  reflexivePronounCase: 'dativ', en: 'to wish', ar: 'يتمنى', fr: 'souhaiter', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'gewünscht', reflexive: true, reflexivePronoun: 'sich', tags: ['wishes'] },
  { infinitive: 'sich auskennen',
  reflexivePronounCase: 'akkusativ', en: 'to know well', ar: 'يعرف جيداً / يكون على دراية', fr: 'se connaître', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'ausgekannt', reflexive: true, reflexivePronoun: 'sich', sep: 'aus', tags: ['knowledge'] },
  { infinitive: 'sich ausdrücken',
  reflexivePronounCase: 'akkusativ', en: 'to express oneself', ar: 'يعبر عن نفسه', fr: 's\'exprimer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'ausgedrückt', reflexive: true, reflexivePronoun: 'sich', sep: 'aus', tags: ['communication'] },
  { infinitive: 'sich abgewöhnen',
  reflexivePronounCase: 'dativ', en: 'to break a habit', ar: 'يتخلص من عادة', fr: 'se déshabituer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'abgewöhnt', reflexive: true, reflexivePronoun: 'sich', sep: 'ab', tags: ['habits'] },
  { infinitive: 'sich angewöhnen',
  reflexivePronounCase: 'dativ', en: 'to get used to', ar: 'يعتاد على', fr: 's\'habituer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'angewöhnt', reflexive: true, reflexivePronoun: 'sich', sep: 'an', tags: ['habits'] },
  { infinitive: 'sich aufregen',
  reflexivePronounCase: 'akkusativ', en: 'to get upset', ar: 'ينزعج / يتوتر', fr: 's\'énerver', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'aufgeregt', reflexive: true, reflexivePronoun: 'sich', sep: 'auf', tags: ['emotions'] },
  { infinitive: 'sich beschäftigen',
  reflexivePronounCase: 'akkusativ', en: 'to occupy oneself', ar: 'ينشغل بـ', fr: 's\'occuper', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'beschäftigt', reflexive: true, reflexivePronoun: 'sich', sep: 'be', tags: ['daily_life'] },
  { infinitive: 'sich entfernen',
  reflexivePronounCase: 'akkusativ', en: 'to move away', ar: 'يبتعد', fr: 's\'éloigner', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'entfernt', reflexive: true, reflexivePronoun: 'sich', sep: 'entfernt', tags: ['movement'] },
  { infinitive: 'sich ergeben',
  reflexivePronounCase: 'akkusativ', en: 'to result', ar: 'ينتج / يظهر', fr: 'résulter', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'ergeben', reflexive: true, reflexivePronoun: 'sich', sep: 'er', tags: ['results'] },
  { infinitive: 'sich handeln',
  reflexivePronounCase: 'akkusativ', en: 'to be about', ar: 'يتعلق الأمر بـ', fr: 's\'agir de', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gehandelt', reflexive: true, reflexivePronoun: 'sich', tags: ['topics'] },
  { infinitive: 'sich melden',
  reflexivePronounCase: 'akkusativ', en: 'to contact', ar: 'يتواصل', fr: 'se manifester', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'gemeldet', reflexive: true, reflexivePronoun: 'sich', tags: ['communication'] },
  { infinitive: 'sich niederlassen',
  reflexivePronounCase: 'akkusativ', en: 'to settle down', ar: 'يستقر', fr: 's\'installer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'niedergelassen', reflexive: true, reflexivePronoun: 'sich', sep: 'nieder', tags: ['living'] },
  { infinitive: 'sich reduzieren',
  reflexivePronounCase: 'akkusativ', en: 'to reduce', ar: 'ينخفض', fr: 'se réduire', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'reduziert', reflexive: true, reflexivePronoun: 'sich', tags: ['reduction'] },
  { infinitive: 'sich täuschen',
  reflexivePronounCase: 'akkusativ', en: 'to be mistaken', ar: 'يخطئ / يخدع نفسه', fr: 'se tromper', level: 'A2', freq: 'common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'getäuscht', reflexive: true, reflexivePronoun: 'sich', tags: ['mistakes'] },
  { infinitive: 'sich verlassen',
  reflexivePronounCase: 'akkusativ', en: 'to rely on', ar: 'يعتمد على / يغادر', fr: 'compter sur', level: 'A2', freq: 'very_common', type: 'reflexive', tr: 'intransitive', obj: 'none', aux: 'haben', p2: 'verlassen', reflexive: true, reflexivePronoun: 'sich', sep: 'ver', tags: ['trust'] },
  { infinitive: 'sich vornehmen',
  reflexivePronounCase: 'dativ', en: 'to intend', ar: 'ينوي / يقرر القيام بـ', fr: 'se proposer', level: 'A2', freq: 'common', type: 'reflexive', tr: 'transitive', obj: 'akkusativ', aux: 'haben', p2: 'vorgenommen', reflexive: true, reflexivePronoun: 'sich', sep: 'vor', tags: ['intentions'] },
]
