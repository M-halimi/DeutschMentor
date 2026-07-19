import { createClient } from '@supabase/supabase-js'
import { config } from 'dotenv'
config({ path: '.env.local' })

import { runVerbAudit } from '../src/lib/verbs/audit-engine'

async function main() {
  const supabase = createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY!
  )

  const result = await runVerbAudit()

  console.log('Audit complete:')
  console.log('  Verbs: ' + result.totalVerbs)
  console.log('  Issues: ' + result.issues.length)
  console.log('  Errors: ' + result.errors)
  console.log('  Warnings: ' + result.warnings)
  console.log('  Info: ' + result.infos)

  const withVerbId = result.issues.filter(i => i.verb_id)
  const vIds = [...new Set(withVerbId.map(i => i.verb_id!))]
  const { data: verbs } = await supabase.from('german_verbs').select('id, infinitive').in('id', vIds)
  const nameMap = new Map((verbs || []).map(v => [v.id, v.infinitive]))

  console.log('\nAll issues:')
  for (const i of result.issues) {
    const name = i.verb_id ? (nameMap.get(i.verb_id) || i.verb_id) : '-'
    console.log('  [' + i.severity + '] ' + name + ': ' + i.message)
  }

  console.log('\nZuhoren issues:')
  const zuVerb = verbs ? verbs.find(v => v.infinitive === 'zuhören') : null
  if (zuVerb) {
    const zuIss = result.issues.filter(i => i.verb_id === zuVerb.id)
    if (zuIss.length === 0) console.log('  NO issues for zuhoren!')
    else for (const i of zuIss) console.log('  [' + i.severity + '] ' + i.issue_type + ': ' + i.message)
  }

  console.log('\nNote: audit results verified — run API from UI to persist with auth user')
}

main().catch(console.error)
