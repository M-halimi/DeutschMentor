-- DeutschMentor AI - Platform Enhancement Migration
-- Extends vocabulary, listening, writing, and adds analytics tracking

-- ============================================================
-- VOCABULARY ENHANCEMENTS
-- ============================================================

alter table public.vocabulary
  add column if not exists french_translation text,
  add column if not exists arabic_translation text,
  add column if not exists pronunciation_url text,
  add column if not exists slow_pronunciation_url text,
  add column if not exists ipa text,
  add column if not exists synonyms text[] default '{}',
  add column if not exists antonyms text[] default '{}',
  add column if not exists word_family text[] default '{}',
  add column if not exists verb_forms jsonb default '{}',
  add column if not exists frequency text default 'common' check (frequency in ('very_common', 'common', 'rare', 'very_rare')),
  add column if not exists difficulty_score integer default 1 check (difficulty_score >= 1 and difficulty_score <= 5),
  add column if not exists word_type text check (word_type in ('noun', 'verb', 'adjective', 'adverb', 'preposition', 'conjunction', 'expression')),
  add column if not exists tags text[] default '{}',
  add column if not exists theme text;

-- ============================================================
-- LISTENING ENHANCEMENTS
-- ============================================================

alter table public.audio_lessons
  add column if not exists speaker_gender text check (speaker_gender in ('male', 'female', 'mixed')),
  add column if not exists speaker_age_group text check (speaker_age_group in ('young', 'adult', 'elderly', 'mixed')),
  add column if not exists accent text default 'standard',
  add column if not exists scenario text,
  add column if not exists cefr_level text,
  add column if not exists estimated_duration text,
  add column if not exists grammar_involved text[] default '{}',
  add column if not exists vocabulary_involved text[] default '{}',
  add column if not exists difficulty_rating integer default 1 check (difficulty_rating >= 1 and difficulty_rating <= 5),
  add column if not exists speaker_count integer default 1;

-- Enhanced listening exercises table
alter table public.listening_exercises
  add column if not exists question_type text default 'multiple_choice' check (question_type in ('multiple_choice', 'true_false', 'matching', 'fill_blank', 'order_events', 'short_answer')),
  add column if not exists distractors jsonb default '[]',
  add column if not exists difficulty_level integer default 1 check (difficulty_level >= 1 and difficulty_level <= 5),
  add column if not exists hint text,
  add column if not exists explanation text;

-- User listening analytics
create table if not exists public.listening_analytics (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade not null,
  audio_lesson_id uuid references public.audio_lessons(id) on delete cascade,
  total_plays integer default 0,
  completed boolean default false,
  accuracy decimal default 0,
  weak_topics text[] default '{}',
  time_spent_seconds integer default 0,
  last_listened_at timestamptz default now(),
  created_at timestamptz default now(),
  unique(user_id, audio_lesson_id)
);

-- ============================================================
-- WRITING ENHANCEMENTS
-- ============================================================

-- Writing prompt templates for structured exercises
create table if not exists public.writing_prompts (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  instructions text not null,
  exercise_type text not null check (exercise_type in ('email', 'formal_letter', 'informal_letter', 'complaint', 'application', 'opinion', 'forum_post', 'invitation', 'review', 'story', 'description', 'argumentative')),
  level text not null check (level in ('A1', 'A2', 'B1', 'B2', 'C1')),
  word_limit_min integer not null default 50,
  word_limit_max integer not null default 200,
  difficulty integer default 1 check (difficulty >= 1 and difficulty <= 5),
  timer_minutes integer,
  hints text[] default '{}',
  target_grammar text[] default '{}',
  target_vocabulary text[] default '{}',
  example_structure text,
  is_active boolean default true,
  created_at timestamptz default now()
);

alter table public.writing_submissions
  add column if not exists prompt_id uuid references public.writing_prompts(id) on delete set null,
  add column if not exists word_count integer,
  add column if not exists time_spent_minutes integer,
  add column if not exists grammar_score integer,
  add column if not exists vocabulary_score integer,
  add column if not exists coherence_score integer,
  add column if not exists naturalness_score integer,
  add column if not exists exam_score_estimate integer,
  add column if not exists suggestions text[] default '{}',
  add column if not exists corrected_version text;

-- ============================================================
-- READING ENHANCEMENTS
-- ============================================================

