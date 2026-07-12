-- DeutschMentor AI - Real German Listening Content Sources
-- Enables users to upload/connect authentic German audio materials
-- and extracts vocabulary, grammar, phrases, and exercises

-- ============================================================
-- AUDIO CONTENT SOURCES
-- Tracks uploaded files and external URLs linked to audio lessons
-- ============================================================

create table if not exists public.audio_content_sources (
  id uuid primary key default gen_random_uuid(),
  audio_lesson_id uuid references public.audio_lessons(id) on delete cascade not null,
  user_id uuid references auth.users(id) on delete cascade not null,
  source_type text not null check (source_type in ('upload', 'external_url', 'youtube', 'textbook_scan', 'paste_transcript')),
  source_url text,
  file_path text,
  file_size_bytes bigint,
  mime_type text,
  original_filename text,
  source_label text,
  processing_status text default 'pending' check (processing_status in ('pending', 'processing', 'completed', 'failed')),
  processing_error text,
  is_learner_submitted boolean default true,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- ============================================================
-- EXTRACTED LISTENING VOCABULARY
-- Words/phrases extracted from a specific audio lesson transcript
-- ============================================================

create table if not exists public.listening_vocabulary (
  id uuid primary key default gen_random_uuid(),
  audio_lesson_id uuid references public.audio_lessons(id) on delete cascade not null,
  german_word text not null,
  english_translation text not null,
  article text,
  plural text,
  part_of_speech text,
  context_sentence text,
  context_translation text,
  usage_notes text,
  cefr_level text,
  frequency text default 'common' check (frequency in ('very_common', 'common', 'rare', 'very_rare')),
  order_index integer default 0,
  created_at timestamptz default now(),
  unique(audio_lesson_id, german_word)
);

-- ============================================================
-- LISTENING PHRASES / IMPORTANT EXPRESSIONS
-- Key phrases, idioms, and expressions from the audio
-- ============================================================

create table if not exists public.listening_phrases (
  id uuid primary key default gen_random_uuid(),
  audio_lesson_id uuid references public.audio_lessons(id) on delete cascade not null,
  german_phrase text not null,
  english_translation text not null,
  literal_translation text,
  usage_context text,
  formality_level text default 'neutral' check (formality_level in ('formal', 'neutral', 'informal', 'slang')),
  is_idiom boolean default false,
  is_colloquial boolean default false,
  order_index integer default 0,
  created_at timestamptz default now()
);

-- ============================================================
-- LISTENING GRAMMAR POINTS
-- Grammar structures demonstrated in the audio
-- ============================================================

create table if not exists public.listening_grammar_points (
  id uuid primary key default gen_random_uuid(),
  audio_lesson_id uuid references public.audio_lessons(id) on delete cascade not null,
  grammar_topic text not null,
  explanation text not null,
  example_from_audio text not null,
  english_translation text,
  rule_summary text,
  cefr_level text,
  order_index integer default 0,
  created_at timestamptz default now()
);

-- ============================================================
-- INDEXES
-- ============================================================

create index if not exists idx_audio_content_sources_lesson on public.audio_content_sources(audio_lesson_id);
create index if not exists idx_audio_content_sources_user on public.audio_content_sources(user_id);
create index if not exists idx_audio_content_sources_status on public.audio_content_sources(processing_status);
create index if not exists idx_listening_vocabulary_lesson on public.listening_vocabulary(audio_lesson_id);
create index if not exists idx_listening_phrases_lesson on public.listening_phrases(audio_lesson_id);
create index if not exists idx_listening_grammar_points_lesson on public.listening_grammar_points(audio_lesson_id);

-- ============================================================
-- ROW LEVEL SECURITY
-- ============================================================

alter table public.audio_content_sources enable row level security;
alter table public.listening_vocabulary enable row level security;
alter table public.listening_phrases enable row level security;
alter table public.listening_grammar_points enable row level security;

-- Users can read any content source (for shared lessons)
create policy "Auth users can view content sources"
  on public.audio_content_sources for select
  using (auth.role() = 'authenticated');

-- Users can manage their own content sources
create policy "Users can insert own content sources"
  on public.audio_content_sources for insert
  with check (auth.uid() = user_id);

create policy "Users can update own content sources"
  on public.audio_content_sources for update
  using (auth.uid() = user_id);

create policy "Users can delete own content sources"
  on public.audio_content_sources for delete
  using (auth.uid() = user_id);

-- All authenticated users can view extracted content
create policy "Auth users can view listening vocabulary"
  on public.listening_vocabulary for select
  using (auth.role() = 'authenticated');

create policy "Auth users can view listening phrases"
  on public.listening_phrases for select
  using (auth.role() = 'authenticated');

create policy "Auth users can view listening grammar points"
  on public.listening_grammar_points for select
  using (auth.role() = 'authenticated');

-- Admin/teacher can insert extracted content
create policy "Admin can insert listening vocabulary"
  on public.listening_vocabulary for insert
  with check (
    exists (
      select 1 from public.profiles
      where user_id = auth.uid() and role in ('admin', 'teacher')
    )
  );

create policy "Admin can insert listening phrases"
  on public.listening_phrases for insert
  with check (
    exists (
      select 1 from public.profiles
      where user_id = auth.uid() and role in ('admin', 'teacher')
    )
  );

create policy "Admin can insert listening grammar points"
  on public.listening_grammar_points for insert
  with check (
    exists (
      select 1 from public.profiles
      where user_id = auth.uid() and role in ('admin', 'teacher')
    )
  );
