-- 00071_curriculum_cms.sql
--
-- Curriculum Management System for DeutschMentor
--
-- Extends existing course_levels, course_modules, course_lessons
-- with lifecycle columns. Creates supporting tables for
-- review workflow, quality scoring, version history, and tags.
--
-- Pattern: identical architecture to 00069_verb_cms_educational.sql

-- ============================================================================
-- 1. EXTEND EXISTING TABLES WITH LIFECYCLE COLUMNS
-- ============================================================================

-- 1a. course_levels
do $$ begin
  alter table public.course_levels
    add column if not exists status text not null default 'published'
      check (status in ('draft', 'in_review', 'approved', 'published', 'archived'));
exception when others then null;
end $$;

do $$ begin
  alter table public.course_levels
    add column if not exists version integer not null default 1;
exception when others then null;
end $$;

do $$ begin
  alter table public.course_levels
    add column if not exists created_by uuid references auth.users(id);
exception when others then null;
end $$;

do $$ begin
  alter table public.course_levels
    add column if not exists updated_by uuid references auth.users(id);
exception when others then null;
end $$;

do $$ begin
  alter table public.course_levels
    add column if not exists updated_at timestamptz;
exception when others then null;
end $$;

create index if not exists idx_course_levels_status on public.course_levels(status);

-- 1b. course_modules
do $$ begin
  alter table public.course_modules
    add column if not exists status text not null default 'published'
      check (status in ('draft', 'in_review', 'approved', 'published', 'archived'));
exception when others then null;
end $$;

do $$ begin
  alter table public.course_modules
    add column if not exists version integer not null default 1;
exception when others then null;
end $$;

do $$ begin
  alter table public.course_modules
    add column if not exists created_by uuid references auth.users(id);
exception when others then null;
end $$;

do $$ begin
  alter table public.course_modules
    add column if not exists updated_by uuid references auth.users(id);
exception when others then null;
end $$;

create index if not exists idx_course_modules_status on public.course_modules(status);

-- 1c. course_lessons
do $$ begin
  alter table public.course_lessons
    add column if not exists status text not null default 'published'
      check (status in ('draft', 'in_review', 'approved', 'published', 'archived'));
exception when others then null;
end $$;

do $$ begin
  alter table public.course_lessons
    add column if not exists version integer not null default 1;
exception when others then null;
end $$;

do $$ begin
  alter table public.course_lessons
    add column if not exists difficulty text default 'beginner'
      check (difficulty in ('beginner', 'elementary', 'intermediate', 'upper_intermediate', 'advanced', 'mastery'));
exception when others then null;
end $$;

do $$ begin
  alter table public.course_lessons
    add column if not exists created_by uuid references auth.users(id);
exception when others then null;
end $$;

do $$ begin
  alter table public.course_lessons
    add column if not exists updated_by uuid references auth.users(id);
exception when others then null;
end $$;

create index if not exists idx_course_lessons_status on public.course_lessons(status);
create index if not exists idx_course_lessons_difficulty on public.course_lessons(difficulty);

-- ============================================================================
-- 2. LESSON TAGS (polymorphic N:N pivot, same pattern as entity_tags)
-- ============================================================================
-- reuses the existing public.tags table
create table if not exists public.lesson_tags (
  entity_type text not null default 'lesson',
  entity_id uuid not null,
  tag_id uuid not null references public.tags(id) on delete cascade,
  created_at timestamptz not null default now(),
  primary key (entity_type, entity_id, tag_id)
);

create index if not exists idx_lesson_tags_tag on public.lesson_tags(tag_id);
create index if not exists idx_lesson_tags_entity on public.lesson_tags(entity_type, entity_id);

