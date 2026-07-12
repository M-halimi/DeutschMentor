import { createClient } from '@supabase/supabase-js'

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY!

const supabase = createClient(supabaseUrl, supabaseKey, {
  auth: { autoRefreshToken: false, persistSession: false },
})

async function tableExists(table: string): Promise<boolean> {
  const { data, error } = await supabase
    .from('information_schema.tables')
    .select('table_name')
    .eq('table_schema', 'public')
    .eq('table_name', table)
    .maybeSingle()
  if (error) return false
  return !!data
}

async function createContentTables() {
  console.log('Checking required tables...')

  const needed = ['grammar_exercises', 'articles', 'reading_questions', 'article_vocabulary',
    'audio_lessons', 'listening_exercises', 'dictation_exercises', 'expressions']

  const missing: string[] = []
  for (const t of needed) {
    const exists = await tableExists(t)
    if (!exists) missing.push(t)
    else console.log(`  ✓ ${t} exists`)
  }

  if (missing.length === 0) {
    console.log('All tables exist!')
    return
  }

  console.log(`\nMissing tables: ${missing.join(', ')}`)
  console.log('Creating via REST API...')

  // Use direct REST API to create tables
  // We'll use the /rest/v1/ endpoint with raw SQL
  const sqlStatements = generateCreateSQL(missing)
  await executeSQL(sqlStatements)
}

function generateCreateSQL(tables: string[]): string[] {
  const sql: string[] = []
  for (const t of tables) {
    switch (t) {
      case 'grammar_exercises':
        sql.push(`create table if not exists public.grammar_exercises (
          id uuid primary key default gen_random_uuid(),
          title text not null,
          description text,
          level text not null check (level in ('A1','A2','B1','B2','C1')),
          category text not null,
          question text not null,
          options jsonb not null default '[]',
          correct_answer text not null,
          explanation text,
          order_index integer default 0,
          is_published boolean default true,
          created_at timestamptz default now()
        )`)
        break
      case 'articles':
        sql.push(`create table if not exists public.articles (
          id uuid primary key default gen_random_uuid(),
          title text not null,
          content text not null,
          summary text,
          level text not null check (level in ('A1','A2','B1','B2','C1')),
          category text not null,
          word_count integer default 0,
          image_url text,
          is_published boolean default true,
          created_at timestamptz default now(),
          updated_at timestamptz default now()
        )`)
        break
      case 'reading_questions':
        sql.push(`create table if not exists public.reading_questions (
          id uuid primary key default gen_random_uuid(),
          article_id uuid references public.articles(id) on delete cascade not null,
          question text not null,
          options jsonb not null default '[]',
          correct_answer text not null,
          order_index integer not null default 0,
          created_at timestamptz default now()
        )`)
        break
      case 'article_vocabulary':
        sql.push(`create table if not exists public.article_vocabulary (
          id uuid primary key default gen_random_uuid(),
          article_id uuid references public.articles(id) on delete cascade not null,
          german_word text not null,
          english_translation text not null,
          context_sentence text,
          created_at timestamptz default now()
        )`)
        break
      case 'audio_lessons':
        sql.push(`create table if not exists public.audio_lessons (
          id uuid primary key default gen_random_uuid(),
          title text not null,
          description text,
          audio_url text not null,
          transcript text,
          level text not null check (level in ('A1','A2','B1','B2','C1')),
          duration_seconds integer default 0,
          category text,
          is_published boolean default true,
          created_at timestamptz default now()
        )`)
        break
      case 'listening_exercises':
        sql.push(`create table if not exists public.listening_exercises (
          id uuid primary key default gen_random_uuid(),
          audio_lesson_id uuid references public.audio_lessons(id) on delete cascade not null,
          question text not null,
          options jsonb not null default '[]',
          correct_answer text not null,
          order_index integer not null default 0,
          created_at timestamptz default now()
        )`)
        break
      case 'dictation_exercises':
        sql.push(`create table if not exists public.dictation_exercises (
          id uuid primary key default gen_random_uuid(),
          title text not null,
          audio_url text not null,
          full_text text not null,
          level text not null check (level in ('A1','A2','B1','B2','C1')),
          duration_seconds integer default 0,
          is_published boolean default true,
          created_at timestamptz default now()
        )`)
        break
      case 'expressions':
        sql.push(`create table if not exists public.expressions (
          id uuid primary key default gen_random_uuid(),
          german text not null,
          english text not null,
          usage_context text,
          level text not null check (level in ('A1','A2','B1','B2','C1')),
          category text,
          audio_url text,
          created_at timestamptz default now()
        )`)
        break
    }
  }
  return sql
}

async function executeSQL(sqlStatements: string[]) {
  // Try using the pg_dump endpoint or direct SQL execution
  const projectRef = 'solksyxdlmjtthhuhacj'
  const url = `https://api.supabase.com/v1/projects/${projectRef}/database/query`

  // Check if we have a management API token
  const mgmtToken = process.env.SUPABASE_ACCESS_TOKEN
  if (!mgmtToken) {
    console.log('\n⚠️  No SUPABASE_ACCESS_TOKEN set. Cannot execute DDL via Management API.')
    console.log('   Trying alternative: SQL via REST API...')

    // Alternative: Try using the PostgREST /rpc endpoint by creating
    // a temporary SQL execution function, or use pg_dump extension
    for (const sql of sqlStatements) {
      try {
        // Try executing via the /rest/v1/ endpoint with raw SQL
        const resp = await fetch(`${supabaseUrl}/rest/v1/`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'apikey': supabaseKey,
            'Authorization': `Bearer ${supabaseKey}`,
            'Prefer': 'tx=rollback',
          },
          body: JSON.stringify({ query: sql })
        })
        console.log(`  SQL attempt: ${resp.status} ${resp.statusText}`)
      } catch (e: any) {
        console.log(`  Failed: ${e.message}`)
      }
    }

    console.log('\n❌ Could not create tables via REST API.')
    console.log('   Option 1: Run `npx supabase login` manually in your terminal, then re-run this script')
    console.log('   Option 2: Go to https://supabase.com/dashboard/project/solksyxdlmjtthhuhacj/sql/new')
    console.log('   and paste the SQL from supabase/migrations/00004_content_tables.sql')
    console.log('   Option 3: Set SUPABASE_ACCESS_TOKEN env var and re-run')
    return
  }

  console.log('Executing SQL via Management API...')
  for (const sql of sqlStatements) {
    const resp = await fetch(url, {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${mgmtToken}`,
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ query: sql })
    })
    const result = await resp.json()
    if (resp.ok) {
      console.log(`  ✓ ${sql.slice(0, 50)}...`)
    } else {
      console.log(`  ✗ ${JSON.stringify(result)}`)
    }
  }
}

async function main() {
  await createContentTables()
  console.log('\nDone!')
}

main().catch(console.error)
