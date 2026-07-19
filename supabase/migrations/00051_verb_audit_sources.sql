-- 00051: Verb audit source verification table
-- Stores external evidence used to verify detected audit issues.
-- Every correction requires human approval — this table tracks the evidence trail.

create table if not exists public.verb_audit_sources (
  id uuid primary key default gen_random_uuid(),
  issue_id uuid references public.verb_audit_issues(id) on delete cascade,
  verb_id uuid references public.german_verbs(id) on delete cascade,
  source_name text not null,
  source_url text,
  checked_field text not null,
  current_value text,
  expected_value text,
  confidence integer not null default 50 check (confidence >= 0 and confidence <= 100),
  status text not null default 'pending' check (status in ('pending', 'verified', 'rejected')),
  verified_by uuid references auth.users(id),
  verified_at timestamptz,
  notes text,
  created_at timestamptz not null default now()
);

alter table public.verb_audit_sources enable row level security;

do $$ begin
  drop policy if exists audit_sources_read_all on public.verb_audit_sources;
  create policy "audit_sources_read_all" on public.verb_audit_sources for select using (true);
end $$;

create index if not exists idx_audit_sources_issue_id on public.verb_audit_sources(issue_id);
create index if not exists idx_audit_sources_verb_id on public.verb_audit_sources(verb_id);
create index if not exists idx_audit_sources_status on public.verb_audit_sources(status);
