/**
 * German Verbs Generator v2 — Optimized
 *
 * AI generates only core metadata + examples + collocations.
 * Conjugations generated locally via verb-conjugator engine (ported).
 *
 * Usage:
 *   GROQ_API_KEY=gsk_... node scripts/verbs/generate-verbs.mjs
 *   GROQ_API_KEY=gsk_... node scripts/verbs/generate-verbs.mjs --levels=B1  # Single level
 *   GROQ_API_KEY=gsk_... node scripts/verbs/generate-verbs.mjs --dry-run
 *   GROQ_API_KEY=gsk_... node scripts/verbs/generate-verbs.mjs --overwrite
 */

import { existsSync, readFileSync, appendFileSync, writeFileSync, mkdirSync } from 'fs'
import { resolve, dirname } from 'path'
import { fileURLToPath } from 'url'

const __dirname = dirname(fileURLToPath(import.meta.url))
const OUTPUT_FILE = resolve(__dirname, '../../supabase/migrations/00033_verbs_seed_full.sql')
const BATCH_SIZE = 30

const DRY_RUN = process.argv.includes('--dry-run')
const OVERWRITE = process.argv.includes('--overwrite')
const LEVEL_FILTER = process.argv.find(a => a.startsWith('--levels='))?.split('=')[1] || null

const OPENAI_API_KEY = process.env.OPENAI_API_KEY || process.env.GROQ_API_KEY
if (!DRY_RUN && !OPENAI_API_KEY) { console.error('OPENAI_API_KEY or GROQ_API_KEY required'); process.exit(1) }

const USE_GROQ = !!process.env.GROQ_API_KEY && !OPENAI_API_KEY?.startsWith('sk-or-')
const USE_OPENROUTER = OPENAI_API_KEY?.startsWith('sk-or-')

const API_BASE = USE_GROQ
  ? 'https://api.groq.com/openai/v1/chat/completions'
  : USE_OPENROUTER
    ? 'https://openrouter.ai/api/v1/chat/completions'
    : 'https://api.openai.com/v1/chat/completions'

const LEVELS = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']
const CATEGORIES = {
  A1: ['basic_actions', 'daily_routine', 'school', 'family', 'food', 'leisure', 'travel', 'shopping', 'body', 'home'],
  A2: ['daily_life', 'work', 'health', 'travel', 'shopping', 'communication', 'food_drink', 'weather', 'hobbies', 'transport', 'city_life', 'education'],
  B1: ['workplace', 'education', 'media', 'technology', 'travel_advanced', 'relationships', 'opinions', 'planning', 'environment', 'health_advanced', 'culture', 'finance'],
  B2: ['business', 'politics', 'science', 'law', 'economics', 'society', 'abstract_discussion', 'professional', 'academic', 'negotiation', 'media_analysis', 'debate'],
  C1: ['academic_formal', 'legal', 'medical', 'scientific', 'literary', 'diplomatic', 'philosophical', 'technical', 'journalistic', 'administrative', 'artistic', 'critical_analysis'],
  C2: ['specialized_academic', 'highly_formal', 'archaic_literary', 'idiomatic', 'nuanced_expression', 'professional_expert', 'rhetorical', 'sophisticated_discourse', 'abstract_philosophical', 'elevated_register', 'stylistic', 'mastery_level'],
}

const TARGETS = { A1: 300, A2: 500, B1: 700, B2: 700, C1: 700, C2: 600 }

// ============ CONJUGATION ENGINE (ported from verb-conjugator.ts) ============

const persons = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie']

function stem(infinitive) {
  return infinitive.replace(/(en|n)$/, '')
}

function addGe(stem, separablePrefix) {
  return separablePrefix ? `${separablePrefix}ge${stem}` : `ge${stem}`
}

