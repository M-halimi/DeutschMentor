import { createClient } from '@supabase/supabase-js'

const supabase = createClient(
  'https://solksyxdlmjtthhuhacj.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E'
)

const tables = [
  'lesson_expressions',
  'lesson_flashcards',
  'lesson_homework',
  'lesson_reviews',
  'lesson_speaking',
  'lesson_writing',
  'lesson_conversations',
  'lesson_ai_challenges',
]

async function main() {
  for (const table of tables) {
    // Drop existing policies
    await supabase.rpc('exec_sql', {
      sql: `DROP POLICY IF EXISTS "Enable read access for all users" ON public.${table}`
    })
    await supabase.rpc('exec_sql', {
      sql: `DROP POLICY IF EXISTS "Enable all for authenticated users" ON public.${table}`
    })
    // Create public SELECT policy
    const r = await supabase.rpc('exec_sql', {
      sql: `CREATE POLICY "Enable read access for all users" ON public.${table} FOR SELECT USING (true)`
    })
    if (r.error) console.log(`${table}: ERROR - ${r.error.message.substring(0, 100)}`)
    else console.log(`${table}: OK`)
  }
}

main().catch(console.error)
