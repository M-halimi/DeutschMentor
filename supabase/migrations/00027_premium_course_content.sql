-- Premium German Learning Platform — Content Extension
-- Adds tables for expressions, conversations, homework, review, AI feedback

-- ============================================================
-- LESSON EXPRESSIONS (Useful daily expressions per lesson)
-- ============================================================
create table if not exists public.lesson_expressions (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  german text not null,
  english_translation text not null,
  arabic_translation text,
  usage_context text,
  formality text check (formality in ('formal', 'neutral', 'informal', 'slang')),
  is_idiom boolean default false,
  literal_translation text,
  audio_url text,
  order_index integer default 0,
  created_at timestamptz default now()
);

-- ============================================================
-- LESSON READING CONTENT
-- ============================================================
create table if not exists public.lesson_reading (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  title text not null,
  content text not null,
  english_translation text,
  arabic_translation text,
  word_count integer,
  difficulty_rating integer default 1,
  audio_url text,
  source text,
  created_at timestamptz default now()
);

-- ============================================================
-- LESSON LISTENING CONTENT
-- ============================================================
create table if not exists public.lesson_listening (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  title text not null,
  transcript text not null,
  english_translation text,
  arabic_translation text,
  audio_url text,
  duration_seconds integer,
  speaker_count integer default 2,
  scenario text,
  created_at timestamptz default now()
);

-- ============================================================
-- LESSON SPEAKING PROMPTS
-- ============================================================
create table if not exists public.lesson_speaking (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  title text not null,
  prompt text not null,
  scenario text,
  tips text[],
  vocabulary_hints text[],
  min_duration_seconds integer default 30,
  order_index integer default 0,
  created_at timestamptz default now()
);

-- ============================================================
-- LESSON WRITING PROMPTS
-- ============================================================
create table if not exists public.lesson_writing (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  title text not null,
  task text not null,
  tips text[],
  vocabulary_hints text[],
  grammar_focus text[],
  word_limit_min integer default 50,
  word_limit_max integer default 200,
  order_index integer default 0,
  created_at timestamptz default now()
);

-- ============================================================
-- LESSON CONVERSATIONS (AI roleplay scenarios)
-- ============================================================
create table if not exists public.lesson_conversations (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  title text not null,
  scenario text not null,
  role_user text not null,
  role_ai text not null,
  context text,
  opening_line text,
  vocabulary_hints text[],
  difficulty text check (difficulty in ('beginner', 'intermediate', 'advanced')),
  order_index integer default 0,
  created_at timestamptz default now()
);

-- ============================================================
-- LESSON AI CHALLENGES (Open-ended tasks)
-- ============================================================
create table if not exists public.lesson_ai_challenges (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  title text not null,
  question text not null,
  scenario text,
  expected_elements text[],
  tips text[],
  difficulty text check (difficulty in ('easy', 'medium', 'hard')),
  order_index integer default 0,
  created_at timestamptz default now()
);

-- ============================================================
-- LESSON HOMEWORK
-- ============================================================
create table if not exists public.lesson_homework (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  title text not null,
  description text not null,
  homework_type text check (homework_type in ('writing', 'speaking', 'listening', 'reading', 'vocabulary', 'grammar', 'mixed')),
  tasks jsonb default '[]',
  estimated_minutes integer default 15,
  order_index integer default 0,
  created_at timestamptz default now()
);

-- ============================================================
-- LESSON REVIEW (Summary + flashcards)
-- ============================================================
create table if not exists public.lesson_reviews (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  summary text not null,
  key_points jsonb default '[]',
  grammar_summary jsonb default '[]',
  vocabulary_focus text[],
  common_mistakes_summary text[],
  tips text[],
  created_at timestamptz default now()
);

-- ============================================================
-- FLASHCARDS (for lesson review)
-- ============================================================
create table if not exists public.lesson_flashcards (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid references public.course_lessons(id) on delete cascade not null,
  front text not null,
  back text not null,
  hint text,
  category text check (category in ('vocabulary', 'grammar', 'expression', 'phrase', 'culture')),
  order_index integer default 0,
  created_at timestamptz default now()
);

-- ============================================================
-- EXTEND lesson_exercises exercise_type
-- ============================================================
alter table public.lesson_exercises
  drop constraint if exists lesson_exercises_exercise_type_check;

alter table public.lesson_exercises
  add constraint lesson_exercises_exercise_type_check
  check (exercise_type in (
    'multiple_choice', 'fill_gap', 'matching', 'sentence_order', 'translation',
    'true_false', 'drag_drop', 'error_correction', 'listening_comprehension',
    'reading_comprehension', 'vocabulary_practice', 'grammar_practice',
    'dialogue_completion', 'word_formation', 'category_sort',
    'analysis', 'essay'
  ));

-- ============================================================
-- EXTEND lesson_test_questions question_type
-- ============================================================
alter table public.lesson_test_questions
  drop constraint if exists lesson_test_questions_question_type_check;

alter table public.lesson_test_questions
  add constraint lesson_test_questions_question_type_check
  check (question_type in (
    'multiple_choice', 'true_false', 'fill_blank', 'matching',
    'short_answer', 'essay', 'listening', 'speaking',
    'drag_drop', 'error_correction', 'sentence_order'
  ));

-- ============================================================
-- EXTEND course_lessons with section flags and audio
-- ============================================================
alter table public.course_lessons
  add column if not exists audio_url text,
  add column if not exists image_url text,
  add column if not exists difficulty_rating integer default 1,
  add column if not exists has_expressions boolean default false,
  add column if not exists has_reading boolean default false,
  add column if not exists has_listening boolean default false,
  add column if not exists has_speaking boolean default false,
  add column if not exists has_writing boolean default false,
  add column if not exists has_conversation boolean default false,
  add column if not exists has_ai_challenges boolean default false,
  add column if not exists has_homework boolean default false,
  add column if not exists has_review boolean default false;

