-- 00065_verb_verification_engine.sql
--
-- Scraped candidates review table before import pipeline.
-- Stores raw scraped verbs with duplicate detection results.
--
-- Changes:
--   scraped_candidates - Raw scraped verbs awaiting review

create table if not exists scraped_candidates (
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

create index if not exists idx_scraped_candidates_infinitive
  on scraped_candidates (infinitive);
create index if not exists idx_scraped_candidates_status
  on scraped_candidates (status);
create index if not exists idx_scraped_candidates_created_at
  on scraped_candidates (created_at desc);
create index if not exists idx_scraped_candidates_source
  on scraped_candidates (source_name);

alter table scraped_candidates enable row level security;

create policy "Public can view scraped_candidates"
  on scraped_candidates for select using (true);
