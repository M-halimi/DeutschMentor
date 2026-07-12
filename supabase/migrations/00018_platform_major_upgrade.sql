-- DeutschMentor AI - Platform Major Upgrade
-- Writing examples, AI mentor, TTS upgrade, theme learning

-- ============================================================
-- WRITING EXAMPLES LIBRARY
-- ============================================================

create table if not exists public.writing_examples (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  task_description text not null,
  example_answer text not null,
  exercise_type text not null check (exercise_type in (
    'email_formal', 'email_informal', 'email_request', 'email_complaint',
    'email_application', 'email_information',
    'beschwerde', 'meinung', 'argumentation', 'bewertung',
    'beschreibung', 'einladung', 'formular', 'stellungnahme',
    'bericht', 'erfahrung'
  )),
  level text not null check (level in ('A1', 'A2', 'B1', 'B2', 'C1', 'C2')),
  theme text,
  useful_vocabulary jsonb default '[]',
  useful_phrases jsonb default '[]',
  grammar_structures jsonb default '[]',
  explanation text not null,
  why_good text,
  word_count integer,
  is_published boolean default true,
  created_at timestamptz default now()
);

-- ============================================================
-- AI MENTOR CHAT
-- ============================================================

create table if not exists public.mentor_chats (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade not null,
  title text default 'New Conversation',
  context jsonb default '{}',
  is_active boolean default true,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists public.mentor_messages (
  id uuid primary key default gen_random_uuid(),
  chat_id uuid references public.mentor_chats(id) on delete cascade not null,
  role text not null check (role in ('user', 'mentor', 'system')),
  content text not null,
  metadata jsonb default '{}',
  created_at timestamptz default now()
);

-- ============================================================
-- THEME-BASED LEARNING UNITS
-- ============================================================

create table if not exists public.theme_lessons (
  id uuid primary key default gen_random_uuid(),
  theme text not null,
  title text not null,
  description text,
  level text not null check (level in ('A1', 'A2', 'B1', 'B2', 'C1', 'C2')),
  content_type text not null check (content_type in (
    'vocabulary', 'listening', 'reading', 'speaking', 'writing', 'grammar', 'conversation'
  )),
  reference_id uuid,
  reference_table text,
  order_index integer default 0,
  is_published boolean default true,
  created_at timestamptz default now(),
  unique(theme, level, content_type, reference_id)
);

-- ============================================================
-- VOCABULARY ENHANCEMENTS (add C2 level)
-- ============================================================

alter table public.vocabulary
  drop constraint if exists vocabulary_level_check,
  add constraint vocabulary_level_check
    check (level in ('A1', 'A2', 'B1', 'B2', 'C1', 'C2'));

-- ============================================================
-- INDEXES
-- ============================================================

create index if not exists idx_writing_examples_level on public.writing_examples(level);
create index if not exists idx_writing_examples_type on public.writing_examples(exercise_type);
create index if not exists idx_writing_examples_theme on public.writing_examples(theme);
create index if not exists idx_mentor_chats_user on public.mentor_chats(user_id);
create index if not exists idx_mentor_messages_chat on public.mentor_messages(chat_id);
create index if not exists idx_theme_lessons_theme on public.theme_lessons(theme);
create index if not exists idx_theme_lessons_level on public.theme_lessons(level);

-- ============================================================
-- ROW LEVEL SECURITY
-- ============================================================

alter table public.writing_examples enable row level security;
alter table public.mentor_chats enable row level security;
alter table public.mentor_messages enable row level security;
alter table public.theme_lessons enable row level security;

create policy "Auth users can view writing examples"
  on public.writing_examples for select
  using (auth.role() = 'authenticated');

create policy "Admin can insert writing examples"
  on public.writing_examples for insert
  with check (exists (select 1 from public.profiles where user_id = auth.uid() and role = 'admin'));

create policy "Users can manage own mentor chats"
  on public.mentor_chats for all
  using (auth.uid() = user_id);

create policy "Users can manage own mentor messages"
  on public.mentor_messages for all
  using (exists (select 1 from public.mentor_chats where id = chat_id and user_id = auth.uid()));

create policy "Auth users can view theme lessons"
  on public.theme_lessons for select
  using (auth.role() = 'authenticated');

create policy "Admin can manage theme lessons"
  on public.theme_lessons for all
  using (exists (select 1 from public.profiles where user_id = auth.uid() and role = 'admin'));
