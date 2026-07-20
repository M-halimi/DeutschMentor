-- 00058: User Intelligence v2 — Fix gender, add learning_level, subscription_plan, user_sessions, activity_events
-- Reuses existing columns/tables from 00057. Never deletes data. Adds only what's missing.

-- ==================== 1. FIX GENDER CHECK CONSTRAINT ====================
alter table public.profiles drop constraint if exists profiles_gender_check;
alter table public.profiles add constraint profiles_gender_check
  check (gender is null or gender in ('male', 'female', 'other', 'not_set'));

-- ==================== 2. ADD LEARNING LEVEL + SUBSCRIPTION PLAN ====================
alter table public.profiles add column if not exists learning_level text
  check (learning_level is null or learning_level in ('A1','A2','B1','B2','C1','C2'));

alter table public.profiles add column if not exists subscription_plan text
  check (subscription_plan is null or subscription_plan in ('free','premium','pro'));

-- Sync learning_level from current_level where null
update public.profiles set learning_level = current_level where learning_level is null and current_level is not null;

-- ==================== 3. USER SESSIONS (upgraded from login_sessions) ====================
-- login_sessions exists from 00057. Add missing columns:
alter table public.login_sessions add column if not exists device_name text;
alter table public.login_sessions add column if not exists browser_version text;
alter table public.login_sessions add column if not exists os_version text;
alter table public.login_sessions add column if not exists country text;
alter table public.login_sessions add column if not exists s_city text; -- 'city' conflicts with reserved word context, use s_city
alter table public.login_sessions add column if not exists timezone text;
alter table public.login_sessions add column if not exists session_token text;
alter table public.login_sessions add column if not exists last_activity_at timestamptz;

-- Make login_sessions compatible with the user_sessions concept by renaming login_at to created_at for consistency
-- Keep login_at as alias and add created_at if needed
alter table public.login_sessions add column if not exists created_at timestamptz default now();
update public.login_sessions set created_at = login_at where created_at is null;
alter table public.login_sessions alter column created_at set default now();

-- Indexes for user_sessions queries
create index if not exists idx_login_sessions_device on public.login_sessions(device_id);
create index if not exists idx_login_sessions_last_activity on public.login_sessions(last_activity_at);

-- Create a view for cleaner API access (user_sessions)
create or replace view public.user_sessions as
select
  id,
  user_id,
  device_id,
  device_name,
  device_type,
  ip_address,
  browser_name,
  browser_version,
  operating_system,
  os_version,
  country,
  s_city as city,
  login_sessions.timezone,
  user_agent,
  session_token,
  login_at,
  logout_at,
  is_active,
  created_at,
  last_activity_at,
  coalesce(login_sessions.updated_at, login_sessions.created_at) as updated_at
from public.login_sessions;

-- ==================== 4. USER ACTIVITY EVENTS ====================
create table if not exists public.user_activity_events (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(user_id) on delete cascade,
  event_type text not null,
  page text,
  action text,
  metadata jsonb default '{}'::jsonb,
  ip_address text,
  user_agent text,
  created_at timestamptz not null default now()
);

create index if not exists idx_user_activity_events_user on public.user_activity_events(user_id);
create index if not exists idx_user_activity_events_type on public.user_activity_events(event_type);
create index if not exists idx_user_activity_events_created on public.user_activity_events(created_at desc);
create index if not exists idx_user_activity_events_user_created on public.user_activity_events(user_id, created_at desc);

alter table public.user_activity_events enable row level security;

create policy "users_can_insert_own_events"
  on public.user_activity_events for insert
  to authenticated
  with check (user_id = auth.uid());

create policy "authenticated_can_read_events"
  on public.user_activity_events for select
  to authenticated
  using (true);

-- ==================== 5. ENGAGEMENT SCORE IMPROVEMENT ====================
create or replace function public.recalculate_engagement_score(p_user_id uuid)
returns integer
language plpgsql as $$
declare
  v_score integer := 0;
  v_login_freq integer;
  v_lessons_done integer;
  v_exercises_done integer;
  v_streak integer;
  v_active_days integer;
