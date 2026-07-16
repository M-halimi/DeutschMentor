import { createClient } from '@supabase/supabase-js'
import { readFileSync, writeFileSync } from 'fs'

const supabase = createClient(
  'https://solksyxdlmjtthhuhacj.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E'
)

const filePath = process.argv[2]
if (!filePath) { console.error('Usage: node _apply_premium.mjs <file.sql>'); process.exit(1) }

async function main() {
  const { data: lessons } = await supabase.from('course_lessons').select('id, module_id, title').order('module_id').order('order_index')
  if (!lessons) { console.error('No lessons found'); process.exit(1) }
  console.log('Lessons:', lessons.length)

  let sql = readFileSync(filePath, 'utf-8')
  const uuidRe = /[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/gi
  const seen = new Set()
  const premiumUuids = []
  let m
  while ((m = uuidRe.exec(sql)) !== null) { if (!seen.has(m[0])) { seen.add(m[0]); premiumUuids.push(m[0]) } }
  console.log('Premium UUIDs:', premiumUuids.length)

  const zeroUuids = premiumUuids.filter(u => u.startsWith('00000000-'))
  const nonZeroUuids = premiumUuids.filter(u => !u.startsWith('00000000-'))
  console.log('Zero UUIDs:', zeroUuids.length, '(already match)')
  console.log('Non-zero UUIDs:', nonZeroUuids.length, '(need mapping)')

  // First N lessons that have zero-UUIDs - skip those
  const zeroLessonIds = new Set(zeroUuids)
  const remainingLessons = lessons.filter(l => !zeroLessonIds.has(l.id))
  console.log('Remaining lessons for mapping:', remainingLessons.length)

  if (nonZeroUuids.length !== remainingLessons.length) {
    console.error('Mismatch:', nonZeroUuids.length, 'UUIDs vs', remainingLessons.length, 'lessons')
    // Try anyway with min
    const count = Math.min(nonZeroUuids.length, remainingLessons.length)
    for (let i = 0; i < count; i++) {
      sql = sql.replaceAll(nonZeroUuids[i], remainingLessons[i].id)
    }
    console.log('Mapped', count, 'UUIDs (partial)')
  } else {
    for (let i = 0; i < nonZeroUuids.length; i++) {
      sql = sql.replaceAll(nonZeroUuids[i], remainingLessons[i].id)
    }
    console.log('Mapped all', nonZeroUuids.length, 'UUIDs')
  }

  // Write to temp file for inspection
  const tmpPath = filePath.replace('.sql', '_patched.sql')
  writeFileSync(tmpPath, sql)
  console.log('Patched SQL written to', tmpPath)

  // Execute
  const { error } = await supabase.rpc('exec_sql', { sql })
  if (error) { console.error('EXEC FAILED:', error.message.substring(0, 300)) }
  else { console.log('EXEC OK') }
}

main().catch(console.error)