-- ============================================================================
-- 3. CURRICULUM VERSIONS
-- ============================================================================
create table if not exists public.curriculum_versions (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid not null references public.course_lessons(id) on delete cascade,
  version integer not null,
  status text not null default 'active'
    check (status in ('active', 'archived', 'rolled_back')),
  snapshot jsonb not null,
  checksum text not null,
  created_by uuid references auth.users(id),
  created_at timestamptz not null default now(),
  reason text,
  metadata jsonb default '{}'::jsonb,
  constraint uq_curriculum_version unique (lesson_id, version)
);

create index if not exists idx_curriculum_versions_lesson on public.curriculum_versions(lesson_id);
create index if not exists idx_curriculum_versions_status on public.curriculum_versions(status);
create index if not exists idx_curriculum_versions_created on public.curriculum_versions(created_at desc);

-- ============================================================================
-- 4. LESSON REVIEW NOTES (immutable append-only)
-- ============================================================================
create table if not exists public.lesson_review_notes (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid not null references public.course_lessons(id) on delete cascade,
  author_id uuid references auth.users(id) on delete set null,
  section text,
  note text not null,
  is_deleted boolean not null default false,
  created_at timestamptz not null default now()
);

create index if not exists idx_lesson_review_notes_lesson on public.lesson_review_notes(lesson_id);
create index if not exists idx_lesson_review_notes_author on public.lesson_review_notes(author_id);
create index if not exists idx_lesson_review_notes_created on public.lesson_review_notes(created_at desc);

-- ============================================================================
-- 5. CURRICULUM QUALITY SCORES (granular sub-scores, 1:1 per lesson)
-- ============================================================================
create table if not exists public.curriculum_quality_scores (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid not null references public.course_lessons(id) on delete cascade,
  overall integer not null check (overall >= 0 and overall <= 100),
  completeness_score integer not null default 0 check (completeness_score >= 0 and completeness_score <= 100),
  accuracy_score integer not null default 0 check (accuracy_score >= 0 and accuracy_score <= 100),
  pedagogy_score integer not null default 0 check (pedagogy_score >= 0 and pedagogy_score <= 100),
  engagement_score integer not null default 0 check (engagement_score >= 0 and engagement_score <= 100),
  formatting_score integer not null default 0 check (formatting_score >= 0 and formatting_score <= 100),
  calculated_at timestamptz not null default now()
);

alter table public.curriculum_quality_scores
  add constraint uq_curriculum_quality_scores_lesson unique (lesson_id);

create index if not exists idx_curriculum_quality_scores_lesson on public.curriculum_quality_scores(lesson_id);
create index if not exists idx_curriculum_quality_scores_overall on public.curriculum_quality_scores(overall);