const manualIrregulars = {
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
  'gehen': { praesens: {}, praeteritum: { ich: 'ging', du: 'gingst', er_sie_es: 'ging', wir: 'gingen', ihr: 'gingt', Sie: 'gingen' }, partizip_2: 'gegangen', konjunktiv_ii: {} },
  'stehen': { praesens: {}, praeteritum: { ich: 'stand', du: 'standst', er_sie_es: 'stand', wir: 'standen', ihr: 'standet', Sie: 'standen' }, partizip_2: 'gestanden', konjunktiv_ii: {} },
  'bringen': { praesens: {}, praeteritum: { ich: 'brachte', du: 'brachtest', er_sie_es: 'brachte', wir: 'brachten', ihr: 'brachtet', Sie: 'brachten' }, partizip_2: 'gebracht', konjunktiv_ii: {} },
  'denken': { praesens: {}, praeteritum: { ich: 'dachte', du: 'dachtest', er_sie_es: 'dachte', wir: 'dachten', ihr: 'dachtet', Sie: 'dachten' }, partizip_2: 'gedacht', konjunktiv_ii: {} },
  'kennen': { praesens: {}, praeteritum: { ich: 'kannte', du: 'kanntest', er_sie_es: 'kannte', wir: 'kannten', ihr: 'kanntet', Sie: 'kannten' }, partizip_2: 'gekannt', konjunktiv_ii: {} },
  'nennen': { praesens: {}, praeteritum: { ich: 'nannte', du: 'nanntest', er_sie_es: 'nannte', wir: 'nannten', ihr: 'nanntet', Sie: 'nannten' }, partizip_2: 'genannt', konjunktiv_ii: {} },
  'brennen': { praesens: {}, praeteritum: { ich: 'brannte', du: 'branntest', er_sie_es: 'brannte', wir: 'brannten', ihr: 'branntet', Sie: 'brannten' }, partizip_2: 'gebrannt', konjunktiv_ii: {} },
  'rennen': { praesens: {}, praeteritum: { ich: 'rannte', du: 'ranntest', er_sie_es: 'rannte', wir: 'rannten', ihr: 'ranntet', Sie: 'rannten' }, partizip_2: 'gerannt', konjunktiv_ii: {} },
  'senden': { praesens: {}, praeteritum: { ich: 'sandte', du: 'sandtest', er_sie_es: 'sandte', wir: 'sandten', ihr: 'sandtet', Sie: 'sandten' }, partizip_2: 'gesandt', konjunktiv_ii: {} },
  'wenden': { praesens: {}, praeteritum: { ich: 'wandte', du: 'wandtest', er_sie_es: 'wandte', wir: 'wandten', ihr: 'wandtet', Sie: 'wandten' }, partizip_2: 'gewandt', konjunktiv_ii: {} },
  'tun': { praesens: { ich: 'tue', du: 'tust', er_sie_es: 'tut', wir: 'tun', ihr: 'tut', Sie: 'tun' }, praeteritum: { ich: 'tat', du: 'tatst', er_sie_es: 'tat', wir: 'taten', ihr: 'tatet', Sie: 'taten' }, partizip_2: 'getan', konjunktiv_ii: {} },
  'lassen': { praesens: {}, praeteritum: { ich: 'ließ', du: 'ließt', er_sie_es: 'ließ', wir: 'ließen', ihr: 'ließt', Sie: 'ließen' }, partizip_2: 'gelassen', konjunktiv_ii: {} },
  'lesen': { praesens: { ich: 'lese', du: 'liest', er_sie_es: 'liest', wir: 'lesen', ihr: 'lest', Sie: 'lesen' }, praeteritum: { ich: 'las', du: 'last', er_sie_es: 'las', wir: 'lasen', ihr: 'last', Sie: 'lasen' }, partizip_2: 'gelesen', konjunktiv_ii: {} },
  'sehen': { praesens: { ich: 'sehe', du: 'siehst', er_sie_es: 'sieht', wir: 'sehen', ihr: 'seht', Sie: 'sehen' }, praeteritum: { ich: 'sah', du: 'sahst', er_sie_es: 'sah', wir: 'sahen', ihr: 'saht', Sie: 'sahen' }, partizip_2: 'gesehen', konjunktiv_ii: {} },
  'geben': { praesens: { ich: 'gebe', du: 'gibst', er_sie_es: 'gibt', wir: 'geben', ihr: 'gebt', Sie: 'geben' }, praeteritum: { ich: 'gab', du: 'gabst', er_sie_es: 'gab', wir: 'gaben', ihr: 'gabt', Sie: 'gabten' }, partizip_2: 'gegeben', konjunktiv_ii: {} },
  'nehmen': { praesens: { ich: 'nehme', du: 'nimmst', er_sie_es: 'nimmt', wir: 'nehmen', ihr: 'nehmt', Sie: 'nehmen' }, praeteritum: { ich: 'nahm', du: 'nahmst', er_sie_es: 'nahm', wir: 'nahmen', ihr: 'nahmt', Sie: 'nahmen' }, partizip_2: 'genommen', konjunktiv_ii: {} },
  'essen': { praesens: { ich: 'esse', du: 'isst', er_sie_es: 'isst', wir: 'essen', ihr: 'esst', Sie: 'essen' }, praeteritum: { ich: 'aß', du: 'aßt', er_sie_es: 'aß', wir: 'aßen', ihr: 'aßt', Sie: 'aßen' }, partizip_2: 'gegessen', konjunktiv_ii: {} },
  'fahren': { praesens: {}, praeteritum: { ich: 'fuhr', du: 'fuhrst', er_sie_es: 'fuhr', wir: 'fuhren', ihr: 'fuhrt', Sie: 'fuhren' }, partizip_2: 'gefahren', konjunktiv_ii: {} },
  'sprechen': { praesens: { ich: 'spreche', du: 'sprichst', er_sie_es: 'spricht', wir: 'sprechen', ihr: 'sprecht', Sie: 'sprechen' }, praeteritum: { ich: 'sprach', du: 'sprachst', er_sie_es: 'sprach', wir: 'sprachen', ihr: 'spracht', Sie: 'sprachen' }, partizip_2: 'gesprochen', konjunktiv_ii: {} },
  'kommen': { praesens: {}, praeteritum: { ich: 'kam', du: 'kamst', er_sie_es: 'kam', wir: 'kamen', ihr: 'kam', Sie: 'kamen' }, partizip_2: 'gekommen', konjunktiv_ii: {} },
  'finden': { praesens: {}, praeteritum: { ich: 'fand', du: 'fandst', er_sie_es: 'fand', wir: 'fanden', ihr: 'fandet', Sie: 'fanden' }, partizip_2: 'gefunden', konjunktiv_ii: {} },
  'bleiben': { praesens: {}, praeteritum: { ich: 'blieb', du: 'bliebst', er_sie_es: 'blieb', wir: 'blieben', ihr: 'bliebt', Sie: 'blieben' }, partizip_2: 'geblieben', konjunktiv_ii: {} },
  'liegen': { praesens: {}, praeteritum: { ich: 'lag', du: 'lagst', er_sie_es: 'lag', wir: 'lagen', ihr: 'lagt', Sie: 'lagen' }, partizip_2: 'gelegen', konjunktiv_ii: {} },
  'sitzen': { praesens: {}, praeteritum: { ich: 'saß', du: 'saßt', er_sie_es: 'saß', wir: 'saßen', ihr: 'saßt', Sie: 'saßen' }, partizip_2: 'gesessen', konjunktiv_ii: {} },
  'treffen': { praesens: { ich: 'treffe', du: 'triffst', er_sie_es: 'trifft', wir: 'treffen', ihr: 'trefft', Sie: 'treffen' }, praeteritum: { ich: 'traf', du: 'trafst', er_sie_es: 'traf', wir: 'trafen', ihr: 'traft', Sie: 'trafen' }, partizip_2: 'getroffen', konjunktiv_ii: {} },
  'schreiben': { praesens: {}, praeteritum: { ich: 'schrieb', du: 'schriebst', er_sie_es: 'schrieb', wir: 'schrieben', ihr: 'schriebt', Sie: 'schrieben' }, partizip_2: 'geschrieben', konjunktiv_ii: {} },
  'ziehen': { praesens: {}, praeteritum: { ich: 'zog', du: 'zogst', er_sie_es: 'zog', wir: 'zogen', ihr: 'zogt', Sie: 'zogen' }, partizip_2: 'gezogen', konjunktiv_ii: {} },
  'helfen': { praesens: { ich: 'helfe', du: 'hilfst', er_sie_es: 'hilft', wir: 'helfen', ihr: 'helft', Sie: 'helfen' }, praeteritum: { ich: 'half', du: 'halfst', er_sie_es: 'half', wir: 'halfen', ihr: 'halft', Sie: 'halfen' }, partizip_2: 'geholfen', konjunktiv_ii: {} },
  'tragen': { praesens: {}, praeteritum: { ich: 'trug', du: 'trugst', er_sie_es: 'trug', wir: 'trugen', ihr: 'trugt', Sie: 'trugen' }, partizip_2: 'getragen', konjunktiv_ii: {} },
  'laufen': { praesens: {}, praeteritum: { ich: 'lief', du: 'liefst', er_sie_es: 'lief', wir: 'liefen', ihr: 'lieft', Sie: 'liefen' }, partizip_2: 'gelaufen', konjunktiv_ii: {} },
  'heißen': { praesens: { ich: 'heiße', du: 'heißt', er_sie_es: 'heißt', wir: 'heißen', ihr: 'heißt', Sie: 'heißen' }, praeteritum: { ich: 'hieß', du: 'hießt', er_sie_es: 'hieß', wir: 'hießen', ihr: 'hießet', Sie: 'hießen' }, partizip_2: 'geheißen', konjunktiv_ii: {} },
  'schlafen': { praesens: {}, praeteritum: { ich: 'schlief', du: 'schliefst', er_sie_es: 'schlief', wir: 'schliefen', ihr: 'schlief', Sie: 'schliefen' }, partizip_2: 'geschlafen', konjunktiv_ii: {} },
  'halten': { praesens: {}, praeteritum: { ich: 'hielt', du: 'hieltst', er_sie_es: 'hielt', wir: 'hielten', ihr: 'hieltet', Sie: 'hielten' }, partizip_2: 'gehalten', konjunktiv_ii: {} },
  'fangen': { praesens: {}, praeteritum: { ich: 'fing', du: 'fingst', er_sie_es: 'fing', wir: 'fingen', ihr: 'finget', Sie: 'fingen' }, partizip_2: 'gefangen', konjunktiv_ii: {} },
  'sterben': { praesens: { ich: 'sterbe', du: 'stirbst', er_sie_es: 'stirbt', wir: 'sterben', ihr: 'sterbt', Sie: 'sterben' }, praeteritum: { ich: 'starb', du: 'starbst', er_sie_es: 'starb', wir: 'starben', ihr: 'starbt', Sie: 'starben' }, partizip_2: 'gestorben', konjunktiv_ii: {} },
  'werfen': { praesens: { ich: 'werfe', du: 'wirfst', er_sie_es: 'wirft', wir: 'werfen', ihr: 'werft', Sie: 'werfen' }, praeteritum: { ich: 'warf', du: 'warfst', er_sie_es: 'warf', wir: 'warfen', ihr: 'warft', Sie: 'warfen' }, partizip_2: 'geworfen', konjunktiv_ii: {} },
  'fliegen': { praesens: {}, praeteritum: { ich: 'flog', du: 'flogst', er_sie_es: 'flog', wir: 'flogen', ihr: 'flogt', Sie: 'flogen' }, partizip_2: 'geflogen', konjunktiv_ii: {} },
  'schwimmen': { praesens: {}, praeteritum: { ich: 'schwamm', du: 'schwammst', er_sie_es: 'schwamm', wir: 'schwammen', ihr: 'schwammt', Sie: 'schwammen' }, partizip_2: 'geschwommen', konjunktiv_ii: {} },
  'singen': { praesens: {}, praeteritum: { ich: 'sang', du: 'sangst', er_sie_es: 'sang', wir: 'sangen', ihr: 'sangt', Sie: 'sangen' }, partizip_2: 'gesungen', konjunktiv_ii: {} },
  'trinken': { praesens: {}, praeteritum: { ich: 'trank', du: 'trankst', er_sie_es: 'trank', wir: 'tranken', ihr: 'trankt', Sie: 'tranken' }, partizip_2: 'getrunken', konjunktiv_ii: {} },
  'beginnen': { praesens: {}, praeteritum: { ich: 'begann', du: 'begannst', er_sie_es: 'begann', wir: 'begannen', ihr: 'begannt', Sie: 'begannen' }, partizip_2: 'begonnen', konjunktiv_ii: {} },
  'gewinnen': { praesens: {}, praeteritum: { ich: 'gewann', du: 'gewannst', er_sie_es: 'gewann', wir: 'gewannen', ihr: 'gewann', Sie: 'gewannen' }, partizip_2: 'gewonnen', konjunktiv_ii: {} },
  'bitten': { praesens: {}, praeteritum: { ich: 'bat', du: 'batst', er_sie_es: 'bat', wir: 'baten', ihr: 'batet', Sie: 'baten' }, partizip_2: 'gebeten', konjunktiv_ii: {} },
  'schneiden': { praesens: {}, praeteritum: { ich: 'schnitt', du: 'schnittst', er_sie_es: 'schnitt', wir: 'schnitten', ihr: 'schnitte', Sie: 'schnitten' }, partizip_2: 'geschnitten', konjunktiv_ii: {} },
  'leiden': { praesens: {}, praeteritum: { ich: 'litt', du: 'littst', er_sie_es: 'litt', wir: 'litten', ihr: 'littet', Sie: 'litten' }, partizip_2: 'gelitten', konjunktiv_ii: {} },
  'streiten': { praesens: {}, praeteritum: { ich: 'stritt', du: 'strittst', er_sie_es: 'stritt', wir: 'stritten', ihr: 'strittet', Sie: 'stritten' }, partizip_2: 'gestritten', konjunktiv_ii: {} },
  'reiten': { praesens: {}, praeteritum: { ich: 'ritt', du: 'rittst', er_sie_es: 'ritt', wir: 'ritten', ihr: 'rittet', Sie: 'ritten' }, partizip_2: 'geritten', konjunktiv_ii: {} },
  'scheinen': { praesens: {}, praeteritum: { ich: 'schien', du: 'schienst', er_sie_es: 'schien', wir: 'schienen', ihr: 'schient', Sie: 'schienen' }, partizip_2: 'geschienen', konjunktiv_ii: {} },
  'steigen': { praesens: {}, praeteritum: { ich: 'stieg', du: 'stiegst', er_sie_es: 'stieg', wir: 'stiegen', ihr: 'stiegt', Sie: 'stiegen' }, partizip_2: 'gestiegen', konjunktiv_ii: {} },
  'treiben': { praesens: {}, praeteritum: { ich: 'trieb', du: 'triebst', er_sie_es: 'trieb', wir: 'trieben', ihr: 'triebt', Sie: 'trieben' }, partizip_2: 'getrieben', konjunktiv_ii: {} },
  'schließen': { praesens: {}, praeteritum: { ich: 'schloss', du: 'schlossest', er_sie_es: 'schloss', wir: 'schlossen', ihr: 'schlosst', Sie: 'schlossen' }, partizip_2: 'geschlossen', konjunktiv_ii: {} },
  'genießen': { praesens: {}, praeteritum: { ich: 'genoss', du: 'genossest', er_sie_es: 'genoss', wir: 'genossen', ihr: 'genosst', Sie: 'genossen' }, partizip_2: 'genossen', konjunktiv_ii: {} },
  'verlieren': { praesens: {}, praeteritum: { ich: 'verlor', du: 'verlorst', er_sie_es: 'verlor', wir: 'verloren', ihr: 'verlort', Sie: 'verloren' }, partizip_2: 'verloren', konjunktiv_ii: {} },
  'bieten': { praesens: {}, praeteritum: { ich: 'bot', du: 'botst', er_sie_es: 'bot', wir: 'boten', ihr: 'botet', Sie: 'boten' }, partizip_2: 'geboten', konjunktiv_ii: {} },
  'schießen': { praesens: {}, praeteritum: { ich: 'schoss', du: 'schossest', er_sie_es: 'schoss', wir: 'schossen', ihr: 'schosst', Sie: 'schossen' }, partizip_2: 'geschossen', konjunktiv_ii: {} },
  'beweisen': { praesens: {}, praeteritum: { ich: 'bewies', du: 'bewiesest', er_sie_es: 'bewies', wir: 'bewiesen', ihr: 'bewiest', Sie: 'bewiesen' }, partizip_2: 'bewiesen', konjunktiv_ii: {} },
  'erschrecken': { praesens: { ich: 'erschrecke', du: 'erschrickst', er_sie_es: 'erschrickt', wir: 'erschrecken', ihr: 'erschreckt', Sie: 'erschrecken' }, praeteritum: { ich: 'erschrak', du: 'erschrakst', er_sie_es: 'erschrak', wir: 'erschraken', ihr: 'erschrakt', Sie: 'erschraken' }, partizip_2: 'erschrocken', konjunktiv_ii: {} },
  'geschehen': { praesens: { ich: 'geschehe', du: 'geschiehst', er_sie_es: 'geschieht', wir: 'geschehen', ihr: 'gescheht', Sie: 'geschehen' }, praeteritum: { ich: 'geschah', du: 'geschahst', er_sie_es: 'geschah', wir: 'geschachen', ihr: 'geschaht', Sie: 'geschachen' }, partizip_2: 'geschehen', konjunktiv_ii: {} },
  'empfehlen': { praesens: { ich: 'empfehle', du: 'empfiehlst', er_sie_es: 'empfiehlt', wir: 'empfehlen', ihr: 'empfehlt', Sie: 'empfehlen' }, praeteritum: { ich: 'empfahl', du: 'empfahlst', er_sie_es: 'empfahl', wir: 'empfahlen', ihr: 'empfahlt', Sie: 'empfahlen' }, partizip_2: 'empfohlen', konjunktiv_ii: {} },
  'rufen': { praesens: {}, praeteritum: { ich: 'rief', du: 'riefst', er_sie_es: 'rief', wir: 'riefen', ihr: 'rieft', Sie: 'riefen' }, partizip_2: 'gerufen', konjunktiv_ii: {} },
  'stoßen': { praesens: {}, praeteritum: { ich: 'stieß', du: 'stießest', er_sie_es: 'stieß', wir: 'stießen', ihr: 'stießt', Sie: 'stießen' }, partizip_2: 'gestoßen', konjunktiv_ii: {} },
  'wachsen': { praesens: {}, praeteritum: { ich: 'wuchs', du: 'wuchsest', er_sie_es: 'wuchs', wir: 'wuchsen', ihr: 'wuchst', Sie: 'wuchsen' }, partizip_2: 'gewachsen', konjunktiv_ii: {} },
  'backen': { praesens: {}, praeteritum: { ich: 'buk', du: 'bukst', er_sie_es: 'buk', wir: 'buchen', ihr: 'bukt', Sie: 'buchen' }, partizip_2: 'gebacken', konjunktiv_ii: {} },
  'laden': { praesens: {}, praeteritum: { ich: 'lud', du: 'ludst', er_sie_es: 'lud', wir: 'luden', ihr: 'ludet', Sie: 'luden' }, partizip_2: 'geladen', konjunktiv_ii: {} },
  'schelten': { praesens: { ich: 'schelte', du: 'schiltst', er_sie_es: 'schilt', wir: 'schelten', ihr: 'scheltet', Sie: 'schelten' }, praeteritum: { ich: 'schalt', du: 'schaltst', er_sie_es: 'schalt', wir: 'schalten', ihr: 'schaltet', Sie: 'schalten' }, partizip_2: 'gescholten', konjunktiv_ii: {} },
  'gelten': { praesens: { ich: 'gelte', du: 'giltst', er_sie_es: 'gilt', wir: 'gelten', ihr: 'geltet', Sie: 'gelten' }, praeteritum: { ich: 'galt', du: 'galtst', er_sie_es: 'galt', wir: 'galten', ihr: 'galtet', Sie: 'galten' }, partizip_2: 'gegolten', konjunktiv_ii: {} },
  'bergen': { praesens: { ich: 'berge', du: 'birgst', er_sie_es: 'birgt', wir: 'bergen', ihr: 'bergt', Sie: 'bergen' }, praeteritum: { ich: 'barg', du: 'bargst', er_sie_es: 'barg', wir: 'bargen', ihr: 'bargt', Sie: 'bargen' }, partizip_2: 'geborgen', konjunktiv_ii: {} },
  'verderben': { praesens: { ich: 'verderbe', du: 'verdirst', er_sie_es: 'verdirt', wir: 'verderben', ihr: 'verderbt', Sie: 'verderben' }, praeteritum: { ich: 'verdarb', du: 'verdarbst', er_sie_es: 'verdarb', wir: 'verdarben', ihr: 'verdarbt', Sie: 'verdarben' }, partizip_2: 'verdorben', konjunktiv_ii: {} },
  'löschen': { praesens: {}, praeteritum: { ich: 'losch', du: 'loschst', er_sie_es: 'losch', wir: 'löschten', ihr: 'loscht', Sie: 'löschten' }, partizip_2: 'geloschen', konjunktiv_ii: {} },
  'schaffen': { praesens: {}, praeteritum: { ich: 'schuf', du: 'schufst', er_sie_es: 'schuf', wir: 'schufen', ihr: 'schuft', Sie: 'schufen' }, partizip_2: 'geschaffen', konjunktiv_ii: {} },
  'schweigen': { praesens: {}, praeteritum: { ich: 'schwieg', du: 'schwiegst', er_sie_es: 'schwieg', wir: 'schwiegen', ihr: 'schwiegt', Sie: 'schwiegen' }, partizip_2: 'geschwiegen', konjunktiv_ii: {} },
  'hängen': { praesens: {}, praeteritum: { ich: 'hing', du: 'hingst', er_sie_es: 'hing', wir: 'hingen', ihr: 'hingt', Sie: 'hingen' }, partizip_2: 'gehangen', konjunktiv_ii: {} },
  'klingen': { praesens: {}, praeteritum: { ich: 'klang', du: 'klangst', er_sie_es: 'klang', wir: 'klangen', ihr: 'klangt', Sie: 'klangen' }, partizip_2: 'geklungen', konjunktiv_ii: {} },
  'springen': { praesens: {}, praeteritum: { ich: 'sprang', du: 'sprangst', er_sie_es: 'sprang', wir: 'sprangen', ihr: 'sprangt', Sie: 'sprangen' }, partizip_2: 'gesprungen', konjunktiv_ii: {} },
  'ringen': { praesens: {}, praeteritum: { ich: 'rang', du: 'rangst', er_sie_es: 'rang', wir: 'rangen', ihr: 'rangt', Sie: 'rangen' }, partizip_2: 'gerungen', konjunktiv_ii: {} },
  'zwingen': { praesens: {}, praeteritum: { ich: 'zwang', du: 'zwangst', er_sie_es: 'zwang', wir: 'zwangen', ihr: 'zwangt', Sie: 'zwangen' }, partizip_2: 'gezwungen', konjunktiv_ii: {} },
  'dringen': { praesens: {}, praeteritum: { ich: 'drang', du: 'drangst', er_sie_es: 'drang', wir: 'drangen', ihr: 'drangt', Sie: 'drangen' }, partizip_2: 'gedrungen', konjunktiv_ii: {} },
  'sinken': { praesens: {}, praeteritum: { ich: 'sank', du: 'sankst', er_sie_es: 'sank', wir: 'sanken', ihr: 'sankt', Sie: 'sanken' }, partizip_2: 'gesunken', konjunktiv_ii: {} },
  'stinken': { praesens: {}, praeteritum: { ich: 'stank', du: 'stankst', er_sie_es: 'stank', wir: 'stanken', ihr: 'stankt', Sie: 'stanken' }, partizip_2: 'gestunken', konjunktiv_ii: {} },
  'schwinden': { praesens: {}, praeteritum: { ich: 'schwand', du: 'schwandst', er_sie_es: 'schwand', wir: 'schwanden', ihr: 'schwandet', Sie: 'schwanden' }, partizip_2: 'geschwunden', konjunktiv_ii: {} },
  'gleichen': { praesens: {}, praeteritum: { ich: 'glich', du: 'glichst', er_sie_es: 'glich', wir: 'glichen', ihr: 'glicht', Sie: 'glichen' }, partizip_2: 'geglichen', konjunktiv_ii: {} },
  'weichen': { praesens: {}, praeteritum: { ich: 'wich', du: 'wichst', er_sie_es: 'wich', wir: 'wichen', ihr: 'wicht', Sie: 'wichen' }, partizip_2: 'gewichen', konjunktiv_ii: {} },
  'schleichen': { praesens: {}, praeteritum: { ich: 'schlich', du: 'schlichst', er_sie_es: 'schlich', wir: 'schlichen', ihr: 'schlicht', Sie: 'schlichen' }, partizip_2: 'geschlichen', konjunktiv_ii: {} },
  'kriechen': { praesens: {}, praeteritum: { ich: 'kroch', du: 'krochst', er_sie_es: 'kroch', wir: 'krochen', ihr: 'krocht', Sie: 'krochen' }, partizip_2: 'gekrochen', konjunktiv_ii: {} },
  'fliehen': { praesens: {}, praeteritum: { ich: 'floh', du: 'flohst', er_sie_es: 'floh', wir: 'flohen', ihr: 'floht', Sie: 'flohen' }, partizip_2: 'geflohen', konjunktiv_ii: {} },
  'schieben': { praesens: {}, praeteritum: { ich: 'schob', du: 'schobst', er_sie_es: 'schob', wir: 'schoben', ihr: 'schobt', Sie: 'schoben' }, partizip_2: 'geschoben', konjunktiv_ii: {} },
  'heben': { praesens: {}, praeteritum: { ich: 'hob', du: 'hobst', er_sie_es: 'hob', wir: 'hoben', ihr: 'hobt', Sie: 'hoben' }, partizip_2: 'gehoben', konjunktiv_ii: {} },
  'frieren': { praesens: {}, praeteritum: { ich: 'fror', du: 'frorst', er_sie_es: 'fror', wir: 'froren', ihr: 'frort', Sie: 'froren' }, partizip_2: 'gefroren', konjunktiv_ii: {} },
  'verlöschen': { praesens: {}, praeteritum: { ich: 'verlosch', du: 'verloschst', er_sie_es: 'verlosch', wir: 'verloschen', ihr: 'verloscht', Sie: 'verloschen' }, partizip_2: 'verloschen', konjunktiv_ii: {} },
  'wiegen': { praesens: {}, praeteritum: { ich: 'wog', du: 'wogst', er_sie_es: 'wog', wir: 'wogen', ihr: 'wogt', Sie: 'wogen' }, partizip_2: 'gewogen', konjunktiv_ii: {} },
  'lügen': { praesens: {}, praeteritum: { ich: 'log', du: 'logst', er_sie_es: 'log', wir: 'logen', ihr: 'logt', Sie: 'logen' }, partizip_2: 'gelogen', konjunktiv_ii: {} },
  'betrügen': { praesens: {}, praeteritum: { ich: 'betrog', du: 'betrogst', er_sie_es: 'betrog', wir: 'betrogen', ihr: 'betrogt', Sie: 'betrogen' }, partizip_2: 'betrogen', konjunktiv_ii: {} },
  'schmelzen': { praesens: {}, praeteritum: { ich: 'schmolz', du: 'schmolzest', er_sie_es: 'schmolz', wir: 'schmolzen', ihr: 'schmolzt', Sie: 'schmolzen' }, partizip_2: 'geschmolzen', konjunktiv_ii: {} },
  'stecken': { praesens: {}, praeteritum: { ich: 'steckte', du: 'stecktest', er_sie_es: 'steckte', wir: 'steckten', ihr: 'stecktet', Sie: 'steckten' }, partizip_2: 'gesteckt', konjunktiv_ii: {} },
}

