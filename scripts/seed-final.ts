import { readFileSync, writeFileSync } from 'fs'
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

/**
 * Parse SQL INSERT statements by replacing string contents with placeholders
 * to avoid issues with commas and parentheses inside strings.
 */
function tokenizeWithStrings(sql: string) {
  const tokens: string[] = []
  let processed = ''
  let i = 0
  while (i < sql.length) {
    // Handle E'...' strings first
    if (sql[i] === 'E' && i + 1 < sql.length && sql[i + 1] === "'") {
      let j = i + 2
      while (j < sql.length) {
        if (sql[j] === '\\') { j += 2; continue }
        if (sql[j] === "'" && (j + 1 >= sql.length || sql[j + 1] !== "'")) break
        if (sql[j] === "'") j += 2  // doubled single quote
        else j++
      }
      const content = sql.slice(i, Math.min(j + 1, sql.length))
      const token = `__STR${tokens.length}__`
      tokens.push(content)
      processed += token
      i = j + 1
      continue
    }
    // Handle regular '...' strings
    if (sql[i] === "'") {
      let j = i + 1
      while (j < sql.length) {
        if (sql[j] === "'" && (j + 1 >= sql.length || sql[j + 1] !== "'")) break
        if (sql[j] === "'") j += 2
        else j++
      }
      const content = sql.slice(i, Math.min(j + 1, sql.length))
      const token = `__STR${tokens.length}__`
      tokens.push(content)
      processed += token
      i = j + 1
      continue
    }
    processed += sql[i]
    i++
  }
  return { processed, tokens, original: sql }
}

function extractInserts(sql: string) {
  const { processed, tokens } = tokenizeWithStrings(sql)
  const results: { table: string; columns: string[]; rows: string[][] }[] = []
  
  // Remove single-line comments
  const clean = processed.replace(/--[^\n]*\n/g, '\n')
  
  // Find INSERT statements using regex on tokenized version
  const insertRegex = /insert\s+into\s+(?:public\.)?(\w+)\s*\(([^)]+)\)\s*values\s*([\s\S]*?);/gi
  let match
  
  while ((match = insertRegex.exec(clean)) !== null) {
    const table = match[1]
    const columns = match[2].split(',').map(c => c.trim().replace(/"/g, ''))
    const valuesBlock = match[3].trim()
    
    // Parse rows from valuesBlock
    const rows: string[][] = []
    const rowStrs: string[] = []
    let depth = 0
    let currentRow = ''
    
    for (const ch of valuesBlock) {
      if (ch === '(' && depth === 0) { depth = 1; currentRow = ''; continue }
      if (ch === '(' && depth > 0) { depth++; currentRow += ch; continue }
      if (ch === ')' && depth === 1) {
        rowStrs.push(currentRow)
        currentRow = ''
        depth = 0
        continue
      }
      if (ch === ')' && depth > 1) { depth--; currentRow += ch; continue }
      if (depth >= 1) currentRow += ch
    }
    
    for (const rowStr of rowStrs) {
      if (!rowStr.trim()) continue
      // Split by comma at top level (not inside parens)
      const vals: string[] = []
      let val = ''
      let d = 0
      for (const ch of rowStr) {
        if (ch === ',' && d === 0) { vals.push(val.trim()); val = ''; continue }
        if (ch === '(') d++
        if (ch === ')') d--
        val += ch
      }
      if (val.trim()) vals.push(val.trim())
      
      // Restore original tokens
      const restored = vals.map(v => {
        let r = v
        for (let ti = 0; ti < tokens.length; ti++) {
          r = r.replace(`__STR${ti}__`, () => tokens[ti])
        }
        return r
      })
      
      rows.push(restored)
    }
    
    results.push({ table, columns, rows })
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
  
  // String: strip E prefix and outer quotes
  let s = val
  if (s.startsWith("E'") && s.endsWith("'")) s = s.slice(2, -1)
  else if (s.startsWith("'") && s.endsWith("'")) s = s.slice(1, -1)
  
  // Unescape: \n, \t, doubled quotes, etc.
  s = s.replace(/\\(.)/g, (_, c) => c === 'n' ? '\n' : c === 't' ? '\t' : c)
  s = s.replace(/''/g, "'")
  
  // Try JSON parse if array or object
  const trimmed = s.trim()
  if ((trimmed.startsWith('[') && trimmed.endsWith(']')) || 
      (trimmed.startsWith('{') && trimmed.endsWith('}'))) {
    try { return JSON.parse(trimmed) } catch {}
  }
  
  return s
}

async function main() {
  const files = [
    'supabase/migrations/00023_listening_bank_lesson.sql',
    'supabase/migrations/00024_course_german_integration.sql',
  ]
  
  let total = 0
  
  for (const file of files) {
    console.log(`\n=== ${file.split('/').pop()} ===`)
    const sql = readFileSync(file, 'utf8')
    const inserts = extractInserts(sql)
    
    for (const ins of inserts) {
      // Convert rows to proper JSON
      const data = ins.rows.map(row => {
        const obj: Record<string, any> = {}
        ins.columns.forEach((col, i) => {
          if (i < row.length) obj[col] = sqlValueToJs(row[i])
          else obj[col] = null
        })
        return obj
      })
      
      // Debug: check first row
      if (data.length > 0) {
        const sample = data[0]
        console.log(`  ${ins.table}: ${data.length} rows`)
      }
      
      // Insert via supabase REST API
      for (let i = 0; i < data.length; i += 5) {
        const batch = data.slice(i, i + 5)
        
        // Use raw fetch to PostgREST
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
          console.error(`  ✗ batch ${Math.floor(i/5)+1}: ${err.slice(0, 200)}`)
          // Try one by one
          for (const row of batch) {
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
              console.error(`    ✗ ${e2.slice(0, 150)}`)
            }
          }
        }
      }
      total += data.length
    }
  }
  
  console.log(`\n=== Complete: ${total} rows inserted ===`)
}

main().catch(console.error)
