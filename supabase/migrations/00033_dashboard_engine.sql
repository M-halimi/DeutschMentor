-- Dashboard Engine v2 — XP, achievements, streaks, activity, caching

-- ==================== XP SYSTEM ====================

create table if not exists public.xp_levels (
  level integer primary key,
  xp_required integer not null,
  title text not null,
  badge_icon text
);

insert into public.xp_levels (level, xp_required, title, badge_icon) values
  (1, 0, 'Anfänger', 'seed'),
  (2, 100, 'Schüler', 'book'),
  (3, 300, 'Lerner', 'star'),
  (4, 600, 'Entdecker', 'compass'),
  (5, 1000, 'Forscher', 'search'),
  (6, 1500, 'Kenner', 'award'),
  (7, 2200, 'Experte', 'trophy'),
  (8, 3000, 'Meister', 'crown'),
  (9, 4000, 'Sprachkünstler', 'gem'),
  (10, 5500, 'Virtuose', 'diamond')
on conflict (level) do nothing;

create table if not exists public.xp_transactions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  amount integer not null,
  source text not null check (source in (
    'lesson','quiz','vocabulary','listening','reading','writing','speaking',
    'daily_login','streak_bonus','perfect_score','achievement','grammar','dictation','exam'
  )),
  description text,
  metadata jsonb,
  created_at timestamptz not null default now()
);

create index if not exists idx_xp_user on public.xp_transactions(user_id);
create index if not exists idx_xp_user_created on public.xp_transactions(user_id, created_at desc);

-- ==================== USER XP TOTALS (materialized) ====================

create table if not exists public.user_xp (
  user_id uuid primary key references auth.users(id) on delete cascade,
  total_xp integer not null default 0,
  current_level integer not null default 1 references public.xp_levels(level),
  updated_at timestamptz not null default now()
);

-- Auto-update user_xp on new transaction
create or replace function public.recalc_user_xp()
returns trigger as $$
begin
  insert into public.user_xp (user_id, total_xp, current_level, updated_at)
  select
    new.user_id,
    coalesce((select sum(amount) from public.xp_transactions where user_id = new.user_id), 0),
    coalesce((
      select level from public.xp_levels
      where xp_required <= (select sum(amount) from public.xp_transactions where user_id = new.user_id)
      order by level desc limit 1
    ), 1),
    now()
  on conflict (user_id) do update set
    total_xp = excluded.total_xp,
    current_level = excluded.current_level,
    updated_at = now();
  return new;
end;
$$ language plpgsql security definer;

drop trigger if exists trg_recalc_xp on public.xp_transactions;
create trigger trg_recalc_xp
  after insert on public.xp_transactions
  for each row execute function public.recalc_user_xp();

-- ==================== ACHIEVEMENT SYSTEM ====================

-- Extend achievements table (already exists, add columns if needed)
alter table public.achievements add column if not exists category text;
alter table public.achievements add column if not exists max_progress integer default 1;
alter table public.achievements add column if not exists hidden boolean default false;

-- Add progress tracking column to user_achievements
alter table public.user_achievements add column if not exists progress integer not null default 0;

create or replace function public.check_achievements(p_user_id uuid)
returns void as $$
declare
  v_total_xp integer;
  v_streak integer;
  v_lessons integer;
  v_vocab integer;
  v_perfect_count integer;
  v_grammar_exercises integer;
  v_listening_exercises integer;
  v_reading_exercises integer;
  v_writing_exercises integer;
  v_speaking_exercises integer;
  rec record;