function getBaseInfin(infinitive, separablePrefix) {
  if (!separablePrefix) return infinitive
  if (infinitive.startsWith(separablePrefix)) return infinitive.slice(separablePrefix.length)
  return infinitive
}

function endsDent(s) { return /[dt]$/.test(s) }
function endsSibilant(s) { return /[sßz]$/.test(s) }
function endsErn(s) { return /(ern|eln)$/.test(s) }

function wirForm(st) {
  // For -er/-el stem verbs, the wir form = stem + n (not stem + en)
  if (endsErn(st)) return st + 'n'
  return st + 'en'
}

function generateRegularPraesens(infinitive, separablePrefix) {
  const baseInf = getBaseInfin(infinitive, separablePrefix)
  const st = stem(baseInf)
  const prefix = separablePrefix || ''
  const suffix = prefix ? ` ${prefix}` : ''

  return {
    ich: `${st}e${suffix}`,
    du: `${(endsDent(st) ? `${st}est` : endsSibilant(st) ? `${st}t` : `${st}st`)}${suffix}`,
    er_sie_es: `${(endsDent(st) ? `${st}et` : `${st}t`)}${suffix}`,
    wir: `${wirForm(st)}${suffix}`,
    ihr: `${(endsDent(st) ? `${st}et` : `${st}t`)}${suffix}`,
    Sie: `${wirForm(st)}${suffix}`
  }
}

