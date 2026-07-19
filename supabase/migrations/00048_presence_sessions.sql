-- 00048: Multi-device session support for user_presence
-- Allows each user to have multiple presence rows (one per device/browser)

-- 1. Add new columns before manipulating data
alter table public.user_presence add column if not exists session_id text;
alter table public.user_presence add column if not exists operating_system text;
alter table public.user_presence add column if not exists user_agent text;
alter table public.user_presence add column if not exists ip_address text;

-- 2. Rename browser → browser_name for clarity
do $$
begin
  if exists (
    select 1 from information_schema.columns
    where table_schema = 'public' and table_name = 'user_presence' and column_name = 'browser'
  ) then
    alter table public.user_presence rename column browser to browser_name;
  end if;
end $$;

-- 3. Assign session_id to any existing rows that lack one
update public.user_presence set session_id = gen_random_uuid()::text where session_id is null;

-- 4. Drop the single-session-per-user constraint
alter table public.user_presence drop constraint if exists user_presence_user_id_key;

-- 5. Make session_id required going forward
alter table public.user_presence alter column session_id set not null;

-- 6. Indexes for fast lookups
create index if not exists idx_user_presence_session on public.user_presence(user_id, session_id);
create index if not exists idx_user_presence_last_seen on public.user_presence(last_seen);

-- 7. Allow users to delete their own sessions (e.g., remote sign-out)
create policy "users_can_delete_own_presence"
  on public.user_presence for delete
  to authenticated
  using (user_id = auth.uid());