-- EXTEND lesson_vocabulary with pronunciation
alter table public.lesson_vocabulary
  add column if not exists pronunciation text,
  add column if not exists ipa text,
  add column if not exists cefr_level text check (cefr_level in ('A1','A2','B1','B2','C1','C2')),
  add column if not exists audio_url text;

-- ============================================================
-- AI FEEDBACK TABLE
-- ============================================================
create table if not exists public.lesson_ai_feedback (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade not null,
  lesson_id uuid references public.course_lessons(id) on delete cascade,
  feedback_type text not null check (feedback_type in ('speaking', 'writing', 'conversation', 'challenge', 'question')),
  user_input text not null,
  ai_response text,
  feedback jsonb default '{}',
  scores jsonb default '{}',
  suggestions text[],
  created_at timestamptz default now()
);

-- ============================================================
-- INDEXES
-- ============================================================
create index if not exists idx_lesson_expressions_lesson on public.lesson_expressions(lesson_id);
create index if not exists idx_lesson_reading_lesson on public.lesson_reading(lesson_id);
create index if not exists idx_lesson_listening_lesson on public.lesson_listening(lesson_id);
create index if not exists idx_lesson_speaking_lesson on public.lesson_speaking(lesson_id);
create index if not exists idx_lesson_writing_lesson on public.lesson_writing(lesson_id);
create index if not exists idx_lesson_conversations_lesson on public.lesson_conversations(lesson_id);
create index if not exists idx_lesson_ai_challenges_lesson on public.lesson_ai_challenges(lesson_id);
create index if not exists idx_lesson_homework_lesson on public.lesson_homework(lesson_id);
create index if not exists idx_lesson_reviews_lesson on public.lesson_reviews(lesson_id);
create index if not exists idx_lesson_flashcards_lesson on public.lesson_flashcards(lesson_id);
create index if not exists idx_lesson_ai_feedback_user on public.lesson_ai_feedback(user_id, lesson_id);

-- RLS
alter table public.lesson_expressions enable row level security;
alter table public.lesson_reading enable row level security;
alter table public.lesson_listening enable row level security;
alter table public.lesson_speaking enable row level security;
alter table public.lesson_writing enable row level security;
alter table public.lesson_conversations enable row level security;
alter table public.lesson_ai_challenges enable row level security;
alter table public.lesson_homework enable row level security;
alter table public.lesson_reviews enable row level security;
alter table public.lesson_flashcards enable row level security;
alter table public.lesson_ai_feedback enable row level security;

-- Policies: content tables readable by authenticated users
do $$
begin
  execute 'create policy "Content viewable by authenticated" on public.lesson_expressions for select to authenticated using (true)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Content viewable by authenticated" on public.lesson_reading for select to authenticated using (true)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Content viewable by authenticated" on public.lesson_listening for select to authenticated using (true)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Content viewable by authenticated" on public.lesson_speaking for select to authenticated using (true)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Content viewable by authenticated" on public.lesson_writing for select to authenticated using (true)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Content viewable by authenticated" on public.lesson_conversations for select to authenticated using (true)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Content viewable by authenticated" on public.lesson_ai_challenges for select to authenticated using (true)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Content viewable by authenticated" on public.lesson_homework for select to authenticated using (true)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Content viewable by authenticated" on public.lesson_reviews for select to authenticated using (true)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Content viewable by authenticated" on public.lesson_flashcards for select to authenticated using (true)';
  exception when duplicate_object then null;
end $$;

-- AI feedback: users can only see their own
do $$
begin
  execute 'create policy "Users view own feedback" on public.lesson_ai_feedback for select to authenticated using (auth.uid() = user_id)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Users insert own feedback" on public.lesson_ai_feedback for insert to authenticated with check (auth.uid() = user_id)';
  exception when duplicate_object then null;
end $$;

-- Admin full access
do $$
begin
  execute 'create policy "Admin full access" on public.lesson_expressions for all to authenticated using ((auth.jwt() ->> ''role''::text) = ''admin''::text)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Admin full access" on public.lesson_reading for all to authenticated using ((auth.jwt() ->> ''role''::text) = ''admin''::text)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Admin full access" on public.lesson_listening for all to authenticated using ((auth.jwt() ->> ''role''::text) = ''admin''::text)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Admin full access" on public.lesson_speaking for all to authenticated using ((auth.jwt() ->> ''role''::text) = ''admin''::text)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Admin full access" on public.lesson_writing for all to authenticated using ((auth.jwt() ->> ''role''::text) = ''admin''::text)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Admin full access" on public.lesson_conversations for all to authenticated using ((auth.jwt() ->> ''role''::text) = ''admin''::text)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Admin full access" on public.lesson_ai_challenges for all to authenticated using ((auth.jwt() ->> ''role''::text) = ''admin''::text)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Admin full access" on public.lesson_homework for all to authenticated using ((auth.jwt() ->> ''role''::text) = ''admin''::text)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Admin full access" on public.lesson_reviews for all to authenticated using ((auth.jwt() ->> ''role''::text) = ''admin''::text)';
  exception when duplicate_object then null;
end $$;
do $$
begin
  execute 'create policy "Admin full access" on public.lesson_flashcards for all to authenticated using ((auth.jwt() ->> ''role''::text) = ''admin''::text)';
  exception when duplicate_object then null;
end $$;
