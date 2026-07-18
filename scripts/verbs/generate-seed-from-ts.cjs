/**
 * Quick verb SQL seed generator — reads TS data files, generates
 * SQL UPDATE + DELETE/INSERT for Supabase.
 *
 * CommonJS version for Windows compatibility.
 *
 * Usage: node scripts/verbs/generate-seed-from-ts.cjs
 */

const fs = require('fs')
const path = require('path')

const dir = __dirname

function parseTSArray(filePath) {
  const content = fs.readFileSync(filePath, 'utf-8')
  const match = content.match(/export const \w+Verbs\s*:\s*VerbEntry\[\]\s*=\s*(\[[\s\S]*?\n\])\s*\n/s)
  if (!match) throw new Error('Could not parse array from ' + filePath)
  // Replace type annotations and trailing commas
  let arrStr = match[1]
    .replace(/:\s*'[^']*'\s*=\s*/g, ': ')
    .replace(/,(\s*[}\]])/g, '$1')
  return eval('(' + arrStr + ')')
}

// ===== CONJUGATION ENGINE =====
const KNOWN_SEPARABLE_PREFIXES = [
  'zurück', 'zusammen', 'herunter', 'hinunter', 'herauf', 'hinauf',
  'herein', 'hinein', 'hinaus', 'voraus', 'vorbei', 'vorher',
  'auf', 'an', 'ab', 'aus', 'bei', 'ein', 'mit', 'nach', 'vor', 'zu',
  'weg', 'her', 'hin', 'los', 'fort', 'weiter',
  'fern', 'statt', 'um', 'durch', 'über', 'unter', 'wieder',
  'hoch', 'wider', 'entlang', 'entgegen', 'gegenüber',
].sort((a, b) => b.length - a.length)

const INSEP_PREFIXES = ['be', 'ge', 'er', 'ver', 'zer', 'ent', 'emp', 'miss', 'wider', 'hinter']

function splitSeparable(infinitive, declared) {
  if (declared) {
    if (infinitive.startsWith(declared)) {
      const base = infinitive.slice(declared.length)
      if (base.length >= 2) return { base, prefix: declared }
    }
  }
  for (const p of KNOWN_SEPARABLE_PREFIXES) {
    if (infinitive.startsWith(p) && infinitive.length > p.length + 2) {
      const base = infinitive.slice(p.length)
      if (!INSEP_PREFIXES.some(ip => base.startsWith(ip))) {
        return { base, prefix: p }
      }
    }
  }
  return { base: infinitive, prefix: '' }
}

function stem(inf) {
  const s = inf.replace(/[ei]?n$/, '')
  return s.endsWith('er') && inf.endsWith('ern') ? s : s
}

function endsDent(s) { return /[dt]$/.test(s) }
function endsSibilant(s) { return /[sßz]$/.test(s) }
function endsErn(s) { return /(ern|eln)$/.test(s) }
function wirForm(st) { return endsErn(st) ? st + 'n' : st + 'en' }

