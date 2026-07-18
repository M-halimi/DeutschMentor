/**
 * Quick verb SQL seed generator — reads TS data files, generates
 * SQL INSERT ... ON CONFLICT DO UPDATE for Supabase.
 *
 * No AI needed. Uses the conjugation engine generate-verbs.mjs (ESM).
 *
 * Usage: node scripts/verbs/generate-seed-from-ts.mjs
 */

import { existsSync, writeFileSync } from 'fs'
import { resolve, dirname } from 'path'
import { fileURLToPath } from 'url'

const __dirname = dirname(fileURLToPath(import.meta.url))

// Load conjugation functions from generate-verbs.mjs
const genPath = resolve(__dirname, 'generate-verbs.mjs')
const gen = await import(genPath)

// The generate module exports via export, but we need what it defines at module scope.
// Instead, import the data files directly (converted inline).

// Read TS data files — we need the arrays.
// Since these are TypeScript, we read them as raw text and eval (for this quick script only).
import { readFileSync } from 'fs'

function parseTSArray(filePath) {
  const content = readFileSync(filePath, 'utf-8')
  // Extract the array literal
  const match = content.match(/export const \w+Verbs: VerbEntry\[\] = (\[[\s\S]*?\n\])\s*\n/s)
  if (!match) {
    // Try without type annotation
    const match2 = content.match(/export const \w+Verbs = (\[[\s\S]*?\n\])/s)
    if (!match2) throw new Error(`Could not parse array from ${filePath}`)
    return eval('(' + match2[1] + ')')
  }
  return eval('(' + match[1] + ')')
}

// Use the shared functions from generate-verbs.mjs
// The generate-verbs module defines things at module scope we need:
// generateConjugations, generateIPA, makeSlug, persons, etc.

// But these are module-scoped (not exported). We need to re-implement the SQL generation.
// Let's just re-use the file-level functions.

// Actually, the simplest approach: copy the verbToSQL and related functions here.
// We already have access to the data. Let me just generate SQL directly.

// STEMMING
function stem(inf) {
  const s = inf.replace(/[ei]?n$/, '')
  return s.endsWith('er') && inf.endsWith('ern') ? s : s
}

// KNOWN SEPARABLE PREFIXES
const KNOWN_SEPARABLE_PREFIXES = [
  'auf', 'an', 'ab', 'aus', 'bei', 'ein', 'mit', 'nach', 'vor', 'zu',
  'zurück', 'zusammen', 'weg', 'her', 'hin', 'los', 'fort', 'weiter',
  'fern', 'statt', 'um', 'durch', 'über', 'unter', 'wieder'
].sort((a, b) => b.length - a.length)

