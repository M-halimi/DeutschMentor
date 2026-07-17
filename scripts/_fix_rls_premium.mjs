import { createClient } from '@supabase/supabase-js'

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL,
  process.env.SUPABASE_SERVICE_KEY
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