function generateRegularPraesens(infinitive, prefix) {
  const baseInf = prefix ? splitSeparable(infinitive, prefix).base : infinitive
  const st = stem(baseInf)
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

function generateRegularPraeteritum(infinitive, prefix) {
  const baseInf = prefix ? splitSeparable(infinitive, prefix).base : infinitive
  const st = stem(baseInf)
  const suffix = prefix ? ` ${prefix}` : ''
  return {
    ich: `${st}te${suffix}`, du: `${st}test${suffix}`, er_sie_es: `${st}te${suffix}`,
    wir: `${st}ten${suffix}`, ihr: `${st}tet${suffix}`, Sie: `${st}ten${suffix}`
  }
}

const manualIrregulars = {
  'sein': { praesens: { ich: 'bin', du: 'bist', er_sie_es: 'ist', wir: 'sind', ihr: 'seid', Sie: 'sind' }, praeteritum: { ich: 'war', du: 'warst', er_sie_es: 'war', wir: 'waren', ihr: 'wart', Sie: 'waren' } },
  'haben': { praesens: { ich: 'habe', du: 'hast', er_sie_es: 'hat', wir: 'haben', ihr: 'habt', Sie: 'haben' }, praeteritum: { ich: 'hatte', du: 'hattest', er_sie_es: 'hatte', wir: 'hatten', ihr: 'hattet', Sie: 'hatten' } },
  'werden': { praesens: { ich: 'werde', du: 'wirst', er_sie_es: 'wird', wir: 'werden', ihr: 'werdet', Sie: 'werden' }, praeteritum: { ich: 'wurde', du: 'wurdest', er_sie_es: 'wurde', wir: 'wurden', ihr: 'wurdet', Sie: 'wurden' } },
  'kommen': { praeteritum: { ich: 'kam', du: 'kamst', er_sie_es: 'kam', wir: 'kamen', ihr: 'kamt', Sie: 'kamen' } },
  'gehen': { praeteritum: { ich: 'ging', du: 'gingst', er_sie_es: 'ging', wir: 'gingen', ihr: 'gingt', Sie: 'gingen' } },
  'stehen': { praeteritum: { ich: 'stand', du: 'standst', er_sie_es: 'stand', wir: 'standen', ihr: 'standet', Sie: 'standen' } },
  'finden': { praeteritum: { ich: 'fand', du: 'fandst', er_sie_es: 'fand', wir: 'fanden', ihr: 'fandet', Sie: 'fanden' } },
  'geben': { praesens: { ich: 'gebe', du: 'gibst', er_sie_es: 'gibt', wir: 'geben', ihr: 'gebt', Sie: 'geben' }, praeteritum: { ich: 'gab', du: 'gabst', er_sie_es: 'gab', wir: 'gaben', ihr: 'gabt', Sie: 'gaben' } },
  'nehmen': { praesens: { ich: 'nehme', du: 'nimmst', er_sie_es: 'nimmt', wir: 'nehmen', ihr: 'nehmt', Sie: 'nehmen' }, praeteritum: { ich: 'nahm', du: 'nahmst', er_sie_es: 'nahm', wir: 'nahmen', ihr: 'nahmt', Sie: 'nahmen' } },
  'fahren': { praeteritum: { ich: 'fuhr', du: 'fuhrst', er_sie_es: 'fuhr', wir: 'fuhren', ihr: 'fuhrt', Sie: 'fuhren' } },
  'schlafen': { praeteritum: { ich: 'schlief', du: 'schliefst', er_sie_es: 'schlief', wir: 'schliefen', ihr: 'schlieft', Sie: 'schliefen' } },
  'sehen': { praesens: { ich: 'sehe', du: 'siehst', er_sie_es: 'sieht', wir: 'sehen', ihr: 'seht', Sie: 'sehen' }, praeteritum: { ich: 'sah', du: 'sahst', er_sie_es: 'sah', wir: 'sahen', ihr: 'saht', Sie: 'sahen' } },
  'ziehen': { praeteritum: { ich: 'zog', du: 'zogst', er_sie_es: 'zog', wir: 'zogen', ihr: 'zogt', Sie: 'zogen' } },
  'waschen': { praeteritum: { ich: 'wusch', du: 'wuschst', er_sie_es: 'wusch', wir: 'wuschen', ihr: 'wuscht', Sie: 'wuschen' } },
  'laden': { praeteritum: { ich: 'lud', du: 'ludst', er_sie_es: 'lud', wir: 'luden', ihr: 'ludet', Sie: 'luden' } },
  'fangen': { praeteritum: { ich: 'fing', du: 'fingst', er_sie_es: 'fing', wir: 'fingen', ihr: 'fingt', Sie: 'fingen' } },
  'werfen': { praeteritum: { ich: 'warf', du: 'warfst', er_sie_es: 'warf', wir: 'warfen', ihr: 'warft', Sie: 'warfen' } },
  'schlagen': { praeteritum: { ich: 'schlug', du: 'schlugst', er_sie_es: 'schlug', wir: 'schlugen', ihr: 'schlugt', Sie: 'schlugen' } },
  'steigen': { praeteritum: { ich: 'stieg', du: 'stiegst', er_sie_es: 'stieg', wir: 'stiegen', ihr: 'stiegt', Sie: 'stiegen' } },
  'bieten': { praeteritum: { ich: 'bot', du: 'botst', er_sie_es: 'bot', wir: 'boten', ihr: 'botet', Sie: 'boten' } },
  'halten': { praesens: { ich: 'halte', du: 'hältst', er_sie_es: 'hält', wir: 'halten', ihr: 'haltet', Sie: 'halten' }, praeteritum: { ich: 'hielt', du: 'hieltest', er_sie_es: 'hielt', wir: 'hielten', ihr: 'hieltet', Sie: 'hielten' } },
  'treiben': { praeteritum: { ich: 'trieb', du: 'triebst', er_sie_es: 'trieb', wir: 'trieben', ihr: 'triebt', Sie: 'trieben' } },
  'schreiben': { praeteritum: { ich: 'schrieb', du: 'schriebst', er_sie_es: 'schrieb', wir: 'schrieben', ihr: 'schriebt', Sie: 'schrieben' } },
  'scheiden': { praeteritum: { ich: 'schied', du: 'schiedst', er_sie_es: 'schied', wir: 'schieden', ihr: 'schiedet', Sie: 'schieden' } },
  'treten': { praesens: { ich: 'trete', du: 'trittst', er_sie_es: 'tritt', wir: 'treten', ihr: 'tretet', Sie: 'treten' }, praeteritum: { ich: 'trat', du: 'tratest', er_sie_es: 'trat', wir: 'traten', ihr: 'tratet', Sie: 'traten' } },
  'brechen': { praesens: { ich: 'breche', du: 'brichst', er_sie_es: 'bricht', wir: 'brechen', ihr: 'brecht', Sie: 'brechen' }, praeteritum: { ich: 'brach', du: 'brachst', er_sie_es: 'brach', wir: 'brachen', ihr: 'bracht', Sie: 'brachen' } },
  'melden': { praeteritum: { ich: 'meldete', du: 'meldetest', er_sie_es: 'meldete', wir: 'meldeten', ihr: 'meldetet', Sie: 'meldeten' } },
  'richten': { praeteritum: { ich: 'richtete', du: 'richtetest', er_sie_es: 'richtete', wir: 'richteten', ihr: 'richtetet', Sie: 'richteten' } },
  'bereiten': { praeteritum: { ich: 'bereitete', du: 'bereitetest', er_sie_es: 'bereitete', wir: 'bereiteten', ihr: 'bereitetet', Sie: 'bereiteten' } },
  'probieren': { praeteritum: { ich: 'probierte', du: 'probiertest', er_sie_es: 'probierte', wir: 'probierten', ihr: 'probiertet', Sie: 'probierten' } },
  'stellen': { praeteritum: { ich: 'stellte', du: 'stelltest', er_sie_es: 'stellte', wir: 'stellten', ihr: 'stelltet', Sie: 'stellten' } },
  'bringen': { praeteritum: { ich: 'brachte', du: 'brachtest', er_sie_es: 'brachte', wir: 'brachten', ihr: 'brachtet', Sie: 'brachten' } },
  'kennen': { praeteritum: { ich: 'kannte', du: 'kanntest', er_sie_es: 'kannte', wir: 'kannten', ihr: 'kanntet', Sie: 'kannten' } },
  'nennen': { praeteritum: { ich: 'nannte', du: 'nanntest', er_sie_es: 'nannte', wir: 'nannten', ihr: 'nanntet', Sie: 'nannten' } },
  'denken': { praeteritum: { ich: 'dachte', du: 'dachtest', er_sie_es: 'dachte', wir: 'dachten', ihr: 'dachtet', Sie: 'dachten' } },
  'wissen': { praesens: { ich: 'weiß', du: 'weißt', er_sie_es: 'weiß', wir: 'wissen', ihr: 'wisst', Sie: 'wissen' }, praeteritum: { ich: 'wusste', du: 'wusstest', er_sie_es: 'wusste', wir: 'wussten', ihr: 'wusstet', Sie: 'wussten' } },
  'fallen': { praeteritum: { ich: 'fiel', du: 'fielst', er_sie_es: 'fiel', wir: 'fielen', ihr: 'fielt', Sie: 'fielen' } },
  'lassen': { praeteritum: { ich: 'ließ', du: 'ließt', er_sie_es: 'ließ', wir: 'ließen', ihr: 'ließt', Sie: 'ließen' } },
  'stoßen': { praesens: { du: 'stößt', er_sie_es: 'stößt' }, praeteritum: { ich: 'stieß', du: 'stießt', er_sie_es: 'stieß', wir: 'stießen', ihr: 'stießt', Sie: 'stießen' } },
}

const persons = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie']

function generateConjugations(infinitive, verbType, partizip2, auxiliary, separablePrefix, isReflexive) {
  const prefix = separablePrefix || ''
  const { base: baseForLookup } = prefix ? splitSeparable(infinitive, prefix) : { base: infinitive }
  const manual = manualIrregulars[infinitive] || manualIrregulars[baseForLookup]
  const st = stem(prefix ? baseForLookup : infinitive)
  const useAux = auxiliary === 'both' ? 'sein' : auxiliary
  const suffix = prefix ? ` ${prefix}` : ''
  const suffixed = (form) => prefix && !form.includes(' ') ? `${form} ${prefix}` : form

  const p2 = partizip2
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
    praeteritum = verbType === 'regular' ? generateRegularPraeteritum(infinitive, prefix)
      : { ich: `${st}te${suffix}`, du: `${st}test${suffix}`, er_sie_es: `${st}te${suffix}`, wir: `${st}ten${suffix}`, ihr: `${st}tet${suffix}`, Sie: `${st}ten${suffix}` }
  }

  const duForm = praesens.du || ''
  let duImp = prefix ? `${st}e ${prefix}` : (duForm ? duForm.replace(/st$/, '') : `${st}e`)
  if (duImp === duForm) duImp = `${st}e`
  if (duImp === 'se') duImp = 'sei'

  const imperativ = {
    ich: null, du: duImp, er_sie_es: null, wir: null,
    ihr: prefix ? `${st}t ${prefix}` : `${st}t`,
    Sie: prefix ? `${st}en ${prefix}` : `${st}en`
  }

  const perfekt = {}, plusquamperfekt = {}
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
      if (manual.konjunktiv_ii[p]) konjunktivii[p] = prefix ? `${manual.konjunktiv_ii[p]} ${prefix}` : manual.konjunktiv_ii[p]
    }
  }

  return { praesens, praeteritum, perfekt, plusquamperfekt, futuri, futurii, konjunktivii, imperativ }
}