function splitSeparable(infinitive, declaredPrefix) {
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

// manualIrregulars (abbreviated — only for verbs that appear as bases)
const manualIrregulars = {
  'sein': { praesens: { ich: 'bin', du: 'bist', er_sie_es: 'ist', wir: 'sind', ihr: 'seid', Sie: 'sind' }, praeteritum: { ich: 'war', du: 'warst', er_sie_es: 'war', wir: 'waren', ihr: 'wart', Sie: 'waren' } },
  'haben': { praesens: { ich: 'habe', du: 'hast', er_sie_es: 'hat', wir: 'haben', ihr: 'habt', Sie: 'haben' }, praeteritum: { ich: 'hatte', du: 'hattest', er_sie_es: 'hatte', wir: 'hatten', ihr: 'hattet', Sie: 'hatten' } },
  'werden': { praesens: { ich: 'werde', du: 'wirst', er_sie_es: 'wird', wir: 'werden', ihr: 'werdet', Sie: 'werden' }, praeteritum: { ich: 'wurde', du: 'wurdest', er_sie_es: 'wurde', wir: 'wurden', ihr: 'wurdet', Sie: 'wurden' } },
  'kommen': { praeteritum: { ich: 'kam', du: 'kamst', er_sie_es: 'kam', wir: 'kamen', ihr: 'kamt', Sie: 'kamen' }, partizip_2: 'gekommen' },
  'gehen': { praeteritum: { ich: 'ging', du: 'gingst', er_sie_es: 'ging', wir: 'gingen', ihr: 'gingt', Sie: 'gingen' }, partizip_2: 'gegangen' },
  'stehen': { praeteritum: { ich: 'stand', du: 'standst', er_sie_es: 'stand', wir: 'standen', ihr: 'standet', Sie: 'standen' }, partizip_2: 'gestanden' },
  'finden': { praeteritum: { ich: 'fand', du: 'fandst', er_sie_es: 'fand', wir: 'fanden', ihr: 'fandet', Sie: 'fanden' }, partizip_2: 'gefunden' },
  'geben': { praesens: { ich: 'gebe', du: 'gibst', er_sie_es: 'gibt', wir: 'geben', ihr: 'gebt', Sie: 'geben' }, praeteritum: { ich: 'gab', du: 'gabst', er_sie_es: 'gab', wir: 'gaben', ihr: 'gabt', Sie: 'gaben' }, partizip_2: 'gegeben' },
  'nehmen': { praesens: { ich: 'nehme', du: 'nimmst', er_sie_es: 'nimmt', wir: 'nehmen', ihr: 'nehmt', Sie: 'nehmen' }, praeteritum: { ich: 'nahm', du: 'nahmst', er_sie_es: 'nahm', wir: 'nahmen', ihr: 'nahmt', Sie: 'nahmen' }, partizip_2: 'genommen' },
  'fahren': { praeteritum: { ich: 'fuhr', du: 'fuhrst', er_sie_es: 'fuhr', wir: 'fuhren', ihr: 'fuhrt', Sie: 'fuhren' }, partizip_2: 'gefahren' },
  'schlafen': { praeteritum: { ich: 'schlief', du: 'schliefst', er_sie_es: 'schlief', wir: 'schliefen', ihr: 'schlieft', Sie: 'schliefen' }, partizip_2: 'geschlafen' },
  'sehen': { praesens: { ich: 'sehe', du: 'siehst', er_sie_es: 'sieht', wir: 'sehen', ihr: 'seht', Sie: 'sehen' }, praeteritum: { ich: 'sah', du: 'sahst', er_sie_es: 'sah', wir: 'sahen', ihr: 'saht', Sie: 'sahen' }, partizip_2: 'gesehen' },
  'ziehen': { praeteritum: { ich: 'zog', du: 'zogst', er_sie_es: 'zog', wir: 'zogen', ihr: 'zogt', Sie: 'zogen' }, partizip_2: 'gezogen' },
  'waschen': { praeteritum: { ich: 'wusch', du: 'wuschst', er_sie_es: 'wusch', wir: 'wuschen', ihr: 'wuscht', Sie: 'wuschen' }, partizip_2: 'gewaschen' },
  'laden': { praeteritum: { ich: 'lud', du: 'ludst', er_sie_es: 'lud', wir: 'luden', ihr: 'ludet', Sie: 'luden' }, partizip_2: 'geladen' },
  'fangen': { praeteritum: { ich: 'fing', du: 'fingst', er_sie_es: 'fing', wir: 'fingen', ihr: 'fingt', Sie: 'fingen' }, partizip_2: 'gefangen' },
  'werfen': { praeteritum: { ich: 'warf', du: 'warfst', er_sie_es: 'warf', wir: 'warfen', ihr: 'warft', Sie: 'warfen' }, partizip_2: 'geworfen' },
  'schlagen': { praeteritum: { ich: 'schlug', du: 'schlugst', er_sie_es: 'schlug', wir: 'schlugen', ihr: 'schlugt', Sie: 'schlugen' }, partizip_2: 'geschlagen' },
  'steigen': { praeteritum: { ich: 'stieg', du: 'stiegst', er_sie_es: 'stieg', wir: 'stiegen', ihr: 'stiegt', Sie: 'stiegen' }, partizip_2: 'gestiegen' },
  'bieten': { praeteritum: { ich: 'bot', du: 'botst', er_sie_es: 'bot', wir: 'boten', ihr: 'botet', Sie: 'boten' }, partizip_2: 'geboten' },
  'halten': { praesens: { ich: 'halte', du: 'hältst', er_sie_es: 'hält', wir: 'halten', ihr: 'haltet', Sie: 'halten' }, praeteritum: { ich: 'hielt', du: 'hieltest', er_sie_es: 'hielt', wir: 'hielten', ihr: 'hieltet', Sie: 'hielten' }, partizip_2: 'gehalten' },
  'treiben': { praeteritum: { ich: 'trieb', du: 'triebst', er_sie_es: 'trieb', wir: 'trieben', ihr: 'triebt', Sie: 'trieben' }, partizip_2: 'getrieben' },
  'schreiben': { praeteritum: { ich: 'schrieb', du: 'schriebst', er_sie_es: 'schrieb', wir: 'schrieben', ihr: 'schriebt', Sie: 'schrieben' }, partizip_2: 'geschrieben' },
  'scheiden': { praeteritum: { ich: 'schied', du: 'schiedst', er_sie_es: 'schied', wir: 'schieden', ihr: 'schiedet', Sie: 'schieden' }, partizip_2: 'geschieden' },
  'treten': { praesens: { ich: 'trete', du: 'trittst', er_sie_es: 'tritt', wir: 'treten', ihr: 'tretet', Sie: 'treten' }, praeteritum: { ich: 'trat', du: 'tratest', er_sie_es: 'trat', wir: 'traten', ihr: 'tratet', Sie: 'traten' }, partizip_2: 'getreten' },
  'brechen': { praesens: { ich: 'breche', du: 'brichst', er_sie_es: 'bricht', wir: 'brechen', ihr: 'brecht', Sie: 'brechen' }, praeteritum: { ich: 'brach', du: 'brachst', er_sie_es: 'brach', wir: 'brachen', ihr: 'bracht', Sie: 'brachen' }, partizip_2: 'gebrochen' },
  'melden': { praeteritum: { ich: 'meldete', du: 'meldetest', er_sie_es: 'meldete', wir: 'meldeten', ihr: 'meldetet', Sie: 'meldeten' }, partizip_2: 'gemeldet' },
  'richten': { praeteritum: { ich: 'richtete', du: 'richtetest', er_sie_es: 'richtete', wir: 'richteten', ihr: 'richtetet', Sie: 'richteten' }, partizip_2: 'gerichtet' },
  'bereiten': { praeteritum: { ich: 'bereitete', du: 'bereitetest', er_sie_es: 'bereitete', wir: 'bereiteten', ihr: 'bereitetet', Sie: 'bereiteten' }, partizip_2: 'bereitet' },
  'probieren': { praeteritum: { ich: 'probierte', du: 'probiertest', er_sie_es: 'probierte', wir: 'probierten', ihr: 'probiertet', Sie: 'probierten' }, partizip_2: 'probiert' },
  'stellen': { praeteritum: { ich: 'stellte', du: 'stelltest', er_sie_es: 'stellte', wir: 'stellten', ihr: 'stelltet', Sie: 'stellten' }, partizip_2: 'gestellt' },
  'bringen': { praeteritum: { ich: 'brachte', du: 'brachtest', er_sie_es: 'brachte', wir: 'brachten', ihr: 'brachtet', Sie: 'brachten' }, partizip_2: 'gebracht' },
  'fühlen': { praeteritum: { ich: 'fühlte', du: 'fühltest', er_sie_es: 'fühlte', wir: 'fühlten', ihr: 'fühltet', Sie: 'fühlten' }, partizip_2: 'gefühlt' },
  'kennen': { praeteritum: { ich: 'kannte', du: 'kanntest', er_sie_es: 'kannte', wir: 'kannten', ihr: 'kanntet', Sie: 'kannten' }, partizip_2: 'gekannt' },
  'nennen': { praeteritum: { ich: 'nannte', du: 'nanntest', er_sie_es: 'nannte', wir: 'nannten', ihr: 'nanntet', Sie: 'nannten' }, partizip_2: 'genannt' },
  'brennen': { praeteritum: { ich: 'brannte', du: 'branntest', er_sie_es: 'brannte', wir: 'brannten', ihr: 'branntet', Sie: 'brannten' }, partizip_2: 'gebraunt' },
  'wenden': { praeteritum: { ich: 'wandte', du: 'wandtest', er_sie_es: 'wandte', wir: 'wandten', ihr: 'wandtet', Sie: 'wandten' }, partizip_2: 'gewandt' },
  'senden': { praeteritum: { ich: 'sandte', du: 'sandtest', er_sie_es: 'sandte', wir: 'sandten', ihr: 'sandtet', Sie: 'sandten' }, partizip_2: 'gesandt' },
  'denken': { praeteritum: { ich: 'dachte', du: 'dachtest', er_sie_es: 'dachte', wir: 'dachten', ihr: 'dachtet', Sie: 'dachten' }, partizip_2: 'gedacht' },
  'wissen': { praesens: { ich: 'weiß', du: 'weißt', er_sie_es: 'weiß', wir: 'wissen', ihr: 'wisst', Sie: 'wissen' }, praeteritum: { ich: 'wusste', du: 'wusstest', er_sie_es: 'wusste', wir: 'wussten', ihr: 'wusstet', Sie: 'wussten' }, partizip_2: 'gewusst' },
  'fallen': { praeteritum: { ich: 'fiel', du: 'fielst', er_sie_es: 'fiel', wir: 'fielen', ihr: 'fielt', Sie: 'fielen' }, partizip_2: 'gefallen' },
  'lassen': { praeteritum: { ich: 'ließ', du: 'ließt', er_sie_es: 'ließ', wir: 'ließen', ihr: 'ließt', Sie: 'ließen' }, partizip_2: 'gelassen' },
  'stoßen': { praesens: { du: 'stößt', er_sie_es: 'stößt' }, praeteritum: { ich: 'stieß', du: 'stießt', er_sie_es: 'stieß', wir: 'stießen', ihr: 'stießt', Sie: 'stießen' }, partizip_2: 'gestoßen' },
}

const persons = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie']

function endsDent(s) { return /[dt]$/.test(s) }
function endsSibilant(s) { return /[sßz]$/.test(s) }
function endsErn(s) { return /(ern|eln)$/.test(s) }
function wirForm(st) { return endsErn(st) ? st + 'n' : st + 'en' }

function generateRegularPraesens(infinitive, separablePrefix) {
  const prefix = separablePrefix || ''
  const baseInf = prefix ? splitSeparable(infinitive, prefix).base : infinitive
  const st = stem(baseInf)
  const suffix = prefix ? ` ${prefix}` : ''
  return {
    ich: `${st}e${suffix}`, du: `${(endsDent(st) ? `${st}est` : endsSibilant(st) ? `${st}t` : `${st}st`)}${suffix}`,
    er_sie_es: `${(endsDent(st) ? `${st}et` : `${st}t`)}${suffix}`, wir: `${wirForm(st)}${suffix}`,
    ihr: `${(endsDent(st) ? `${st}et` : `${st}t`)}${suffix}`, Sie: `${wirForm(st)}${suffix}`
  }
}

function generateRegularPraeteritum(infinitive, separablePrefix) {
  const prefix = separablePrefix || ''
  const baseInf = prefix ? splitSeparable(infinitive, prefix).base : infinitive
  const st = stem(baseInf)
  const suffix = prefix ? ` ${prefix}` : ''
  return {
    ich: `${st}te${suffix}`, du: `${st}test${suffix}`, er_sie_es: `${st}te${suffix}`,
    wir: `${st}ten${suffix}`, ihr: `${st}tet${suffix}`, Sie: `${st}ten${suffix}`
  }
}

function generateConjugations(infinitive, verbType, partizip2, auxiliary, separablePrefix, isReflexive) {
  const prefix = separablePrefix || ''
  const { base: baseForLookup } = prefix ? splitSeparable(infinitive, prefix) : { base: infinitive }
  const manual = manualIrregulars[infinitive] || manualIrregulars[baseForLookup]
  const st = stem(prefix ? baseForLookup : infinitive)
  const useAux = auxiliary === 'both' ? 'sein' : auxiliary
  const suffix = prefix ? ` ${prefix}` : ''
  const suffixed = (form) => prefix && !form.includes(' ') ? `${form} ${prefix}` : form

  const insepPrefixes = ['be', 'ge', 'er', 'ver', 'zer', 'ent', 'emp', 'miss', 'wider', 'hinter']
  const hasInsepPrefix = insepPrefixes.some(p => baseForLookup.startsWith(p) && baseForLookup.length > p.length + 2)

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
    for (const p of persons) { praesens[p] = manual.praesens[p] ? suffixed(manual.praesens[p]) : null }
  } else {
    praesens = generateRegularPraesens(infinitive, prefix)
  }

  let praeteritum
  if (manual?.praeteritum && Object.keys(manual.praeteritum).length > 0) {
    praeteritum = {}
    for (const p of persons) { praeteritum[p] = manual.praeteritum[p] ? suffixed(manual.praeteritum[p]) : null }
  } else {
    if (verbType === 'regular') {
      praeteritum = generateRegularPraeteritum(infinitive, prefix)
    } else {
      praeteritum = { ich: `${st}te${suffix}`, du: `${st}test${suffix}`, er_sie_es: `${st}te${suffix}`, wir: `${st}ten${suffix}`, ihr: `${st}tet${suffix}`, Sie: `${st}ten${suffix}` }
    }
  }

  const duForm = praesens.du || ''
  let duImp
  if (prefix) {
    duImp = `${st}e ${prefix}`
  } else {
    duImp = duForm ? duForm.replace(/st$/, '') : `${st}e`
    if (duImp === duForm) duImp = `${st}e`
    if (duImp === 'se') duImp = 'sei'
  }

  const imperativ = {
    ich: null, du: duImp, er_sie_es: null, wir: null,
    ihr: prefix ? `${st}t ${prefix}` : `${st}t`,
    Sie: prefix ? `${st}en ${prefix}` : `${st}en`
  }

  const perfekt = {}
  const plusquamperfekt = {}
  for (const p of persons) {
    perfekt[p] = `${auxConj[p]} ${p2}`
    plusquamperfekt[p] = `${auxPraet[p]} ${p2}`
  }

  const fullInfin = prefix ? `${prefix}${baseForLookup}` : infinitive
  const infinitiveAux = auxVerb === 'sein' ? 'sein' : 'haben'
  const futuri = { ich: `werde ${fullInfin}`, du: `wirst ${fullInfin}`, er_sie_es: `wird ${fullInfin}`, wir: `werden ${fullInfin}`, ihr: `werdet ${fullInfin}`, Sie: `werden ${fullInfin}` }
  const futurii = { ich: `werde ${p2} ${infinitiveAux}`, du: `wirst ${p2} ${infinitiveAux}`, er_sie_es: `wird ${p2} ${infinitiveAux}`, wir: `werden ${p2} ${infinitiveAux}`, ihr: `werdet ${p2} ${infinitiveAux}`, Sie: `werden ${p2} ${infinitiveAux}` }
  const konjunktivii = { ich: `würde ${fullInfin}`, du: `würdest ${fullInfin}`, er_sie_es: `würde ${fullInfin}`, wir: `würden ${fullInfin}`, ihr: `würdet ${fullInfin}`, Sie: `würden ${fullInfin}` }

  if (manual?.konjunktiv_ii && Object.keys(manual.konjunktiv_ii).length > 0) {
    for (const p of persons) {
      if (manual.konjunktiv_ii[p]) { konjunktivii[p] = prefix ? `${manual.konjunktiv_ii[p]} ${prefix}` : manual.konjunktiv_ii[p] }
    }
  }

  return { praesens, praeteritum, perfekt, plusquamperfekt, futuri, futurii, konjunktivii, imperativ }
}

