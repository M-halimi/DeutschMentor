import { readFileSync } from 'fs'

// Load .env.local manually
const envRaw = readFileSync('.env.local', 'utf8')
const env: Record<string, string> = {}
for (const line of envRaw.split('\n')) {
  const trimmed = line.trim()
  if (!trimmed || trimmed.startsWith('#')) continue
  const eq = trimmed.indexOf('=')
  if (eq > 0) env[trimmed.slice(0, eq).trim()] = trimmed.slice(eq + 1).trim()
}

const supabaseUrl = env.NEXT_PUBLIC_SUPABASE_URL
const serviceKey = env.SUPABASE_SERVICE_ROLE_KEY

if (!supabaseUrl || !serviceKey) {
  console.error('Missing Supabase credentials in .env.local')
  process.exit(1)
}

async function run() {
  const files = [
    'supabase/migrations/00023_listening_bank_lesson.sql',
    'supabase/migrations/00024_course_german_integration.sql',
  ]

  for (const file of files) {
    console.log(`\n=== Running ${file} ===`)
    const sql = readFileSync(file, 'utf8')

    const resp = await fetch(`${supabaseUrl}/rest/v1/query`, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'apikey': serviceKey,
        'Authorization': `Bearer ${serviceKey}`,
      },
      body: JSON.stringify({ query: sql }),
    })

    if (!resp.ok) {
      const text = await resp.text()
      console.error(`ERROR ${resp.status}: ${text.slice(0, 500)}`)
    } else {
      console.log('✓ Migration successful!')
    }
  }
}

run().catch(console.error)
