-- 00074_verb_scraping_results.sql
--
-- Phase 2: Multi-source scraping with per-verb per-source results,
-- source comparison, and conflict detection.

-- ============================================================================
-- 1. verb_scraping_results — one row per verb per source per job
-- ============================================================================
create table if not exists public.verb_scraping_results (
  id uuid primary key default gen_random_uuid(),
  job_id uuid not null references public.verb_scraping_jobs(id) on delete cascade,
  infinitive text not null,
  source_name text not null,
  source_id uuid references public.verb_sources(id) on delete set null,
  source_url text,
  raw_data jsonb not null default '{}'::jsonb,
  confidence integer not null default 0 check (confidence >= 0 and confidence <= 100),
  status text not null default 'completed'
    check (status in ('pending', 'running', 'completed', 'failed', 'skipped')),
  error_message text,
  duration_ms integer,
  created_at timestamptz not null default now(),
  constraint uq_verb_scrape_result unique (job_id, infinitive, source_name)
);

create index if not exists idx_verb_scrape_results_job on public.verb_scraping_results(job_id);
create index if not exists idx_verb_scrape_results_infinitive on public.verb_scraping_results(infinitive);
create index if not exists idx_verb_scrape_results_source on public.verb_scraping_results(source_name);

-- ============================================================================
-- 2. Add sources array to verb_scraping_jobs for multi-source jobs
-- ============================================================================
do $$
begin
  alter table public.verb_scraping_jobs
    add column if not exists sources text[] not null default '{}';
exception when others then null;
end $$;

do $$
begin
  alter table public.verb_scraping_jobs
    add column if not exists source_count integer not null default 1;
exception when others then null;
end $$;

-- ============================================================================
-- 3. Add scraped_data_id FK from verb_scraping_results to verb_scraped_data
-- ============================================================================
do $$
begin
  alter table public.verb_scraping_results
    add column if not exists scraped_data_id uuid references public.verb_scraped_data(id) on delete set null;
exception when others then null;
end $$;

-- ============================================================================
-- 4. Seed all remaining sources
-- ============================================================================
insert into public.verb_sources (name, website, description, adapter_name, active) values
  ('LEO', 'https://dict.leo.org', 'English-German dictionary with verb conjugations', 'leo', true),
  ('Collins', 'https://www.collinsdictionary.com', 'English-German dictionary with verb tables', 'collins', true),
  ('Reverso', 'https://context.reverso.net', 'Context-based translation with verb examples', 'reverso', true),
  ('OpenThesaurus', 'https://www.openthesaurus.de', 'German synonym database', 'open-thesaurus', true)
on conflict (name) do nothing;

-- ============================================================================
-- 5. RLS for verb_scraping_results
-- ============================================================================
alter table public.verb_scraping_results enable row level security;

do $$
begin
  if not exists (select 1 from pg_policies where policyname = 'Public read verb_scraping_results') then
    create policy "Public read verb_scraping_results"
      on public.verb_scraping_results for select using (true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Service role manage verb_scraping_results') then
    create policy "Service role manage verb_scraping_results"
      on public.verb_scraping_results for all using (auth.role() = 'service_role');
  end if;
end $$;
