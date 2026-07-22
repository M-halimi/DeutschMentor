-- 00066_verb_enterprise_import.sql
--
-- Enterprise-grade Verb Import & Data Management Platform
-- New tables for: versioning, import jobs, conflicts, audit, field sources, review history
--
-- Changes:
--   verb_scraping_jobs        - Track scraping job sessions
--   verb_import_jobs          - Resume-capable import pipeline jobs
--   verb_import_job_items     - Individual verbs within an import job
--   verb_versions             - Versioned verb snapshots (never overwrite)
--   verb_conflicts            - Source disagreement conflict records
--   verb_publish_logs         - Publish operation audit trail
--   verb_field_sources        - Per-field source/confidence tracking
--   verb_review_history       - Review decision log per verb
--   verb_audit_logs           - Extended audit logging for all actions
--   Enhance scraped_candidates with conjugation data field

-- ============================================================================
-- 1. VERB SCRAPING JOBS
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

-- ============================================================================
-- 2. VERB IMPORT JOBS (Resume-capable)
-- ============================================================================
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

-- ============================================================================
-- 3. VERB IMPORT JOB ITEMS
-- ============================================================================
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
  constraint uq_job_item unique (job_id, index)
);

create index if not exists idx_verb_import_job_items_job on public.verb_import_job_items(job_id);
create index if not exists idx_verb_import_job_items_status on public.verb_import_job_items(status);

-- ============================================================================
-- 4. VERB VERSIONS (Never overwrite production data)
-- ============================================================================
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

-- ============================================================================
-- 5. VERB CONFLICTS (Source disagreement tracking)
-- ============================================================================
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

-- ============================================================================
-- 6. VERB PUBLISH LOGS
-- ============================================================================
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

-- ============================================================================
-- 7. VERB FIELD SOURCES (Per-field provenance tracking)
-- ============================================================================
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

-- ============================================================================
-- 8. VERB REVIEW HISTORY
-- ============================================================================
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

-- ============================================================================
-- 9. VERB AUDIT LOGS (Extended audit trail)
-- ============================================================================
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

-- ============================================================================
-- 10. ENHANCE scraped_candidates with conjugation and review fields
-- ============================================================================
alter table public.scraped_candidates add column if not exists conjugation_data jsonb default null;
alter table public.scraped_candidates add column if not exists conjugation_status text
  check (conjugation_status in ('pending', 'fetched', 'partial', 'failed'));
alter table public.scraped_candidates add column if not exists conjugation_errors text[];
alter table public.scraped_candidates add column if not exists conjugations_fetched_at timestamptz;
alter table public.scraped_candidates add column if not exists reviewed_by uuid references auth.users(id);
alter table public.scraped_candidates add column if not exists reviewed_at timestamptz;
alter table public.scraped_candidates add column if not exists review_action text
  check (review_action in ('approved', 'rejected', 'edit'));
alter table public.scraped_candidates add column if not exists similarity_to_existing text;
alter table public.scraped_candidates add column if not exists confidence_score integer default 0
  check (confidence_score >= 0 and confidence_score <= 100);

-- ============================================================================
-- 11. ENHANCE verb_reference_candidates with publish pipeline fields
-- ============================================================================
alter table public.verb_reference_candidates add column if not exists diff_against_production jsonb default null;
alter table public.verb_reference_candidates add column if not exists conflict_ids uuid[];
alter table public.verb_reference_candidates add column if not exists publish_ready boolean default false;
alter table public.verb_reference_candidates add column if not exists publish_validation jsonb default null;
alter table public.verb_reference_candidates add column if not exists version_id uuid references public.verb_versions(id);

-- ============================================================================
-- RLS POLICIES
-- ============================================================================
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
