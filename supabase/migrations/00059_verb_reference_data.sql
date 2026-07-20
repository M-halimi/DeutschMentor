-- Verb Reference Data System
-- Stores trusted German verb information from authoritative sources.
-- This data is the "source of truth" that the audit engine compares
-- against the production german_verbs table.
-- NEVER writes to german_verbs directly.

create table if not exists public.verb_reference_data (
  id uuid primary key default gen_random_uuid(),
  infinitive text not null unique,
  source_name text not null,
  source_reference text,
  auxiliary text,
  verb_type text,
  separable_prefix text,
  is_reflexive boolean default false,
  reflexive_pronoun text,
  partizip_2 text,
  cefr_level text,
  confidence integer not null default 50 check (confidence >= 0 and confidence <= 100),
  notes text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_verb_reference_infinitive on public.verb_reference_data(infinitive);
create index if not exists idx_verb_reference_source on public.verb_reference_data(source_name);
create index if not exists idx_verb_reference_confidence on public.verb_reference_data(confidence);

-- RLS: everyone can read, only service role can write
alter table public.verb_reference_data enable row level security;

create policy "Anyone can read reference data"
  on public.verb_reference_data for select
  using (true);

create policy "Service role can manage reference data"
  on public.verb_reference_data for all
  using (auth.role() = 'service_role');
