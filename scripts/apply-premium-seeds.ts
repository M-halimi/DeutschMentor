import { createAdminClient } from '../src/lib/supabase/admin'
import * as fs from 'fs'
import * as path from 'path'

const FILES = [
  'seed_a1_premium.sql',
  'seed_a2_premium.sql',
  'seed_b1_premium.sql',
  'seed_b2_premium.sql',
  'seed_c1_premium.sql',
  'seed_c2_premium.sql',
]

async function run() {
  const supabase = createAdminClient()

  for (const file of FILES) {
    const filePath = path.join('supabase', 'seeds', file)
    const sql = fs.readFileSync(filePath, 'utf8')

    const statements = sql
      .split(/(?=^INSERT INTO)/m)
      .map(s => s.trim())
      .filter(s => s.length > 0)

    console.log(`\n=== Applying ${file} (${statements.length} statements) ===`)

    for (let i = 0; i < statements.length; i++) {
      if (i % 50 === 0) {
        process.stdout.write(`  [${i + 1}/${statements.length}]...`)
      }

      const { error } = await supabase.rpc('exec_sql', { sql: statements[i] })
      if (error) {
        console.error(`\n  Error at statement ${i + 1}: ${error.message}`)
        console.error(`  SQL: ${statements[i].substring(0, 200)}`)
      }
    }
    console.log(`\n  Done: ${file}`)
  }
}

run().catch(console.error)