begin
  select total_xp into v_total_xp from public.user_xp where user_id = p_user_id;
  select current_streak into v_streak from public.learning_analytics where user_id = p_user_id;
  select count(*) into v_lessons from public.progress where user_id = p_user_id and completed = true;
  select count(*) into v_vocab from public.user_vocabulary where user_id = p_user_id and mastered = true;
  select count(*) into v_perfect_count from public.exercise_attempts where user_id = p_user_id and correct = true;

  for rec in
    select a.id, a.requirement
    from public.achievements a
    where a.id not in (select achievement_id from public.user_achievements where user_id = p_user_id)
  loop
    declare
      rtype text := rec.requirement->>'type';
      rvalue int := coalesce((rec.requirement->>'value')::int, 1);
      achieved boolean := false;
      prog int := 0;
    begin
      if rtype = 'xp_total' then
        prog := least(v_total_xp, rvalue); achieved := v_total_xp >= rvalue;
      elsif rtype = 'streak_days' then
        prog := least(v_streak, rvalue); achieved := v_streak >= rvalue;
      elsif rtype = 'lessons_completed' then
        prog := least(v_lessons, rvalue); achieved := v_lessons >= rvalue;
      elsif rtype = 'vocab_mastered' then
        prog := least(v_vocab, rvalue); achieved := v_vocab >= rvalue;
      elsif rtype = 'perfect_score' then
        prog := least(v_perfect_count, rvalue); achieved := v_perfect_count >= rvalue;
      end if;

      if achieved then
        insert into public.user_achievements (user_id, achievement_id, achieved_at, progress)
        values (p_user_id, rec.id, now(), rvalue)
        on conflict (user_id, achievement_id) do update set achieved_at = now(), progress = rvalue;
      else
        insert into public.user_achievements (user_id, achievement_id, progress)
        values (p_user_id, rec.id, prog)
        on conflict (user_id, achievement_id) do update set progress = prog;
      end if;
    end;
  end loop;
end;
$$ language plpgsql security definer;

-- ==================== ACTIVITY LOG ====================

do $$ begin
  create type public.activity_type as enum (
    'lesson_completed','quiz_completed','vocabulary_learned','vocabulary_reviewed',
    'listening_done','reading_done','writing_done','speaking_done',
    'grammar_done','dictation_done','exam_done','achievement_unlocked',
    'level_up','streak_milestone','certificate_earned','login'
  );
exception when duplicate_object then null;
end $$;

create table if not exists public.user_activity (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  activity_type activity_type not null,
  metadata jsonb,
  xp_earned integer default 0,
  duration_minutes numeric(5,1) default 0,
  created_at timestamptz not null default now()
);

create index if not exists idx_activity_user_time on public.user_activity(user_id, created_at desc);
-- (user_id, created_at desc) index is sufficient for date-range queries

-- ==================== MONTHLY/WEEKLY MATERIALIZED AGGREGATES ====================

create table if not exists public.user_daily_stats (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  date date not null,
  total_minutes numeric(6,1) not null default 0,
  lessons_completed integer not null default 0,
  exercises_completed integer not null default 0,
  vocabulary_learned integer not null default 0,
  xp_earned integer not null default 0,
  unique(user_id, date)
);

create index if not exists idx_daily_stats_user on public.user_daily_stats(user_id, date desc);

-- Monthly activity function
create or replace function public.get_monthly_activity(p_user_id uuid)
returns table (month text, minutes numeric, lessons integer, exercises integer, vocabulary integer)
language plpgsql stable as $$
begin
  return query
  select
    to_char(d.date, 'Mon') as month,
    coalesce(sum(ds.total_minutes), 0) as minutes,
    coalesce(sum(ds.lessons_completed), 0) as lessons,
    coalesce(sum(ds.exercises_completed), 0) as exercises,
    coalesce(sum(ds.vocabulary_learned), 0) as vocabulary
  from generate_series(
    date_trunc('year', current_date),
    date_trunc('month', current_date),
    '1 month'::interval
  ) d(date)
  left join public.user_daily_stats ds on date_trunc('month', ds.date) = d.date and ds.user_id = p_user_id
  group by d.date
  order by d.date;
end;
$$;

-- Add dashboard_widgets column to profiles
alter table public.profiles add column if not exists dashboard_widgets jsonb default null;

