-- Verb Quality Checks table
-- Stores batch validation results for the quality-check admin page
-- Separate from verb_quality_findings (which is for the owner-approval flow)

create table if not exists public.verb_quality_checks (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  check_type text not null,
  field_name text not null,
  old_value text,
  suggested_value text,
  explanation text,
  confidence integer not null default 50 check (confidence >= 0 and confidence <= 100),
  status text not null default 'open' check (status in ('open', 'accepted', 'rejected')),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_quality_checks_verb on public.verb_quality_checks(verb_id);
create index if not exists idx_quality_checks_status on public.verb_quality_checks(status);
create index if not exists idx_quality_checks_type on public.verb_quality_checks(check_type);
create unique index if not exists idx_quality_checks_unique_open
  on public.verb_quality_checks(verb_id, check_type, field_name)
  where status = 'open';

alter table public.verb_quality_checks enable row level security;

create policy "Anyone can read verb_quality_checks"
  on public.verb_quality_checks for select using (true);

create policy "Service role manages verb_quality_checks"
  on public.verb_quality_checks for all using (auth.role() = 'service_role');
