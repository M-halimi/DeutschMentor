/**
 * Apply old consistent seed files to restore curriculum data
 * These match the production DB schema
 */
import { createClient } from '@supabase/supabase-js'
import { readFileSync } from 'fs'
import { resolve, dirname } from 'path'
import { fileURLToPath } from 'url'

const __dirname = dirname(fileURLToPath(import.meta.url))

const supabaseUrl = 'https://solksyxdlmjtthhuhacj.supabase.co'
const serviceRoleKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E'

const supabase = createClient(supabaseUrl, serviceRoleKey)

const seedDir = resolve(__dirname, '../supabase/seeds')

const seedFiles = [
  'seed_a1.sql',
  'seed_a1_supplement.sql',
  'seed_a1_supplement2.sql',
  'seed_a1_premium.sql',
  'seed_a2.sql',
  'seed_a2_premium.sql',
  'seed_b1.sql',
  'seed_b1_premium.sql',
  'seed_b2.sql',
  'seed_b2_premium.sql',
  'seed_c1.sql',
  'seed_c1_premium.sql',
  'seed_c2.sql',
  'seed_c2_premium.sql',
]

async function runSeedFile(filePath) {
  console.log(`\n=== Processing: ${filePath} ===`)
  const content = readFileSync(filePath, 'utf-8')

  const { error } = await supabase.rpc('exec_sql', { sql: content })
  
  if (error) {
    // Check if it's a duplicate key error (already exists) — those are OK
    const msg = error.message || ''
    if (msg.includes('duplicate key') || msg.includes('already exists')) {
      console.log(`  SKIPPED (duplicate): ${msg.substring(0, 150)}`)
      return true
    }
    console.error(`  FAILED: ${msg.substring(0, 300)}`)
    return false
  }
  
  console.log('  OK')
  return true
}

async function main() {
  let ok = 0
  let fail = 0

  for (const file of seedFiles) {
    const filePath = resolve(seedDir, file)
    try {
      const result = await runSeedFile(filePath)
      if (result) ok++
      else fail++
    } catch (err) {
      console.error(`Fatal: ${err.message}`)
      fail++
    }
    await new Promise(r => setTimeout(r, 500))
  }

  console.log(`\n=== Complete: ${ok} OK, ${fail} failed ===`)
}

main().catch(console.error)
