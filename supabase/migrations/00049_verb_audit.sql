-- 00049: Verb quality control audit tables
-- Stores audit results separately from production verb tables.

create table if not exists public.verb_audit_runs (
  id uuid primary key default gen_random_uuid(),
  total_verbs integer not null,
  total_issues integer not null,
  errors integer not null,
  warnings integer not null,
  infos integer not null,
  confidence numeric(5,2) not null,
  triggered_by uuid references auth.users(id),
  created_at timestamptz not null default now()
);

create table if not exists public.verb_audit_issues (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid references public.german_verbs(id) on delete cascade,
  run_id uuid references public.verb_audit_runs(id) on delete cascade,
  issue_type text not null check (issue_type in (
    'auxiliary_mismatch',
    'missing_separable_prefix',
    'incorrect_separable_prefix',
    'missing_reflexive_pronoun',
    'missing_conjugations',
    'duplicate_verb',
    'slug_inconsistency',
    'cefr_gap'
  )),
  severity text not null check (severity in ('error', 'warning', 'info')),
  field text,
  expected text,
  actual text,
  message text not null,
  status text not null default 'open' check (status in ('open', 'dismissed', 'resolved')),
  dismissed_by uuid references auth.users(id),
  dismissed_at timestamptz,
  created_at timestamptz not null default now(),
  unique(verb_id, issue_type, field)
);

alter table public.verb_audit_issues enable row level security;
alter table public.verb_audit_runs enable row level security;

do $$ begin
  drop policy if exists audit_read_all on public.verb_audit_issues;
  create policy "audit_read_all" on public.verb_audit_issues for select using (true);
end $$;
do $$ begin
  drop policy if exists audit_runs_read_all on public.verb_audit_runs;
  create policy "audit_runs_read_all" on public.verb_audit_runs for select using (true);
end $$;

-- Indexes for common queries
create index if not exists idx_audit_issues_verb_id on public.verb_audit_issues(verb_id);
create index if not exists idx_audit_issues_run_id on public.verb_audit_issues(run_id);
create index if not exists idx_audit_issues_status on public.verb_audit_issues(status);
create index if not exists idx_audit_issues_type on public.verb_audit_issues(issue_type);
create index if not exists idx_audit_runs_created on public.verb_audit_runs(created_at desc);
