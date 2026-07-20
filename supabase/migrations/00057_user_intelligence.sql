-- 00057: User Intelligence & Learning Analytics System
-- Adds: profile enrichment, activity tracking, search tracking, learning analytics

-- ==================== 1. PROFILE ENRICHMENT ====================
alter table public.profiles add column if not exists gender text check (gender in ('male','female','non_binary','prefer_not_to_say'));
alter table public.profiles add column if not exists country text;
alter table public.profiles add column if not exists city text;
alter table public.profiles add column if not exists timezone text;

-- Learning tracking columns on profiles
alter table public.profiles add column if not exists last_lesson_id uuid;
alter table public.profiles add column if not exists last_vocabulary_practiced text;
alter table public.profiles add column if not exists last_verb_practiced text;
alter table public.profiles add column if not exists completed_lessons integer not null default 0;
alter table public.profiles add column if not exists progress_percentage numeric(5,2) not null default 0;
alter table public.profiles add column if not exists engagement_score integer not null default 0;
alter table public.profiles add column if not exists last_action text;
alter table public.profiles add column if not exists last_action_at timestamptz;

-- ==================== 2. USER ACTIVITY LOG ====================
create table if not exists public.user_activity_log (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(user_id) on delete cascade,
  activity_type text not null,
  description text,
  page_url text,
  metadata jsonb default '{}'::jsonb,
  duration_seconds integer,
  ip_address text,
  user_agent text,
  created_at timestamptz not null default now()
);

create index if not exists idx_user_activity_log_user on public.user_activity_log(user_id);
create index if not exists idx_user_activity_log_type on public.user_activity_log(activity_type);
create index if not exists idx_user_activity_log_created on public.user_activity_log(created_at desc);
create index if not exists idx_user_activity_log_user_created on public.user_activity_log(user_id, created_at desc);

alter table public.user_activity_log enable row level security;

create policy "users_can_insert_own_activity"
  on public.user_activity_log for insert
  to authenticated
  with check (user_id = auth.uid());

create policy "authenticated_can_read_activity"
  on public.user_activity_log for select
  to authenticated
  using (true);

-- ==================== 3. USER SEARCH QUERIES ====================
create table if not exists public.user_search_queries (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(user_id) on delete cascade,
  query_text text not null,
  search_type text not null default 'general',
  results_count integer default 0,
  metadata jsonb default '{}'::jsonb,
  created_at timestamptz not null default now()
);

create index if not exists idx_user_search_queries_user on public.user_search_queries(user_id);
create index if not exists idx_user_search_queries_text on public.user_search_queries(query_text);
create index if not exists idx_user_search_queries_created on public.user_search_queries(created_at desc);

alter table public.user_search_queries enable row level security;

create policy "users_can_insert_own_search"
  on public.user_search_queries for insert
  to authenticated
  with check (user_id = auth.uid());

create policy "authenticated_can_read_searches"
  on public.user_search_queries for select
  to authenticated
  using (true);

-- ==================== 4. LOGIN SESSIONS ====================
create table if not exists public.login_sessions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(user_id) on delete cascade,
  device_id text,
  ip_address text,
  user_agent text,
  device_type text,
  browser_name text,
  operating_system text,
  login_at timestamptz not null default now(),
  logout_at timestamptz,
  is_active boolean not null default true,
  created_at timestamptz not null default now()
);

create index if not exists idx_login_sessions_user on public.login_sessions(user_id);
create index if not exists idx_login_sessions_active on public.login_sessions(user_id, is_active);
create index if not exists idx_login_sessions_login on public.login_sessions(login_at desc);

alter table public.login_sessions enable row level security;

create policy "users_can_insert_own_login"
  on public.login_sessions for insert
  to authenticated
  with check (user_id = auth.uid());

create policy "users_can_update_own_login"
  on public.login_sessions for update
  to authenticated
  using (user_id = auth.uid());

create policy "authenticated_can_read_logins"
  on public.login_sessions for select
  to authenticated
  using (true);

-- ==================== 5. LEARNING PROGRESS SNAPSHOT ====================
-- Materialized daily snapshot for efficient admin queries
create table if not exists public.user_daily_progress (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(user_id) on delete cascade,
  date date not null default current_date,
  lessons_completed integer not null default 0,
  vocabulary_practiced integer not null default 0,
  verbs_practiced integer not null default 0,
  exercises_completed integer not null default 0,
  session_duration_seconds integer not null default 0,
  search_queries_count integer not null default 0,
  unique(user_id, date)
);

create index if not exists idx_user_daily_progress_date on public.user_daily_progress(date desc);

alter table public.user_daily_progress enable row level security;

create policy "authenticated_can_read_daily_progress"
  on public.user_daily_progress for select
  to authenticated
  using (true);

-- ==================== 6. ENGAGEMENT SCORE FUNCTION ====================
create or replace function public.calculate_engagement_score(p_user_id uuid)
returns integer
language plpgsql as $$
declare
  v_score integer := 0;
  v_recent_days integer := 30;
  v_login_days integer;
  v_lesson_count integer;
  v_activity_count integer;
  v_search_count integer;
  v_session_minutes integer;
