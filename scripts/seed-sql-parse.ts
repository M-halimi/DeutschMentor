import { readFileSync } from 'fs'
import { createClient } from '@supabase/supabase-js'
import 'dotenv/config'

const sql = readFileSync('supabase/migrations/00024_course_german_integration.sql', 'utf8')

// Find INSERT positions in raw SQL
const insertPtrn = (table: string) => {
  const i = sql.indexOf(`insert into public.${table}`)
  const cStart = sql.indexOf('(', i)
  const cEnd = findMatchingParen(sql, cStart)
  const cols = sql.slice(cStart + 1, cEnd).split(',').map(c => c.trim())
  const vKw = sql.indexOf('values', cEnd)
  return { cols, valuesStart: vKw + 6 }
}

function findMatchingParen(s: string, start: number): number {
  let d = 0
  for (let i = start; i < s.length; i++) {
    if (s[i] === '(') d++
    else if (s[i] === ')') { d--; if (d === 0) return i }
  }
  return -1
}

const { cols, valuesStart } = insertPtrn('listening_exercises')

// Parse VALUES from raw SQL - scan char by char with string awareness
function parseValues(rawSql: string, startPos: number) {
  const rows: string[][] = []
  let row: string[] = []
  let cur = ''
  let depth = 0
  let inStr = false
  let i = startPos
  
  while (i < rawSql.length) {
    const ch = rawSql[i]
    
    // Handle E-strings
    if (!inStr && ch === 'E' && rawSql[i + 1] === "'") {
      cur += "'"
      i += 2
      inStr = true
      continue
    }
    
    if (ch === "'") {
      if (!inStr) {
        inStr = true
        cur += ch
        i++
        continue
      }
      // Look ahead for '' (escaped quote)
      if (rawSql[i + 1] === "'") {
        cur += "''"
        i += 2
        continue
      }
      // End of string
      cur += ch
      inStr = false
      i++
      continue
    }
    
    if (inStr) {
      cur += ch
      i++
      continue
    }
    
    // Not in a string
    if (ch === '(' && depth === 0) {
      depth = 1
      cur = ''
      row = []
      i++
      continue
    }
    if (ch === '(' && depth > 0) {
      depth++
      cur += ch
      i++
      continue
    }
    if (ch === ')' && depth === 1) {
      row.push(cur.trim())
      rows.push([...row])
      row = []
      depth = 0
      i++
      continue
    }
    if (ch === ')' && depth > 1) {
      depth--
      cur += ch
      i++
      continue
    }
    if (ch === ',' && depth === 1) {
      row.push(cur.trim())
      cur = ''
      i++
      continue
    }
    if (ch === ';' && depth === 0) {
      break  // End of INSERT
    }
    
    if (depth >= 1) cur += ch
    i++
  }
  
  return rows
}

const rows = parseValues(sql, valuesStart)
console.log(`Parsed ${rows.length} rows from raw SQL`)

// Validate all rows have 10 columns
let bad = 0
for (let ri = 0; ri < rows.length; ri++) {
  if (rows[ri].length !== cols.length) {
    bad++
    if (bad <= 3) {
      console.log(`Row ${ri + 1}: ${rows[ri].length} cols (expected ${cols.length})`)
      console.log(`  Values: ${rows[ri].map(v => v.slice(0, 30)).join(' | ')}`)
    }
  }
}
if (bad === 0) console.log('All rows have correct column count!')

// Also check 00023
const sql23 = readFileSync('supabase/migrations/00023_listening_bank_lesson.sql', 'utf8')
const { cols: cols23, valuesStart: vs23 } = (() => {
  const i23 = sql23.indexOf(`insert into public.listening_exercises`)
  if (i23 < 0) return { cols: [], valuesStart: -1 }
  const cS = sql23.indexOf('(', i23)
  const cE = findMatchingParen(sql23, cS)
  const vK = sql23.indexOf('values', cE)
  return { cols: sql23.slice(cS + 1, cE).split(',').map(c => c.trim()), valuesStart: vK + 6 }
})()
if (valuesStart >= 0) {
  const rows23 = parseValues(sql23, vs23)
  console.log(`\nBank lesson: ${rows23.length} rows`)
  let b23 = 0
  for (let ri = 0; ri < rows23.length; ri++) {
    if (rows23[ri].length !== cols23.length) b23++
  }
  console.log(b23 === 0 ? 'All rows correct!' : `${b23} bad rows`)
}
