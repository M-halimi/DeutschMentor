-- ==================== FIX SUPPORT TICKET FK ====================
-- Changes FK from auth.users(id) to profiles(user_id) so PostgREST
-- can resolve the user:profiles!user_id join used in admin queries.
-- Also fixes support_ticket_replies.user_id for the same reason.

-- 1. Drop old FK on support_tickets (auto-named by postgres)
alter table public.support_tickets
  drop constraint if exists support_tickets_user_id_fkey;

-- 2. Re-add FK pointing to profiles instead of auth.users
alter table public.support_tickets
  add constraint support_tickets_user_id_fkey
    foreign key (user_id) references public.profiles(user_id)
    on delete cascade;

-- 3. Drop old FK on support_ticket_replies
alter table public.support_ticket_replies
  drop constraint if exists support_ticket_replies_user_id_fkey;

-- 4. Re-add FK pointing to profiles
alter table public.support_ticket_replies
  add constraint support_ticket_replies_user_id_fkey
    foreign key (user_id) references public.profiles(user_id)
    on delete cascade;

-- 5. Refresh PostgREST schema cache
notify pgrst, 'reload schema';
