import { readFileSync } from 'fs'
import { createClient } from '@supabase/supabase-js'

const envRaw = readFileSync('.env.local', 'utf8')
const env: Record<string, string> = {}
for (const line of envRaw.split('\n')) {
  const t = line.trim(); if (!t || t.startsWith('#')) continue
  const eq = t.indexOf('='); if (eq > 0) env[t.slice(0, eq).trim()] = t.slice(eq + 1).trim()
}

const supabaseUrl = env.NEXT_PUBLIC_SUPABASE_URL!
const serviceKey = env.SUPABASE_SERVICE_ROLE_KEY!

if (!supabaseUrl || !serviceKey) { console.error('Missing credentials'); process.exit(1) }

const supabase = createClient(supabaseUrl, serviceKey, {
  auth: { autoRefreshToken: false, persistSession: false },
})

interface SqlInsert {
  table: string
  columns: string[]
  values: any[][]
}

function parseSql(filePath: string): SqlInsert[] {
  const sql = readFileSync(filePath, 'utf8')
  const inserts: SqlInsert[] = []
  
  // Split by semicolons (INSERT statements end with semicolon)
  const statements = sql.split(';')
  
  for (const stmt of statements) {
    const trimmed = stmt.trim()
    if (!trimmed.toUpperCase().startsWith('INSERT INTO')) continue
    
    // Extract table name
    const tableMatch = trimmed.match(/INSERT\s+INTO\s+(?:public\.)?(\w+)/i)
    if (!tableMatch) continue
    const table = tableMatch[1]
    
    // Extract columns
    const colsMatch = trimmed.match(/\(([^)]+)\)\s*VALUES/i)
    if (!colsMatch) continue
    const columns = colsMatch[1].split(',').map(c => c.trim().replace(/"/g, ''))
    
    // Extract values - each row is inside parentheses
    const valuesMatch = trimmed.match(/VALUES\s+(.+)/is)
    if (!valuesMatch) continue
    
    const valuesStr = valuesMatch[1]
    const rows: any[][] = []
    let depth = 0
    let current = ''
    let inStr = false
    let strChar = ''
    let isEscape = false
    
    for (let i = 0; i < valuesStr.length; i++) {
      const ch = valuesStr[i]
      
      if (isEscape) { current += ch; isEscape = false; continue }
      
      if (inStr) {
        if (ch === '\\') { isEscape = true; current += ch; continue }
        if (ch === strChar) {
          // Check for doubled quotes (SQL escape)
          if (i + 1 < valuesStr.length && valuesStr[i + 1] === strChar) {
            current += ch; i++; continue
          }
          inStr = false
        }
        current += ch
        continue
      }
      
      if (ch === "'" || ch === '"') {
        // Check for E'...' prefix (E is already consumed, we're at ')
        inStr = true
        strChar = ch
        continue
      }
      
      if (ch === '(' && depth === 0) { depth = 1; current = ''; continue }
      if (ch === '(' && depth > 0) { depth++; current += ch; continue }
      
      if (ch === ')' && depth === 1) {
        rows.push(parseValues(current, columns.length))
        depth = 0; current = ''
        continue
      }
      if (ch === ')' && depth > 1) { depth--; current += ch; continue }
      
      if (depth > 0) current += ch
    }
    
    inserts.push({ table, columns, values: rows })
  }
  
  return inserts
}

function parseValues(str: string, expectedCols: number): any[] {
  const values: any[] = []
  let current = ''
  let inStr = false
  let strChar = ''
  let isEscape = false
  
  for (let i = 0; i < str.length; i++) {
    const ch = str[i]
    
    if (isEscape) { current += '\\' + ch; isEscape = false; continue }
    
    if (inStr) {
      if (ch === '\\') { isEscape = true; continue }
      if (ch === strChar) {
        if (i + 1 < str.length && str[i + 1] === strChar) {
          current += ch; i++; continue
        }
        inStr = false
        continue
      }
      current += ch
      continue
    }
    
    // Skip leading E prefix before quotes
    if (ch === 'E' && i + 1 < str.length && (str[i + 1] === "'")) continue
    
    if ((ch === "n" && str[i-1] === '\\')) continue  // already handled by isEscape
    
    if (ch === "'" || ch === '"') { inStr = true; strChar = ch; continue }
    
    if (ch === ',') {
      values.push(convertValue(current.trim()))
      current = ''
      continue
    }
    
    current += ch
  }
  
  if (current.trim() || values.length < expectedCols) {
    values.push(convertValue(current.trim()))
  }
  
  return values
}

function convertValue(val: string): any {
  if (val === '' || val === 'NULL' || val === null) return null
  if (val === 'true') return true
  if (val === 'false') return false
  // Try number
  const num = Number(val)
  if (!isNaN(num) && val.trim() !== '') return num
  // It's a string - clean up
  return val
}

async function seed() {
  const files = [
    'supabase/migrations/00023_listening_bank_lesson.sql',
    'supabase/migrations/00024_course_german_integration.sql',
  ]
  
  for (const file of files) {
    console.log(`\n=== Seeding ${file} ===`)
    const inserts = parseSql(file)
    
    for (const insert of inserts) {
      console.log(`  Inserting ${insert.values.length} rows into ${insert.table}...`)
      
      // Insert in batches to avoid large payloads
      const batchSize = 5
      for (let i = 0; i < insert.values.length; i += batchSize) {
        const batch = insert.values.slice(i, i + batchSize)
        const rows = batch.map(vals => {
          const row: Record<string, any> = {}
          insert.columns.forEach((col, idx) => { row[col] = vals[idx] })
          return row
        })
        
        const { error } = await supabase.from(insert.table).insert(rows).select()
        if (error) {
          // Try without select
          const { error: e2 } = await supabase.from(insert.table).insert(rows)
          if (e2) {
            console.error(`  ✗ ${insert.table}: ${e2.message.slice(0, 200)}`)
          } else {
            console.log(`  ✓ ${insert.table}: batch ${Math.floor(i/batchSize) + 1}`)
          }
        } else {
          console.log(`  ✓ ${insert.table}: batch ${Math.floor(i/batchSize) + 1}`)
        }
      }
    }
  }
  
  console.log('\n=== Done ===')
}

seed().catch(console.error)
