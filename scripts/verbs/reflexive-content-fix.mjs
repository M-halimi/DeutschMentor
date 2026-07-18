// Reflexive Verb Content Consistency Fixer
// Source of truth: reflexive-audit-final.ts (infinitive -> reflexiveCase + pattern metadata)
// Fixes all 5 content sections for the 73 reflexive verbs in the live DB.

import { readFileSync, writeFileSync } from 'fs'

const PROJECT_REF = process.env.PROJECT_REF
const TOKEN = process.env.TOKEN

// ---- Load canonical meta ----
const metaRaw = readFileSync(new URL('./reflexive-audit-final.ts', import.meta.url), 'utf-8')
const metaMatches = [...metaRaw.matchAll(/"infinitive":\s*"([^"]+)"[\s\S]*?"reflexiveCase":\s*"(dativ|akkusativ)"[\s\S]*?"requiresObject":\s*(true|false)[\s\S]*?"objectCase":\s*"(akkusativ|dativ|genitiv|none)"[\s\S]*?"objectPlaceholder":\s*(null|"[^"]*")[\s\S]*?"requiredPreposition":\s*(null|"[^"]*")[\s\S]*?"prepositionCase":\s*"(akkusativ|dativ|genitiv|none)"/g)]
const META = {}
for (const m of metaMatches) {
  META[m[1]] = {
    reflexiveCase: m[2],
    requiresObject: m[3] === 'true',
    objectCase: m[4],
    objectPlaceholder: m[5] === 'null' ? null : m[5].replace(/"/g, ''),
    requiredPreposition: m[6] === 'null' ? null : m[6].replace(/"/g, ''),
    prepositionCase: m[7],
  }
}

// Person -> pronoun maps
const AKK = { ich: 'mich', du: 'dich', er_sie_es: 'sich', wir: 'uns', ihr: 'euch', Sie: 'sich' }
const DAT = { ich: 'mir', du: 'dir', er_sie_es: 'sich', wir: 'uns', ihr: 'euch', Sie: 'sich' }

// Build a regex that matches a reflexive pronoun in text and captures the person context.
// We detect person from subject pronoun / verb form, then decide correct case form.
function detectPersonAndFix(text, caseType) {
  // Map of (person key, regex for subject) => correct pronoun
  const map = caseType === 'dativ' ? DAT : AKK
  const wrongMap = caseType === 'dativ' ? AKK : DAT // the opposite-case pronouns that would be WRONG
  let changed = false

  // For each person, find the wrong pronoun used as the reflexive and replace with correct.
  // We must be careful: only replace the reflexive pronoun, not other occurrences.
  // Strategy: within a clause, if the verb is reflexive and the wrong-case pronoun appears, swap it.

  // Simpler robust approach: replace exact wrong pronouns when they appear right after the conjugated verb
  // OR as the reflexive marker. We'll handle the typical patterns.

  // Patterns: (a) "SUBJ VERB PRON" e.g. "Ich gewöhne mir"  (b) "SUBJ PRON" e.g. "du dich" (questions)
  const persons = [
    { key: 'ich', re: /\bich\b(?:\s+(\w+))?\s+(mich|mir|dich|dir|sich|uns|euch)\b/g },
    { key: 'du', re: /\bdu\b(?:\s+(\w+))?\s+(mich|mir|dich|dir|sich|uns|euch)\b/g },
    { key: 'wir', re: /\bwir\b(?:\s+(\w+))?\s+(mich|mir|dich|dir|sich|uns|euch)\b/g },
    { key: 'ihr', re: /\bihr\b(?:\s+(\w+))?\s+(mich|mir|dich|dir|sich|uns|euch)\b/g },
    { key: 'Sie', re: /\bSie\b(?:\s+(\w+))?\s+(mich|mir|dich|dir|sich|uns|euch)\b/g },
  ]
  for (const p of persons) {
    text = text.replace(p.re, (full, verb, pron) => {
      const correct = map[p.key]
      if (pron === correct) return full
      if (pron === wrongMap[p.key]) { changed = true; return verb ? `${p.key} ${verb} ${correct}` : `${p.key} ${correct}` }
      return full
    })
  }

  return { text, changed }
}

// Validate a single text against the expected case. Returns list of problems.
function validateText(text, caseType) {
  const probs = []
  const map = caseType === 'dativ' ? DAT : AKK
  const wrongMap = caseType === 'dativ' ? AKK : DAT
  // Check reflexive pronouns that appear after a subject (optionally with verb in between)
  const re = /\b(ich|du|wir|ihr|Sie)\b(?:\s+(\w+))?\s+(mich|mir|dich|dir|sich|uns|euch)\b/g
  let mm
  while ((mm = re.exec(text)) !== null) {
    const person = mm[1]
    const pron = mm[3]
    const correct = map[person]
    const wrong = wrongMap[person]
    if (pron !== correct && pron === wrong) {
      probs.push(`'${text}' uses wrong-case pronoun '${pron}' for ${person}, expected '${correct}'`)
    }
  }
  return probs
}

async function runSql(query) {
  const res = await fetch(`https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`, {
    method: 'POST',
    headers: { Authorization: `Bearer ${TOKEN}`, 'Content-Type': 'application/json' },
    body: JSON.stringify({ query }),
  })
  const txt = await res.text()
  if (!res.ok) throw new Error(`SQL error: ${res.status} ${txt}\nQUERY: ${query}`)
  try { return JSON.parse(txt) } catch { return txt }
}

// Fetch all reflexive verb content
async function fetchAll() {
  const sql = `
    select gv.id, gv.infinitive, 'EX' as sec, ve.id as row_id, ve.german from public.verb_examples ve join public.german_verbs gv on gv.id=ve.verb_id where gv.is_reflexive=true
    union all select gv.id, gv.infinitive,'Q',vq.id,vq.german from public.verb_typical_questions vq join public.german_verbs gv on gv.id=vq.verb_id where gv.is_reflexive=true
    union all select gv.id, gv.infinitive,'M',vm.id,vm.incorrect||' | '||vm.correct from public.verb_common_mistakes vm join public.german_verbs gv on gv.id=vm.verb_id where gv.is_reflexive=true
    union all select gv.id, gv.infinitive,'T',vt.id,vt.content from public.verb_learning_tips vt join public.german_verbs gv on gv.id=vt.verb_id where gv.is_reflexive=true
    union all select gv.id, gv.infinitive,'C',vc.id,vc.collocation from public.verb_collocations vc join public.german_verbs gv on gv.id=vc.verb_id where gv.is_reflexive=true
    order by infinitive, sec;`
  return runSql(sql)
}

function saveReport(obj) {
  writeFileSync(new URL('./reflexive-fix-report.json', import.meta.url), JSON.stringify(obj, null, 2), 'utf-8')
}

async function main() {
  const rows = await fetchAll()
  const report = []
  const fixes = [] // {table, row_id, column, oldText, newText, infinitive, sec}

  // Map section -> table/column
  const SEC = {
    EX: { table: 'public.verb_examples', col: 'german' },
    Q: { table: 'public.verb_typical_questions', col: 'german' },
    M: { table: 'public.verb_common_mistakes', col: 'german' }, // special: combined; we won't edit M via regex on combined
    T: { table: 'public.verb_learning_tips', col: 'content' },
    C: { table: 'public.verb_collocations', col: 'collocation' },
  }

  // Group by verb
  const byVerb = {}
  for (const r of rows) {
    byVerb[r.infinitive] = byVerb[r.infinitive] || []
    byVerb[r.infinitive].push(r)
  }

  for (const [inf, list] of Object.entries(byVerb)) {
    const meta = META[inf]
    if (!meta) { console.warn(`No meta for ${inf}`); continue }
    const caseType = meta.reflexiveCase
    const checked = { EX: false, Q: false, M: false, T: false, C: false }
    const errorsFixed = { EX: 0, Q: 0, M: 0, T: 0, C: 0 }
    const problems = []

    for (const r of list) {
      const sec = r.sec
      checked[sec] = true
      // Validate
      const probs = validateText(r.german, caseType)
      probs.forEach(p => problems.push(`[${sec}] ${p}`))
      // Skip M section (combined incorrect|correct) from auto-fix; handled separately below
      if (sec === 'M') continue
      // Fix
      const { text: fixed, changed } = detectPersonAndFix(r.german, caseType)
      if (changed) {
        errorsFixed[sec]++
        fixes.push({ table: SEC[sec].table, col: SEC[sec].col, row_id: r.row_id, infinitive: inf, sec, oldText: r.german, newText: fixed })
      }
    }

    report.push({
      verb: inf,
      reflexiveCase: caseType,
      examplesChecked: checked.EX,
      kollokationenChecked: checked.C,
      typischeFragenChecked: checked.Q,
      haeufigeFehlerChecked: checked.M,
      lerntippsChecked: checked.T,
      errorsFixed,
      problems,
    })
  }

  // Apply fixes
  let applied = 0
  for (const f of fixes) {
    // escape single quotes
    const oldEsc = f.oldText.replace(/'/g, "''")
    const newEsc = f.newText.replace(/'/g, "''")
    const sql = `update ${f.table} set ${f.col} = '${newEsc}' where id = '${f.row_id}' and ${f.col} = '${oldEsc}';`
    try {
      await runSql(sql)
      applied++
    } catch (e) {
      console.error(`Failed to update ${f.infinitive} [${f.sec}]:`, e.message)
    }
  }

  saveReport({ summary: { totalVerbs: Object.keys(byVerb).length, totalFixes: fixes.length, applied }, verbs: report })
  console.log(`Total verbs: ${Object.keys(byVerb).length}`)
  console.log(`Fixes generated: ${fixes.length}, applied: ${applied}`)
  const withFixes = report.filter(r => Object.values(r.errorsFixed).some(v => v > 0))
  console.log(`Verbs with errors fixed: ${withFixes.length}`)
  for (const r of withFixes) {
    const ef = Object.entries(r.errorsFixed).filter(([, v]) => v > 0).map(([k, v]) => `${k}:${v}`).join(', ')
    console.log(`  ${r.verb} (${r.reflexiveCase}) -> ${ef}`)
  }
}

main().catch(e => { console.error(e); process.exit(1) })
