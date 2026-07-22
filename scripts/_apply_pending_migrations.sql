-- ============================================================================
-- PENDING VERB SYSTEM MIGRATIONS
-- Applied: 00053 + 00056 + 00066 + 00068 + 00069
-- ============================================================================

-- ============================================================================
-- [00053] verb_change_history
-- ============================================================================
create table if not exists public.verb_change_history (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  field text not null,
  old_value text,
  new_value text,
  changed_by uuid references auth.users(id),
  changed_at timestamptz not null default now()
);
create index if not exists idx_verb_change_history_verb_id on public.verb_change_history(verb_id);
create index if not exists idx_verb_change_history_changed_at on public.verb_change_history(changed_at desc);
alter table public.verb_change_history enable row level security;
drop policy if exists "admins can select verb change history" on public.verb_change_history;
create policy "admins can select verb change history" on public.verb_change_history for select using (true);
drop policy if exists "admins can insert verb change history" on public.verb_change_history;
create policy "admins can insert verb change history" on public.verb_change_history for insert with check (true);

-- ============================================================================
-- [00056] Quality Management Tables
-- ============================================================================
do $$ begin
  create type finding_severity as enum ('error', 'warning', 'info');
exception when duplicate_object then null;
end $$;
do $$ begin
  create type finding_status as enum ('open', 'approved', 'rejected', 'false_positive', 'manual_edit');
exception when duplicate_object then null;
end $$;
do $$ begin
  create type finding_action_type as enum ('approve', 'reject', 'false_positive', 'manual_edit');
exception when duplicate_object then null;
end $$;
do $$ begin
  create type approval_status as enum ('pending', 'approved', 'rejected');
exception when duplicate_object then null;
end $$;