-- ============================================================================
-- 6. CURRICULUM QUALITY FINDINGS
-- ============================================================================
create table if not exists public.curriculum_quality_findings (
  id uuid primary key default gen_random_uuid(),
  lesson_id uuid not null references public.course_lessons(id) on delete cascade,
  category text not null,
  field_name text not null,
  current_value text,
  expected_value text,
  explanation text,
  example_wrong text,
  example_correct text,
  source_reference text,
  severity text not null check (severity in ('error', 'warning', 'info')),
  confidence integer not null default 50 check (confidence >= 0 and confidence <= 100),
  status text not null default 'open' check (status in ('open', 'approved', 'rejected', 'false_positive', 'manual_edit')),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_curriculum_quality_findings_lesson on public.curriculum_quality_findings(lesson_id);
create index if not exists idx_curriculum_quality_findings_status on public.curriculum_quality_findings(status);
create index if not exists idx_curriculum_quality_findings_severity on public.curriculum_quality_findings(severity);

-- ============================================================================
-- 7. CURRICULUM QUALITY ACTIONS (action log)
-- ============================================================================
create table if not exists public.curriculum_quality_actions (
  id uuid primary key default gen_random_uuid(),
  finding_id uuid not null references public.curriculum_quality_findings(id) on delete cascade,
  action text not null check (action in ('approve', 'reject', 'false_positive', 'manual_edit', 'reopen')),
  actioned_by uuid references auth.users(id),
  notes text,
  created_at timestamptz not null default now()
);

create index if not exists idx_curriculum_quality_actions_finding on public.curriculum_quality_actions(finding_id);

-- ============================================================================
-- 8. CURRICULUM QUALITY APPROVALS (owner approval queue)
-- ============================================================================
create table if not exists public.curriculum_quality_approvals (
  id uuid primary key default gen_random_uuid(),
  finding_id uuid not null references public.curriculum_quality_findings(id) on delete cascade,
  lesson_id uuid not null references public.course_lessons(id) on delete cascade,
  proposed_change jsonb not null,
  notes text,
  status text not null default 'pending' check (status in ('pending', 'approved', 'rejected')),
  requested_by uuid references auth.users(id),
  approved_by uuid references auth.users(id),
  approved_at timestamptz,
  created_at timestamptz not null default now()
);

create index if not exists idx_curriculum_quality_approvals_status on public.curriculum_quality_approvals(status);

-- ============================================================================
-- 9. CURRICULUM QUALITY SUMMARY (cached aggregate)
-- ============================================================================
create table if not exists public.curriculum_quality_summary (
  lesson_id uuid primary key references public.course_lessons(id) on delete cascade,
  quality_score integer not null default 100 check (quality_score >= 0 and quality_score <= 100),
  total_issues integer not null default 0,
  error_count integer not null default 0,
  warning_count integer not null default 0,
  info_count integer not null default 0,
  audit_status text check (audit_status in ('error', 'warning', 'info', 'clean')),
  updated_at timestamptz not null default now()
);

-- ============================================================================
-- 10. RLS POLICIES
-- ============================================================================

-- 10a. Enable RLS on new tables
alter table public.lesson_tags enable row level security;
alter table public.curriculum_versions enable row level security;
alter table public.curriculum_quality_scores enable row level security;
alter table public.lesson_review_notes enable row level security;
alter table public.curriculum_quality_findings enable row level security;
alter table public.curriculum_quality_actions enable row level security;
alter table public.curriculum_quality_approvals enable row level security;
alter table public.curriculum_quality_summary enable row level security;

-- 10b. Public SELECT policies
do $$
declare
  tables_list text[] := array[
    'lesson_tags', 'curriculum_versions',
    'curriculum_quality_scores', 'lesson_review_notes',
    'curriculum_quality_findings', 'curriculum_quality_actions',
    'curriculum_quality_approvals', 'curriculum_quality_summary'
  ];
  t text;
begin
  foreach t in array tables_list loop
    execute format(
      'drop policy if exists "public_select_%s" on public.%I;', t, t
    );
    execute format(
      'create policy "public_select_%s" on public.%I for select using (true);',
      t, t
    );
  end loop;
end $$;

-- 10c. Admin ALL policies
do $$
declare
  tables_list text[] := array[
    'lesson_tags', 'curriculum_versions',
    'curriculum_quality_scores', 'lesson_review_notes',
    'curriculum_quality_findings', 'curriculum_quality_actions',
    'curriculum_quality_approvals', 'curriculum_quality_summary'
  ];
  t text;
begin
  foreach t in array tables_list loop
    execute format(
      'drop policy if exists "admin_all_%s" on public.%I;', t, t
    );
    execute format(
      'create policy "admin_all_%s" on public.%I for all using (auth.jwt() ->> ''role'' = ''admin'');',
      t, t
    );
  end loop;
end $$;

-- ============================================================================
-- 11. VERIFY MIGRATION
-- ============================================================================
do $$
declare
  table_count integer;
begin
  select count(*) into table_count
  from pg_tables
  where schemaname = 'public'
    and tablename in (
      'lesson_tags', 'curriculum_versions',
      'curriculum_quality_scores', 'lesson_review_notes',
      'curriculum_quality_findings', 'curriculum_quality_actions',
      'curriculum_quality_approvals', 'curriculum_quality_summary'
    );

  raise notice 'Migration 00071 complete: % new tables created/verified', table_count;
end $$;