-- Auto-maintain user_daily_stats from activity
create or replace function public.maintain_daily_stats()
returns trigger as $$
begin
  insert into public.user_daily_stats (user_id, date, total_minutes, lessons_completed, exercises_completed, xp_earned)
  values (
    new.user_id,
    new.created_at::date,
    new.duration_minutes,
    case when new.activity_type = 'lesson_completed' then 1 else 0 end,
    case when new.activity_type in ('quiz_completed','grammar_done','dictation_done') then 1 else 0 end,
    new.xp_earned
  )
  on conflict (user_id, date) do update set
    total_minutes = public.user_daily_stats.total_minutes + new.duration_minutes,
    lessons_completed = public.user_daily_stats.lessons_completed + (case when new.activity_type = 'lesson_completed' then 1 else 0 end),
    exercises_completed = public.user_daily_stats.exercises_completed + (case when new.activity_type in ('quiz_completed','grammar_done','dictation_done') then 1 else 0 end),
    xp_earned = public.user_daily_stats.xp_earned + new.xp_earned;
  return new;
end;
$$ language plpgsql security definer;

drop trigger if exists trg_maintain_daily_stats on public.user_activity;
create trigger trg_maintain_daily_stats
  after insert on public.user_activity
  for each row execute function public.maintain_daily_stats();

-- ==================== LEADERBOARD (materialized) ====================

create materialized view if not exists public.leaderboard as
select
  ux.user_id,
  p.full_name,
  p.avatar_url,
  p.current_level as cefr_level,
  ux.total_xp,
  ux.current_level as xp_level,
  dense_rank() over (order by ux.total_xp desc) as rank,
  (select count(*) from public.user_xp) as total_users
from public.user_xp ux
join public.profiles p on p.user_id = ux.user_id;

create unique index if not exists idx_leaderboard_user on public.leaderboard(user_id);

create or replace function public.refresh_leaderboard()
returns trigger as $$
begin
  refresh materialized view concurrently public.leaderboard;
  return null;
end;
$$ language plpgsql security definer;

drop trigger if exists trg_refresh_leaderboard on public.user_xp;
create trigger trg_refresh_leaderboard
  after insert or update on public.user_xp
  for each statement execute function public.refresh_leaderboard();

-- ==================== ENHANCED STREAK RPC ====================

drop function if exists public.get_longest_streak(uuid);

create or replace function public.get_longest_streak(p_user_id uuid)
returns integer as $$
declare
  v_longest integer := 0;
  v_current integer := 0;
  v_prev_date date := null;
  rec record;
begin
  for rec in
    select distinct date from public.study_sessions
    where user_id = p_user_id
    order by date desc
  loop
    if v_prev_date is null then
      v_current := 1;
      v_longest := 1;
    elsif v_prev_date - rec.date = 1 then
      v_current := v_current + 1;
      if v_current > v_longest then v_longest := v_current; end if;
    elsif v_prev_date <> rec.date then
      v_current := 1;
    end if;
    v_prev_date := rec.date;
  end loop;
  return v_longest;
end;
$$ language plpgsql stable;

drop function if exists public.get_current_streak(uuid);

create or replace function public.get_current_streak(p_user_id text)
returns integer as $$
declare
  v_uid uuid := p_user_id::uuid;
  streak integer := 0;
  current_date_var date := current_date;
begin
  while exists (
    select 1 from public.study_sessions
    where user_id = v_uid and date = current_date_var
  ) loop
    streak := streak + 1;
    current_date_var := current_date_var - 1;
  end loop;
  return streak;
end;
$$ language plpgsql security definer;

-- ==================== HEATMAP FUNCTION ====================

