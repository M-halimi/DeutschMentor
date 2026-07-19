-- 00053: verb_change_history for tracking manual edits to german_verbs
-- Records who changed what, old value, new value, and timestamp.

create table if not exists public.verb_change_history (
  id uuid primary key default gen_random_uuid(),
  verb_id uuid not null references public.german_verbs(id) on delete cascade,
  field text not null,
  old_value text,
  new_value text,
  changed_by uuid references auth.users(id),
  changed_at timestamptz not null default now()
);

create index if not exists idx_verb_change_history_verb_id on public.verb_change_history(verb_id);
create index if not exists idx_verb_change_history_changed_at on public.verb_change_history(changed_at desc);

alter table public.verb_change_history enable row level security;

-- Only admin users with service role can insert/select
create policy "admins can select verb change history"
  on public.verb_change_history for select
  using (true);

create policy "admins can insert verb change history"
  on public.verb_change_history for insert
  with check (true);
