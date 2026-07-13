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

const supabase = createClient(supabaseUrl, serviceKey, {
  auth: { autoRefreshToken: false, persistSession: false },
})

interface InsertOp {
  table: string
  columns: string[]
  rows: Record<string, any>[]
}

function isUUID(v: string): boolean {
  return /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(v)
}

// Parse SQL values like: 'value', 123, true, NULL, E'special\nvalue'
function parseSqlValue(raw: string): any {
  const trimmed = raw.trim()
  if (trimmed === '' || trimmed === 'NULL' || trimmed === 'null') return null
  if (trimmed === 'true') return true
  if (trimmed === 'false') return false
  if (trimmed === 'true' || trimmed === 'false') return trimmed === 'true'
  
  // Check for number
  const num = Number(trimmed)
  if (!isNaN(num) && trimmed !== '') return num
  
  // Remove E prefix if present
  let val = trimmed
  if (val.startsWith('E') && (val.startsWith("E'") || val.startsWith('E"'))) {
    val = val.slice(1)
  }
  
  // Remove surrounding quotes
  if ((val.startsWith("'") && val.endsWith("'")) || (val.startsWith('"') && val.endsWith('"'))) {
    val = val.slice(1, -1)
    // Unescape doubled quotes
    val = val.replace(/([^\\])''/g, "$1'").replace(/^''/, "'").replace(/''$/, "'")
  }
  
  return val
}

// Parse a single SQL file into insert operations
function parseInserts(sql: string): InsertOp[] {
  const ops: InsertOp[] = []
  
  // Remove comments
  const clean = sql.replace(/--[^\n]*\n/g, '\n')
  
  // Split on top-level semicolons
  const stmts = splitStatements(clean)
  
  for (const stmt of stmts) {
    const upper = stmt.trim().toUpperCase()
    if (!upper.startsWith('INSERT INTO')) continue
    
    // Extract table - handle "public." prefix
    const tableMatch = stmt.match(/INSERT\s+INTO\s+(?:public\.)?(\w+)/i)
    if (!tableMatch) continue
    const table = tableMatch[1]
    
    // Extract columns
    const colsMatch = stmt.match(/\(([^)]+)\)\s*VALUES/i)
    if (!colsMatch) continue
    const columns = colsMatch[1].split(',').map(c => c.trim().replace(/"/g, ''))
    
    // Extract all value rows
    const valuesPart = stmt.substring(stmt.toUpperCase().indexOf('VALUES') + 6)
    const rows = parseValueRows(valuesPart, columns.length)
    
    ops.push({ table, columns, rows })
  }
  
  return ops
}

function splitStatements(sql: string): string[] {
  const stmts: string[] = []
  let current = ''
  let inStr = false
  let strChar = ''
  let isEscape = false
  let parenDepth = 0
  
  for (let i = 0; i < sql.length; i++) {
    const ch = sql[i]
    
    if (isEscape) { current += ch; isEscape = false; continue }
    
    if (inStr) {
      if (ch === '\\') { isEscape = true; current += ch; continue }
      if (ch === strChar) {
        if (i + 1 < sql.length && sql[i + 1] === strChar) {
          current += ch; i++; continue // doubled quote
        }
        inStr = false
      }
      current += ch
      continue
    }
    
    // Skip E before quote
    if (ch === 'E' && i + 1 < sql.length && sql[i + 1] === "'") {
      current += ch; continue
    }
    
    if (ch === "'") { inStr = true; strChar = "'"; current += ch; continue }
    if (ch === '"') { inStr = true; strChar = '"'; current += ch; continue }
    
    if (ch === '(') { parenDepth++; current += ch; continue }
    if (ch === ')') { parenDepth--; current += ch; continue }
    
    if (ch === ';' && parenDepth === 0 && !inStr) {
      stmts.push(current.trim())
      current = ''
      continue
    }
    
    current += ch
  }
  
  if (current.trim()) stmts.push(current.trim())
  return stmts
}

function parseValueRows(valuesPart: string, colCount: number): Record<string, any>[] {
  const rows: Record<string, any>[] = []
  let current = ''
  let inStr = false
  let strChar = ''
  let isEscape = false
  let parenDepth = 0
  let rowValues: string[] = []
  
  for (let i = 0; i < valuesPart.length; i++) {
    const ch = valuesPart[i]
    
    if (isEscape) { current += '\\' + ch; isEscape = false; continue }
    
    if (inStr) {
      if (ch === '\\' && strChar === "'") { isEscape = true; current += ch; continue }
      if (ch === strChar) {
        if (i + 1 < valuesPart.length && valuesPart[i + 1] === strChar) {
          current += ch; i++; continue
        }
        inStr = false
      }
      current += ch
      continue
    }
    
    if (ch === 'E' && i + 1 < valuesPart.length && valuesPart[i + 1] === "'") {
      current += ch; continue
    }
    
    if (ch === "'") { inStr = true; strChar = "'"; current += ch; continue }
    
    if (ch === '(' && parenDepth === 0) {
      parenDepth = 1
      current = ''
      continue
    }
    
    if (ch === ')' && parenDepth === 1) {
      rowValues.push(current.trim())
      if (rowValues.length > 0) {
        const row: Record<string, any> = {}
        rowValues.forEach((v, idx) => {
          if (idx < colCount) {
            const key = `col${idx}`
            row[key] = parseSqlValue(v)
          }
        })
        rows.push(row)
      }
      rowValues = []
      parenDepth = 0
      continue
    }
    
    if (ch === ',' && parenDepth === 1) {
      rowValues.push(current.trim())
      current = ''
      continue
    }
    
    if (parenDepth >= 1) current += ch
  }
  
  return rows
}

async function seed() {
  const files = [
    'supabase/migrations/00023_listening_bank_lesson.sql',
    'supabase/migrations/00024_course_german_integration.sql',
  ]

  for (const file of files) {
    console.log(`\n=== ${file} ===`)
    const sql = readFileSync(file, 'utf8')
    const ops = parseInserts(sql)
    
    for (const op of ops) {
      console.log(`\n  ${op.table}: ${op.rows.length} rows, ${op.columns.length} cols`)
      
      // Re-map column names
      const data = op.rows.map(r => {
        const row: Record<string, any> = {}
        op.columns.forEach((col, idx) => {
          row[col] = r[`col${idx}`]
        })
        return row
      })
      
      // Insert in batches of 3
      for (let i = 0; i < data.length; i += 3) {
        const batch = data.slice(i, i + 3)
        let retries = 3
        while (retries > 0) {
          const { error } = await supabase.from(op.table).insert(batch as any)
          if (error) {
            // If duplicate key, skip
            if (error.message?.includes('duplicate key')) {
              console.log(`  ~ ${op.table}: batch ${Math.floor(i/3)+1} skipped (already exists)`)
              retries = 0
            } else {
              retries--
              if (retries === 0) {
                console.error(`  ✗ ${op.table}: batch ${Math.floor(i/3)+1} - ${error.message.slice(0, 150)}`)
              } else {
                await new Promise(r => setTimeout(r, 1000))
              }
            }
          } else {
            retries = 0
          }
        }
        if (retries === 0 && data.slice(i, i + 3).length > 0) {
          // Don't print for skipped items
        }
      }
      console.log(`  ✓ ${op.table}: done`)
    }
  }
  
  console.log('\n=== Complete ===')
  console.log('Run \'psql\' migration files in Supabase SQL Editor if any DDL is needed.')
}

seed().catch(console.error)
