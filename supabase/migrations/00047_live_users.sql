-- 00047: User presence tracking + live users permission

create table if not exists public.user_presence (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.profiles(user_id) on delete cascade,
  is_online boolean default false,
  last_seen timestamptz default now(),
  current_page text,
  device_type text,
  browser text,
  login_time timestamptz default now(),
  updated_at timestamptz default now(),
  unique(user_id)
);

alter table public.user_presence enable row level security;

create policy "authenticated_can_read_presence"
  on public.user_presence for select
  to authenticated
  using (true);

create policy "users_can_insert_own_presence"
  on public.user_presence for insert
  to authenticated
  with check (user_id = auth.uid());

create policy "users_can_update_own_presence"
  on public.user_presence for update
  to authenticated
  using (user_id = auth.uid());

insert into public.permissions (name, slug, description, category)
values ('View Live Users', 'users.live', 'View real-time user presence and activity', 'users')
on conflict (slug) do nothing;

do $$
declare
  v_perm_id uuid;
  v_role_id uuid;
begin
  select id into v_perm_id from public.permissions where slug = 'users.live';

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

  select id into v_role_id from public.roles where slug = 'support';
  if v_role_id is not null and v_perm_id is not null then
    insert into public.role_permissions (role_id, permission_id)
    values (v_role_id, v_perm_id)
    on conflict do nothing;
  end if;
end;
$$;