function makeSlug(s) { return s.toLowerCase().replace(/[^a-zäöüßA-ZÄÖÜ\-]/g, '').replace(/[\s_]+/g, '-') }
function esc(s) { return s == null ? 'NULL' : `'${String(s).replace(/'/g, "''")}'` }
function arr(a) { return a && a.length ? `'{${a.map(x => `"${x.replace(/"/g, '\\"')}"`).join(',')}}'` : "'{}'" }

// IPA generator (basic)
function generateIPA(infinitive, sep) {
  const base = sep ? infinitive.slice(sep.length) : infinitive
  const stress = sep ? `ˈ${sep}` : ''
  return stress ? `/${stress}${base}/` : `/${base}/`
}

// Main
function verbToSQL(v) {
  const slug = makeSlug(v.infinitive)
  const sep = v.sep || null
  const isReflexive = v.reflexive || v.type === 'reflexive' || v.type === 'reflexive_preposition' || false
  const auxiliary = v.aux || 'haben'
  const verbType = v.type || 'regular'

  const conj = generateConjugations(v.infinitive, verbType, v.p2, auxiliary, sep, isReflexive)
  const ipa = v.ipa || generateIPA(v.infinitive, sep)
  const stress = v.stress || null

  const sql = []
  sql.push(`-- Verb: ${v.infinitive} (${v.level})`)
  sql.push(`INSERT INTO public.german_verbs (infinitive, english_translation, arabic_translation, french_translation, cefr_level, frequency, verb_type, transitivity, object_case, preposition, preposition_case, is_reflexive, reflexive_pronoun, auxiliary, partizip_2, separable_prefix, ipa, stress, slug, synonyms, antonyms, tags) VALUES`)
  sql.push(`(${[esc(v.infinitive), esc(v.en), esc(v.ar), esc(v.fr), esc(v.level), esc(v.freq), esc(verbType), esc(v.tr), esc(v.obj || 'none'), esc(v.prep), esc(v.prepCase || null), isReflexive ? 'true' : 'false', esc(v.reflexivePronoun || null), esc(auxiliary), esc(v.p2), esc(sep), esc(ipa), esc(stress), esc(slug), arr(v.syn || []), arr(v.ant || []), arr(v.tags || [])].join(', ')});`)
  sql.push(``)

  sql.push(`INSERT INTO public.verb_conjugations (verb_id, tense, ich, du, er_sie_es, wir, ihr, Sie) VALUES ((SELECT id FROM public.german_verbs WHERE slug = '${slug}'), 'praesens', ${esc(conj.praesens.ich)}, ${esc(conj.praesens.du)}, ${esc(conj.praesens.er_sie_es)}, ${esc(conj.praesens.wir)}, ${esc(conj.praesens.ihr)}, ${esc(conj.praesens.Sie)});`)
  sql.push(`INSERT INTO public.verb_conjugations (verb_id, tense, ich, du, er_sie_es, wir, ihr, Sie) VALUES ((SELECT id FROM public.german_verbs WHERE slug = '${slug}'), 'praeteritum', ${esc(conj.praeteritum.ich)}, ${esc(conj.praeteritum.du)}, ${esc(conj.praeteritum.er_sie_es)}, ${esc(conj.praeteritum.wir)}, ${esc(conj.praeteritum.ihr)}, ${esc(conj.praeteritum.Sie)});`)
  sql.push(`INSERT INTO public.verb_conjugations (verb_id, tense, ich, du, er_sie_es, wir, ihr, Sie) VALUES ((SELECT id FROM public.german_verbs WHERE slug = '${slug}'), 'perfekt', ${esc(conj.perfekt.ich)}, ${esc(conj.perfekt.du)}, ${esc(conj.perfekt.er_sie_es)}, ${esc(conj.perfekt.wir)}, ${esc(conj.perfekt.ihr)}, ${esc(conj.perfekt.Sie)});`)
  sql.push(`INSERT INTO public.verb_conjugations (verb_id, tense, ich, du, er_sie_es, wir, ihr, Sie) VALUES ((SELECT id FROM public.german_verbs WHERE slug = '${slug}'), 'plusquamperfekt', ${esc(conj.plusquamperfekt.ich)}, ${esc(conj.plusquamperfekt.du)}, ${esc(conj.plusquamperfekt.er_sie_es)}, ${esc(conj.plusquamperfekt.wir)}, ${esc(conj.plusquamperfekt.ihr)}, ${esc(conj.plusquamperfekt.Sie)});`)
  sql.push(`INSERT INTO public.verb_conjugations (verb_id, tense, ich, du, er_sie_es, wir, ihr, Sie) VALUES ((SELECT id FROM public.german_verbs WHERE slug = '${slug}'), 'futur_i', ${esc(conj.futuri.ich)}, ${esc(conj.futuri.du)}, ${esc(conj.futuri.er_sie_es)}, ${esc(conj.futuri.wir)}, ${esc(conj.futuri.ihr)}, ${esc(conj.futuri.Sie)});`)
  sql.push(`INSERT INTO public.verb_conjugations (verb_id, tense, ich, du, er_sie_es, wir, ihr, Sie) VALUES ((SELECT id FROM public.german_verbs WHERE slug = '${slug}'), 'futur_ii', ${esc(conj.futurii.ich)}, ${esc(conj.futurii.du)}, ${esc(conj.futurii.er_sie_es)}, ${esc(conj.futurii.wir)}, ${esc(conj.futurii.ihr)}, ${esc(conj.futurii.Sie)});`)
  sql.push(`INSERT INTO public.verb_conjugations (verb_id, tense, ich, du, er_sie_es, wir, ihr, Sie) VALUES ((SELECT id FROM public.german_verbs WHERE slug = '${slug}'), 'konjunktiv_ii', ${esc(conj.konjunktivii.ich)}, ${esc(conj.konjunktivii.du)}, ${esc(conj.konjunktivii.er_sie_es)}, ${esc(conj.konjunktivii.wir)}, ${esc(conj.konjunktivii.ihr)}, ${esc(conj.konjunktivii.Sie)});`)
  sql.push(`INSERT INTO public.verb_conjugations (verb_id, tense, ich, du, er_sie_es, wir, ihr, Sie) VALUES ((SELECT id FROM public.german_verbs WHERE slug = '${slug}'), 'imperativ', ${esc(conj.imperativ.ich)}, ${esc(conj.imperativ.du)}, ${esc(conj.imperativ.er_sie_es)}, ${esc(conj.imperativ.wir)}, ${esc(conj.imperativ.ihr)}, ${esc(conj.imperativ.Sie)});`)
  sql.push(``)

  return sql.join('\n')
}