begin
  -- Days with activity in last 30 days
  select count(distinct date(created_at)) into v_login_days
  from public.user_activity_log
  where user_id = p_user_id and created_at > now() - (v_recent_days || ' days')::interval;

  v_score := v_score + least(v_login_days * 5, 40);

  -- Lessons completed
  select completed_lessons into v_lesson_count
  from public.profiles
  where user_id = p_user_id;

  v_score := v_score + least(v_lesson_count * 2, 20);

  -- Activity events
  select count(*) into v_activity_count
  from public.user_activity_log
  where user_id = p_user_id and created_at > now() - (v_recent_days || ' days')::interval;

  v_score := v_score + least(v_activity_count, 20);

  -- Search queries
  select count(*) into v_search_count
  from public.user_search_queries
  where user_id = p_user_id and created_at > now() - (v_recent_days || ' days')::interval;

  v_score := v_score + least(v_search_count * 2, 10);

  -- Session time (from presence)
  select coalesce(sum(
    extract(epoch from coalesce(disconnected_at, now()) - connected_at) / 60
  )::integer, 0) into v_session_minutes
  from public.user_presence_history
  where user_id = p_user_id and connected_at > now() - (v_recent_days || ' days')::interval;

  v_score := v_score + least(v_session_minutes / 10, 10);

  return least(v_score, 100);
end;
$$;

-- ==================== 7. NEW PERMISSIONS ====================
insert into public.permissions (name, slug, description, category) values
  ('View User Intelligence', 'intelligence.view', 'View user intelligence dashboard with learning analytics', 'analytics'),
  ('Export Intelligence', 'intelligence.export', 'Export user intelligence and analytics data', 'analytics')
on conflict (slug) do nothing;

-- Assign intelligence.view to roles
do $$
declare
  v_perm_id uuid;
  v_role_id uuid;
begin
  select id into v_perm_id from public.permissions where slug = 'intelligence.view';

  select id into v_role_id from public.roles where slug = 'super-admin';
  if v_role_id is not null and v_perm_id is not null then
    insert into public.role_permissions (role_id, permission_id)
    values (v_role_id, v_perm_id)
    on conflict do nothing;
  end if;

  select id into v_role_id from public.roles where slug = 'admin';
  if v_role_id is not null and v_perm_id is not null then
    insert into public.role_permissions (role_id, permission_id)
    values (v_role_id, v_perm_id)
    on conflict do nothing;
  end if;

  select id into v_perm_id from public.permissions where slug = 'intelligence.export';

  select id into v_role_id from public.roles where slug = 'super-admin';
  if v_role_id is not null and v_perm_id is not null then
    insert into public.role_permissions (role_id, permission_id)
    values (v_role_id, v_perm_id)
    on conflict do nothing;
  end if;
end;
$$;

-- Also add to RBAC v2 permissions (admin_permissions table)
insert into public.admin_permissions (code, name, description, category) values
  ('intelligence.view', 'View Intelligence', 'View user intelligence & learning analytics dashboard', 'analytics'),
  ('intelligence.export', 'Export Intelligence', 'Export intelligence and analytics data', 'analytics')
on conflict (code) do nothing;

-- Grant to Platform Owner and Super Admin
do $$
declare
begin
  -- Owner gets both
  insert into public.admin_role_permissions (role_id, permission_id)
  select r.id, p.id
  from public.admin_roles r
  cross join public.admin_permissions p
  where r.name = 'Platform Owner'
    and p.code in ('intelligence.view', 'intelligence.export')
  on conflict do nothing;

  -- Super Admin gets view only
  insert into public.admin_role_permissions (role_id, permission_id)
  select r.id, p.id
  from public.admin_roles r
  cross join public.admin_permissions p
  where r.name = 'Super Admin'
    and p.code = 'intelligence.view'
  on conflict do nothing;
end;
$$;

-- ==================== 8. FUNCTION: GET MOST SEARCHED TOPICS ====================
create or replace function public.get_most_searched_topics(limit_count integer default 20)
returns table (query_text text, search_count bigint, last_searched timestamptz)
language sql stable as $$
  select query_text, count(*)::bigint as search_count, max(created_at) as last_searched
  from public.user_search_queries
  group by query_text
  order by search_count desc
  limit limit_count;
$$;

-- ==================== 9. FUNCTION: GET DIFFICULT LESSONS ====================
create or replace function public.get_difficult_lessons(limit_count integer default 20)
returns table (
  lesson_id uuid,
  lesson_title text,
  module_name text,
  level text,
  avg_score numeric,
  total_attempts bigint,
  fail_rate numeric
)
language sql stable as $$
  select
    le.lesson_id,
    cl.title as lesson_title,
    cm.name as module_name,
    cm.level,
    round(avg(le.score)::numeric, 1) as avg_score,
    count(*)::bigint as total_attempts,
    round((count(*) filter (where le.score < 60)::numeric / count(*)::numeric) * 100, 1) as fail_rate
  from public.lesson_exercises le
  join public.course_lessons cl on cl.id = le.lesson_id
  join public.course_modules cm on cm.id = cl.module_id
  group by le.lesson_id, cl.title, cm.name, cm.level
  having count(*) >= 5
  order by fail_rate desc, total_attempts desc
  limit limit_count;
$$;