alter table public.articles
  add column if not exists author text,
  add column if not exists source text,
  add column if not exists reading_time_minutes integer,
  add column if not exists difficulty_rating integer default 1 check (difficulty_rating >= 1 and difficulty_rating <= 5),
  add column if not exists tags text[] default '{}',
  add column if not exists grammar_focus text[] default '{}';

alter table public.reading_questions
  add column if not exists question_type text default 'multiple_choice' check (question_type in ('multiple_choice', 'true_false', 'match_headings', 'gap_filling', 'inference', 'vocabulary_context', 'short_answer')),
  add column if not exists explanation text,
  add column if not exists difficulty_level integer default 1 check (difficulty_level >= 1 and difficulty_level <= 5);

-- ============================================================
-- GRAMMAR ENHANCEMENTS
-- ============================================================

alter table public.grammar_exercises
  add column if not exists sub_category text,
  add column if not exists exceptions text[] default '{}',
  add column if not exists related_rules text[] default '{}',
  add column if not exists difficulty_rating integer default 1 check (difficulty_rating >= 1 and difficulty_rating <= 5),
  add column if not exists examples text[] default '{}';

-- ============================================================
-- LEARNING ANALYTICS
-- ============================================================

create table if not exists public.learning_analytics (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade not null unique,
  total_study_minutes integer default 0,
  total_lessons_completed integer default 0,
  total_exercises_completed integer default 0,
  total_vocabulary_learned integer default 0,
  hoeren_score integer default 0,
  lesen_score integer default 0,
  schreiben_score integer default 0,
  sprechen_score integer default 0,
  grammar_mastery decimal default 0,
  current_streak integer default 0,
  longest_streak integer default 0,
  estimated_cefr_level text default 'A1',
  weak_topics text[] default '{}',
  strong_topics text[] default '{}',
  monthly_minutes integer[] default '{0,0,0,0,0,0,0,0,0,0,0,0}',
  last_active_date date default current_date,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

-- Detailed exercise attempt tracking for analytics
create table if not exists public.exercise_attempts (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade not null,
  exercise_type text not null,
  exercise_id uuid not null,
  correct boolean not null,
  time_spent_seconds integer default 0,
  difficulty_at_time integer default 1,
  topic text,
  created_at timestamptz default now()
);

-- ============================================================
-- SPEAKING / PRONUNCIATION ENHANCEMENTS
-- ============================================================

alter table public.speaking_sessions
  add column if not exists transcript text,
  add column if not exists pronunciation_score integer,
  add column if not exists fluency_score integer,
  add column if not exists vocabulary_used text[] default '{}',
  add column if not exists grammar_mistakes text[] default '{}',
  add column if not exists corrected_transcript text;

-- ============================================================
-- INDEXES
-- ============================================================

create index if not exists idx_vocabulary_theme on public.vocabulary(theme);
create index if not exists idx_vocabulary_word_type on public.vocabulary(word_type);
create index if not exists idx_vocabulary_frequency on public.vocabulary(frequency);
create index if not exists idx_vocabulary_difficulty on public.vocabulary(difficulty_score);
create index if not exists idx_audio_lessons_scenario on public.audio_lessons(scenario);
create index if not exists idx_audio_lessons_accent on public.audio_lessons(accent);
create index if not exists idx_audio_lessons_speaker on public.audio_lessons(speaker_gender);
create index if not exists idx_listening_exercises_type on public.listening_exercises(question_type);
create index if not exists idx_listening_analytics_user on public.listening_analytics(user_id);
create index if not exists idx_writing_prompts_level on public.writing_prompts(level);
create index if not exists idx_writing_prompts_type on public.writing_prompts(exercise_type);
create index if not exists idx_exercise_attempts_user on public.exercise_attempts(user_id);
create index if not exists idx_exercise_attempts_type on public.exercise_attempts(exercise_type);

-- ============================================================
-- ROW LEVEL SECURITY
-- ============================================================

alter table public.listening_analytics enable row level security;
alter table public.writing_prompts enable row level security;
alter table public.learning_analytics enable row level security;
alter table public.exercise_attempts enable row level security;

create policy "Users can manage own listening analytics"
  on public.listening_analytics for all
  using (auth.uid() = user_id);

create policy "Auth users can view writing prompts"
  on public.writing_prompts for select
  using (auth.role() = 'authenticated');

create policy "Users can manage own learning analytics"
  on public.learning_analytics for all
  using (auth.uid() = user_id);

create policy "Users can manage own exercise attempts"
  on public.exercise_attempts for all
  using (auth.uid() = user_id);
