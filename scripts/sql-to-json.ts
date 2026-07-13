// Reads SQL migration files, converts INSERTs to JSON files, then inserts via supabase-js
import { readFileSync, writeFileSync, existsSync, mkdirSync } from 'fs'

const sql = readFileSync('supabase/migrations/00024_course_german_integration.sql', 'utf8')

// Parse all INSERT statements into structured JSON
function parseInserts(sql: string) {
  const result: Record<string, any[]> = {}
  
  // Use regex to find insert into ... values sections
  const insertRegex = /INSERT\s+INTO\s+(?:public\.)?(\w+)\s*\(([^)]+)\)\s*VALUES\s*([\s\S]*?)(?=;\s*(?:INSERT|$))/gi
  let match
  
  while ((match = insertRegex.exec(sql)) !== null) {
    const table = match[1]
    const colsStr = match[2]
    const valuesStr = match[3]
    
    const columns = colsStr.split(',').map(c => c.trim().replace(/"/g, ''))
    const rows = parsePostgresValues(valuesStr, columns.length)
    
    if (!result[table]) result[table] = []
    
    const typedRows = rows.map(vals => {
      const row: Record<string, any> = {}
      columns.forEach((col, i) => {
        row[col] = convertPgValue(vals[i])
      })
      return row
    })
    
    result[table].push(...typedRows)
  }
  
  return result
}

function parsePostgresValues(valuesStr: string, colCount: number): string[][] {
  const rows: string[][] = []
  const chars = [...valuesStr]
  let i = 0
  let rowVals: string[] = []
  let current = ''
  let inStr = false
  let strChar = ''
  let parenDepth = 0
  
  function flush() {
    rowVals.push(current)
    current = ''
  }
  
  while (i < chars.length) {
    const ch = chars[i]
    
    // Skip whitespace
    if (!inStr && /\s/.test(ch) && parenDepth === 0 && current === '' && rowVals.length === 0) {
      i++; continue
    }
    
    if (!inStr && ch === '(' && parenDepth === 0) {
      parenDepth = 1
      current = ''
      i++; continue
    }
    
    if (!inStr && ch === ')' && parenDepth === 1) {
      flush()
      rows.push([...rowVals])
      rowVals = []
      parenDepth = 0
      i++; continue
    }
    
    if (!inStr && ch === ',' && parenDepth === 1) {
      flush()
      i++; continue
    }
    
    if (!inStr && (ch === "'" || ch === '"')) {
      inStr = true
      strChar = ch
      current += ch
      i++; continue
    }
    
    if (inStr && ch === '\\') {
      current += ch
      i++
      if (i < chars.length) { current += chars[i]; i++ }
      continue
    }
    
    if (inStr && ch === strChar) {
      if (i + 1 < chars.length && chars[i + 1] === strChar) {
        current += ch + chars[i + 1]
        i += 2; continue
      }
      inStr = false
      current += ch
      i++; continue
    }
    
    if (inStr) {
      current += ch
      i++; continue
    }
    
    // Handle E prefix
    if (ch === 'E' && i + 1 < chars.length && chars[i + 1] === "'") {
      current += ch
      i++; continue
    }
    
    if (parenDepth >= 1) {
      current += ch
    }
    
    i++
  }
  
  return rows
}

function convertPgValue(val: string): any {
  const trimmed = val.trim()
  if (!trimmed || trimmed === 'NULL' || trimmed === 'null') return null
  if (trimmed === 'true') return true
  if (trimmed === 'false') return false
  
  // Number
  const num = Number(trimmed)
  if (!isNaN(num) && trimmed !== '' && !isNaN(parseFloat(trimmed))) return num
  
  // String - strip E prefix and quotes
  let s = trimmed
  if (s.startsWith("E'") && s.endsWith("'")) s = s.slice(2, -1)
  else if (s.startsWith("'") && s.endsWith("'")) s = s.slice(1, -1)
  else if (s.startsWith('E"') && s.endsWith('"')) s = s.slice(2, -1)
  else if (s.startsWith('"') && s.endsWith('"')) s = s.slice(1, -1)
  
  // Handle escape sequences
  s = s.replace(/\\(.)/g, '$1') // Unescape
  s = s.replace(/''/g, "'") // SQL double-single-quote
  
  // Try parsing as JSON if it looks like one
  if ((s.startsWith('{') && s.endsWith('}')) || (s.startsWith('[') && s.endsWith(']'))) {
    try { return JSON.parse(s) } catch {}
  }
  
  return s
}

const data = parseInserts(sql)

// Write JSON files per table
if (!existsSync('seed-data')) mkdirSync('seed-data')
for (const [table, rows] of Object.entries(data)) {
  writeFileSync(`seed-data/${table}.json`, JSON.stringify(rows, null, 2))
  console.log(`${table}: ${rows.length} rows`)
}
