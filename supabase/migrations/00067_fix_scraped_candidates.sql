-- 00067_fix_scraped_candidates.sql
--
-- Ensures scraped_candidates table exists with all required columns.
-- Uses IF NOT EXISTS so it's safe to run even if migration 00065 was already applied.
--
-- Fixes: "Could not find table public.scraped_candidates in schema cache"

create table if not exists public.scraped_candidates (
  id uuid primary key default gen_random_uuid(),
  infinitive text not null,
  cefr_level text,
  source_name text not null,
  source_url text,
  status text not null default 'PENDING'
    check (status in ('PENDING', 'SELECTED', 'IMPORTED', 'SKIPPED')),
  exists_in_database boolean not null default false,
  raw_data jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- Add columns if they don't exist (safe for re-runs)
do $$
begin
  if not exists (select 1 from information_schema.columns where table_schema = 'public' and table_name = 'scraped_candidates' and column_name = 'conjugation_data') then
    alter table public.scraped_candidates add column conjugation_data jsonb;
  end if;
  if not exists (select 1 from information_schema.columns where table_schema = 'public' and table_name = 'scraped_candidates' and column_name = 'conjugation_status') then
    alter table public.scraped_candidates add column conjugation_status text check (conjugation_status in ('pending', 'fetched', 'partial', 'failed'));
  end if;
  if not exists (select 1 from information_schema.columns where table_schema = 'public' and table_name = 'scraped_candidates' and column_name = 'conjugation_errors') then
    alter table public.scraped_candidates add column conjugation_errors text[];
  end if;
  if not exists (select 1 from information_schema.columns where table_schema = 'public' and table_name = 'scraped_candidates' and column_name = 'conjugations_fetched_at') then
    alter table public.scraped_candidates add column conjugations_fetched_at timestamptz;
  end if;
  if not exists (select 1 from information_schema.columns where table_schema = 'public' and table_name = 'scraped_candidates' and column_name = 'reviewed_by') then
    alter table public.scraped_candidates add column reviewed_by uuid references auth.users(id);
  end if;
  if not exists (select 1 from information_schema.columns where table_schema = 'public' and table_name = 'scraped_candidates' and column_name = 'reviewed_at') then
    alter table public.scraped_candidates add column reviewed_at timestamptz;
  end if;
  if not exists (select 1 from information_schema.columns where table_schema = 'public' and table_name = 'scraped_candidates' and column_name = 'review_action') then
    alter table public.scraped_candidates add column review_action text check (review_action in ('approved', 'rejected', 'edit'));
  end if;
  if not exists (select 1 from information_schema.columns where table_schema = 'public' and table_name = 'scraped_candidates' and column_name = 'similarity_to_existing') then
    alter table public.scraped_candidates add column similarity_to_existing text;
  end if;
  if not exists (select 1 from information_schema.columns where table_schema = 'public' and table_name = 'scraped_candidates' and column_name = 'confidence_score') then
    alter table public.scraped_candidates add column confidence_score integer default 0 check (confidence_score >= 0 and confidence_score <= 100);
  end if;
end $$;

-- Indexes
create index if not exists idx_scraped_candidates_infinitive on public.scraped_candidates (infinitive);
create index if not exists idx_scraped_candidates_status on public.scraped_candidates (status);
create index if not exists idx_scraped_candidates_created_at on public.scraped_candidates (created_at desc);
create index if not exists idx_scraped_candidates_source on public.scraped_candidates (source_name);

-- RLS
alter table public.scraped_candidates enable row level security;

do $$
begin
  if not exists (select 1 from pg_policies where policyname = 'Public can view scraped_candidates') then
    create policy "Public can view scraped_candidates" on public.scraped_candidates for select using (true);
  end if;
  if not exists (select 1 from pg_policies where policyname = 'Service role manages scraped_candidates') then
    create policy "Service role manages scraped_candidates" on public.scraped_candidates for all using (auth.role() = 'service_role');
  end if;
end $$;