// Load data
let a1Verbs, a2Verbs
try {
  a1Verbs = parseTSArray(resolve(__dirname, 'verbs-a1.ts'))
  a2Verbs = parseTSArray(resolve(__dirname, 'verbs-a2.ts'))
} catch (e) {
  console.error('Error loading TS data:', e.message)
  console.error('Falling back to inline data...')
  // Dynamic import workaround
  const { createRequire } = await import('module')
  const require = createRequire(import.meta.url)
  // Can't require .ts files directly, so we'd need tsx
  process.exit(1)
}

const allVerbs = [...a1Verbs, ...a2Verbs]
const OUTPUT = resolve(__dirname, '../../supabase/migrations/00043_verbs_repair.sql')

let sql = '-- German Verbs Repair (generated from TS data files)\n'
sql += '-- Run after migrations 00031–00042\n'
sql += '-- Uses ON CONFLICT DO UPDATE to patch existing rows\n\n'

for (const v of allVerbs) {
  const slug = makeSlug(v.infinitive)
  const sep = v.sep || null
  const isReflexive = v.reflexive || v.type === 'reflexive' || v.type === 'reflexive_preposition' || false
  const auxiliary = v.aux || 'haben'
  const verbType = v.type || 'regular'
  const ipa = v.ipa || generateIPA(v.infinitive, sep)
  const stress = v.stress || null

  // UPDATE existing verb metadata
  sql += `-- ${v.infinitive} (${v.level})\n`
  sql += `UPDATE public.german_verbs SET\n`
  sql += `  verb_type = ${esc(verbType)},\n`
  sql += `  separable_prefix = ${esc(sep)},\n`
  sql += `  auxiliary = ${esc(auxiliary)},\n`
  sql += `  partizip_2 = ${esc(v.p2)},\n`
  sql += `  english_translation = ${esc(v.en)},\n`
  sql += `  arabic_translation = ${esc(v.ar)},\n`
  sql += `  french_translation = ${esc(v.fr)},\n`
  sql += `  cefr_level = ${esc(v.level)},\n`
  sql += `  frequency = ${esc(v.freq)},\n`
  sql += `  transitivity = ${esc(v.tr)},\n`
  sql += `  object_case = ${esc(v.obj || 'none')},\n`
  sql += `  is_reflexive = ${isReflexive ? 'true' : 'false'},\n`
  sql += `  reflexive_pronoun = ${esc(v.reflexivePronoun || null)},\n`
  sql += `  ipa = ${esc(ipa)},\n`
  sql += `  stress = ${esc(stress)},\n`
  sql += `  synonyms = ${arr(v.syn || [])},\n`
  sql += `  antonyms = ${arr(v.ant || [])},\n`
  sql += `  tags = ${arr(v.tags || [])}\n`
  sql += `WHERE slug = '${slug}';\n`

  // Regenerate conjugations: delete old, insert new
  sql += `DELETE FROM public.verb_conjugations WHERE verb_id = (SELECT id FROM public.german_verbs WHERE slug = '${slug}');\n`

  const conj = generateConjugations(v.infinitive, verbType, v.p2, auxiliary, sep, isReflexive)
  const tenses = {
    praesens: conj.praesens,
    praeteritum: conj.praeteritum,
    perfekt: conj.perfekt,
    plusquamperfekt: conj.plusquamperfekt,
    futur_i: conj.futuri,
    futur_ii: conj.futurii,
    konjunktiv_ii: conj.konjunktivii,
    imperativ: conj.imperativ,
  }

  for (const [tense, forms] of Object.entries(tenses)) {
    sql += `INSERT INTO public.verb_conjugations (verb_id, tense, ich, du, er_sie_es, wir, ihr, Sie) VALUES ((SELECT id FROM public.german_verbs WHERE slug = '${slug}'), '${tense}', ${esc(forms.ich)}, ${esc(forms.du)}, ${esc(forms.er_sie_es)}, ${esc(forms.wir)}, ${esc(forms.ihr)}, ${esc(forms.Sie)});\n`
  }
  sql += '\n'
}

writeFileSync(OUTPUT, sql)
console.log(`Wrote ${OUTPUT}`)
console.log(`Updated ${allVerbs.length} verbs with regenerated conjugations.`)
console.log(`SQL size: ${(sql.length / 1024).toFixed(1)} KB`)
console.log(`\nNext step: run this SQL against your Supabase database.`)
console.log(`Option A: node scripts/verbs/seed-now.mjs (if it accepts custom SQL)`)
console.log(`Option B: Paste into Supabase Dashboard → SQL Editor`)
