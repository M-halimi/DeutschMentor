import { readFileSync } from 'fs'
import pg from 'pg'

const envRaw = readFileSync('.env.local', 'utf8')
const env: Record<string, string> = {}
for (const line of envRaw.split('\n')) {
  const t = line.trim(); if (!t || t.startsWith('#')) continue
  const eq = t.indexOf('='); if (eq > 0) env[t.slice(0, eq).trim()] = t.slice(eq + 1).trim()
}

const supabaseUrl = env.NEXT_PUBLIC_SUPABASE_URL!
const serviceKey = env.SUPABASE_SERVICE_ROLE_KEY!
const ref = new URL(supabaseUrl).hostname.split('.')[0]

// Try direct connection with service key as password
const connectionStrings = [
  `postgresql://postgres:${serviceKey}@db.${ref}.supabase.co:5432/postgres`,
  `postgresql://postgres:${serviceKey}@${ref}.supabase.co:5432/postgres`,
  `postgresql://postgres.${ref}:${serviceKey}@aws-0-eu-central-1.pooler.supabase.com:6543/postgres?pgbouncer=true`,
  `postgresql://postgres.${ref}:${serviceKey}@aws-0-eu-west-1.pooler.supabase.com:6543/postgres?pgbouncer=true`,
  `postgresql://postgres.${ref}:${serviceKey}@aws-0-eu-west-2.pooler.supabase.com:6543/postgres?pgbouncer=true`,
  `postgresql://postgres.${ref}:${serviceKey}@aws-0-us-east-1.pooler.supabase.com:6543/postgres?pgbouncer=true`,
]

const files = [
  'supabase/migrations/00023_listening_bank_lesson.sql',
  'supabase/migrations/00024_course_german_integration.sql',
]

async function tryConnect(): Promise<pg.Pool | null> {
  for (const connStr of connectionStrings) {
    try {
      console.log(`Trying connection...`)
      const pool = new pg.Pool({ connectionString: connStr, connectionTimeoutMillis: 5000 })
      const client = await pool.connect()
      const res = await client.query('SELECT 1 AS ok')
      client.release()
      console.log(`Connected!`)
      return pool
    } catch (err: any) {
      console.log(`  Failed: ${err.message.slice(0, 100)}`)
    }
  }
  return null
}

async function run() {
  const pool = await tryConnect()
  if (!pool) {
    console.error('\nCould not connect to database. Please run migrations manually in Supabase SQL Editor.')
    console.log('\nTo run manually:')
    console.log('1. Go to https://supabase.com/dashboard/project/' + ref + '/sql/new')
    console.log('2. Copy-paste each migration file and run them.')
    process.exit(1)
  }

  for (const file of files) {
    console.log(`\nRunning ${file}...`)
    const sql = readFileSync(file, 'utf8')
    try {
      await pool.query(sql)
      console.log(`  ✓ Done`)
    } catch (err: any) {
      console.error(`  ✗ ${err.message.slice(0, 400)}`)
    }
  }

  await pool.end()
  console.log('\n=== All migrations complete ===')
}

run().catch(console.error)
