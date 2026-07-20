-- 00054: Fix duplicate sessions — UNIQUE constraint, connected_at, history table

-- 1. Remove duplicate (user_id, session_id) rows, keep only the most recent
delete from public.user_presence
where id in (
  select id from (
    select id, row_number() over (
      partition by user_id, session_id
      order by last_seen desc nulls last
    ) as rn
    from public.user_presence
  ) t
  where t.rn > 1
);

-- 2. Add connected_at (sync with login_time first)
alter table public.user_presence add column if not exists connected_at timestamptz;
update public.user_presence set connected_at = login_time where connected_at is null;
alter table public.user_presence alter column connected_at set default now();
alter table public.user_presence alter column connected_at set not null;

-- 3b. Add disconnected_at (set on leave, null while session is active)
alter table public.user_presence add column if not exists disconnected_at timestamptz;

-- 3. Add UNIQUE constraint on (user_id, session_id) — prevents future duplicates
alter table public.user_presence add constraint user_presence_user_session_key unique (user_id, session_id);

-- 4. Create session history table
create table if not exists public.user_presence_history (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(user_id) on delete cascade,
  session_id text not null,
  connected_at timestamptz not null,
  disconnected_at timestamptz,
  duration_seconds integer,
  is_online boolean default false,
  last_seen timestamptz,
  current_page text,
  device_type text,
  browser_name text,
  operating_system text,
  user_agent text,
  ip_address text
);

create index if not exists idx_presence_history_user on public.user_presence_history(user_id);
create index if not exists idx_presence_history_disconnected on public.user_presence_history(disconnected_at);

alter table public.user_presence_history enable row level security;

create policy "authenticated_can_read_presence_history"
  on public.user_presence_history for select
  to authenticated
  using (true);

create policy "admins_can_insert_presence_history"
  on public.user_presence_history for insert
  to authenticated
  with check (auth.uid() in (
    select p.user_id from public.profiles p
    inner join public.roles r on r.id = p.role_id
    where p.user_id = auth.uid() and r.slug in ('super-admin', 'admin', 'owner')
  ));
