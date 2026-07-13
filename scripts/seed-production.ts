import { readFileSync } from 'fs'

const envRaw = readFileSync('.env.local', 'utf8')
const env: Record<string, string> = {}
for (const line of envRaw.split('\n')) {
  const t = line.trim(); if (!t || t.startsWith('#')) continue
  const eq = t.indexOf('='); if (eq > 0) env[t.slice(0, eq).trim()] = t.slice(eq + 1).trim()
}

const supabaseUrl = env.NEXT_PUBLIC_SUPABASE_URL!
const serviceKey = env.SUPABASE_SERVICE_ROLE_KEY!

interface ParsedInsert {
  table: string
  columns: string[]
  rows: string[][]
}

function findMatchingParen(s: string, start: number): number {
  let d = 0
  for (let i = start; i < s.length; i++) {
    if (s[i] === '(') d++
    else if (s[i] === ')') { d--; if (d === 0) return i }
  }
  return -1
}

function parseInsertStatements(sql: string): ParsedInsert[] {
  const results: ParsedInsert[] = []
  let pos = 0

  while (pos < sql.length) {
    const insIdx = sql.toLowerCase().indexOf('insert into', pos)
    if (insIdx === -1) break

    const afterInsert = sql.slice(insIdx)
    const tableMatch = afterInsert.match(/insert\s+into\s+(?:public\.)?(\w+)/i)
    if (!tableMatch) { pos = insIdx + 11; continue }
    const table = tableMatch[1]

    const cStart = sql.indexOf('(', insIdx)
    if (cStart === -1) { pos = insIdx + 11; continue }
    const cEnd = findMatchingParen(sql, cStart)
    const columnsStr = sql.slice(cStart + 1, cEnd)

    const vKw = sql.toLowerCase().indexOf('values', cEnd)
    if (vKw === -1) { pos = insIdx + 11; continue }
    const valuesStart = vKw + 6

    let inStr = false
    let depth = 0
    let semicolonAt = -1
    for (let i = valuesStart; i < sql.length; i++) {
      const ch = sql[i]
      // Skip SQL line comments (-- to end of line)
      if (ch === '-' && sql[i + 1] === '-' && !inStr) {
        while (i < sql.length && sql[i] !== '\n') i++
        continue
      }
      if (ch === 'E' && sql[i + 1] === "'") {
        let j = i + 2
        while (j < sql.length) {
          if (sql[j] === '\\') { j += 2; continue }
          if (sql[j] === "'" && sql[j + 1] !== "'") break
          if (sql[j] === "'") j += 2
          else j++
        }
        i = j; continue
      }
      if (ch === "'") {
        if (inStr && sql[i + 1] === "'") { i++; continue }
        inStr = !inStr; continue
      }
      if (inStr) continue
      if (ch === '(') { depth++; continue }
      if (ch === ')') { depth--; continue }
      if (ch === ';' && depth === 0) { semicolonAt = i; break }
    }
    if (semicolonAt === -1) { pos = insIdx + 11; continue }

    const rawValues = sql.slice(valuesStart, semicolonAt).trim()

    inStr = false; depth = 0
    let rowVals: string[] = []
    let cur = ''
    const rows: string[][] = []
    let p = 0

    while (p < rawValues.length) {
      const ch = rawValues[p]
      // Skip SQL line comments
      if (ch === '-' && rawValues[p + 1] === '-' && !inStr) {
        while (p < rawValues.length && rawValues[p] !== '\n') p++
        continue
      }
      if (ch === 'E' && rawValues[p + 1] === "'") {
        let j = p + 2
        while (j < rawValues.length) {
          if (rawValues[j] === '\\') { j += 2; continue }
          if (rawValues[j] === "'" && rawValues[j + 1] !== "'") break
          if (rawValues[j] === "'") j += 2
          else j++
        }
        cur += rawValues.slice(p, Math.min(j + 1, rawValues.length))
        p = Math.min(j + 1, rawValues.length); continue
      }
      if (ch === "'") {
        if (inStr && rawValues[p + 1] === "'") { cur += "''"; p += 2; continue }
        cur += ch; inStr = !inStr; p++; continue
      }
      if (inStr) { cur += ch; p++; continue }
      if (ch === '(' && depth === 0) { depth = 1; rowVals = []; cur = ''; p++; continue }
      if (ch === '(') { depth++; cur += ch; p++; continue }
      if (ch === ')' && depth === 1) {
        rowVals.push(cur.trim()); rows.push([...rowVals])
        depth = 0; cur = ''; rowVals = []; p++; continue
      }
      if (ch === ')') { depth--; cur += ch; p++; continue }
      if (ch === ',' && depth === 1) { rowVals.push(cur.trim()); cur = ''; p++; continue }
      if (depth >= 1) cur += ch
      p++
    }

    const columns = columnsStr.split(',').map(c => c.trim().replace(/"/g, ''))
    results.push({ table, columns, rows })
    pos = semicolonAt + 1
  }

  return results
}

function sqlValueToJs(val: string): any {
  val = val.trim()
  if (val === 'NULL' || val === 'null') return null
  if (val === 'true') return true
  if (val === 'false') return false

  const n = Number(val)
  if (!isNaN(n) && val !== '') return n

  let s = val
  if (s.startsWith("E'") && s.endsWith("'")) s = s.slice(2, -1)
  else if (s.startsWith("'") && s.endsWith("'")) s = s.slice(1, -1)

  s = s.replace(/\\(.)/g, (_, c: string) => c === 'n' ? '\n' : c === 't' ? '\t' : c).replace(/''/g, "'")

  const trimmed = s.trim()
  if ((trimmed.startsWith('[') && trimmed.endsWith(']')) ||
      (trimmed.startsWith('{') && trimmed.endsWith('}'))) {
    try { return JSON.parse(trimmed) } catch { return s }
  }

  return s
}

async function main() {
  const files = [
    'supabase/migrations/00023_listening_bank_lesson.sql',
    'supabase/migrations/00024_course_german_integration.sql',
  ]

  // Collect all lesson UUIDs that will be affected
  const lessonUuids = new Set<string>()
  const allInserts: { file: string; inserts: ParsedInsert[] }[] = []

  for (const file of files) {
    const sql = readFileSync(file, 'utf8')
    const inserts = parseInsertStatements(sql)
    allInserts.push({ file, inserts })

    // Extract lesson UUIDs from audio_lessons INSERT
    for (const ins of inserts) {
      if (ins.table === 'audio_lessons') {
        for (const row of ins.rows) {
          if (row.length > 0) {
            const uuid = row[0].replace(/'/g, '').trim()
            lessonUuids.add(uuid)
          }
        }
      }
    }
  }

  // Step 1: DELETE existing data for these lesson UUIDs
  const listeningTables = ['listening_exercises', 'listening_vocabulary', 'listening_phrases', 'listening_grammar_points']
  const contentTables = [...listeningTables, 'audio_lessons']

  console.log('=== Step 1: DELETE existing data for new lessons ===')
  for (const uuid of lessonUuids) {
    console.log(`\n  Lesson ${uuid}:`)
    for (const table of contentTables) {
      const resp = await fetch(`${supabaseUrl}/rest/v1/${table}?audio_lesson_id=eq.${uuid}`, {
        method: 'DELETE',
        headers: {
          'apikey': serviceKey,
          'Authorization': `Bearer ${serviceKey}`,
          'Prefer': 'count=exact',
        },
      })
      if (resp.ok) {
        const count = resp.headers.get('content-range') || '?'
        console.log(`    ${table}: deleted`)
      } else {
        const err = await resp.text()
        // audio_lessons uses id not audio_lesson_id
        if (table === 'audio_lessons') {
          const resp2 = await fetch(`${supabaseUrl}/rest/v1/${table}?id=eq.${uuid}`, {
            method: 'DELETE',
            headers: {
              'apikey': serviceKey,
              'Authorization': `Bearer ${serviceKey}`,
              'Prefer': 'count=exact',
            },
          })
          if (resp2.ok) {
            console.log(`    ${table}: deleted (by id)`)
          } else {
            const e2 = await resp2.text()
            console.log(`    ${table}: ${e2.slice(0, 100)}`)
          }
        } else {
          console.log(`    ${table}: ${err.slice(0, 100)}`)
        }
      }
    }
  }

  // Step 2: INSERT all data
  console.log(`\n=== Step 2: INSERT fresh data ===`)
  let totalRows = 0
  let hasError = false

  for (const { file, inserts } of allInserts) {
    console.log(`\n  ${file.split('/').pop()}:`)

    for (const ins of inserts) {
      if (['listening_exercises', 'listening_vocabulary', 'listening_phrases', 'listening_grammar_points', 'audio_lessons'].indexOf(ins.table) === -1) {
        console.log(`    SKIP ${ins.table}: ${ins.rows.length} rows`)
        continue
      }

      const data = ins.rows.map(row => {
        const obj: Record<string, any> = {}
        ins.columns.forEach((col, i) => {
          if (i < row.length) obj[col] = sqlValueToJs(row[i])
        })
        return obj
      })

      console.log(`    ${ins.table}: ${data.length} rows`)

      for (let i = 0; i < data.length; i += 10) {
        const batch = data.slice(i, i + 10)
        const resp = await fetch(`${supabaseUrl}/rest/v1/${ins.table}`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'apikey': serviceKey,
            'Authorization': `Bearer ${serviceKey}`,
            'Prefer': 'resolution=merge-duplicates',
          },
          body: JSON.stringify(batch),
        })

        if (!resp.ok) {
          const err = await resp.text()
          console.error(`      ✗ batch ${Math.floor(i / 10) + 1}: ${err.slice(0, 150)}`)
          hasError = true
          for (const row of batch) {
            try {
              const r2 = await fetch(`${supabaseUrl}/rest/v1/${ins.table}`, {
                method: 'POST',
                headers: {
                  'Content-Type': 'application/json',
                  'apikey': serviceKey,
                  'Authorization': `Bearer ${serviceKey}`,
                  'Prefer': 'resolution=merge-duplicates',
                },
                body: JSON.stringify([row]),
              })
              if (!r2.ok) {
                const e2 = await r2.text()
                console.error(`        ✗ ${e2.slice(0, 150)}`)
              }
            } catch (e) {
              console.error(`        ✗ fetch error: ${e}`)
            }
          }
        }
      }
      totalRows += data.length
    }
  }

  if (hasError) {
    console.log(`\n=== Done: ${totalRows} rows inserted, WITH ERRORS ===`)
    process.exit(1)
  } else {
    console.log(`\n=== Complete: ${totalRows} rows inserted ===`)
  }
}

main().catch(console.error)