begin
  -- Login frequency (max 25 pts): days active in last 30 days
  select count(distinct date(created_at)) into v_login_freq
  from public.user_activity_events
  where user_id = p_user_id
    and event_type = 'login'
    and created_at > now() - interval '30 days';
  v_score := v_score + least(v_login_freq * 3, 25);

  -- Lessons completed (max 25 pts)
  select completed_lessons into v_lessons_done
  from public.profiles
  where user_id = p_user_id;
  v_score := v_score + least(v_lessons_done * 2, 25);

  -- Exercises completed (max 15 pts)
  select count(*) into v_exercises_done
  from public.user_activity_events
  where user_id = p_user_id
    and event_type = 'completed_exercise'
    and created_at > now() - interval '30 days';
  v_score := v_score + least(v_exercises_done, 15);

  -- Learning streak (max 20 pts)
  with daily_activity as (
    select distinct date(created_at) as active_date
    from public.user_activity_events
    where user_id = p_user_id
      and created_at > now() - interval '60 days'
  ),
  streaks as (
    select active_date,
      active_date - row_number() over (order by active_date)::integer as grp
    from daily_activity
  )
  select count(*) into v_streak
  from streaks
  where grp = (
    select grp from streaks order by active_date desc limit 1
  );
  v_score := v_score + least(v_streak, 20);

  -- Active days in last 14 days (max 15 pts)
  select count(distinct date(created_at)) into v_active_days
  from public.user_activity_events
  where user_id = p_user_id
    and created_at > now() - interval '14 days';
  v_score := v_score + least(v_active_days * 2, 15);

  return least(v_score, 100);
end;
$$;

-- ==================== 6. SUBSCRIPTION PLAN SYNC ====================
create or replace function public.sync_subscription_plan()
returns trigger
language plpgsql as $$
declare
  v_plan_name text;
begin
  select p.name into v_plan_name
  from public.subscriptions s
  join public.plans p on p.id = s.plan_id
  where s.user_id = new.user_id
    and s.status = 'active'
  order by s.created_at desc
  limit 1;

  update public.profiles
  set subscription_plan = case
    when v_plan_name in ('free', 'basic') then 'free'
    when v_plan_name in ('premium') then 'premium'
    when v_plan_name in ('pro', 'enterprise', 'lifetime') then 'pro'
    else 'free'
  end
  where user_id = new.user_id;

  return new;
end;
$$;

create trigger trg_sync_subscription_plan
  after insert or update of status on public.subscriptions
  for each row
  when (new.status = 'active')
  execute function public.sync_subscription_plan();

-- ==================== 7. LEARNING LEVEL SYNC TRIGGER ====================
create or replace function public.sync_learning_level()
returns trigger
language plpgsql as $$
begin
  if new.current_level is distinct from old.current_level then
    new.learning_level = new.current_level;
  end if;
  return new;
end;
$$;

create trigger trg_sync_learning_level
  before update of current_level on public.profiles
  for each row
  execute function public.sync_learning_level();

-- ==================== 8. NEW PERMISSION SLUGS ====================
insert into public.permissions (name, slug, description, category) values
  ('View User Activity', 'users.activity', 'View user activity timeline', 'users'),
  ('View User Sessions', 'users.sessions', 'View user login sessions and devices', 'users'),
  ('View User Analytics', 'users.analytics', 'View user learning analytics', 'users')
on conflict (slug) do nothing;

insert into public.admin_permissions (code, name, description, category) values
  ('users.activity', 'View User Activity', 'View user activity timeline', 'users'),
  ('users.sessions', 'View User Sessions', 'View user login sessions and devices', 'users'),
  ('users.analytics', 'View User Analytics', 'View user learning analytics', 'users')
on conflict (code) do nothing;

-- Grant new permissions to roles (v2)
do $$
declare
  v_perm_id uuid;
  v_role_id uuid;
  v_slug text;
  v_role_slug text;
begin
  foreach v_slug in array array['users.activity', 'users.sessions', 'users.analytics'] loop
    select id into v_perm_id from public.permissions where slug = v_slug;
    if v_perm_id is not null then
      foreach v_role_slug in array array['super-admin', 'admin'] loop
        select id into v_role_id from public.roles where slug = v_role_slug;
        if v_role_id is not null then
          insert into public.role_permissions (role_id, permission_id)
          values (v_role_id, v_perm_id)
          on conflict do nothing;
        end if;
      end loop;
    end if;
  end loop;
end $$;

-- Grant new permissions to admin_role_permissions (v1)
do $$
declare
  v_perm_id uuid;
  v_role_id uuid;
  v_code text;
begin
  foreach v_code in array array['users.activity', 'users.sessions', 'users.analytics'] loop
    select id into v_perm_id from public.admin_permissions where code = v_code;
    if v_perm_id is not null then
      select r.id into v_role_id from public.admin_roles r where r.name = 'Platform Owner';
      if v_role_id is not null then
        insert into public.admin_role_permissions (role_id, permission_id)
        values (v_role_id, v_perm_id)
        on conflict do nothing;
      end if;
      select r.id into v_role_id from public.admin_roles r where r.name = 'Super Admin';
      if v_role_id is not null then
        insert into public.admin_role_permissions (role_id, permission_id)
        values (v_role_id, v_perm_id)
        on conflict do nothing;
      end if;
    end if;
  end loop;
end $$;
