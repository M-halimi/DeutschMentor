-- ==================== ADMIN AUTH FIX ====================
-- Adds super_admin role to profiles, syncs profile.role with admin_users

-- 1. Add super_admin to profiles role check constraint
alter table public.profiles
  drop constraint if exists profiles_role_check,
  add constraint profiles_role_check
    check (role in ('student', 'teacher', 'admin', 'super_admin'));

-- 2. Sync existing admin_users into profiles.role
update public.profiles
set role = 'super_admin', updated_at = now()
where user_id in (
  select au.user_id
  from public.admin_users au
  join public.admin_roles ar on ar.id = au.role_id
  where au.is_active = true
    and (ar.name = 'Platform Owner' or ar.is_super_admin = true)
);

update public.profiles
set role = 'admin', updated_at = now()
where user_id in (
  select au.user_id
  from public.admin_users au
  where au.is_active = true
    and profiles.role not in ('super_admin', 'admin')
);

-- 3. Auto-sync trigger: when admin_users changes, update corresponding profile.role
create or replace function public.sync_admin_profile_role()
returns trigger as $$
declare
  v_role_name text;
  v_is_super_admin boolean;
begin
  if TG_OP = 'DELETE' then
    update public.profiles set role = 'student', updated_at = now()
    where user_id = OLD.user_id
      and not exists (
        select 1 from public.admin_users
        where user_id = OLD.user_id and is_active = true
      );
    return OLD;
  end if;

  select ar.name, ar.is_super_admin into v_role_name, v_is_super_admin
  from public.admin_roles ar
  where ar.id = NEW.role_id;

  if v_role_name = 'Platform Owner' or v_is_super_admin = true then
    update public.profiles set role = 'super_admin', updated_at = now()
    where user_id = NEW.user_id;
  else
    update public.profiles set role = 'admin', updated_at = now()
    where user_id = NEW.user_id;
  end if;

  return NEW;
end;
$$ language plpgsql security definer;

drop trigger if exists trg_sync_admin_profile_role on public.admin_users;
create trigger trg_sync_admin_profile_role
  after insert or update or delete on public.admin_users
  for each row execute function public.sync_admin_profile_role();
