-- Subscription & License Management System
-- RBAC + subscription enforcement + audit history

-- ==================== ROLES ====================
create table public.roles (
  id uuid primary key default gen_random_uuid(),
  name text not null unique check (name in ('super_admin','admin','teacher','content_manager','support','student')),
  description text,
  is_system boolean not null default false,
  created_at timestamptz not null default now()
);

-- ==================== PERMISSIONS ====================
create table public.permissions (
  id uuid primary key default gen_random_uuid(),
  code text not null unique,
  name text not null,
  description text,
  category text not null,
  created_at timestamptz not null default now()
);

create table public.role_permissions (
  id uuid primary key default gen_random_uuid(),
  role_id uuid not null references public.roles(id) on delete cascade,
  permission_id uuid not null references public.permissions(id) on delete cascade,
  unique(role_id, permission_id)
);

-- ==================== PLANS ====================
create table public.plans (
  id uuid primary key default gen_random_uuid(),
  name text not null unique check (name in ('free','basic','premium','pro','enterprise','lifetime')),
  description text,
  price_monthly numeric(10,2) not null default 0,
  price_yearly numeric(10,2) not null default 0,
  sort_order integer not null default 0,
  is_public boolean not null default true,
  created_at timestamptz not null default now()
);

create table public.plan_features (
  id uuid primary key default gen_random_uuid(),
  plan_id uuid not null references public.plans(id) on delete cascade,
  feature_key text not null,
  feature_value text not null,
  unique(plan_id, feature_key)
);

-- ==================== SUBSCRIPTIONS ====================
create type public.subscription_status as enum ('active','expired','suspended','pending','trial','lifetime','cancelled');

create table public.subscriptions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  plan_id uuid not null references public.plans(id),
  status subscription_status not null default 'pending',
  start_date timestamptz not null default now(),
  end_date timestamptz,
  duration_days integer,
  auto_renew boolean not null default false,
  notes text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index idx_subscriptions_user_id on public.subscriptions(user_id);
create index idx_subscriptions_status on public.subscriptions(status);
create index idx_subscriptions_end_date on public.subscriptions(end_date);

-- ==================== SUBSCRIPTION HISTORY ====================
create type public.subscription_action as enum (
  'created','renewed','extended','suspended','cancelled','expired','reactivated','plan_changed','trial_started','lifetime_granted'
);

create table public.subscription_history (
  id uuid primary key default gen_random_uuid(),
  subscription_id uuid not null references public.subscriptions(id) on delete cascade,
  user_id uuid not null references auth.users(id) on delete cascade,
  action subscription_action not null,
  performed_by uuid references auth.users(id),
  reason text,
  previous_end_date timestamptz,
  new_end_date timestamptz,
  metadata jsonb,
  created_at timestamptz not null default now()
);

create index idx_sub_history_sub on public.subscription_history(subscription_id);
create index idx_sub_history_user on public.subscription_history(user_id);

-- ==================== USER ACTIVITY LOG ====================
create table public.user_activity_log (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  action text not null,
  ip_address text,
  user_agent text,
  metadata jsonb,
  created_at timestamptz not null default now()
);

create index idx_activity_user on public.user_activity_log(user_id);
create index idx_activity_created on public.user_activity_log(created_at);

-- ==================== USER PROFILES EXTENSION ====================
-- Add status and status_reason to existing profiles
alter table public.profiles add column if not exists status subscription_status not null default 'active';
alter table public.profiles add column if not exists status_reason text;

-- ==================== INDEXES ====================
create index idx_profiles_status on public.profiles(status);

-- ==================== RLS ====================
alter table public.roles enable row level security;
alter table public.permissions enable row level security;
alter table public.role_permissions enable row level security;
alter table public.plans enable row level security;
alter table public.plan_features enable row level security;
alter table public.subscriptions enable row level security;
alter table public.subscription_history enable row level security;
alter table public.user_activity_log enable row level security;

-- Public read for roles, permissions, plans
create policy "public_read_roles" on public.roles for select using (true);
create policy "public_read_permissions" on public.permissions for select using (true);
create policy "public_read_plans" on public.plans for select using (true);
create policy "public_read_plan_features" on public.plan_features for select using (true);

-- Users read own subscription
create policy "user_select_sub" on public.subscriptions for select using (auth.uid() = user_id);
create policy "user_select_sub_history" on public.subscription_history for select using (auth.uid() = user_id);

-- Admin full access
create policy "admin_all_subscriptions" on public.subscriptions for all using (auth.jwt() ->> 'role' = 'admin');
create policy "admin_all_sub_history" on public.subscription_history for all using (auth.jwt() ->> 'role' = 'admin');
create policy "admin_all_roles" on public.roles for all using (auth.jwt() ->> 'role' = 'admin');
create policy "admin_all_permissions" on public.permissions for all using (auth.jwt() ->> 'role' = 'admin');
create policy "admin_all_role_permissions" on public.role_permissions for all using (auth.jwt() ->> 'role' = 'admin');
create policy "admin_all_plans" on public.plans for all using (auth.jwt() ->> 'role' = 'admin');
create policy "admin_all_plan_features" on public.plan_features for all using (auth.jwt() ->> 'role' = 'admin');

-- ==================== FUNCTIONS ====================
-- Auto-create subscription for new users
create function public.handle_new_user_subscription()
returns trigger as $$
begin
  insert into public.subscriptions (user_id, plan_id, status, start_date, end_date, duration_days, auto_renew)
  select new.id, id, 'trial', now(), now() + interval '14 days', 14, false
  from public.plans where name = 'free';
  return new;
end;
$$ language plpgsql security definer;

drop trigger if exists on_auth_user_created_subscription on auth.users;
create trigger on_auth_user_created_subscription
  after insert on auth.users
  for each row execute function public.handle_new_user_subscription();

-- Check if subscription is expired (call from middleware)
create function public.is_subscription_expired(p_user_id uuid)
returns boolean as $$
declare
  v_status subscription_status;
  v_end_date timestamptz;
begin
  select status, end_date into v_status, v_end_date
  from public.subscriptions
  where user_id = p_user_id
  order by created_at desc
  limit 1;

  if v_status = 'expired' or v_status = 'suspended' or v_status = 'cancelled' then
    return true;
  end if;

  if v_status = 'lifetime' then
    return false;
  end if;

  if v_end_date is not null and v_end_date < now() and v_status = 'active' then
    update public.subscriptions set status = 'expired', updated_at = now()
    where user_id = p_user_id and status = 'active';
    update public.profiles set status = 'expired' where user_id = p_user_id;
    return true;
  end if;

  return false;
end;
$$ language plpgsql security definer;
