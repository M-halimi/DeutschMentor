-- ==================== SUPPORT TICKET ENHANCEMENT ====================
-- Adds priority, category, ticket_number, admin_reply, closed_at
-- Updates status to include WAITING_USER

-- 1. Add new columns to support_tickets
alter table public.support_tickets
  add column if not exists category text not null default 'other'
    check (category in ('account_suspension', 'payment', 'technical', 'other')),
  add column if not exists priority text not null default 'normal'
    check (priority in ('low', 'normal', 'high', 'urgent')),
  add column if not exists ticket_number text,
  add column if not exists admin_reply text,
  add column if not exists closed_at timestamp with time zone;

-- 2. Drop old status check and add updated one
alter table public.support_tickets
  drop constraint if exists support_tickets_status_check;

alter table public.support_tickets
  add constraint support_tickets_status_check
    check (status in ('open', 'in_progress', 'waiting_user', 'resolved', 'closed'));

-- 3. Create ticket number sequence
create sequence if not exists public.support_ticket_number_seq;

-- 4. Function to auto-generate ticket number
create or replace function public.generate_ticket_number()
returns trigger
language plpgsql
as $$
declare
  year text := to_char(now(), 'YYYY');
  seq_id bigint;
begin
  seq_id := nextval('public.support_ticket_number_seq');
  new.ticket_number := 'DM-' || year || '-' || lpad(seq_id::text, 5, '0');
  return new;
end;
$$;

-- 5. Trigger to set ticket number on insert
drop trigger if exists trg_set_ticket_number on public.support_tickets;
create trigger trg_set_ticket_number
  before insert on public.support_tickets
  for each row
  when (new.ticket_number is null)
  execute function public.generate_ticket_number();

-- 6. Function to notify admins of new tickets
create or replace function public.notify_admins_new_ticket()
returns trigger
language plpgsql security definer
as $$
begin
  insert into public.audit_logs (user_id, action, module, resource_type, resource_id, details)
  values (
    new.user_id,
    'TICKET_CREATED',
    'support',
    'support_tickets',
    new.id,
    jsonb_build_object(
      'ticket_number', new.ticket_number,
      'subject', new.subject,
      'category', new.category,
      'priority', new.priority,
      'status', new.status
    )
  );
  return new;
end;
$$;

drop trigger if exists trg_notify_admins_ticket on public.support_tickets;
create trigger trg_notify_admins_ticket
  after insert on public.support_tickets
  for each row
  execute function public.notify_admins_new_ticket();

-- 7. RPC for admin to change ticket status with optional closing
create or replace function public.update_ticket_status(
  p_ticket_id uuid,
  p_status text,
  p_admin_reply text default null
) returns void
language plpgsql security definer
as $$
begin
  update public.support_tickets
  set
    status = p_status,
    admin_reply = coalesce(p_admin_reply, admin_reply),
    closed_at = case when p_status in ('closed', 'resolved') then now() else closed_at end,
    updated_at = now()
  where id = p_ticket_id;
end;
$$;

-- 8. Grant access
grant usage, select on all sequences in schema public to anon, authenticated;
grant execute on function public.generate_ticket_number to service_role;
grant execute on function public.notify_admins_new_ticket to service_role;
grant execute on function public.update_ticket_status to service_role;