function esc(s) { return s == null ? 'NULL' : `'${String(s).replace(/'/g, "''")}'` }
function arr(a) { return a && a.length ? `'{${a.map(x => `"${x.replace(/"/g, '\\"')}"`).join(',')}}'` : "'{}'" }
function makeSlug(s) { return s.toLowerCase().replace(/[^a-zäöüßA-ZÄÖÜ\-]/g, '').replace(/[\s_]+/g, '-') }

// ===== MAIN =====

let a1Verbs, a2Verbs
try {
  a1Verbs = parseTSArray(path.join(dir, 'verbs-a1.ts'))
  a2Verbs = parseTSArray(path.join(dir, 'verbs-a2.ts'))
} catch (e) {
  console.error('Error:', e.message)
  process.exit(1)
}

const allVerbs = [...a1Verbs, ...a2Verbs]
const OUTPUT = path.resolve(dir, '../../supabase/migrations/00043_verbs_repair.sql')

let sql = '-- German Verbs Repair (generated from TS data files)\n'
sql += '-- Run after migrations 00031–00042\n'
sql += '-- Uses UPDATE for metadata, DELETE + INSERT for conjugations\n\n'

for (const v of allVerbs) {
  const slug = makeSlug(v.infinitive)
  const sep = v.sep || null
  const isReflexive = v.reflexive || v.type === 'reflexive' || v.type === 'reflexive_preposition' || false
  const auxiliary = v.aux || 'haben'
  const verbType = v.type || 'regular'
  const ipa = v.ipa || null
  const stress = v.stress || null

  sql += `-- ${v.infinitive} (${v.level})\n`
  sql += `INSERT INTO public.german_verbs (infinitive, english_translation, arabic_translation, french_translation, cefr_level, frequency, verb_type, transitivity, object_case, preposition, preposition_case, is_reflexive, reflexive_pronoun, auxiliary, partizip_2, separable_prefix, ipa, stress, slug, synonyms, antonyms, tags) VALUES\n`
  sql += `(${[esc(v.infinitive), esc(v.en), esc(v.ar), esc(v.fr), esc(v.level), esc(v.freq), esc(verbType), esc(v.tr), esc(v.obj || 'none'), esc(v.prep), esc(v.prepCase || null), isReflexive ? 'true' : 'false', esc(v.reflexivePronoun || null), esc(auxiliary), esc(v.p2), esc(sep), esc(ipa), esc(stress), esc(slug), arr(v.syn || []), arr(v.ant || []), arr(v.tags || [])].join(', ')})\n`
  sql += `ON CONFLICT (slug) DO UPDATE SET\n`
  sql += `  verb_type = EXCLUDED.verb_type,\n`
  sql += `  separable_prefix = EXCLUDED.separable_prefix,\n`
  sql += `  auxiliary = EXCLUDED.auxiliary,\n`
  sql += `  partizip_2 = EXCLUDED.partizip_2,\n`
  sql += `  english_translation = EXCLUDED.english_translation,\n`
  sql += `  arabic_translation = EXCLUDED.arabic_translation,\n`
  sql += `  french_translation = EXCLUDED.french_translation,\n`
  sql += `  cefr_level = EXCLUDED.cefr_level,\n`
  sql += `  frequency = EXCLUDED.frequency,\n`
  sql += `  transitivity = EXCLUDED.transitivity,\n`
  sql += `  object_case = EXCLUDED.object_case,\n`
  sql += `  is_reflexive = EXCLUDED.is_reflexive,\n`
  sql += `  reflexive_pronoun = EXCLUDED.reflexive_pronoun,\n`
  sql += `  ipa = EXCLUDED.ipa,\n`
  sql += `  stress = EXCLUDED.stress,\n`
  sql += `  synonyms = EXCLUDED.synonyms,\n`
  sql += `  antonyms = EXCLUDED.antonyms,\n`
  sql += `  tags = EXCLUDED.tags;\n\n`

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

fs.writeFileSync(OUTPUT, sql)
console.log(`Wrote ${OUTPUT}`)
console.log(`Updated ${allVerbs.length} verbs with regenerated conjugations.`)
console.log(`SQL size: ${(sql.length / 1024).toFixed(1)} KB`)
