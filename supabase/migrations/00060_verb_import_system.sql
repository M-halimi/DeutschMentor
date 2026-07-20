-- Verb Import System
-- Manages trusted sources, import candidates, and import history
-- All imported data goes to verb_reference_candidates for admin review
-- Never writes to german_verbs directly

-- 1. verb_sources — configured trusted sources
create table if not exists public.verb_sources (
  id uuid primary key default gen_random_uuid(),
  name text not null unique,
  website text not null,
  description text,
  adapter_name text not null,
  active boolean not null default true,
  created_at timestamptz not null default now()
);

-- 2. verb_reference_candidates — staging area for imported verbs
create table if not exists public.verb_reference_candidates (
  id uuid primary key default gen_random_uuid(),
  infinitive text not null,
  translation text,
  cefr_level text,
  auxiliary text,
  verb_type text,
  separable_prefix text,
  is_reflexive boolean default false,
  reflexive_pronoun text,
  partizip_2 text,
  source_name text not null,
  source_url text,
  confidence integer not null default 50 check (confidence >= 0 and confidence <= 100),
  status text not null default 'PENDING' check (status in ('PENDING', 'APPROVED', 'REJECTED')),
  import_log_id uuid,
  notes text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_ref_candidates_status on public.verb_reference_candidates(status);
create index if not exists idx_ref_candidates_cefr on public.verb_reference_candidates(cefr_level);
create index if not exists idx_ref_candidates_source on public.verb_reference_candidates(source_name);

-- 3. verb_import_logs — import history
create table if not exists public.verb_import_logs (
  id uuid primary key default gen_random_uuid(),
  source_name text not null,
  cefr_level text,
  total_fetched integer not null default 0,
  total_imported integer not null default 0,
  total_approved integer not null default 0,
  total_rejected integer not null default 0,
  status text not null default 'completed' check (status in ('running', 'completed', 'failed')),
  error_message text,
  created_by uuid references auth.users(id),
  started_at timestamptz not null default now(),
  completed_at timestamptz
);

create index if not exists idx_import_logs_source on public.verb_import_logs(source_name);
create index if not exists idx_import_logs_started on public.verb_import_logs(started_at desc);

-- RLS: readable by authenticated users, manageable only via service role
alter table public.verb_sources enable row level security;
alter table public.verb_reference_candidates enable row level security;
alter table public.verb_import_logs enable row level security;

create policy "Anyone can read verb_sources"
  on public.verb_sources for select using (true);

create policy "Anyone can read verb_reference_candidates"
  on public.verb_reference_candidates for select using (true);

create policy "Anyone can read verb_import_logs"
  on public.verb_import_logs for select using (true);

create policy "Service role manages verb_sources"
  on public.verb_sources for all using (auth.role() = 'service_role');

create policy "Service role manages verb_reference_candidates"
  on public.verb_reference_candidates for all using (auth.role() = 'service_role');

create policy "Service role manages verb_import_logs"
  on public.verb_import_logs for all using (auth.role() = 'service_role');

-- Seed verb_sources
insert into public.verb_sources (name, website, description, adapter_name, active) values
  ('Verbformen', 'https://www.verbformen.com', 'German verb conjugation reference with all forms', 'verbformen', true),
  ('Wiktionary', 'https://de.wiktionary.org', 'Open collaborative dictionary with German verb entries', 'wiktionary', true),
  ('Canoonet', 'https://www.canoonet.eu', 'German grammar and word formation rules database', 'canoonet', true),
  ('Custom JSON', 'https://', 'Import from a local JSON file with pre-validated verb data', 'custom-json', true)
on conflict (name) do nothing;