create table if not exists public.verb_quality_findings (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  category text not null,
  field_name text not null,
  current_value text,
  expected_value text,
  explanation text,
  example_wrong text,
  example_correct text,
  source_reference text,
  severity finding_severity not null default 'warning',
  confidence integer not null default 50 check (confidence >= 0 and confidence <= 100),
  status finding_status not null default 'open',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create unique index if not exists idx_quality_findings_unique
  on public.verb_quality_findings (verb_id, category, field_name)
  where status = 'open';
create index if not exists idx_quality_findings_verb on public.verb_quality_findings(verb_id);
create index if not exists idx_quality_findings_status on public.verb_quality_findings(status);
create index if not exists idx_quality_findings_severity on public.verb_quality_findings(severity);

create table if not exists public.verb_quality_actions (
  id uuid primary key default gen_random_uuid(),
  finding_id uuid not null references public.verb_quality_findings(id) on delete cascade,
  action finding_action_type not null,
  actioned_by uuid references auth.users(id),
  notes text,
  created_at timestamptz not null default now()
);
create index if not exists idx_quality_actions_finding on public.verb_quality_actions(finding_id);
create index if not exists idx_quality_actions_actioned on public.verb_quality_actions(actioned_by);

create table if not exists public.verb_quality_approvals (
  id uuid primary key default gen_random_uuid(),
  finding_id uuid not null references public.verb_quality_findings(id) on delete cascade,
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  proposed_change jsonb not null,
  notes text,
  status approval_status not null default 'pending',
  approved_by uuid references auth.users(id),
  approved_at timestamptz,
  created_at timestamptz not null default now()
);
create index if not exists idx_quality_approvals_finding on public.verb_quality_approvals(finding_id);
create index if not exists idx_quality_approvals_verb on public.verb_quality_approvals(verb_id);
create index if not exists idx_quality_approvals_status on public.verb_quality_approvals(status);

create table if not exists public.verb_quality_summary (
  verb_id uuid primary key references public.german_verbs(id) on delete cascade,
  quality_score integer not null default 100 check (quality_score >= 0 and quality_score <= 100),
  total_issues integer not null default 0,
  error_count integer not null default 0,
  warning_count integer not null default 0,
  info_count integer not null default 0,
  audit_status finding_severity default null,
  last_audited_at timestamptz,
  updated_at timestamptz not null default now()
);
create index if not exists idx_quality_summary_score on public.verb_quality_summary(quality_score);
create index if not exists idx_quality_summary_audit_status on public.verb_quality_summary(audit_status);

alter table public.verb_quality_findings enable row level security;
alter table public.verb_quality_actions enable row level security;
alter table public.verb_quality_approvals enable row level security;
alter table public.verb_quality_summary enable row level security;

do $$ begin
  drop policy if exists "quality_findings_select" on public.verb_quality_findings;
  create policy "quality_findings_select" on public.verb_quality_findings for select using (true);
end $$;
do $$ begin
  drop policy if exists "quality_actions_select" on public.verb_quality_actions;
  create policy "quality_actions_select" on public.verb_quality_actions for select using (true);
end $$;
do $$ begin
  drop policy if exists "quality_approvals_select" on public.verb_quality_approvals;
  create policy "quality_approvals_select" on public.verb_quality_approvals for select using (true);
end $$;
do $$ begin
  drop policy if exists "quality_summary_select" on public.verb_quality_summary;
  create policy "quality_summary_select" on public.verb_quality_summary for select using (true);
end $$;

-- ============================================================================
-- [00066] Enterprise Import Pipeline Tables
-- ============================================================================
create table if not exists public.verb_scraping_jobs (
  id uuid primary key default gen_random_uuid(),
  source text not null,
  cefr_level text,
  requested_count integer not null default 20,
  status text not null default 'running'
    check (status in ('pending', 'running', 'completed', 'failed', 'cancelled')),
  total_fetched integer not null default 0,
  total_errors integer not null default 0,
  progress integer not null default 0,
  error_message text,
  started_by uuid references auth.users(id),
  started_at timestamptz not null default now(),
  completed_at timestamptz,
  duration_seconds integer
);
create index if not exists idx_verb_scraping_jobs_status on public.verb_scraping_jobs(status);
create index if not exists idx_verb_scraping_jobs_started on public.verb_scraping_jobs(started_at desc);

create table if not exists public.verb_import_jobs (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  status text not null default 'pending'
    check (status in ('pending', 'running', 'paused', 'completed', 'failed', 'cancelled')),
  progress integer not null default 0,
  current_index integer not null default 0,
  total_items integer not null default 0,
  total_success integer not null default 0,
  total_errors integer not null default 0,
  total_skipped integer not null default 0,
  started_by uuid references auth.users(id),
  started_at timestamptz not null default now(),
  paused_at timestamptz,
  completed_at timestamptz,
  error_message text,
  metadata jsonb default '{}'::jsonb
);
create index if not exists idx_verb_import_jobs_status on public.verb_import_jobs(status);
create index if not exists idx_verb_import_jobs_started on public.verb_import_jobs(started_at desc);

create table if not exists public.verb_import_job_items (
  id uuid primary key default gen_random_uuid(),
  job_id uuid not null references public.verb_import_jobs(id) on delete cascade,
  index integer not null,
  infinitive text not null,
  source text not null,
  status text not null default 'pending'
    check (status in ('pending', 'running', 'completed', 'failed', 'skipped', 'retrying')),
  result_data jsonb,
  error_message text,
  retry_count integer not null default 0,
  max_retries integer not null default 3,
  started_at timestamptz,
  completed_at timestamptz,
  constraint uq_import_job_item unique (job_id, index)
);
create index if not exists idx_verb_import_job_items_job on public.verb_import_job_items(job_id);
create index if not exists idx_verb_import_job_items_status on public.verb_import_job_items(status);

create table if not exists public.verb_versions (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  version integer not null,
  status text not null default 'active'
    check (status in ('active', 'archived', 'rolled_back')),
  verb_snapshot jsonb not null,
  conjugations_snapshot jsonb,
  checksum text not null,
  published_by uuid references auth.users(id),
  published_at timestamptz not null default now(),
  reason text,
  source_ids text[],
  metadata jsonb default '{}'::jsonb,
  constraint uq_verb_version unique (verb_id, version)
);
create index if not exists idx_verb_versions_verb on public.verb_versions(verb_id);
create index if not exists idx_verb_versions_status on public.verb_versions(status);
create index if not exists idx_verb_versions_published on public.verb_versions(published_at desc);

create table if not exists public.verb_conflicts (
  id uuid primary key default gen_random_uuid(),
  infinitive text not null,
  field_name text not null,
  source_a_name text not null,
  source_a_value text,
  source_a_confidence integer,
  source_b_name text not null,
  source_b_value text,
  source_b_confidence integer,
  resolution text
    check (resolution in ('use_source_a', 'use_source_b', 'manual', 'pending')),
  resolved_by uuid references auth.users(id),
  resolved_at timestamptz,
  manual_value text,
  notes text,
  created_at timestamptz not null default now(),
  constraint uq_verb_conflict unique (infinitive, field_name)
);
create index if not exists idx_verb_conflicts_infinitive on public.verb_conflicts(infinitive);
create index if not exists idx_verb_conflicts_resolution on public.verb_conflicts(resolution);
create index if not exists idx_verb_conflicts_field on public.verb_conflicts(field_name);
create index if not exists idx_verb_conflicts_created on public.verb_conflicts(created_at desc);

create table if not exists public.verb_publish_logs (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid references public.german_verbs(id) on delete set null,
  infinitive text not null,
  operation text not null
    check (operation in ('publish', 'unpublish', 'update', 'rollback', 'version_create')),
  previous_snapshot jsonb,
  new_snapshot jsonb,
  diff_summary jsonb,
  version_id uuid references public.verb_versions(id),
  published_by uuid references auth.users(id),
  published_at timestamptz not null default now(),
  ip_address text,
  user_agent text,
  status text not null default 'success'
    check (status in ('success', 'partial', 'failed')),
  error_message text
);
create index if not exists idx_verb_publish_logs_verb on public.verb_publish_logs(verb_id);
create index if not exists idx_verb_publish_logs_published on public.verb_publish_logs(published_at desc);
create index if not exists idx_verb_publish_logs_operation on public.verb_publish_logs(operation);

create table if not exists public.verb_field_sources (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  field_name text not null,
  value text,
  source_name text not null,
  source_url text,
  confidence integer not null default 50 check (confidence >= 0 and confidence <= 100),
  verified boolean not null default false,
  verified_by uuid references auth.users(id),
  verified_at timestamptz,
  last_checked timestamptz not null default now(),
  constraint uq_verb_field_source unique (verb_id, field_name, source_name)
);
create index if not exists idx_verb_field_sources_verb on public.verb_field_sources(verb_id);
create index if not exists idx_verb_field_sources_field on public.verb_field_sources(field_name);

create table if not exists public.verb_review_history (
  id uuid primary key default gen_random_uuid(),
  infinitive text not null,
  reviewer_id uuid references auth.users(id),
  action text not null
    check (action in ('approved', 'rejected', 'edited', 'skipped', 'flagged')),
  previous_status text,
  new_status text,
  notes text,
  created_at timestamptz not null default now()
);
create index if not exists idx_verb_review_history_infinitive on public.verb_review_history(infinitive);
create index if not exists idx_verb_review_history_created on public.verb_review_history(created_at desc);
create index if not exists idx_verb_review_history_reviewer on public.verb_review_history(reviewer_id);

create table if not exists public.verb_audit_logs (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id),
  action text not null,
  entity_type text not null,
  entity_id text,
  entity_infinitive text,
  old_values jsonb,
  new_values jsonb,
  diff jsonb,
  ip_address text,
  user_agent text,
  duration_ms integer,
  status text not null default 'success'
    check (status in ('success', 'error', 'warning')),
  error_message text,
  metadata jsonb default '{}'::jsonb,
  created_at timestamptz not null default now()
);
create index if not exists idx_verb_audit_logs_user on public.verb_audit_logs(user_id);
create index if not exists idx_verb_audit_logs_action on public.verb_audit_logs(action);
create index if not exists idx_verb_audit_logs_entity on public.verb_audit_logs(entity_type, entity_id);
create index if not exists idx_verb_audit_logs_created on public.verb_audit_logs(created_at desc);
create index if not exists idx_verb_audit_logs_infinitive on public.verb_audit_logs(entity_infinitive);