function generateRegularPraeteritum(infinitive, separablePrefix) {
  const baseInf = getBaseInfin(infinitive, separablePrefix)
  const st = stem(baseInf)
  const prefix = separablePrefix || ''
  const suffix = prefix ? ` ${prefix}` : ''
  return {
    ich: `${st}te${suffix}`,
    du: `${st}test${suffix}`,
    er_sie_es: `${st}te${suffix}`,
    wir: `${st}ten${suffix}`,
    ihr: `${st}tet${suffix}`,
    Sie: `${st}ten${suffix}`
  }
}

function generateConjugations(infinitive, verbType, partizip2, auxiliary, separablePrefix, isReflexive) {
  const baseInf = getBaseInfin(infinitive, separablePrefix)
  const manual = manualIrregulars[baseInf] || manualIrregulars[infinitive]
  const st = stem(baseInf)
  const prefix = separablePrefix || ''
  const useAux = auxiliary === 'both' ? 'sein' : auxiliary
  const suffix = prefix ? ` ${prefix}` : ''
  const suffixed = (form) => prefix && !form.includes(' ') ? `${form} ${prefix}` : form

  const insepPrefixes = ['be', 'ge', 'er', 'ver', 'zer', 'ent', 'emp', 'miss', 'wider', 'hinter']
  const hasInsepPrefix = insepPrefixes.some(p => baseInf.startsWith(p) && baseInf.length > p.length + 2)

  let p2 = partizip2
  if (!p2) {
    p2 = prefix ? `${prefix}ge${st}t` : (hasInsepPrefix ? `${st}t` : `ge${st}t`)
  }

  const auxVerb = useAux === 'sein' ? 'sein' : 'haben'
  const auxConj = manualIrregulars[auxVerb]?.praesens || generateRegularPraesens(auxVerb, '')
  const auxPraet = manualIrregulars[auxVerb]?.praeteritum || generateRegularPraeteritum(auxVerb, '')

  let praesens
  if (manual?.praesens && Object.keys(manual.praesens).length > 0) {
    praesens = {}
    for (const p of persons) {
      praesens[p] = manual.praesens[p] ? suffixed(manual.praesens[p]) : null
    }
  } else {
    praesens = generateRegularPraesens(infinitive, prefix)
  }

  let praeteritum
  if (manual?.praeteritum && Object.keys(manual.praeteritum).length > 0) {
    praeteritum = {}
    for (const p of persons) {
      praeteritum[p] = manual.praeteritum[p] ? suffixed(manual.praeteritum[p]) : null
    }
  } else {
    if (verbType === 'regular') {
      praeteritum = generateRegularPraeteritum(infinitive, prefix)
    } else {
      const praetSt = manual?.praeteritum_stem || st
      praeteritum = {
        ich: `${praetSt}te${suffix}`,
        du: `${praetSt}test${suffix}`,
        er_sie_es: `${praetSt}te${suffix}`,
        wir: `${praetSt}ten${suffix}`,
        ihr: `${praetSt}tet${suffix}`,
        Sie: `${praetSt}ten${suffix}`
      }
    }
  }

  // Imperativ
  const duForm = praesens.du || ''
  const ihrForm = praesens.ihr || ''
  let duImp
  if (prefix) {
    duImp = `${st}e ${prefix}`
  } else {
    duImp = duForm.replace(/st$/, '')
    if (duImp.endsWith(' ')) duImp = duImp.trim()
    if (duImp === duForm || !duImp) duImp = `${st}e`
    if (duImp === 'se') duImp = 'sei'
    if (duImp.endsWith('e')) {} // keep as is
  }

  const imperativ = {
    ich: null, du: duImp, er_sie_es: null, wir: null,
    ihr: prefix ? `${st}t ${prefix}` : (ihrForm ? `${ihrForm}`.replace(/t$/, '') + 't' : `${st}t`),
    Sie: prefix ? `${st}en ${prefix}` : `${st}en`
  }

  const perfekt = {}
  const plusquamperfekt = {}
  for (const p of persons) {
    perfekt[p] = `${auxConj[p]} ${p2}`
    plusquamperfekt[p] = `${auxPraet[p]} ${p2}`
  }

  const fullInfin = prefix ? `${prefix}${baseInf}` : infinitive
  const infinitiveAux = auxVerb === 'sein' ? 'sein' : 'haben'

  const futuri = { ich: `werde ${fullInfin}`, du: `wirst ${fullInfin}`, er_sie_es: `wird ${fullInfin}`, wir: `werden ${fullInfin}`, ihr: `werdet ${fullInfin}`, Sie: `werden ${fullInfin}` }
  const futurii = { ich: `werde ${p2} ${infinitiveAux}`, du: `wirst ${p2} ${infinitiveAux}`, er_sie_es: `wird ${p2} ${infinitiveAux}`, wir: `werden ${p2} ${infinitiveAux}`, ihr: `werdet ${p2} ${infinitiveAux}`, Sie: `werden ${p2} ${infinitiveAux}` }
  const konjunktivii = { ich: `würde ${fullInfin}`, du: `würdest ${fullInfin}`, er_sie_es: `würde ${fullInfin}`, wir: `würden ${fullInfin}`, ihr: `würdet ${fullInfin}`, Sie: `würden ${fullInfin}` }

  // Manual Konjunktiv II override
  if (manual?.konjunktiv_ii && Object.keys(manual.konjunktiv_ii).length > 0) {
    for (const p of persons) {
      if (manual.konjunktiv_ii[p]) {
        konjunktivii[p] = prefix ? `${manual.konjunktiv_ii[p]} ${prefix}` : manual.konjunktiv_ii[p]
      }
    }
  }

  return { praesens, praeteritum, perfekt, plusquamperfekt, 'futur_i': futuri, 'futur_ii': futurii, 'konjunktiv_ii': konjunktivii, imperativ }
}

