// Fix conjugations for two reflexive verbs wrongly stored as akkusativ:
//   sich vorstellen (dativ, separable, base 'stellen' -> attached form 'vorstelle')
//   sich vornehmen  (dativ, separable, base 'nehmen' irregular -> SEPARATED form 'nehme vor')
// DB column for Sie is lowercase 'sie'.

import { readFileSync } from 'fs'

const PROJECT_REF = process.env.PROJECT_REF
const TOKEN = process.env.TOKEN

const AKK = { ich: 'mich', du: 'dich', er_sie_es: 'sich', wir: 'uns', ihr: 'euch', Sie: 'sich' }
const DAT = { ich: 'mir', du: 'dir', er_sie_es: 'sich', wir: 'uns', ihr: 'euch', Sie: 'sich' }

function regularPraesens(st) {
  return {
    ich: `${st}e`, du: /[dt]$/.test(st) ? `${st}est` : /[sßz]$/.test(st) ? `${st}t` : `${st}st`,
    er_sie_es: /[dt]$/.test(st) ? `${st}et` : `${st}t`,
    wir: `${st}en`, ihr: `${st}t`, Sie: `${st}en`,
  }
}
function regularPraeteritum(st) {
  return {
    ich: `${st}te`, du: `${st}test`, er_sie_es: `${st}te`,
    wir: `${st}ten`, ihr: `${st}tet`, Sie: `${st}ten`,
  }
}

const NEHMEN = {
  praesens: { ich: 'nehme', du: 'nimmst', er_sie_es: 'nimmt', wir: 'nehmen', ihr: 'nehmt', Sie: 'nehmen' },
  praeteritum: { ich: 'nahm', du: 'nahmst', er_sie_es: 'nahm', wir: 'nahmen', ihr: 'nahmt', Sie: 'nahmen' },
}

// verb: base stem, irregular override, prefix, p2, case, separated(bool: prefix goes to end)
function buildVerb(baseSt, irregular, prefix, p2, caseType, separated) {
  const pron = caseType === 'dativ' ? DAT : AKK
  const persons = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie']
  // full(p): build complete form with stem s + pronoun + prefix
  const full = (s, p) => {
    if (!prefix) return `${s} ${pron[p]}`
    if (separated) return `${s} ${pron[p]} ${prefix}`
    return `${prefix}${s} ${pron[p]}`
  }
  const praeBase = irregular ? irregular.praesens : regularPraesens(baseSt)
  const praetBase = irregular ? irregular.praeteritum : regularPraeteritum(baseSt)
  const praesens = Object.fromEntries(persons.map(p => [p, full(praeBase[p], p)]))
  const praeteritum = Object.fromEntries(persons.map(p => [p, full(praetBase[p], p)]))

  const auxPraes = { ich: 'habe', du: 'hast', er_sie_es: 'hat', wir: 'haben', ihr: 'habt', Sie: 'haben' }
  const auxPraet = { ich: 'hatte', du: 'hattest', er_sie_es: 'hatte', wir: 'hatten', ihr: 'hattet', Sie: 'hatten' }
  // DB convention: aux + p2 + pronoun
  const perfekt = Object.fromEntries(persons.map(p => [p, `${auxPraes[p]} ${p2} ${pron[p]}`]))
  const plusquamperfekt = Object.fromEntries(persons.map(p => [p, `${auxPraet[p]} ${p2} ${pron[p]}`]))

  const futurAux = { ich: 'werde', du: 'wirst', er_sie_es: 'wird', wir: 'werden', ihr: 'werdet', Sie: 'werden' }
  const inf = separated ? `${baseSt}en ${prefix}` : (prefix ? `${prefix}${baseSt}en` : `${baseSt}en`)
  // For future/konjunktiv: pronoun (dativ/akk) stands before the infinitive
  const futuri = Object.fromEntries(persons.map(p => [p, `${futurAux[p]} ${pron[p]} ${inf}`]))
  const futurii = Object.fromEntries(persons.map(p => [p, `werde ${pron[p]} ${p2} haben`]))

  const kjAux = { ich: 'würde', du: 'würdest', er_sie_es: 'würde', wir: 'würden', ihr: 'würdet', Sie: 'würden' }
  const konjunktivii = Object.fromEntries(persons.map(p => [p, `${kjAux[p]} ${pron[p]} ${inf}`]))

  // Imperativ
  let duImp, ihrImp, sieImp
  if (separated) {
    const duStem = praeBase.du.replace(/st$/, '')
    duImp = `${duStem.charAt(0).toUpperCase()}${duStem.slice(1)} ${pron.du} ${prefix}!`
    const ihrStem = praeBase.ihr.replace(/t$/, '')
    ihrImp = `${ihrStem.charAt(0).toUpperCase()}${ihrStem.slice(1)}t ${pron.ihr} ${prefix}!`
    sieImp = `${baseSt}en ${pron.Sie} ${prefix}!`
  } else {
    const duStem = prefix ? `${prefix}${praeBase.du.replace(/st$/, '')}` : praeBase.du.replace(/st$/, '')
    duImp = `${duStem.charAt(0).toUpperCase()}${duStem.slice(1)} ${pron.du}!`
    const ihrStem = prefix ? `${prefix}${baseSt}t` : `${baseSt}t`
    ihrImp = `${ihrStem.charAt(0).toUpperCase()}${ihrStem.slice(1)} ${pron.ihr}!`
    const sieStem = prefix ? `${prefix}${baseSt}en` : `${baseSt}en`
    sieImp = `${sieStem.charAt(0).toUpperCase()}${sieStem.slice(1)} ${pron.Sie}!`
  }
  const imperativ = { ich: null, du: duImp, er_sie_es: null, wir: null, ihr: ihrImp, Sie: sieImp }

  return { praesens, praeteritum, perfekt, plusquamperfekt, futuri, futurii, konjunktivii, imperativ }
}