-- 00066 RLS
alter table public.verb_scraping_jobs enable row level security;
alter table public.verb_import_jobs enable row level security;
alter table public.verb_import_job_items enable row level security;
alter table public.verb_versions enable row level security;
alter table public.verb_conflicts enable row level security;
alter table public.verb_publish_logs enable row level security;
alter table public.verb_field_sources enable row level security;
alter table public.verb_review_history enable row level security;
alter table public.verb_audit_logs enable row level security;

do $$
begin
  if not exists (select 1 from pg_policies where policyname = 'Public read verb_scraping_jobs') then
    create policy "Public read verb_scraping_jobs" on public.verb_scraping_jobs for select using (true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Public read verb_import_jobs') then
    create policy "Public read verb_import_jobs" on public.verb_import_jobs for select using (true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Public read verb_import_job_items') then
    create policy "Public read verb_import_job_items" on public.verb_import_job_items for select using (true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Public read verb_versions') then
    create policy "Public read verb_versions" on public.verb_versions for select using (true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Public read verb_conflicts') then
    create policy "Public read verb_conflicts" on public.verb_conflicts for select using (true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Public read verb_publish_logs') then
    create policy "Public read verb_publish_logs" on public.verb_publish_logs for select using (true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Public read verb_field_sources') then
    create policy "Public read verb_field_sources" on public.verb_field_sources for select using (true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Public read verb_review_history') then
    create policy "Public read verb_review_history" on public.verb_review_history for select using (true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Public read verb_audit_logs') then
    create policy "Public read verb_audit_logs" on public.verb_audit_logs for select using (true);
  end if;
end $$;

-- 00066 Enhance verb_reference_candidates
alter table public.verb_reference_candidates add column if not exists diff_against_production jsonb default null;
alter table public.verb_reference_candidates add column if not exists conflict_ids uuid[];
alter table public.verb_reference_candidates add column if not exists publish_ready boolean default false;
alter table public.verb_reference_candidates add column if not exists publish_validation jsonb default null;
alter table public.verb_reference_candidates add column if not exists version_id uuid references public.verb_versions(id);

-- ============================================================================
-- [00068] Cleanup + Source Management Enhancements
-- ============================================================================
drop table if exists public.scraped_candidates cascade;
drop table if exists public.verb_audit_runs cascade;
drop table if exists public.verb_audit_issues cascade;
drop table if exists public.verb_audit_sources cascade;
drop table if exists public.verb_quality_checks cascade;

alter table if exists public.verb_sources
  add column if not exists priority integer not null default 5,
  add column if not exists configuration jsonb default '{}'::jsonb,
  add column if not exists last_scraped_at timestamptz,
  add column if not exists success_rate numeric(5,2) default 100.00,
  add column if not exists error_count integer not null default 0,
  add column if not exists scraping_history jsonb default '[]'::jsonb,
  add column if not exists icon_url text,
  add column if not exists rate_limit integer default 10,
  add column if not exists rate_window integer default 60;

create table if not exists public.verb_source_errors (
  id uuid primary key default gen_random_uuid(),
  source_id uuid references public.verb_sources(id) on delete cascade,
  verb_infinitive text,
  error_type text not null,
  error_message text,
  stack_trace text,
  created_at timestamptz not null default now()
);
create index if not exists idx_verb_source_errors_source on public.verb_source_errors(source_id);
create index if not exists idx_verb_source_errors_created on public.verb_source_errors(created_at desc);
alter table public.verb_source_errors enable row level security;
do $$ begin
  if not exists (select 1 from pg_policies where policyname = 'Public read verb_source_errors') then
    create policy "Public read verb_source_errors" on public.verb_source_errors for select using (true);
  end if;
end $$;

-- verb_reference_candidates: extend status to include all workflow states
do $$
begin
  alter table public.verb_reference_candidates
    alter column status type text using status::text;
exception when others then null;
end $$;
do $$ begin
  alter table public.verb_reference_candidates
    drop constraint if exists verb_reference_candidates_status_check;
end $$;
do $$ begin
  alter table public.verb_reference_candidates
    add constraint verb_reference_candidates_status_check
      check (status in ('PENDING','DRAFT','IN_REVIEW','APPROVED','REJECTED','PUBLISHED'));
end $$;

alter table if exists public.german_verbs
  add column if not exists pipeline_metadata jsonb default '{}'::jsonb;

-- Add config and source_id to verb_scraping_jobs
do $$ begin
  alter table public.verb_scraping_jobs
    add column if not exists config jsonb default '{}'::jsonb,
    add column if not exists source_id uuid references public.verb_sources(id);
exception when others then null;
end $$;

-- ============================================================================
-- [00069] Educational CMS Tables
-- ============================================================================
do $$ begin
  create type content_status as enum ('draft', 'in_review', 'approved', 'published', 'archived');
exception when duplicate_object then null;
end $$;
do $$ begin
  create type audio_type as enum ('tts', 'native', 'user_upload');
exception when duplicate_object then null;
end $$;
do $$ begin
  create type pronunciation_region as enum ('standard', 'german', 'austrian', 'swiss');
exception when duplicate_object then null;
end $$;

create table if not exists public.verb_translations (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  language_code text not null check (language_code ~ '^[a-z]{2}$'),
  translation text not null,
  source text,
  confidence integer not null default 100 check (confidence >= 0 and confidence <= 100),
  status content_status not null default 'approved',
  created_by uuid references auth.users(id),
  reviewed_by uuid references auth.users(id),
  reviewed_at timestamptz,
  version integer not null default 1,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
alter table public.verb_translations add constraint uq_verb_translations_verb_lang unique (verb_id, language_code);
create index if not exists idx_verb_translations_verb on public.verb_translations(verb_id);
create index if not exists idx_verb_translations_lang on public.verb_translations(language_code);
create index if not exists idx_verb_translations_status on public.verb_translations(status);

create table if not exists public.verb_synonyms (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  title text not null,
  target_verb_id uuid references public.german_verbs(id) on delete set null,
  source text,
  status content_status not null default 'approved',
  created_by uuid references auth.users(id),
  reviewed_by uuid references auth.users(id),
  reviewed_at timestamptz,
  version integer not null default 1,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create index if not exists idx_verb_synonyms_verb on public.verb_synonyms(verb_id);
create index if not exists idx_verb_synonyms_target on public.verb_synonyms(target_verb_id);
create index if not exists idx_verb_synonyms_status on public.verb_synonyms(status);

create table if not exists public.verb_antonyms (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  title text not null,
  target_verb_id uuid references public.german_verbs(id) on delete set null,
  source text,
  status content_status not null default 'approved',
  created_by uuid references auth.users(id),
  reviewed_by uuid references auth.users(id),
  reviewed_at timestamptz,
  version integer not null default 1,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create index if not exists idx_verb_antonyms_verb on public.verb_antonyms(verb_id);
create index if not exists idx_verb_antonyms_target on public.verb_antonyms(target_verb_id);
create index if not exists idx_verb_antonyms_status on public.verb_antonyms(status);

create table if not exists public.tags (
  id uuid primary key default gen_random_uuid(),
  name text not null unique,
  category text,
  created_at timestamptz not null default now()
);
create index if not exists idx_tags_name on public.tags(name);
create index if not exists idx_tags_category on public.tags(category);

create table if not exists public.entity_tags (
  entity_type text not null,
  entity_id uuid not null,
  tag_id uuid not null references public.tags(id) on delete cascade,
  created_at timestamptz not null default now(),
  primary key (entity_type, entity_id, tag_id)
);
create index if not exists idx_entity_tags_tag on public.entity_tags(tag_id);
create index if not exists idx_entity_tags_entity on public.entity_tags(entity_type, entity_id);

create table if not exists public.verb_audio (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  type audio_type not null,
  provider text,
  voice text,
  version text,
  file_url text not null,
  mime_type text not null default 'audio/mpeg',
  duration_seconds integer,
  is_primary boolean not null default false,
  status content_status not null default 'approved',
  created_by uuid references auth.users(id),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create unique index if not exists idx_verb_audio_primary on public.verb_audio(verb_id) where is_primary = true;
create index if not exists idx_verb_audio_verb on public.verb_audio(verb_id);
create index if not exists idx_verb_audio_status on public.verb_audio(status);

create table if not exists public.verb_pronunciations (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  ipa text not null,
  syllables text,
  difficult_sounds text[] default '{}',
  region pronunciation_region not null default 'standard',
  source text,
  status content_status not null default 'approved',
  created_by uuid references auth.users(id),
  reviewed_by uuid references auth.users(id),
  reviewed_at timestamptz,
  version integer not null default 1,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
alter table public.verb_pronunciations add constraint uq_verb_pronunciations_verb_region unique (verb_id, region);
create index if not exists idx_verb_pronunciations_verb on public.verb_pronunciations(verb_id);
create index if not exists idx_verb_pronunciations_region on public.verb_pronunciations(region);
create index if not exists idx_verb_pronunciations_status on public.verb_pronunciations(status);

create table if not exists public.verb_quality_scores (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  overall integer not null check (overall >= 0 and overall <= 100),
  translations_score integer not null default 0 check (translations_score >= 0 and translations_score <= 100),
  examples_score integer not null default 0 check (examples_score >= 0 and examples_score <= 100),
  conjugations_score integer not null default 0 check (conjugations_score >= 0 and conjugations_score <= 100),
  grammar_score integer not null default 0 check (grammar_score >= 0 and grammar_score <= 100),
  synonyms_score integer not null default 0 check (synonyms_score >= 0 and synonyms_score <= 100),
  audio_score integer not null default 0 check (audio_score >= 0 and audio_score <= 100),
  calculated_at timestamptz not null default now()
);
alter table public.verb_quality_scores add constraint uq_verb_quality_scores_verb unique (verb_id);
create index if not exists idx_verb_quality_scores_verb on public.verb_quality_scores(verb_id);
create index if not exists idx_verb_quality_scores_overall on public.verb_quality_scores(overall);

create table if not exists public.verb_review_notes (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  author_id uuid references auth.users(id) on delete set null,
  section text,
  note text not null,
  is_deleted boolean not null default false,
  created_at timestamptz not null default now()
);
create index if not exists idx_verb_review_notes_verb on public.verb_review_notes(verb_id);
create index if not exists idx_verb_review_notes_author on public.verb_review_notes(author_id);
create index if not exists idx_verb_review_notes_created on public.verb_review_notes(created_at desc);

create table if not exists public.verb_source_comparisons (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  field_name text not null,
  source_name text not null,
  value text,
  confidence integer not null default 50 check (confidence >= 0 and confidence <= 100),
  fetched_at timestamptz not null default now()
);
alter table public.verb_source_comparisons add constraint uq_verb_source_comparisons unique (verb_id, field_name, source_name);
create index if not exists idx_verb_source_comparisons_verb on public.verb_source_comparisons(verb_id);
create index if not exists idx_verb_source_comparisons_field on public.verb_source_comparisons(field_name);

-- Extend existing tables
do $$ begin alter table public.verb_examples add column if not exists entity_type text; exception when others then null; end $$;
do $$ begin alter table public.verb_examples add column if not exists entity_id uuid; exception when others then null; end $$;
do $$ begin alter table public.verb_examples add column if not exists translations jsonb default '{}'::jsonb; exception when others then null; end $$;
do $$ begin alter table public.verb_examples add column if not exists status content_status not null default 'approved'; exception when others then null; end $$;
do $$ begin alter table public.verb_examples add column if not exists created_by uuid references auth.users(id); exception when others then null; end $$;
do $$ begin alter table public.verb_examples add column if not exists reviewed_by uuid references auth.users(id); exception when others then null; end $$;
do $$ begin alter table public.verb_examples add column if not exists reviewed_at timestamptz; exception when others then null; end $$;
do $$ begin alter table public.verb_examples add column if not exists version integer not null default 1; exception when others then null; end $$;
do $$ begin alter table public.verb_examples add column if not exists updated_at timestamptz not null default now(); exception when others then null; end $$;
do $$ begin alter table public.verb_examples add column if not exists grammar_notes text not null default ''; exception when others then null; end $$;
update public.verb_examples set entity_type = 'verb', entity_id = verb_id where entity_type is null and verb_id is not null;
create index if not exists idx_verb_examples_entity on public.verb_examples(entity_type, entity_id);
create index if not exists idx_verb_examples_status on public.verb_examples(status);

do $$ begin alter table public.verb_collocations add column if not exists entity_type text; exception when others then null; end $$;
do $$ begin alter table public.verb_collocations add column if not exists entity_id uuid; exception when others then null; end $$;
do $$ begin alter table public.verb_collocations add column if not exists translations jsonb default '{}'::jsonb; exception when others then null; end $$;
do $$ begin alter table public.verb_collocations add column if not exists status content_status not null default 'approved'; exception when others then null; end $$;
do $$ begin alter table public.verb_collocations add column if not exists created_by uuid references auth.users(id); exception when others then null; end $$;
do $$ begin alter table public.verb_collocations add column if not exists reviewed_by uuid references auth.users(id); exception when others then null; end $$;
do $$ begin alter table public.verb_collocations add column if not exists reviewed_at timestamptz; exception when others then null; end $$;
do $$ begin alter table public.verb_collocations add column if not exists version integer not null default 1; exception when others then null; end $$;
do $$ begin alter table public.verb_collocations add column if not exists updated_at timestamptz not null default now(); exception when others then null; end $$;
update public.verb_collocations set entity_type = 'verb', entity_id = verb_id where entity_type is null and verb_id is not null;
create index if not exists idx_verb_collocations_entity on public.verb_collocations(entity_type, entity_id);
create index if not exists idx_verb_collocations_status on public.verb_collocations(status);

do $$ begin alter table public.verb_typical_questions add column if not exists entity_type text; exception when others then null; end $$;
do $$ begin alter table public.verb_typical_questions add column if not exists entity_id uuid; exception when others then null; end $$;
do $$ begin alter table public.verb_typical_questions add column if not exists translations jsonb default '{}'::jsonb; exception when others then null; end $$;
do $$ begin alter table public.verb_typical_questions add column if not exists status content_status not null default 'approved'; exception when others then null; end $$;
do $$ begin alter table public.verb_typical_questions add column if not exists created_by uuid references auth.users(id); exception when others then null; end $$;
do $$ begin alter table public.verb_typical_questions add column if not exists reviewed_by uuid references auth.users(id); exception when others then null; end $$;
do $$ begin alter table public.verb_typical_questions add column if not exists reviewed_at timestamptz; exception when others then null; end $$;
do $$ begin alter table public.verb_typical_questions add column if not exists version integer not null default 1; exception when others then null; end $$;
do $$ begin alter table public.verb_typical_questions add column if not exists updated_at timestamptz not null default now(); exception when others then null; end $$;
update public.verb_typical_questions set entity_type = 'verb', entity_id = verb_id where entity_type is null and verb_id is not null;
create index if not exists idx_verb_questions_entity on public.verb_typical_questions(entity_type, entity_id);
create index if not exists idx_verb_questions_status on public.verb_typical_questions(status);

do $$ begin alter table public.verb_learning_tips add column if not exists entity_type text; exception when others then null; end $$;
do $$ begin alter table public.verb_learning_tips add column if not exists entity_id uuid; exception when others then null; end $$;
do $$ begin alter table public.verb_learning_tips add column if not exists status content_status not null default 'approved'; exception when others then null; end $$;
do $$ begin alter table public.verb_learning_tips add column if not exists created_by uuid references auth.users(id); exception when others then null; end $$;
do $$ begin alter table public.verb_learning_tips add column if not exists reviewed_by uuid references auth.users(id); exception when others then null; end $$;
do $$ begin alter table public.verb_learning_tips add column if not exists reviewed_at timestamptz; exception when others then null; end $$;
do $$ begin alter table public.verb_learning_tips add column if not exists version integer not null default 1; exception when others then null; end $$;
do $$ begin alter table public.verb_learning_tips add column if not exists updated_at timestamptz not null default now(); exception when others then null; end $$;
update public.verb_learning_tips set entity_type = 'verb', entity_id = verb_id where entity_type is null and verb_id is not null;
create index if not exists idx_verb_tips_entity on public.verb_learning_tips(entity_type, entity_id);
create index if not exists idx_verb_tips_status on public.verb_learning_tips(status);

do $$ begin alter table public.verb_common_mistakes add column if not exists entity_type text; exception when others then null; end $$;
do $$ begin alter table public.verb_common_mistakes add column if not exists entity_id uuid; exception when others then null; end $$;
do $$ begin alter table public.verb_common_mistakes add column if not exists translations jsonb default '{}'::jsonb; exception when others then null; end $$;
do $$ begin alter table public.verb_common_mistakes add column if not exists status content_status not null default 'approved'; exception when others then null; end $$;
do $$ begin alter table public.verb_common_mistakes add column if not exists created_by uuid references auth.users(id); exception when others then null; end $$;
do $$ begin alter table public.verb_common_mistakes add column if not exists reviewed_by uuid references auth.users(id); exception when others then null; end $$;
do $$ begin alter table public.verb_common_mistakes add column if not exists reviewed_at timestamptz; exception when others then null; end $$;
do $$ begin alter table public.verb_common_mistakes add column if not exists version integer not null default 1; exception when others then null; end $$;
do $$ begin alter table public.verb_common_mistakes add column if not exists updated_at timestamptz not null default now(); exception when others then null; end $$;
update public.verb_common_mistakes set entity_type = 'verb', entity_id = verb_id where entity_type is null and verb_id is not null;
create index if not exists idx_verb_mistakes_entity on public.verb_common_mistakes(entity_type, entity_id);
create index if not exists idx_verb_mistakes_status on public.verb_common_mistakes(status);

do $$ begin alter table public.verb_family_members add column if not exists created_by uuid references auth.users(id); exception when others then null; end $$;
do $$ begin alter table public.verb_similar_verbs add column if not exists created_by uuid references auth.users(id); exception when others then null; end $$;
do $$ begin alter table public.verb_change_history add column if not exists entity_type text; exception when others then null; end $$;
do $$ begin alter table public.verb_change_history add column if not exists entity_id uuid; exception when others then null; end $$;
update public.verb_change_history set entity_type = 'german_verbs', entity_id = verb_id where entity_type is null and verb_id is not null;
create index if not exists idx_verb_change_history_entity on public.verb_change_history(entity_type, entity_id);

-- 00069 RLS policies
alter table public.verb_translations enable row level security;
alter table public.verb_synonyms enable row level security;
alter table public.verb_antonyms enable row level security;
alter table public.tags enable row level security;
alter table public.entity_tags enable row level security;
alter table public.verb_audio enable row level security;
alter table public.verb_pronunciations enable row level security;
alter table public.verb_quality_scores enable row level security;
alter table public.verb_review_notes enable row level security;
alter table public.verb_source_comparisons enable row level security;

do $$ declare tables_list text[] := array['verb_translations','verb_synonyms','verb_antonyms','tags','entity_tags','verb_audio','verb_pronunciations','verb_quality_scores','verb_review_notes','verb_source_comparisons']; t text; begin foreach t in array tables_list loop execute format('drop policy if exists "public_select_%s" on public.%I;', t, t); execute format('create policy "public_select_%s" on public.%I for select using (true);', t, t); end loop; end $$;
do $$ declare tables_list text[] := array['verb_translations','verb_synonyms','verb_antonyms','tags','entity_tags','verb_audio','verb_pronunciations','verb_quality_scores','verb_review_notes','verb_source_comparisons']; t text; begin foreach t in array tables_list loop execute format('drop policy if exists "admin_all_%s" on public.%I;', t, t); execute format('create policy "admin_all_%s" on public.%I for all using (auth.jwt() ->> ''role'' = ''admin'');', t, t); end loop; end $$;

-- ============================================================================
-- FINAL: Refresh PostgREST schema cache
-- ============================================================================
notify pgrst, 'reload schema';
