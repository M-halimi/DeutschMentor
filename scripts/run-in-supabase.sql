-- ============================================================
-- DEUTSCHMENTOR - Content Tables + Seed Content Table
-- Run this in Supabase SQL Editor:
-- https://supabase.com/dashboard/project/solksyxdlmjtthhuhacj/sql/new
-- ============================================================

-- Content tables (from migration 00004)
create table if not exists public.audio_lessons (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  description text,
  audio_url text not null,
  transcript text,
  level text not null check (level in ('A1', 'A2', 'B1', 'B2', 'C1')),
  duration_seconds integer default 0,
  category text,
  is_published boolean default true,
  created_at timestamptz default now()
);

create table if not exists public.listening_exercises (
  id uuid primary key default gen_random_uuid(),
  audio_lesson_id uuid references public.audio_lessons(id) on delete cascade not null,
  question text not null,
  options jsonb not null default '[]',
  correct_answer text not null,
  order_index integer not null default 0,
  created_at timestamptz default now()
);

create table if not exists public.articles (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  content text not null,
  summary text,
  level text not null check (level in ('A1', 'A2', 'B1', 'B2', 'C1')),
  category text not null,
  word_count integer default 0,
  image_url text,
  is_published boolean default true,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists public.reading_questions (
  id uuid primary key default gen_random_uuid(),
  article_id uuid references public.articles(id) on delete cascade not null,
  question text not null,
  options jsonb not null default '[]',
  correct_answer text not null,
  order_index integer not null default 0,
  created_at timestamptz default now()
);

create table if not exists public.article_vocabulary (
  id uuid primary key default gen_random_uuid(),
  article_id uuid references public.articles(id) on delete cascade not null,
  german_word text not null,
  english_translation text not null,
  context_sentence text,
  created_at timestamptz default now()
);

create table if not exists public.dictation_exercises (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  audio_url text not null,
  full_text text not null,
  level text not null check (level in ('A1', 'A2', 'B1', 'B2', 'C1')),
  duration_seconds integer default 0,
  is_published boolean default true,
  created_at timestamptz default now()
);

create table if not exists public.expressions (
  id uuid primary key default gen_random_uuid(),
  german text not null,
  english text not null,
  usage_context text,
  level text not null check (level in ('A1', 'A2', 'B1', 'B2', 'C1')),
  category text,
  audio_url text,
  created_at timestamptz default now()
);

create table if not exists public.grammar_exercises (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  description text,
  level text not null check (level in ('A1', 'A2', 'B1', 'B2', 'C1')),
  category text not null,
  question text not null,
  options jsonb not null default '[]',
  correct_answer text not null,
  explanation text,
  order_index integer default 0,
  is_published boolean default true,
  created_at timestamptz default now()
);

-- Seed content table for writing prompts, speaking scenarios, exam mocks, culture notes
create table if not exists public.seed_content (
  id uuid primary key default gen_random_uuid(),
  content_type text not null default 'seed_reference',
  content jsonb not null default '{}',
  order_index integer default 0,
  created_at timestamptz default now()
);

-- RLS
alter table public.audio_lessons enable row level security;
alter table public.listening_exercises enable row level security;
alter table public.articles enable row level security;
alter table public.reading_questions enable row level security;
alter table public.article_vocabulary enable row level security;
alter table public.dictation_exercises enable row level security;
alter table public.expressions enable row level security;
alter table public.grammar_exercises enable row level security;
alter table public.seed_content enable row level security;

-- RLS policies
do $$
begin
  if not exists (select 1 from pg_policies where policyname = 'Auth users can view audio lessons') then
    create policy "Auth users can view audio lessons" on public.audio_lessons for select using (auth.role() = 'authenticated' and is_published = true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Auth users can view listening exercises') then
    create policy "Auth users can view listening exercises" on public.listening_exercises for select using (auth.role() = 'authenticated');
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Auth users can view articles') then
    create policy "Auth users can view articles" on public.articles for select using (auth.role() = 'authenticated' and is_published = true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Auth users can view reading questions') then
    create policy "Auth users can view reading questions" on public.reading_questions for select using (auth.role() = 'authenticated');
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Auth users can view article vocabulary') then
    create policy "Auth users can view article vocabulary" on public.article_vocabulary for select using (auth.role() = 'authenticated');
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Auth users can view dictation exercises') then
    create policy "Auth users can view dictation exercises" on public.dictation_exercises for select using (auth.role() = 'authenticated' and is_published = true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Auth users can view expressions') then
    create policy "Auth users can view expressions" on public.expressions for select using (auth.role() = 'authenticated');
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Auth users can view grammar exercises') then
    create policy "Auth users can view grammar exercises" on public.grammar_exercises for select using (auth.role() = 'authenticated' and is_published = true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Auth users can view seed content') then
    create policy "Auth users can view seed content" on public.seed_content for select using (auth.role() = 'authenticated');
  end if;
end $$;

-- Indexes
create index if not exists idx_audio_lessons_level on public.audio_lessons(level);
create index if not exists idx_listening_exercises_lesson on public.listening_exercises(audio_lesson_id);
create index if not exists idx_articles_level on public.articles(level);
create index if not exists idx_articles_category on public.articles(category);
create index if not exists idx_reading_questions_article on public.reading_questions(article_id);
create index if not exists idx_dictation_exercises_level on public.dictation_exercises(level);
create index if not exists idx_expressions_level on public.expressions(level);
create index if not exists idx_grammar_exercises_level on public.grammar_exercises(level);
create index if not exists idx_grammar_exercises_category on public.grammar_exercises(category);
create index if not exists idx_seed_content_type on public.seed_content(content_type);

-- Add extra columns to vocabulary table if they don't exist
do $$
begin
  if not exists (select 1 from information_schema.columns where table_schema = 'public' and table_name = 'vocabulary' and column_name = 'word_type') then
    alter table public.vocabulary add column word_type text;
  end if;
  if not exists (select 1 from information_schema.columns where table_schema = 'public' and table_name = 'vocabulary' and column_name = 'transliteration') then
    alter table public.vocabulary add column transliteration text;
  end if;
  if not exists (select 1 from information_schema.columns where table_schema = 'public' and table_name = 'vocabulary' and column_name = 'difficulty') then
    alter table public.vocabulary add column difficulty integer default 1;
  end if;
  if not exists (select 1 from information_schema.columns where table_schema = 'public' and table_name = 'vocabulary' and column_name = 'tags') then
    alter table public.vocabulary add column tags jsonb default '[]';
  end if;
end $$;

-- Add unique constraint on vocabulary for upsert
do $$
begin
  if not exists (select 1 from pg_constraint where conname = 'vocabulary_german_word_unique') then
    alter table public.vocabulary add constraint vocabulary_german_word_unique unique (german_word);
  end if;
end $$;

-- Articles unique constraint for upsert
do $$
begin
  if not exists (select 1 from pg_constraint where conname = 'articles_title_unique') then
    alter table public.articles add constraint articles_title_unique unique (title);
  end if;
end $$;

-- Audio lessons unique constraint for upsert
do $$
begin
  if not exists (select 1 from pg_constraint where conname = 'audio_lessons_title_unique') then
    alter table public.audio_lessons add constraint audio_lessons_title_unique unique (title);
  end if;
end $$;

-- Dictation unique constraint for upsert
do $$
begin
  if not exists (select 1 from pg_constraint where conname = 'dictation_exercises_title_unique') then
    alter table public.dictation_exercises add constraint dictation_exercises_title_unique unique (title);
  end if;
end $$;

-- Expressions unique constraint for upsert
do $$
begin
  if not exists (select 1 from pg_constraint where conname = 'expressions_german_unique') then
    alter table public.expressions add constraint expressions_german_unique unique (german);
  end if;
end $$;

-- Seed content sample
insert into public.seed_content (content_type, content, order_index) values
  ('sample', '{"message": "Tables ready for data loading!"}'::jsonb, 0)
on conflict do nothing;

-- Confirm
select '✅ All tables created successfully!' as result;
