-- Advanced Courses Phase 2 & 3
-- Lesson types, content linking, achievements, certificates, Goethe prep

-- ============================================================
-- Add lesson_type & source_ref to course_lessons
-- ============================================================
alter table public.course_lessons
  add column if not exists lesson_type text not null default 'vocabulary'
    check (lesson_type in ('vocabulary', 'grammar', 'reading', 'listening', 'speaking', 'writing', 'review', 'test')),
  add column if not exists source_table text,
  add column if not exists source_id uuid;

create index if not exists idx_course_lessons_type on public.course_lessons(lesson_type);

-- ============================================================
-- COURSE CERTIFICATES
-- ============================================================
create table if not exists public.course_certificates (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade not null,
  level_id text references public.course_levels(id) on delete cascade not null,
  certificate_url text,
  issued_at timestamptz default now(),
  metadata jsonb default '{}',
  created_at timestamptz default now(),
  unique(user_id, level_id)
);

create index if not exists idx_course_certificates_user on public.course_certificates(user_id);

-- ============================================================
-- ACHIEVEMENTS ENHANCEMENT
-- ============================================================
create table if not exists public.achievement_criteria (
  id uuid primary key default gen_random_uuid(),
  achievement_id uuid references public.achievements(id) on delete cascade not null,
  criteria_type text not null check (criteria_type in (
    'complete_module', 'complete_level', 'pass_lesson_test', 'streak_days',
    'vocab_mastered', 'perfect_score', 'exam_passed', 'skill_level',
    'lessons_completed', 'practice_hours'
  )),
  target_id text,
  threshold integer not null default 1,
  created_at timestamptz default now()
);

create index if not exists idx_achievement_criteria_achievement on public.achievement_criteria(achievement_id);

-- ============================================================
-- GOETHE EXAM PREP TABLES
-- ============================================================
create table if not exists public.exam_prep_modules (
  id uuid primary key default gen_random_uuid(),
  exam_type text not null check (exam_type in ('goethe', 'telc', 'testdaf', 'dsh', 'osterreich')),
  level_id text references public.course_levels(id) on delete cascade not null,
  title text not null,
  description text,
  module_type text not null check (module_type in ('lesen', 'hoeren', 'schreiben', 'sprechen', 'wortschatz', 'grammatik', 'full_mock')),
  time_limit_minutes integer,
  total_points integer default 100,
  pass_threshold integer default 60,
  is_published boolean default false,
  order_index integer not null default 0,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create index if not exists idx_exam_prep_level on public.exam_prep_modules(level_id);

create table if not exists public.exam_prep_questions (
  id uuid primary key default gen_random_uuid(),
  module_id uuid references public.exam_prep_modules(id) on delete cascade not null,
  question_type text not null check (question_type in (
    'multiple_choice', 'true_false', 'fill_blank', 'matching',
    'short_answer', 'essay', 'listening', 'speaking'
  )),
  question text not null,
  options jsonb default '[]',
  correct_answer text not null,
  explanation text,
  audio_url text,
  image_url text,
  points integer default 1,
  order_index integer not null default 0,
  created_at timestamptz default now()
);

create index if not exists idx_exam_prep_questions_module on public.exam_prep_questions(module_id);

create table if not exists public.exam_prep_attempts (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade not null,
  module_id uuid references public.exam_prep_modules(id) on delete cascade not null,
  score integer not null,
  total_points integer not null,
  answers jsonb default '[]',
  time_spent_minutes integer default 0,
  passed boolean default false,
  attempt_number integer default 1,
  started_at timestamptz default now(),
  completed_at timestamptz,
  created_at timestamptz default now()
);

create index if not exists idx_exam_prep_attempts_user on public.exam_prep_attempts(user_id);
create index if not exists idx_exam_prep_attempts_module on public.exam_prep_attempts(module_id);

-- ============================================================
-- RLS
-- ============================================================
alter table public.course_certificates enable row level security;
alter table public.achievement_criteria enable row level security;
alter table public.exam_prep_modules enable row level security;
alter table public.exam_prep_questions enable row level security;
alter table public.exam_prep_attempts enable row level security;

-- Certificates: users see own, admin all
create policy "Users can view own certificates"
  on public.course_certificates for select
  using (auth.uid() = user_id);

create policy "Admins have full access to certificates"
  on public.course_certificates for all
  using (auth.jwt() ->> 'role' = 'admin');

-- Achievement criteria: authenticated can view
create policy "Authenticated users can view achievement criteria"
  on public.achievement_criteria for select
  using (auth.role() = 'authenticated');

create policy "Admins have full access to achievement criteria"
  on public.achievement_criteria for all
  using (auth.jwt() ->> 'role' = 'admin');

-- Exam prep: authenticated can view published
create policy "Authenticated users can view exam prep modules"
  on public.exam_prep_modules for select
  using (auth.role() = 'authenticated' and is_published = true);

create policy "Authenticated users can view exam prep questions"
  on public.exam_prep_questions for select
  using (auth.role() = 'authenticated');

create policy "Admins have full access to exam prep modules"
  on public.exam_prep_modules for all
  using (auth.jwt() ->> 'role' = 'admin');

create policy "Admins have full access to exam prep questions"
  on public.exam_prep_questions for all
  using (auth.jwt() ->> 'role' = 'admin');

-- Exam attempts: users see own, admin all
create policy "Users can view own exam prep attempts"
  on public.exam_prep_attempts for select
  using (auth.uid() = user_id);

create policy "Users can insert own exam prep attempts"
  on public.exam_prep_attempts for insert
  with check (auth.uid() = user_id);

create policy "Admins have full access to exam prep attempts"
  on public.exam_prep_attempts for all
  using (auth.jwt() ->> 'role' = 'admin');

-- Update existing course_lessons to set lesson_type based on topic
update public.course_lessons set lesson_type = 'vocabulary' where lesson_type = 'vocabulary';