function slugify(infinitive) {
  return infinitive.toLowerCase()
    .replace(/^[^a-zäöüß]+/, '')
    .replace(/[^a-zäöüß0-9-]/g, '-')
    .replace(/-+/g, '-')
    .replace(/^-|-$/g, '')
}

function makeSlug(s) {
  return s.toLowerCase()
    .replace(/ä/g, 'ae').replace(/ö/g, 'oe').replace(/ü/g, 'ue').replace(/ß/g, 'ss')
    .replace(/[^a-z0-9-]/g, '-').replace(/-+/g, '-').replace(/^-|-$/g, '')
}

function generateIPA(infinitive, separablePrefix) {
  const base = infinitive.replace(/en$/, 'ən')
  return separablePrefix ? `/${separablePrefix}ˈ${base}/` : `/${base}/`
}

// ============ PROMPT & API ============

const separablePrefixes = ['ab', 'an', 'auf', 'aus', 'bei', 'ein', 'fest', 'her', 'hin', 'los', 'mit', 'nach', 'vor', 'weg', 'zu', 'zurück', 'zusammen', 'weiter', 'nieder', 'entgegen', 'gegenüber', 'zurecht', 'auseinander', 'empor', 'fort', 'heim', 'herauf', 'heraus', 'herein', 'herunter', 'herüber', 'hinauf', 'hinaus', 'hinein', 'hinunter', 'hinüber', 'vorbei', 'voraus', 'voran', 'vorher', 'wider', 'wieder']