create or replace function public.get_heatmap_data(p_user_id uuid, p_months integer default 6)
returns table (date date, minutes numeric, intensity integer)
language plpgsql stable as $$
begin
  return query
  select
    d.date::date as date,
    coalesce(s.total_minutes, 0) as minutes,
    case
      when coalesce(s.total_minutes, 0) = 0 then 0
      when s.total_minutes < 15 then 1
      when s.total_minutes < 30 then 2
      when s.total_minutes < 60 then 3
      else 4
    end as intensity
  from generate_series(
    (current_date - (p_months * 30)::integer),
    current_date,
    '1 day'::interval
  ) d(date)
  left join public.user_daily_stats s on s.date = d.date and s.user_id = p_user_id
  order by d.date;
end;
$$;

-- ==================== DASHBOARD CACHE ====================

create table if not exists public.dashboard_cache (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null,
  expires_at timestamptz not null,
  updated_at timestamptz not null default now()
);

-- ==================== RLS ====================

alter table public.xp_transactions enable row level security;
alter table public.user_xp enable row level security;
alter table public.user_activity enable row level security;
alter table public.user_daily_stats enable row level security;
alter table public.dashboard_cache enable row level security;

do $$ begin
  execute 'drop policy if exists "user_xp_select" on public.xp_transactions';
  execute 'create policy "user_xp_select" on public.xp_transactions for select using (auth.uid() = user_id)';
exception when others then null; end $$;
do $$ begin
  execute 'drop policy if exists "user_xp_insert" on public.xp_transactions';
  execute 'create policy "user_xp_insert" on public.xp_transactions for insert with check (auth.uid() = user_id)';
exception when others then null; end $$;
do $$ begin
  execute 'drop policy if exists "user_xp_total_select" on public.user_xp';
  execute 'create policy "user_xp_total_select" on public.user_xp for select using (true)';
exception when others then null; end $$;
do $$ begin
  execute 'drop policy if exists "user_activity_select" on public.user_activity';
  execute 'create policy "user_activity_select" on public.user_activity for select using (auth.uid() = user_id)';
exception when others then null; end $$;
do $$ begin
  execute 'drop policy if exists "user_activity_insert" on public.user_activity';
  execute 'create policy "user_activity_insert" on public.user_activity for insert with check (auth.uid() = user_id)';
exception when others then null; end $$;
do $$ begin
  execute 'drop policy if exists "user_daily_stats_select" on public.user_daily_stats';
  execute 'create policy "user_daily_stats_select" on public.user_daily_stats for select using (auth.uid() = user_id)';
exception when others then null; end $$;
do $$ begin
  execute 'drop policy if exists "dashboard_cache_select" on public.dashboard_cache';
  execute 'create policy "dashboard_cache_select" on public.dashboard_cache for select using (auth.uid() = user_id)';
exception when others then null; end $$;
do $$ begin
  execute 'drop policy if exists "dashboard_cache_all" on public.dashboard_cache';
  execute 'create policy "dashboard_cache_all" on public.dashboard_cache for all using (auth.uid() = user_id)';
exception when others then null; end $$;
-- leaderboard is a materialized view, RLS not applicable (use select grants instead)
grant select on public.leaderboard to anon, authenticated;

-- ==================== DASHBOARD COMPUTE FUNCTION ====================

drop function if exists public.compute_dashboard(uuid);

create or replace function public.compute_dashboard(p_user_id uuid)
returns jsonb
language plpgsql stable
as $$
declare
  result jsonb;
  v_date date := current_date;
  v_today_minutes numeric;
  v_total_hours numeric;
  v_total_minutes numeric;
  v_current_streak integer;
  v_longest_streak integer;
  v_lessons_completed integer;
  v_lessons_total integer;
  v_modules_completed integer;
  v_modules_total integer;
  v_courses_completed integer;
  v_vocab_learned integer;
  v_vocab_mastered integer;
  v_vocab_review integer;
  v_vocab_new integer;
  v_grammar_lessons integer;
  v_grammar_exercises integer;
  v_grammar_accuracy numeric;
  v_skill_scores jsonb;
  v_topics jsonb;
  v_xp integer;
  v_level integer;
  v_level_title text;
  v_next_xp integer;
  v_rank integer;
  v_total_users integer;
  v_cefr text;
  v_recent jsonb;
  v_activity jsonb;
  v_heatmap jsonb;
  v_weak jsonb;
  v_strong jsonb;
