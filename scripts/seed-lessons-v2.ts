import { readFileSync } from 'fs'
import pg from 'pg'

const envRaw = readFileSync('.env.local', 'utf8')
const env: Record<string, string> = {}
for (const line of envRaw.split('\n')) {
  const t = line.trim(); if (!t || t.startsWith('#')) continue
  const eq = t.indexOf('='); if (eq > 0) env[t.slice(0, eq).trim()] = t.slice(eq + 1).trim()
}

// Extract project ref from URL
const supabaseUrl = env.NEXT_PUBLIC_SUPABASE_URL!
const serviceKey = env.SUPABASE_SERVICE_ROLE_KEY!
const ref = new URL(supabaseUrl).hostname.split('.')[0]

// Try with service_role_key as password (works on Supabase pooler)
const connStr = `postgresql://postgres.${ref}:${serviceKey}@aws-0-eu-central-1.pooler.supabase.com:6543/postgres`

async function run() {
  const pool = new pg.Pool({ connectionString: connStr })
  
  const files = [
    'supabase/migrations/00023_listening_bank_lesson.sql',
    'supabase/migrations/00024_course_german_integration.sql',
  ]

  for (const file of files) {
    console.log(`Running ${file}...`)
    const sql = readFileSync(file, 'utf8')
    try {
      await pool.query(sql)
      console.log(`  ✓ ${file}`)
    } catch (err: any) {
      console.error(`  ✗ ${err.message.slice(0, 300)}`)
    }
  }

  await pool.end()
  console.log('\nDone')
}

run().catch(console.error)
