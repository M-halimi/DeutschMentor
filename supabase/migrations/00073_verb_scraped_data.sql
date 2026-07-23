-- 00073_verb_scraped_data.sql
--
-- Create verb_scraped_data table (never existed — old scraped_candidates was dropped in 00068)
-- Fix verb_scraping_jobs: add missing columns used by the scraping engine

-- ============================================================================
-- 1. verb_scraped_data — stores raw scraped results per job per verb
-- ============================================================================
create table if not exists public.verb_scraped_data (
  id uuid primary key default gen_random_uuid(),
  infinitive text not null,
  translation text,
  ipa text,
  cefr_level text,
  frequency text,
  verb_type text,
  auxiliary text,
  partizip_2 text,
  praeteritum text,
  separable_prefix text,
  prefix text,
  is_reflexive boolean not null default false,
  reflexive_pronoun text,
  preposition text,
  object_case text,
  transitivity text,
  conjugations jsonb not null default '{}'::jsonb,
  examples jsonb not null default '[]'::jsonb,
  synonyms jsonb not null default '[]'::jsonb,
  antonyms jsonb not null default '[]'::jsonb,
  source_name text not null,
  source_url text,
  source_id uuid references public.verb_sources(id) on delete set null,
  confidence integer not null default 0 check (confidence >= 0 and confidence <= 100),
  status text not null default 'PENDING'
    check (status in ('PENDING', 'IMPORTED', 'REJECTED', 'DUPLICATE')),
  job_id uuid references public.verb_scraping_jobs(id) on delete cascade,
  raw_html_hash text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_verb_scraped_data_status on public.verb_scraped_data(status);
create index if not exists idx_verb_scraped_data_source on public.verb_scraped_data(source_name);
create index if not exists idx_verb_scraped_data_job on public.verb_scraped_data(job_id);
create index if not exists idx_verb_scraped_data_infinitive on public.verb_scraped_data(infinitive);
create index if not exists idx_verb_scraped_data_cefr on public.verb_scraped_data(cefr_level);
create index if not exists idx_verb_scraped_data_created on public.verb_scraped_data(created_at desc);

-- ============================================================================
-- 2. Fix verb_scraping_jobs — add verb_type column if missing
-- ============================================================================
do $$
begin
  alter table public.verb_scraping_jobs
    add column if not exists verb_type text;
exception when others then null;
end $$;

-- ============================================================================
-- 3. RLS for verb_scraped_data
-- ============================================================================
alter table public.verb_scraped_data enable row level security;

do $$
begin
  if not exists (select 1 from pg_policies where policyname = 'Public read verb_scraped_data') then
    create policy "Public read verb_scraped_data"
      on public.verb_scraped_data for select using (true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Service role manage verb_scraped_data') then
    create policy "Service role manage verb_scraped_data"
      on public.verb_scraped_data for all using (auth.role() = 'service_role');
  end if;
end $$;

-- ============================================================================
-- 4. Seed additional verb_sources (Duden, PONS) if not already present
-- ============================================================================
insert into public.verb_sources (name, website, description, adapter_name, active) values
  ('Duden', 'https://www.duden.de', 'German dictionary with verb conjugations and meanings', 'duden', true),
  ('PONS', 'https://de.pons.com', 'Online dictionary with German verb translations and conjugations', 'pons', true)
on conflict (name) do nothing;