const target = {
  'sich vorstellen': buildVerb('stell', null, 'vor', 'vorgestellt', 'dativ', false),
  'sich vornehmen': buildVerb('nehm', NEHMEN, 'vor', 'vorgenommen', 'dativ', true),
}

async function runSql(query) {
  const res = await fetch(`https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`, {
    method: 'POST', headers: { Authorization: `Bearer ${TOKEN}`, 'Content-Type': 'application/json' },
    body: JSON.stringify({ query }),
  })
  const txt = await res.text()
  if (!res.ok) throw new Error(`${res.status} ${txt}`)
  try { return JSON.parse(txt) } catch { return txt }
}

async function main() {
  const updates = []
  for (const [inf, conj] of Object.entries(target)) {
    const idRes = await runSql(`select id from public.german_verbs where infinitive = '${inf}'`)
    const verbId = idRes[0].id
    const tenseMap = {
      praesens: conj.praesens, praeteritum: conj.praeteritum, perfekt: conj.perfekt,
      plusquamperfekt: conj.plusquamperfekt, futur_i: conj.futuri, futur_ii: conj.futurii,
      konjunktiv_ii: conj.konjunktivii, imperativ: conj.imperativ,
    }
    for (const [tense, forms] of Object.entries(tenseMap)) {
      const ich = (forms.ich || '').replace(/'/g, "''")
      const du = (forms.du || '').replace(/'/g, "''")
      const er = (forms.er_sie_es || '').replace(/'/g, "''")
      const wir = (forms.wir || '').replace(/'/g, "''")
      const ihr = (forms.ihr || '').replace(/'/g, "''")
      const sie = (forms.Sie || '').replace(/'/g, "''")
      updates.push(`update public.verb_conjugations set ich='${ich}',du='${du}',er_sie_es='${er}',wir='${wir}',ihr='${ihr}',sie='${sie}' where verb_id='${verbId}' and tense='${tense}';`)
    }
  }
  let ok = 0
  for (const u of updates) {
    try { await runSql(u); ok++ } catch (e) { console.error('FAIL:', e.message) }
  }
  console.log(`Applied ${ok}/${updates.length} conjugation updates.`)
  for (const inf of Object.keys(target)) {
    const r = await runSql(`select vc.tense, vc.ich, vc.du, vc.er_sie_es, vc.ihr, vc.sie from public.verb_conjugations vc join public.german_verbs gv on gv.id=vc.verb_id where gv.infinitive='${inf}' order by vc.tense`)
    console.log('\n=== ' + inf + ' ===')
    for (const row of r) console.log(`  ${row.tense}: ich='${row.ich}' du='${row.du}' er='${row.er_sie_es}' ihr='${row.ihr}' Sie='${row.sie}'`)
  }
}

main().catch(e => { console.error(e); process.exit(1) })
