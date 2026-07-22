-- 00068_verb_system_cleanup.sql
--
-- Phase 0 cleanup: Drop obsolete tables from old verb system.
-- These are superseded by the new pipeline architecture (00066+) or quality system (00056).
-- Production data in german_verbs and related tables is NOT affected.

-- ============================================================================
-- 1. DROP scraped_candidates — duplicates verb_reference_candidates
-- ============================================================================
drop table if exists public.scraped_candidates cascade;

-- ============================================================================
-- 2. DROP verb_audit_runs — superseded by verb_quality_findings (00056)
-- ============================================================================
drop table if exists public.verb_audit_runs cascade;

-- ============================================================================
-- 3. DROP verb_audit_issues — superseded by verb_quality_findings (00056)
-- ============================================================================
drop table if exists public.verb_audit_issues cascade;

-- ============================================================================
-- 4. DROP verb_audit_sources — superseded by verb_field_sources (00066)
-- ============================================================================
drop table if exists public.verb_audit_sources cascade;

-- ============================================================================
-- 5. DROP verb_quality_checks — duplicates verb_quality_findings (00056)
-- ============================================================================
drop table if exists public.verb_quality_checks cascade;

-- ============================================================================
-- 6. Add new columns to verb_sources for source management center
-- ============================================================================
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

-- ============================================================================
-- 7. Create verb_source_errors table for error tracking
-- ============================================================================
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

do $$
begin
  if not exists (select 1 from pg_policies where policyname = 'Public read verb_source_errors') then
    create policy "Public read verb_source_errors" on public.verb_source_errors for select using (true);
  end if;
end $$;

-- ============================================================================
-- 8. Extend verb_reference_candidates status workflow
-- ============================================================================
do $$
begin
  alter table public.verb_reference_candidates
    alter column status type text using status::text;
exception when others then null;
end $$;

do $$
begin
  alter table public.verb_reference_candidates
    drop constraint if exists verb_reference_candidates_status_check;
end $$;

do $$
begin
  alter table public.verb_reference_candidates
    add constraint verb_reference_candidates_status_check
      check (status in ('DRAFT','IN_REVIEW','APPROVED','REJECTED','PUBLISHED'));
end $$;

-- ============================================================================
-- 9. Add metadata column to german_verbs for pipeline tracking
-- ============================================================================
alter table if exists public.german_verbs
  add column if not exists pipeline_metadata jsonb default '{}'::jsonb;

-- ============================================================================
-- 10. Ensure verb_conflicts table is properly enabled for conflict tracking
-- ============================================================================
create index if not exists idx_verb_conflicts_field on public.verb_conflicts(field_name);
create index if not exists idx_verb_conflicts_created on public.verb_conflicts(created_at desc);

-- ============================================================================
-- 11. Ensure verb_scraping_jobs is ready for the queue system
-- ============================================================================
do $$
begin
  alter table public.verb_scraping_jobs
    add column if not exists config jsonb default '{}'::jsonb,
    add column if not exists source_id uuid references public.verb_sources(id);
exception when others then null;
end $$;
