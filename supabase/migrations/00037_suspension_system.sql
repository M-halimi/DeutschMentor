-- ==================== SUSPENSION SYSTEM ====================
-- Adds suspension columns, status history, support tickets
-- Part of the production-grade User Suspension System

-- 1. Add suspension columns to profiles
alter table public.profiles
  add column if not exists suspension_reason text,
  add column if not exists suspension_note text,
  add column if not exists suspended_at timestamp with time zone,
  add column if not exists suspended_by uuid references auth.users(id) on delete set null,
  add column if not exists suspension_expires_at timestamp with time zone;

-- 2. Profile status history
create table if not exists public.profile_status_history (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  old_status public.subscription_status,
  new_status public.subscription_status not null,
  reason text,
  changed_by uuid references auth.users(id) on delete set null,
  created_at timestamp with time zone not null default now()
);

alter table public.profile_status_history enable row level security;

create index if not exists idx_status_history_user on public.profile_status_history(user_id);
create index if not exists idx_status_history_created on public.profile_status_history(created_at desc);

-- 3. Support tickets
create table if not exists public.support_tickets (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  subject text not null,
  message text not null,
  status text not null default 'open' check (status in ('open', 'in_progress', 'closed', 'resolved')),
  suspension_reason text,
  created_at timestamp with time zone not null default now(),
  updated_at timestamp with time zone not null default now()
);

alter table public.support_tickets enable row level security;

create index if not exists idx_support_tickets_user on public.support_tickets(user_id);
create index if not exists idx_support_tickets_status on public.support_tickets(status);

-- 4. Support ticket replies
create table if not exists public.support_ticket_replies (
  id uuid primary key default gen_random_uuid(),
  ticket_id uuid not null references public.support_tickets(id) on delete cascade,
  user_id uuid not null references auth.users(id) on delete cascade,
  message text not null,
  is_admin boolean not null default false,
  created_at timestamp with time zone not null default now()
);

alter table public.support_ticket_replies enable row level security;

create index if not exists idx_ticket_replies_ticket on public.support_ticket_replies(ticket_id);

-- 5. RPC: log status change
create or replace function public.log_profile_status_change(
  p_user_id uuid,
  p_old_status text,
  p_new_status text,
  p_reason text default null,
  p_changed_by uuid default null
) returns void
language plpgsql security definer
as $$
begin
  insert into public.profile_status_history (user_id, old_status, new_status, reason, changed_by)
  values (p_user_id, p_old_status::public.subscription_status, p_new_status::public.subscription_status, p_reason, p_changed_by);
end;
$$;

-- 6. RPC: auto-expire suspensions
create or replace function public.expire_suspended_accounts()
returns table (user_id uuid, old_status text, new_status text)
language plpgsql security definer
as $$
begin
  return query
  with expired as (
    update public.profiles
    set
      status = 'active'::public.subscription_status,
      status_reason = null,
      suspension_reason = null,
      suspension_note = null,
      suspended_at = null,
      suspended_by = null,
      suspension_expires_at = null,
      updated_at = now()
    where
      status = 'suspended'::public.subscription_status
      and suspension_expires_at is not null
      and suspension_expires_at < now()
    returning user_id, 'suspended'::text as old_status, 'active'::text as new_status
  )
  insert into public.profile_status_history (user_id, old_status, new_status, reason)
  select e.user_id, e.old_status::public.subscription_status, e.new_status::public.subscription_status, 'Auto-expired'
  from expired e;

  return query
  select e.user_id, e.old_status, e.new_status
  from expired e;
end;
$$;

-- 7. Grant permissions
grant usage on schema public to anon, authenticated;
grant all on all tables in schema public to service_role;
grant execute on function public.log_profile_status_change to service_role;
grant execute on function public.expire_suspended_accounts to service_role;
