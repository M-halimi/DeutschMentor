-- Verb Quality Control Management
-- Creates audit metadata tables without modifying existing german_verbs tables.
-- Each finding captures: verb_id, category, field_name, current_value, expected_value,
-- explanation, example_wrong, example_correct, source_reference, severity, confidence, status

-- Enum: finding severity
do $$ begin
  create type finding_severity as enum ('error', 'warning', 'info');
exception
  when duplicate_object then null;
end $$;

-- Enum: finding status
do $$ begin
  create type finding_status as enum ('open', 'approved', 'rejected', 'false_positive', 'manual_edit');
exception
  when duplicate_object then null;
end $$;

-- Enum: action type
do $$ begin
  create type finding_action_type as enum ('approve', 'reject', 'false_positive', 'manual_edit');
exception
  when duplicate_object then null;
end $$;

-- Enum: approval status
do $$ begin
  create type approval_status as enum ('pending', 'approved', 'rejected');
exception
  when duplicate_object then null;
end $$;

-- 1. verb_quality_findings — detailed enhanced findings
create table if not exists public.verb_quality_findings (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  category text not null,
  field_name text not null,
  current_value text,
  expected_value text,
  explanation text,
  example_wrong text,
  example_correct text,
  source_reference text,
  severity finding_severity not null default 'warning',
  confidence integer not null default 50 check (confidence >= 0 and confidence <= 100),
  status finding_status not null default 'open',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- Prevent duplicate findings for the same verb+category+field
create unique index if not exists idx_quality_findings_unique
  on public.verb_quality_findings (verb_id, category, field_name)
  where status = 'open';

create index if not exists idx_quality_findings_verb on public.verb_quality_findings(verb_id);
create index if not exists idx_quality_findings_status on public.verb_quality_findings(status);
create index if not exists idx_quality_findings_severity on public.verb_quality_findings(severity);

-- 2. verb_quality_actions — track all actions taken on findings
create table if not exists public.verb_quality_actions (
  id uuid primary key default gen_random_uuid(),
  finding_id uuid not null references public.verb_quality_findings(id) on delete cascade,
  action finding_action_type not null,
  actioned_by uuid references auth.users(id),
  notes text,
  created_at timestamptz not null default now()
);

create index if not exists idx_quality_actions_finding on public.verb_quality_actions(finding_id);
create index if not exists idx_quality_actions_actioned on public.verb_quality_actions(actioned_by);

-- 3. verb_quality_approvals — owner approval queue for proposed changes
create table if not exists public.verb_quality_approvals (
  id uuid primary key default gen_random_uuid(),
  finding_id uuid not null references public.verb_quality_findings(id) on delete cascade,
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  proposed_change jsonb not null,
  notes text,
  status approval_status not null default 'pending',
  approved_by uuid references auth.users(id),
  approved_at timestamptz,
  created_at timestamptz not null default now()
);

create index if not exists idx_quality_approvals_finding on public.verb_quality_approvals(finding_id);
create index if not exists idx_quality_approvals_verb on public.verb_quality_approvals(verb_id);
create index if not exists idx_quality_approvals_status on public.verb_quality_approvals(status);

-- 4. verb_quality_summary — per-verb quality score cache
create table if not exists public.verb_quality_summary (
  verb_id uuid primary key references public.german_verbs(id) on delete cascade,
  quality_score integer not null default 100 check (quality_score >= 0 and quality_score <= 100),
  total_issues integer not null default 0,
  error_count integer not null default 0,
  warning_count integer not null default 0,
  info_count integer not null default 0,
  audit_status finding_severity default null,
  updated_at timestamptz not null default now()
);

create index if not exists idx_quality_summary_score on public.verb_quality_summary(quality_score);
create index if not exists idx_quality_summary_audit_status on public.verb_quality_summary(audit_status);

-- RLS
alter table public.verb_quality_findings enable row level security;
alter table public.verb_quality_actions enable row level security;
alter table public.verb_quality_approvals enable row level security;
alter table public.verb_quality_summary enable row level security;

-- RLS policies: public SELECT for all authenticated users
do $$ begin
  drop policy if exists "quality_findings_select" on public.verb_quality_findings;
  create policy "quality_findings_select" on public.verb_quality_findings
    for select using (true);
end $$;

do $$ begin
  drop policy if exists "quality_actions_select" on public.verb_quality_actions;
  create policy "quality_actions_select" on public.verb_quality_actions
    for select using (true);
end $$;

do $$ begin
  drop policy if exists "quality_approvals_select" on public.verb_quality_approvals;
  create policy "quality_approvals_select" on public.verb_quality_approvals
    for select using (true);
end $$;

do $$ begin
  drop policy if exists "quality_summary_select" on public.verb_quality_summary;
  create policy "quality_summary_select" on public.verb_quality_summary
    for select using (true);
end $$;
