import { createClient } from '@supabase/supabase-js'
const url = 'https://solksyxdlmjtthhuhacj.supabase.co'
const key = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODM3NzM1MzIsImV4cCI6MjA5OTM0OTUzMn0.xrjZ93c6VKRBJp1gMb7jkBB0t8VbjlITmfRIaHWSGzU'
const supabase = createClient(url, key)

async function fix() {
  // Delete using raw SQL
  const { error } = await supabase.rpc('exec_sql', { 
    sql: "DELETE FROM verb_conjugations WHERE verb_id IN (SELECT id FROM german_verbs WHERE slug LIKE 'sich%' AND slug NOT LIKE 'sich-%')"
  })
  console.log('Delete conjugations:', error)
  
  const { error: e2 } = await supabase.rpc('exec_sql', { 
    sql: "DELETE FROM german_verbs WHERE slug LIKE 'sich%' AND slug NOT LIKE 'sich-%'"
  })
  console.log('Delete verbs:', e2)
  console.log('Done')
}
fix().catch(console.error)