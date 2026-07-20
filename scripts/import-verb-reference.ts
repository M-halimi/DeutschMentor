import { config } from 'dotenv'
import { readFileSync } from 'fs'
import { resolve } from 'path'

config({ path: '.env.local' })

const MGMT_TOKEN = process.env.SUPABASE_ACCESS_TOKEN
const PROJECT_REF = process.env.SUPABASE_PROJECT_REF || 'solksyxdlmjtthhuhacj'
const filePath = process.argv[2] || 'data/verb-reference.json'

if (!MGMT_TOKEN) {
  console.error('Missing SUPABASE_ACCESS_TOKEN in .env.local')
  process.exit(1)
}

interface VerbReference {
  infinitive: string
  source_name: string
  source_reference: string
  auxiliary: string
  verb_type: string
  separable_prefix: string | null
  is_reflexive: boolean
  reflexive_pronoun: string | null
  partizip_2: string
  cefr_level: string
  confidence: number
  notes: string | null
}

function esc(val: unknown): string {
  if (val === null || val === undefined) return 'NULL'
  if (typeof val === 'boolean') return val ? 'true' : 'false'
  if (typeof val === 'number') return String(val)
  return `'${String(val).replace(/'/g, "''")}'`
}

const INSERT_COLUMNS = [
  'infinitive', 'source_name', 'source_reference', 'auxiliary', 'verb_type',
  'separable_prefix', 'is_reflexive', 'reflexive_pronoun', 'partizip_2',
  'cefr_level', 'confidence', 'notes',
]

function buildInsertSQL(verbs: VerbReference[]): string {
  const values = verbs.map(v => {
    const row = [
      v.infinitive, v.source_name, v.source_reference, v.auxiliary, v.verb_type,
      v.separable_prefix, v.is_reflexive, v.reflexive_pronoun, v.partizip_2,
      v.cefr_level, v.confidence, v.notes,
    ]
    return `(${row.map(esc).join(', ')})`
  }).join(',\n')

  const setClause = INSERT_COLUMNS
    .filter(c => c !== 'infinitive')
    .map(c => `${c} = EXCLUDED.${c}`)
    .join(', ')

  return `INSERT INTO public.verb_reference_data (${INSERT_COLUMNS.join(', ')})\nVALUES\n${values}\nON CONFLICT (infinitive) DO UPDATE SET ${setClause}, updated_at = now();`
}

async function runSQL(sql: string): Promise<unknown> {
  const res = await fetch(
    `https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`,
    {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': `Bearer ${MGMT_TOKEN}`,
      },
      body: JSON.stringify({ query: sql }),
    },
  )
  const text = await res.text()
  if (!res.ok) throw new Error(`SQL error (${res.status}): ${text.slice(0, 300)}`)
  try { return JSON.parse(text) } catch { return text }
}

async function main() {
  const absolutePath = resolve(filePath)
  console.log(`Reading verb reference data from: ${absolutePath}`)

  let raw: string
  try {
    raw = readFileSync(absolutePath, 'utf-8')
  } catch {
    console.error(`Failed to read file: ${absolutePath}`)
    process.exit(1)
  }

  let allVerbs: VerbReference[]
  try {
    allVerbs = JSON.parse(raw)
  } catch {
    console.error('Invalid JSON in input file')
    process.exit(1)
  }

  console.log(`Loaded ${allVerbs.length} verb entries`)

  const BATCH_SIZE = 50
  let imported = 0
  let skipped = 0
  let errors = 0
  const seen = new Set<string>()

  for (let i = 0; i < allVerbs.length; i += BATCH_SIZE) {
    const batch = allVerbs.slice(i, i + BATCH_SIZE)

    const unique: VerbReference[] = []
    for (const v of batch) {
      if (seen.has(v.infinitive)) {
        skipped++
      } else {
        seen.add(v.infinitive)
        unique.push(v)
      }
    }

    if (unique.length === 0) {
      console.log(`  Progress: ${Math.min(i + BATCH_SIZE, allVerbs.length)}/${allVerbs.length} verbs...`)
      continue
    }

    const sql = buildInsertSQL(unique)

    try {
      await runSQL(sql)
      imported += unique.length
    } catch (err) {
      errors += unique.length
      console.error(`  Batch error at index ${i}:`, err instanceof Error ? err.message : err)
    }

    console.log(`  Progress: ${Math.min(i + BATCH_SIZE, allVerbs.length)}/${allVerbs.length} verbs...`)
  }

  console.log(`\n=== Import Complete ===`)
  console.log(`  Imported: ${imported}`)
  console.log(`  Skipped (duplicates in source): ${skipped}`)
  console.log(`  Errors: ${errors}`)
}

main().catch(err => { console.error('Fatal:', err); process.exit(1) })
