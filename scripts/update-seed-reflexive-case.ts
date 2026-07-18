import { reflexiveAudits } from './verbs/reflexive-audit'
import { readFileSync, writeFileSync } from 'fs'

// Load verbs-a2.ts
const a2Content = readFileSync('./scripts/verbs/verbs-a2.ts', 'utf-8')

// Build audit map
const auditMap = new Map(reflexiveAudits.map(a => [a.infinitive, a.reflexivePronounCase]))

let updated = a2Content
let modifiedCount = 0

// Update each reflexive verb entry to add reflexivePronounCase
for (const [infinitive, caseType] of auditMap) {
  // Find the verb entry in the file
  const escapedInfinitive = infinitive.replace(/[.*+?^${}()|[\]\\]/g, '\\$&')
  const regex = new RegExp(`(infinitive:\\s*['\"]${escapedInfinitive}['\"],)`, 'g')
  
  if (regex.test(updated)) {
    // Add reflexivePronounCase after reflexivePronoun
    const replacement = `$1\n  reflexivePronounCase: '${caseType}',`
    updated = updated.replace(regex, replacement)
    modifiedCount++
    console.log(`Updated: ${infinitive} -> ${caseType}`)
  }
}

if (modifiedCount > 0) {
  writeFileSync('./scripts/verbs/verbs-a2.ts', updated)
  console.log(`\nModified ${modifiedCount} entries in verbs-a2.ts`)
} else {
  console.log('No modifications needed')
}