const inseparablePrefixes = ['be', 'ge', 'er', 'ver', 'zer', 'ent', 'emp', 'miss']

function detectSeparablePrefix(infinitive) {
  for (const p of separablePrefixes) {
    if (infinitive.startsWith(p) && infinitive.length > p.length + 2) {
      // Check it's not actually an inseparable prefix or base verb
      const base = infinitive.slice(p.length)
      if (base.length >= 2 && !inseparablePrefixes.some(ip => base.startsWith(ip))) {
        return p
      }
    }
  }
  return null
}

function fixVerbData(v) {
  // Fix 1: Auto-detect separable prefix if type is wrong
  if (!v.sep && !['inseparable', 'modal', 'auxiliary'].includes(v.type || '')) {
    const detected = detectSeparablePrefix(v.infinitive)
    if (detected) {
      v.sep = detected
      if (v.type === 'regular' || v.type === 'irregular') {
        v.type = 'separable'
      }
    }
  }

  // Fix 2: If sep is set but type is not separable
  if (v.sep && v.type !== 'separable' && !['reflexive', 'verb_preposition', 'reflexive_preposition'].includes(v.type || '')) {
    v.type = 'separable'
  }

  // Fix 3: Reflexive verbs always use "haben" as auxiliary
  if (v.reflexive || v.type === 'reflexive' || v.type === 'reflexive_preposition') {
    v.aux = 'haben'
  }

  // Fix 4: Modal and auxiliary verbs are always "haben"
  if (v.type === 'modal' || v.type === 'auxiliary') {
    if (!v.aux) v.aux = 'haben'
  }

  // Fix 5: Default aux
  if (!v.aux) v.aux = 'haben'

  // Fix 6: Default transitivity
  if (!v.tr) v.tr = 'both'

  // Fix 7: Default object case
  if (!v.obj) v.obj = 'none'

  // Fix 8: Ensure p2 is set
  if (!v.p2) {
    const st = stem(getBaseInfin(v.infinitive, v.sep))
    if (v.type === 'regular') {
      v.p2 = v.sep ? `${v.sep}ge${st}t` : `ge${st}t`
    } else {
      v.p2 = v.sep ? `${v.sep}ge${st}en` : `ge${st}en`
    }
  }

  return v
}

