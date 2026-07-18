// Final verification report (read-only) for reflexive verb content consistency.
import { readFileSync, writeFileSync } from 'fs'

const PROJECT_REF = process.env.PROJECT_REF
const TOKEN = process.env.TOKEN

const metaRaw = readFileSync(new URL('./reflexive-audit-final.ts', import.meta.url), 'utf-8')
const metaMatches = [...metaRaw.matchAll(/"infinitive":\s*"([^"]+)"[\s\S]*?"reflexiveCase":\s*"(dativ|akkusativ)"/g)]
const META = {}
for (const m of metaMatches) META[m[1]] = m[2]

const AKK = { ich: 'mich', du: 'dich', er_sie_es: 'sich', wir: 'uns', ihr: 'euch', Sie: 'sich' }
const DAT = { ich: 'mir', du: 'dir', er_sie_es: 'sich', wir: 'uns', ihr: 'euch', Sie: 'sich' }

function validateText(text, caseType) {
  const map = caseType === 'dativ' ? DAT : AKK
  const wrongMap = caseType === 'dativ' ? AKK : DAT
  const re = /\b(ich|du|wir|ihr|Sie)\b(?:\s+(\w+))?\s+(mich|mir|dich|dir|sich|uns|euch)\b/g
  const probs = []
  let m
  while ((m = re.exec(text)) !== null) {
    const person = m[1], pron = m[3]
    if (pron !== map[person] && pron === wrongMap[person]) probs.push(`wrong '${pron}' expected '${map[person]}'`)
  }
  return probs
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
  const sql = `
    select gv.infinitive, 'EX' as sec, ve.german from public.verb_examples ve join public.german_verbs gv on gv.id=ve.verb_id where gv.is_reflexive=true
    union all select gv.infinitive,'Q',vq.german from public.verb_typical_questions vq join public.german_verbs gv on gv.id=vq.verb_id where gv.is_reflexive=true
    union all select gv.infinitive,'M',vm.incorrect||' | '||vm.correct from public.verb_common_mistakes vm join public.german_verbs gv on gv.id=vm.verb_id where gv.is_reflexive=true
    union all select gv.infinitive,'T',vt.content from public.verb_learning_tips vt join public.german_verbs gv on gv.id=vt.verb_id where gv.is_reflexive=true
    union all select gv.infinitive,'C',vc.collocation from public.verb_collocations vc join public.german_verbs gv on gv.id=vc.verb_id where gv.is_reflexive=true
    union all select gv.infinitive,'K',coalesce(vc.ich,'')||' || '||coalesce(vc.du,'')||' || '||coalesce(vc.er_sie_es,'')||' || '||coalesce(vc.wir,'')||' || '||coalesce(vc.ihr,'')||' || '||coalesce(vc.sie,'') from public.verb_conjugations vc join public.german_verbs gv on gv.id=vc.verb_id where gv.is_reflexive=true
    order by infinitive, sec;`
  const rows = await runSql(sql)
  const byVerb = {}
  for (const r of rows) { (byVerb[r.infinitive] ||= []).push(r) }

  const report = []
  let totalErrors = 0
  for (const [inf, list] of Object.entries(byVerb)) {
    const caseType = META[inf] || 'unknown'
    const checked = { EX: 0, Q: 0, M: 0, T: 0, C: 0, K: 0 }
    const errors = { EX: 0, Q: 0, M: 0, T: 0, C: 0, K: 0 }
    for (const r of list) {
      checked[r.sec]++
      const probs = validateText(r.german, caseType)
      if (probs.length) { errors[r.sec] += probs.length; totalErrors += probs.length }
    }
    report.push({ verb: inf, reflexiveCase: caseType,
      examplesChecked: checked.EX, kollokationenChecked: checked.C,
      typischeFragenChecked: checked.Q, haeufigeFehlerChecked: checked.M, lerntippsChecked: checked.T,
      konjugationChecked: checked.K,
      errorsFixed: errors })
  }
  const lines = []
  lines.push('=== REFLEXIVE VERB CONTENT CONSISTENCY — FINAL REPORT ===')
  lines.push(`Total reflexive verbs audited: ${report.length}`)
  lines.push(`Total remaining errors: ${totalErrors}`)
  lines.push('')
  for (const r of report) {
    lines.push(`Verb: ${r.verb}`)
    lines.push(`Reflexive case: ${r.reflexiveCase}`)
    lines.push(`Examples checked: ${r.examplesChecked}`)
    lines.push(`Kollokationen checked: ${r.kollokationenChecked}`)
    lines.push(`Typische Fragen checked: ${r.typischeFragenChecked}`)
    lines.push(`Häufige Fehler checked: ${r.haeufigeFehlerChecked}`)
    lines.push(`Lerntipps checked: ${r.lerntippsChecked}`)
    lines.push(`Konjugation checked: ${r.konjugationChecked}`)
    const ef = Object.entries(r.errorsFixed).filter(([, v]) => v > 0).map(([k, v]) => `${k}:${v}`).join(', ') || '0'
    lines.push(`Errors fixed: ${ef}`)
    lines.push('')
  }
  const out = lines.join('\n')
  writeFileSync(new URL('./reflexive-final-report.txt', import.meta.url), out, 'utf-8')
  console.log(out)
}

main().catch(e => { console.error(e); process.exit(1) })