begin
  -- Today
  select coalesce(sum(total_minutes), 0) into v_today_minutes
  from public.study_sessions where user_id = p_user_id and date = v_date;

  -- Total study
  select coalesce(sum(total_minutes), 0), coalesce(sum(total_minutes)%60, 0)
  into v_total_hours, v_total_minutes
  from public.study_sessions where user_id = p_user_id;
  v_total_hours := floor(v_total_hours / 60);

  -- Streak
  select coalesce((select get_current_streak(p_user_id::text)), 0) into v_current_streak;
  select coalesce((select get_longest_streak(p_user_id)), 0) into v_longest_streak;

  -- Lessons
  select count(*) filter (where completed = true), count(*)
  into v_lessons_completed, v_lessons_total
  from public.progress where user_id = p_user_id;

  -- Modules completed (course system)
  select count(distinct cm.id) into v_modules_completed
  from public.course_modules cm
  join public.course_lessons cl on cl.module_id = cm.id
  join public.progress p on p.lesson_id::text = cl.id::text and p.completed = true and p.user_id = p_user_id;

  select count(*) into v_modules_total from public.course_modules;

  -- Courses
  select count(distinct clv.id) into v_courses_completed
  from public.course_levels clv
  join public.course_modules cm on cm.level_id = clv.id
  join public.course_lessons cl on cl.module_id = cm.id
  join public.progress p on p.lesson_id::text = cl.id::text and p.completed = true and p.user_id = p_user_id
  group by clv.id
  having bool_and(p.completed);

  -- Vocabulary
  select
    count(*) filter (where uv.mastered = true),
    count(*) filter (where uv.mastered = true and uv.review_count >= 5),
    count(*) filter (where uv.next_review <= now() and uv.mastered = false),
    count(*) filter (where uv.next_review is null)
  into v_vocab_learned, v_vocab_mastered, v_vocab_review, v_vocab_new
  from public.user_vocabulary uv where uv.user_id = p_user_id;

  -- Grammar
  select
    count(*) filter (where p.completed = true)
  into v_grammar_lessons
  from public.progress p
  where p.user_id = p_user_id;

  select
    count(*),
    coalesce(avg(case when correct then 100.0 else 0 end), 0)
  into v_grammar_exercises, v_grammar_accuracy
  from public.exercise_attempts
  where user_id = p_user_id and exercise_type = 'grammar';

  -- Skill scores
  select jsonb_build_object(
    'hoeren', coalesce((select score from public.skills where user_id = p_user_id and skill_type = 'hoeren'), 0),
    'lesen', coalesce((select score from public.skills where user_id = p_user_id and skill_type = 'lesen'), 0),
    'schreiben', coalesce((select score from public.skills where user_id = p_user_id and skill_type = 'schreiben'), 0),
    'sprechen', coalesce((select score from public.skills where user_id = p_user_id and skill_type = 'sprechen'), 0)
  ) into v_skill_scores;

  -- XP
  select coalesce(total_xp, 0), coalesce(current_level, 1)
  into v_xp, v_level
  from public.user_xp where user_id = p_user_id;

  select coalesce(title, 'Anfänger'), coalesce(xp_required, 0)
  into v_level_title, v_next_xp
  from public.xp_levels where level = v_level + 1;

  -- Rank
  select rank, total_users into v_rank, v_total_users
  from public.leaderboard where user_id = p_user_id;

  -- CEFR
  select coalesce(estimated_cefr_level, 'A1') into v_cefr
  from public.learning_analytics where user_id = p_user_id;

  -- Weak/Strong topics
  select jsonb_agg(distinct m.mistake_type) filter (where m.mistake_type is not null)
  into v_weak
  from (
    select mistake_type, count(*) as cnt from public.mistakes where user_id = p_user_id
    group by mistake_type order by cnt desc limit 5
  ) m;

  select jsonb_agg(distinct m.topic) filter (where m.topic is not null)
  into v_strong
  from (
    select topic, count(*) as cnt from public.exercise_attempts
    where user_id = p_user_id and correct = true and topic is not null
    group by topic order by cnt desc limit 5
  ) m;

  -- Weekly activity (last 7 days)
  select jsonb_agg(jsonb_build_object('day', to_char(d.date, 'Dy'), 'minutes', coalesce(s.total_minutes, 0), 'lessons', coalesce(s.lessons_completed, 0)) order by d.date)
  into v_activity
  from generate_series(v_date - 6, v_date, '1 day'::interval) d(date)
  left join public.user_daily_stats s on s.date = d.date and s.user_id = p_user_id;

  -- Heatmap (6 months)
  select jsonb_agg(jsonb_build_object('date', h.date, 'minutes', h.minutes, 'intensity', h.intensity) order by h.date)
  into v_heatmap
  from public.get_heatmap_data(p_user_id, 6) h;

  -- Recent activity
  select jsonb_agg(sub.*) into v_recent
  from (
    select
      a.activity_type as type,
      a.metadata,
      a.xp_earned as xp,
      a.created_at
    from public.user_activity a
    where a.user_id = p_user_id
    order by a.created_at desc
    limit 10
  ) sub;

  result := jsonb_build_object(
    'today_minutes', v_today_minutes,
    'total_study_hours', v_total_hours,
    'total_study_minutes', v_total_minutes,
    'current_streak', v_current_streak,
    'longest_streak', v_longest_streak,
    'lessons_completed', v_lessons_completed,
    'lessons_total', v_lessons_total,
    'modules_completed', v_modules_completed,
    'modules_total', v_modules_total,
    'courses_completed', v_courses_completed,
    'vocabulary_learned', v_vocab_learned,
    'vocabulary_mastered', v_vocab_mastered,
    'vocabulary_review', v_vocab_review,
    'vocabulary_new', v_vocab_new,
    'grammar_lessons', v_grammar_lessons,
    'grammar_exercises', v_grammar_exercises,
    'grammar_accuracy', round(v_grammar_accuracy::numeric, 1),
    'skill_scores', v_skill_scores,
    'xp', v_xp,
    'level', v_level,
    'level_title', v_level_title,
    'next_level_xp', v_next_xp,
    'rank', v_rank,
    'total_users', v_total_users,
    'cefr_level', v_cefr,
    'weak_topics', coalesce(v_weak, '[]'::jsonb),
    'strong_topics', coalesce(v_strong, '[]'::jsonb),
    'weekly_activity', coalesce(v_activity, '[]'::jsonb),
    'heatmap', coalesce(v_heatmap, '[]'::jsonb),
    'recent_activity', coalesce(v_recent, '[]'::jsonb)
  );

  return result;
end;
$$;

-- Log user activity (called from frontend via RPC)
create or replace function public.log_user_activity(
  p_user_id text,
  p_type text,
  p_duration numeric default 0,
  p_xp integer default 0,
  p_metadata jsonb default null
)
returns void
language plpgsql security definer as $$
declare
  v_uid uuid := p_user_id::uuid;
begin
  insert into public.user_activity (user_id, activity_type, metadata, xp_earned, duration_minutes)
  values (v_uid, p_type::public.activity_type, p_metadata, p_xp, p_duration);

  if p_xp > 0 then
    insert into public.xp_transactions (user_id, amount, source, description, metadata)
    values (v_uid, p_xp, 'lesson', p_metadata->>'description', p_metadata);
  end if;
end;
$$;