const MODEL = USE_GROQ ? 'llama-3.3-70b-versatile' : USE_OPENROUTER ? 'openai/gpt-4o-mini' : 'gpt-4o-mini'

function buildPrompt(level, category, count) {
  return {
    model: MODEL,
    messages: [{
      role: 'system',
      content: `You are a German linguistics expert. Generate authentic German verbs for learners.`
    }, {
      role: 'user',
      content: `Generate ${count} unique German verbs at CEFR level ${level} in the category "${category}".

Return a JSON object with key "verbs" containing an array of verb objects.

Each verb has these fields:
- infinitive: string (the German infinitive, e.g. "erwarten", "sich bewerben" for reflexive)
- en: English translation (e.g. "to expect")
- ar: Arabic translation
- fr: French translation
- level: "${level}"
- freq: choose from "very_common" | "common" | "less_common" | "rare"
- type: choose from "regular" | "irregular" | "separable" | "inseparable" | "reflexive" | "verb_preposition" | "reflexive_preposition" | "modal" | "auxiliary"
- tr: choose from "intransitive" | "transitive" | "both"
- obj: choose from "akkusativ" | "dativ" | "genitiv" | "akkusativ_dativ" | "both" | "none"
- prep: string or null (e.g. "auf", "an", "über", "mit", "zu", "von", "nach", "bei", "für", "gegen", "um")
- prepCase: "akkusativ" | "dativ" | "wechsel" or null
- reflexive: true/false
- reflexivePronoun: "sich" or null
- aux: "haben" | "sein" | "both"
- p2: Partizip II (e.g. "erwartet", "sich beworben", "gegangen")
- sep: separable prefix string or null (e.g. "an", "auf", "aus", "bei", "ein", "mit", "nach", "vor", "zu", "zurück", "weg", "zusammen")
- tags: array of strings (usage contexts)
- examples: array of 3 objects { german, en, ar, fr } (1 beginner, 1 intermediate, 1 advanced)
- collocations: array of 2-3 objects { collocation: string, en: string }
- syn: array of 1-3 synonyms (optional)
- ant: array of 1-2 antonyms (optional)

CRITICAL RULES:
- verbs like "vorstellen", "aufhören", "einkaufen", "mitnehmen", "anfangen", "aufstehen", "zunehmen" etc. MUST have type="separable" and sep set (e.g. "vor", "auf", "ein", "mit", "an")
- verbs like "verstehen", "bezahlen", "erzählen", "verkaufen" etc. MUST have type="inseparable" (prefixes: be-, ge-, er-, ver-, zer-, ent-, emp-, miss-)
- reflexive verbs (infinitive starts with "sich ") MUST have type="reflexive" and reflexive=true, reflexivePronoun="sich"
- Verbs with fixed prepositions like "denken an", "warten auf" should use type="verb_preposition" and set prep
- Use "irregular" for strong verbs (stem-vowel changes: sprechen-spricht, fahren-fährt, geben-gibt, etc.)
- reflexive verbs always use "haben" as auxiliary, never "sein"
- 50%+ of verbs at B1+ must be irregular/strong verbs (not regular)
- Every verb must be a REAL, authentic German word
- No duplicates
- IMPORTANT: For German verbs with separable prefixes, the infinitive ALREADY includes the prefix (e.g. "aufstehen", NOT "stehen auf")
`
    }],
    temperature: 0.9,
    response_format: { type: 'json_object' },
  }
}

async function callAPI(prompt) {
  const headers = { 'Authorization': `Bearer ${OPENAI_API_KEY}`, 'Content-Type': 'application/json' }
  if (USE_OPENROUTER) {
    headers['HTTP-Referer'] = 'https://deutschmentor.app'
    headers['X-Title'] = 'DeutschMentor Verbs'
  }
  const controller = new AbortController()
  const timeout = setTimeout(() => controller.abort(), USE_GROQ ? 300000 : 120000)
  const res = await fetch(API_BASE, { method: 'POST', headers, body: JSON.stringify(prompt), signal: controller.signal })
  clearTimeout(timeout)
  if (!res.ok) {
    const body = await res.text()
    if (res.status === 429) {
      await new Promise(r => setTimeout(r, USE_GROQ ? 60000 : 20000))
      throw new Error(`Rate limited, retrying...`)
    }
    throw new Error(`API ${res.status}: ${body.slice(0, 200)}`)
  }
  const data = await res.json()
  const parsed = JSON.parse(data.choices[0].message.content)
  return parsed.verbs || parsed
}

// ============ SQL GENERATION ============

function esc(s) { return s == null ? 'NULL' : `'${String(s).replace(/'/g, "''")}'` }

function arr(a) { return a && a.length ? `'{${a.map(x => `"${x.replace(/"/g, '\\"')}"`).join(',')}}'` : "'{}'" }

