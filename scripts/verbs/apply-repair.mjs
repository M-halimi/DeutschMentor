/**
 * Apply verb repair SQL to Supabase — fast version.
 * Sends SQL in large batches (50 verbs per call).
 *
 * Usage: node scripts/verbs/apply-repair.mjs
 */
import { readFileSync } from 'fs'
import { resolve, dirname } from 'path'
import { fileURLToPath } from 'url'
const __dirname = dirname(fileURLToPath(import.meta.url))

const MGMT_TOKEN = process.env.SUPABASE_MGMT_TOKEN
const PROJECT_REF = process.env.SUPABASE_PROJECT_REF || 'solksyxdlmjtthhuhacj'

async function main() {
  if (!MGMT_TOKEN) {
    console.error('Error: SUPABASE_MGMT_TOKEN not set.')
    process.exit(1)
  }

  const sqlPath = resolve(__dirname, '../../supabase/migrations/00044_engine_repair.sql')
  const sql = readFileSync(sqlPath, 'utf-8')

  // Split by verb blocks (each starts with -- verbname)
  const blocks = sql.split(/\n(?=-- )/).filter(b => b.trim())

  console.log(`Total verb blocks: ${blocks.length}`)

  // Batch size: send 50 verbs per API call
  const BATCH = 25
  let success = 0
  let errors = 0

  for (let i = 0; i < blocks.length; i += BATCH) {
    const batch = blocks.slice(i, i + BATCH).join('\n\n')
    const start = i + 1
    const end = Math.min(i + BATCH, blocks.length)
    process.stdout.write(`[${start}-${end}/${blocks.length}] ... `)

    try {
      const res = await fetch(`https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${MGMT_TOKEN}`,
        },
        body: JSON.stringify({ query: batch }),
      })

      if (res.ok) {
        process.stdout.write('✓\n')
        success += end - start + 1
      } else {
        const text = await res.text()
        process.stdout.write(`✗ ${text.slice(0, 150)}\n`)
        errors += end - start + 1
      }
    } catch (e) {
      process.stdout.write(`✗ ${e.message}\n`)
      errors += end - start + 1
    }

    // Rate limit delay
    await new Promise(r => setTimeout(r, 500))
  }

  console.log(`\nDone. ${success} verb blocks succeeded, ${errors} failed.`)
}

main().catch(console.error)