function verbToSQL(v) {
  const slug = makeSlug(v.infinitive)
  const sep = v.sep || null
  const isReflexive = v.reflexive || v.type === 'reflexive' || v.type === 'reflexive_preposition' || false
  const auxiliary = v.aux || 'haben'
  const verbType = v.type || 'regular'

  // Generate conjugations locally
  const conj = generateConjugations(v.infinitive, verbType, v.p2, auxiliary, sep, isReflexive)

  const sql = []
  sql.push(`-- Verb: ${v.infinitive} (${v.level})`)
  sql.push(`INSERT INTO public.german_verbs (infinitive, english_translation, arabic_translation, french_translation, cefr_level, frequency, verb_type, transitivity, object_case, preposition, preposition_case, is_reflexive, reflexive_pronoun, auxiliary, partizip_2, separable_prefix, ipa, slug, synonyms, antonyms, tags) VALUES`)
  sql.push(`(${[esc(v.infinitive), esc(v.en), esc(v.ar), esc(v.fr), esc(v.level), esc(v.freq), esc(verbType), esc(v.tr), esc(v.obj || 'none'), esc(v.prep), esc(v.prepCase || null), isReflexive ? 'true' : 'false', esc(v.reflexivePronoun || null), esc(auxiliary), esc(v.p2), esc(sep), esc(generateIPA(v.infinitive, sep)), esc(slug), arr(v.syn || []), arr(v.ant || []), arr(v.tags || [])].join(', ')});`)

  // Conjugations
  const tenses = ['praesens', 'praeteritum', 'perfekt', 'plusquamperfekt', 'futur_i', 'futur_ii', 'konjunktiv_ii', 'imperativ']
  for (const tense of tenses) {
    const c = conj[tense]
    if (!c) continue
    sql.push(`INSERT INTO public.verb_conjugations (verb_id, tense, ich, du, er_sie_es, wir, ihr, Sie) VALUES ((SELECT id FROM public.german_verbs WHERE slug = '${slug}'), '${tense}', ${esc(c.ich)}, ${esc(c.du)}, ${esc(c.er_sie_es)}, ${esc(c.wir)}, ${esc(c.ihr)}, ${esc(c.Sie)});`)
  }

  // Examples
  const examples = v.examples || []
  for (const ex of examples) {
    sql.push(`INSERT INTO public.verb_examples (verb_id, difficulty, german, english, arabic, french) VALUES ((SELECT id FROM public.german_verbs WHERE slug = '${slug}'), '${ex.difficulty || 'beginner'}', ${esc(ex.german)}, ${esc(ex.en)}, ${esc(ex.ar)}, ${esc(ex.fr)});`)
  }

  // Collocations
  const collocations = v.collocations || []
  for (const col of collocations) {
    sql.push(`INSERT INTO public.verb_collocations (verb_id, collocation, english, arabic, french) VALUES ((SELECT id FROM public.german_verbs WHERE slug = '${slug}'), ${esc(col.collocation)}, ${esc(col.en)}, ${esc(col.ar || null)}, ${esc(col.fr || null)});`)
  }

  return sql.join('\n') + '\n'
}

// ============ MAIN ============

async function main() {
  if (!DRY_RUN) {
    const dir = dirname(OUTPUT_FILE)
    if (!existsSync(dir)) mkdirSync(dir, { recursive: true })
    if (OVERWRITE || !existsSync(OUTPUT_FILE)) {
      writeFileSync(OUTPUT_FILE, '-- German Verbs Seed v2 (generated)\n-- Run after migration 00031_german_verbs.sql\n\n')
      console.log(`Writing to ${OUTPUT_FILE}`)
    } else {
      console.log(`Appending to ${OUTPUT_FILE} (${readFileSync(OUTPUT_FILE, 'utf-8').length} chars)`)
    }
  }

  const generatedSlugs = new Set()

  // Read existing slugs from any prior verb seed files
  const priorSeeds = ['00032_verbs_seed.sql']
  for (const file of priorSeeds) {
    const path = resolve(__dirname, '../../supabase/migrations', file)
    if (existsSync(path)) {
      const content = readFileSync(path, 'utf-8')
      const regex = /slug\s*=\s*'([^']+)'/g
      let match
      while ((match = regex.exec(content)) !== null) generatedSlugs.add(match[1])
      console.log(`Loaded ${generatedSlugs.size} existing slugs from ${file}`)
    }
  }

  if (!DRY_RUN && existsSync(OUTPUT_FILE)) {
    const content = readFileSync(OUTPUT_FILE, 'utf-8')
    const regex = /slug\s*=\s*'([^']+)'/g
    let match
    while ((match = regex.exec(content)) !== null) generatedSlugs.add(match[1])
    console.log(`Total existing slugs: ${generatedSlugs.size}`)
  }

  const filterLevels = LEVEL_FILTER ? LEVEL_FILTER.split(',') : null

  for (const level of LEVELS) {
    if (filterLevels && !filterLevels.includes(level)) continue

    const target = TARGETS[level]
    const categories = CATEGORIES[level]
    const perCategory = Math.ceil(target / categories.length)
    let totalGenerated = 0
    let apiCalls = 0

    for (const category of categories) {
      const batchCount = Math.min(perCategory, BATCH_SIZE)
      if (totalGenerated >= target) break
      const need = Math.min(batchCount, target - totalGenerated)

      console.log(`${level}/${category}: need ${need} words (total ${totalGenerated}/${target})`)

      if (DRY_RUN) { console.log(`  [DRY RUN] would generate ${need} words`); continue }

      let retries = 0
      while (retries < (USE_GROQ ? 6 : 3)) {
        try {
          const prompt = buildPrompt(level, category, need)
          const verbs = await callAPI(prompt)
          if (!Array.isArray(verbs)) {
            console.log(`  Unexpected response format, retrying...`)
            retries++; continue
          }

          let newVerbs = 0
          for (const v of verbs) {
            const fixed = fixVerbData(v)
            const slug = makeSlug(fixed.infinitive)
            if (generatedSlugs.has(slug)) {
              console.log(`  Skipping duplicate: ${fixed.infinitive}`)
              continue
            }
            generatedSlugs.add(slug)
            const sql = verbToSQL(fixed)
            appendFileSync(OUTPUT_FILE, sql + '\n')
            newVerbs++
          }

          totalGenerated += newVerbs
          apiCalls++
          console.log(`  Got ${verbs.length} verbs, ${newVerbs} new (total ${totalGenerated}/${target})`)

          // Rate limit delay: longer for Groq (free tier is aggressive)
          await new Promise(r => setTimeout(r, USE_GROQ ? 15000 : 3000))
          break
        } catch (e) {
          retries++
          const delay = (USE_GROQ ? 30000 : 10000) * retries
          console.log(`  Retry ${retries}/${USE_GROQ ? 6 : 3}: ${e.message} (waiting ${delay}ms)`)
          await new Promise(r => setTimeout(r, delay))
        }
      }
    }

    console.log(`${level}: Added ${totalGenerated}/${target} verbs (${apiCalls} API calls)`)
  }

  console.log(`\nDone. Generated verb data written to ${OUTPUT_FILE}`)

  // Print stats
  const finalContent = readFileSync(OUTPUT_FILE, 'utf-8')
  const verbCount = (finalContent.match(/INSERT INTO public\.german_verbs/g) || []).length
  const conjCount = (finalContent.match(/INSERT INTO public\.verb_conjugations/g) || []).length
  const exampleCount = (finalContent.match(/INSERT INTO public\.verb_examples/g) || []).length
  const collocationCount = (finalContent.match(/INSERT INTO public\.verb_collocations/g) || []).length
  console.log(`\nFinal stats:`)
  console.log(`  Verbs: ${verbCount}`)
  console.log(`  Conjugation rows: ${conjCount}`)
  console.log(`  Examples: ${exampleCount}`)
  console.log(`  Collocations: ${collocationCount}`)
  console.log(`  Total SQL size: ${(finalContent.length / 1024).toFixed(1)} KB`)
}

main().catch(e => { console.error(e); process.exit(1) })
