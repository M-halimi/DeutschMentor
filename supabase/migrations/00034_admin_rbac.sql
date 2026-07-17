-- =============================================================================
-- Enterprise Admin RBAC — Roles, Permissions, Invitations, Audit Logging
-- =============================================================================

-- ==================== 1. ADMIN ROLES ====================
-- Separate from subscription roles — exclusively for admin panel access

create table if not exists public.admin_roles (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  description text,
  is_system boolean not null default false,
  is_super_admin boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- ==================== 2. ADMIN PERMISSIONS ====================
-- Flat permission catalog with categories

create table if not exists public.admin_permissions (
  id uuid primary key default gen_random_uuid(),
  code text unique not null,
  name text not null,
  description text,
  category text not null,
  created_at timestamptz not null default now()
);

-- ==================== 3. ROLE-PERMISSION MAPPING ====================

create table if not exists public.admin_role_permissions (
  role_id uuid not null references public.admin_roles(id) on delete cascade,
  permission_id uuid not null references public.admin_permissions(id) on delete cascade,
  primary key (role_id, permission_id)
);

-- ==================== 4. ADMIN USERS ====================
-- Who has admin panel access and what role they hold

create table if not exists public.admin_users (
  user_id uuid primary key references auth.users(id) on delete cascade,
  role_id uuid not null references public.admin_roles(id),
  is_owner boolean not null default false,
  is_active boolean not null default true,
  invited_by uuid references auth.users(id),
  invited_at timestamptz not null default now(),
  last_login timestamptz,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- ==================== 5. INVITATIONS ====================

create table if not exists public.admin_invitations (
  id uuid primary key default gen_random_uuid(),
  email text not null,
  role_id uuid not null references public.admin_roles(id),
  invited_by uuid not null references auth.users(id),
  token text not null unique,
  expires_at timestamptz not null,
  accepted_at timestamptz,
  revoked_at timestamptz,
  created_at timestamptz not null default now()
);

create unique index if not exists idx_active_invitation_email on public.admin_invitations(email) where accepted_at is null and revoked_at is null;

-- ==================== 6. AUDIT LOGS ====================

create table if not exists public.audit_logs (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id),
  action text not null,
  resource_type text not null,
  resource_id text,
  details jsonb default '{}'::jsonb,
  previous_values jsonb default null,
  new_values jsonb default null,
  ip_address text,
  user_agent text,
  created_at timestamptz not null default now()
);

create index if not exists idx_audit_logs_user on public.audit_logs(user_id);
create index if not exists idx_audit_logs_resource on public.audit_logs(resource_type, resource_id);
create index if not exists idx_audit_logs_created on public.audit_logs(created_at desc);

-- ==================== 7. DEFAULT PERMISSION CATALOG ====================
-- Every granular permission the admin system supports

insert into public.admin_permissions (code, name, description, category) values

  -- Dashboard
  ('dashboard.view', 'View Dashboard', 'View the admin dashboard overview', 'dashboard'),

  -- Users
  ('users.view', 'View Users', 'View user list and profiles', 'users'),
  ('users.create', 'Create Users', 'Create new user accounts', 'users'),
  ('users.edit', 'Edit Users', 'Modify user details and settings', 'users'),
  ('users.delete', 'Delete Users', 'Remove user accounts', 'users'),
  ('users.ban', 'Ban Users', 'Suspend or ban users', 'users'),
  ('users.reset_password', 'Reset User Passwords', 'Force password reset for users', 'users'),

  -- Admin Roles & Permissions
  ('roles.view', 'View Roles', 'View admin roles list', 'roles'),
  ('roles.create', 'Create Roles', 'Create custom admin roles', 'roles'),
  ('roles.edit', 'Edit Roles', 'Modify role permissions', 'roles'),
  ('roles.delete', 'Delete Roles', 'Remove admin roles', 'roles'),

  -- Admin Users (staff management)
  ('admin_users.view', 'View Admin Users', 'View admin staff list', 'admin_users'),
  ('admin_users.invite', 'Invite Staff', 'Send admin invitations', 'admin_users'),
  ('admin_users.edit', 'Edit Admin Users', 'Change admin user roles and status', 'admin_users'),
  ('admin_users.remove', 'Remove Admin Access', 'Revoke admin access', 'admin_users'),

  -- Invitations
  ('invitations.view', 'View Invitations', 'View pending and past invitations', 'invitations'),
  ('invitations.create', 'Create Invitations', 'Send new staff invitations', 'invitations'),
  ('invitations.revoke', 'Revoke Invitations', 'Cancel pending invitations', 'invitations'),

  -- Courses
  ('courses.view', 'View Courses', 'View course catalog', 'courses'),
  ('courses.create', 'Create Courses', 'Create new courses', 'courses'),
  ('courses.edit', 'Edit Courses', 'Modify course details', 'courses'),
  ('courses.delete', 'Delete Courses', 'Remove courses', 'courses'),
  ('courses.publish', 'Publish Courses', 'Change course publication status', 'courses'),

  -- Curriculum
  ('curriculum.view', 'View Curriculum', 'View curriculum structure', 'curriculum'),
  ('curriculum.create', 'Create Curriculum', 'Add curriculum levels', 'curriculum'),
  ('curriculum.edit', 'Edit Curriculum', 'Modify curriculum', 'curriculum'),
  ('curriculum.delete', 'Delete Curriculum', 'Remove curriculum', 'curriculum'),

  -- Modules
  ('modules.view', 'View Modules', 'View course modules', 'modules'),
  ('modules.create', 'Create Modules', 'Create new modules', 'modules'),
  ('modules.edit', 'Edit Modules', 'Modify modules', 'modules'),
  ('modules.delete', 'Delete Modules', 'Remove modules', 'modules'),

  -- Lessons
  ('lessons.view', 'View Lessons', 'View lesson content', 'lessons'),
  ('lessons.create', 'Create Lessons', 'Create new lessons', 'lessons'),
  ('lessons.edit', 'Edit Lessons', 'Modify lesson content', 'lessons'),
  ('lessons.delete', 'Delete Lessons', 'Remove lessons', 'lessons'),

  -- Vocabulary
  ('vocabulary.view', 'View Vocabulary', 'View vocabulary entries', 'vocabulary'),
  ('vocabulary.create', 'Create Vocabulary', 'Add vocabulary entries', 'vocabulary'),
  ('vocabulary.edit', 'Edit Vocabulary', 'Modify vocabulary', 'vocabulary'),
  ('vocabulary.delete', 'Delete Vocabulary', 'Remove vocabulary', 'vocabulary'),
  ('vocabulary.bulk_import', 'Bulk Import Vocabulary', 'Import vocabulary in bulk', 'vocabulary'),

  -- Grammar
  ('grammar.view', 'View Grammar', 'View grammar rules', 'grammar'),
  ('grammar.create', 'Create Grammar', 'Add grammar rules', 'grammar'),
  ('grammar.edit', 'Edit Grammar', 'Modify grammar rules', 'grammar'),
  ('grammar.delete', 'Delete Grammar', 'Remove grammar rules', 'grammar'),

  -- Exercises
  ('exercises.view', 'View Exercises', 'View exercise content', 'exercises'),
  ('exercises.create', 'Create Exercises', 'Create new exercises', 'exercises'),
  ('exercises.edit', 'Edit Exercises', 'Modify exercises', 'exercises'),
  ('exercises.delete', 'Delete Exercises', 'Remove exercises', 'exercises'),

  -- Listening
  ('listening.view', 'View Listening', 'View listening exercises', 'listening'),
  ('listening.create', 'Create Listening', 'Create listening content', 'listening'),
  ('listening.edit', 'Edit Listening', 'Modify listening content', 'listening'),
  ('listening.delete', 'Delete Listening', 'Remove listening content', 'listening'),

  -- Reading
  ('reading.view', 'View Reading', 'View reading exercises', 'reading'),
  ('reading.create', 'Create Reading', 'Create reading content', 'reading'),
  ('reading.edit', 'Edit Reading', 'Modify reading content', 'reading'),
  ('reading.delete', 'Delete Reading', 'Remove reading content', 'reading'),

  -- Writing
  ('writing.view', 'View Writing', 'View writing exercises', 'writing'),
  ('writing.create', 'Create Writing', 'Create writing content', 'writing'),
  ('writing.edit', 'Edit Writing', 'Modify writing content', 'writing'),
  ('writing.delete', 'Delete Writing', 'Remove writing content', 'writing'),

  -- Speaking
  ('speaking.view', 'View Speaking', 'View speaking exercises', 'speaking'),
  ('speaking.create', 'Create Speaking', 'Create speaking content', 'speaking'),
  ('speaking.edit', 'Edit Speaking', 'Modify speaking content', 'speaking'),
  ('speaking.delete', 'Delete Speaking', 'Remove speaking content', 'speaking'),

  -- AI Tutor
  ('ai_tutor.view', 'View AI Tutor', 'View AI tutor content', 'ai_tutor'),
  ('ai_tutor.create', 'Create AI Tutor', 'Create AI tutor prompts', 'ai_tutor'),
  ('ai_tutor.edit', 'Edit AI Tutor', 'Modify AI tutor configuration', 'ai_tutor'),
  ('ai_tutor.delete', 'Delete AI Tutor', 'Remove AI tutor content', 'ai_tutor'),

  -- Flashcards
  ('flashcards.view', 'View Flashcards', 'View flashcard sets', 'flashcards'),
  ('flashcards.create', 'Create Flashcards', 'Create flashcard content', 'flashcards'),
  ('flashcards.edit', 'Edit Flashcards', 'Modify flashcard sets', 'flashcards'),
  ('flashcards.delete', 'Delete Flashcards', 'Remove flashcard sets', 'flashcards'),

  -- Certificates
  ('certificates.view', 'View Certificates', 'View certificates and templates', 'certificates'),
  ('certificates.create', 'Create Certificates', 'Create certificate templates', 'certificates'),
  ('certificates.edit', 'Edit Certificates', 'Modify certificate templates', 'certificates'),
  ('certificates.delete', 'Delete Certificates', 'Remove certificate templates', 'certificates'),
  ('certificates.issue', 'Issue Certificates', 'Manually issue certificates', 'certificates'),

  -- Achievements
  ('achievements.view', 'View Achievements', 'View achievements and badges', 'achievements'),
  ('achievements.create', 'Create Achievements', 'Create achievement definitions', 'achievements'),
  ('achievements.edit', 'Edit Achievements', 'Modify achievements', 'achievements'),
  ('achievements.delete', 'Delete Achievements', 'Remove achievements', 'achievements'),

  -- CMS
  ('cms.view', 'View CMS', 'View content pages', 'cms'),
  ('cms.create', 'Create CMS', 'Create content pages', 'cms'),
  ('cms.edit', 'Edit CMS', 'Modify content pages', 'cms'),
  ('cms.delete', 'Delete CMS', 'Remove content pages', 'cms'),
  ('cms.publish', 'Publish CMS', 'Change page publication status', 'cms'),

  -- Media Library
  ('media.view', 'View Media', 'View media library', 'media'),
  ('media.upload', 'Upload Media', 'Upload files to media library', 'media'),
  ('media.delete', 'Delete Media', 'Remove media files', 'media'),

  -- Analytics
  ('analytics.view', 'View Analytics', 'View platform analytics', 'analytics'),
  ('analytics.export', 'Export Analytics', 'Export analytics data', 'analytics'),

  -- Payments
  ('payments.view', 'View Payments', 'View payment transactions', 'payments'),
  ('payments.refund', 'Refund Payments', 'Process payment refunds', 'payments'),
  ('payments.export', 'Export Payments', 'Export payment data', 'payments'),

  -- Subscription Plans
  ('subscriptions.view', 'View Subscriptions', 'View subscription plans and user subscriptions', 'subscriptions'),
  ('subscriptions.edit', 'Edit Subscriptions', 'Modify subscription plans', 'subscriptions'),
  ('subscriptions.cancel', 'Cancel Subscriptions', 'Cancel user subscriptions', 'subscriptions'),

  -- Coupons
  ('coupons.view', 'View Coupons', 'View coupon codes', 'coupons'),
  ('coupons.create', 'Create Coupons', 'Create discount coupons', 'coupons'),
  ('coupons.edit', 'Edit Coupons', 'Modify coupon details', 'coupons'),
  ('coupons.delete', 'Delete Coupons', 'Remove coupon codes', 'coupons'),

  -- Notifications
  ('notifications.view', 'View Notifications', 'View notification history', 'notifications'),
  ('notifications.send', 'Send Notifications', 'Send push/email notifications', 'notifications'),
  ('notifications.edit', 'Edit Notifications', 'Modify notification templates', 'notifications'),

  -- Email Templates
  ('email_templates.view', 'View Email Templates', 'View email templates', 'email_templates'),
  ('email_templates.create', 'Create Email Templates', 'Create email templates', 'email_templates'),
  ('email_templates.edit', 'Edit Email Templates', 'Modify email templates', 'email_templates'),
  ('email_templates.delete', 'Delete Email Templates', 'Remove email templates', 'email_templates'),

  -- Translation Management
  ('translations.view', 'View Translations', 'View translation entries', 'translations'),
  ('translations.create', 'Create Translations', 'Add translation entries', 'translations'),
  ('translations.edit', 'Edit Translations', 'Modify translations', 'translations'),
  ('translations.delete', 'Delete Translations', 'Remove translations', 'translations'),

  -- Database Tools
  ('database.view', 'View Database', 'View database schema and tables', 'database'),
  ('database.query', 'Query Database', 'Execute SQL queries', 'database'),
  ('database.export', 'Export Database', 'Export database tables', 'database'),

  -- Import / Export
  ('import_export.import', 'Import Data', 'Import data into platform', 'import_export'),
  ('import_export.export', 'Export Data', 'Export platform data', 'import_export'),

  -- Backup / Restore
  ('backup.view', 'View Backups', 'View backup history', 'backup'),
  ('backup.create', 'Create Backups', 'Create manual backups', 'backup'),
  ('backup.restore', 'Restore Backups', 'Restore from backups', 'backup'),
  ('backup.delete', 'Delete Backups', 'Remove backup archives', 'backup'),

  -- Logs
  ('logs.view', 'View Logs', 'View system and audit logs', 'logs'),
  ('logs.export', 'Export Logs', 'Export log data', 'logs'),

  -- API Keys
  ('api_keys.view', 'View API Keys', 'View API key list', 'api_keys'),
  ('api_keys.create', 'Create API Keys', 'Generate new API keys', 'api_keys'),
  ('api_keys.revoke', 'Revoke API Keys', 'Revoke existing API keys', 'api_keys'),

  -- Integrations
  ('integrations.view', 'View Integrations', 'View third-party integrations', 'integrations'),
  ('integrations.create', 'Create Integrations', 'Add new integrations', 'integrations'),
  ('integrations.edit', 'Edit Integrations', 'Modify integration config', 'integrations'),
  ('integrations.delete', 'Delete Integrations', 'Remove integrations', 'integrations'),

  -- Security
  ('security.view', 'View Security', 'View security settings', 'security'),
  ('security.edit', 'Edit Security', 'Modify security settings', 'security'),

  -- Settings
  ('settings.view', 'View Settings', 'View platform settings', 'settings'),
  ('settings.edit', 'Edit Settings', 'Modify platform settings', 'settings'),

  -- System Configuration
  ('system.view', 'View System', 'View system configuration', 'system'),
  ('system.edit', 'Edit System', 'Modify system configuration', 'system')

on conflict (code) do nothing;

-- ==================== 8. DEFAULT ROLES ====================

-- Platform Owner role
insert into public.admin_roles (name, description, is_system, is_super_admin) values
  ('Platform Owner', 'Unrestricted access to the entire platform. Only one Owner exists.', true, false),
  ('Super Admin', 'Full access except Owner-only actions (delete owner, manage backups, API keys, security settings, ownership transfer).', true, true)
on conflict do nothing;

-- ==================== 9. LINK ALL PERMISSIONS TO PLATFORM OWNER ROLE ====================

-- Owner gets every permission
insert into public.admin_role_permissions (role_id, permission_id)
select r.id, p.id
from public.admin_roles r
cross join public.admin_permissions p
where r.name = 'Platform Owner'
on conflict do nothing;

-- Super Admin gets all permissions except Owner-only ones
-- Owner-only codes: backup.delete, backup.restore, api_keys.*, security.edit, system.edit,
-- invitations.create, invitations.revoke (owner exclusive), admin_users.* (owner exclusive),
-- roles.* (owner exclusive), users.delete, settings.edit
insert into public.admin_role_permissions (role_id, permission_id)
select r.id, p.id
from public.admin_roles r
cross join public.admin_permissions p
where r.name = 'Super Admin'
  and p.code not in (
    'backup.delete',
    'backup.restore',
    'api_keys.view',
    'api_keys.create',
    'api_keys.revoke',
    'security.edit',
    'system.edit',
    'invitations.create',
    'invitations.revoke',
    'admin_users.invite',
    'admin_users.edit',
    'admin_users.remove',
    'roles.create',
    'roles.edit',
    'roles.delete',
    'users.delete',
    'settings.edit',
    'backup.create'
  )
on conflict do nothing;

-- ==================== 10. PLATFORM OWNER TRIGGER ====================
-- Ensures only one Platform Owner exists at any time

create or replace function public.enforce_single_owner()
returns trigger as $$
begin
  if new.is_owner = true then
    update public.admin_users set is_owner = false
    where is_owner = true and user_id <> new.user_id;
  end if;
  if TG_OP = 'UPDATE' and old.is_owner = true and new.is_owner = false then
    raise exception 'Cannot remove Platform Owner status. Transfer ownership first.';
  end if;
  return new;
end;
$$ language plpgsql security definer;

drop trigger if exists trg_enforce_single_owner on public.admin_users;
create trigger trg_enforce_single_owner
  before insert or update on public.admin_users
  for each row execute function public.enforce_single_owner();

-- ==================== 11. INVITATION ACCEPTANCE FUNCTION ====================

create or replace function public.accept_admin_invitation(p_token text, p_user_id uuid)
returns jsonb
language plpgsql security definer as $$
declare
  v_invite public.admin_invitations;
begin
  select * into v_invite
  from public.admin_invitations
  where token = p_token
    and accepted_at is null
    and revoked_at is null
    and expires_at > now();

  if v_invite.id is null then
    return jsonb_build_object('success', false, 'error', 'Invalid or expired invitation token');
  end if;

  -- Check if user is already an admin
  if exists (select 1 from public.admin_users where user_id = p_user_id) then
    return jsonb_build_object('success', false, 'error', 'User already has admin access');
  end if;

  -- Create admin user
  insert into public.admin_users (user_id, role_id, is_owner, invited_by, invited_at)
  values (p_user_id, v_invite.role_id, false, v_invite.invited_by, now());

  -- Mark invitation as accepted
  update public.admin_invitations
  set accepted_at = now()
  where id = v_invite.id;

  return jsonb_build_object('success', true, 'role_id', v_invite.role_id);
end;
$$;

-- ==================== 12. AUDIT LOG FUNCTION ====================

create or replace function public.log_audit(
  p_user_id uuid,
  p_action text,
  p_resource_type text,
  p_resource_id text default null,
  p_details jsonb default '{}'::jsonb,
  p_previous_values jsonb default null,
  p_new_values jsonb default null,
  p_ip_address text default null,
  p_user_agent text default null
)
returns void
language plpgsql security definer as $$
begin
  insert into public.audit_logs (user_id, action, resource_type, resource_id, details, previous_values, new_values, ip_address, user_agent)
  values (p_user_id, p_action, p_resource_type, p_resource_id, p_details, p_previous_values, p_new_values, p_ip_address, p_user_agent);
end;
$$;

-- ==================== 13. PERMISSION CHECK FUNCTION ====================

create or replace function public.check_admin_permission(
  p_user_id uuid,
  p_permission_code text
)
returns boolean
language plpgsql stable security definer as $$
begin
  -- Platform Owner has all permissions
  if exists (select 1 from public.admin_users where user_id = p_user_id and is_owner = true and is_active = true) then
    return true;
  end if;

  -- Check if user has the permission through their role
  return exists (
    select 1
    from public.admin_users au
    join public.admin_role_permissions rp on rp.role_id = au.role_id
    join public.admin_permissions p on p.id = rp.permission_id
    where au.user_id = p_user_id
      and au.is_active = true
      and p.code = p_permission_code
  );
end;
$$;

-- ==================== 14. GET USER PERMISSIONS FUNCTION ====================

create or replace function public.get_user_admin_permissions(p_user_id uuid)
returns jsonb
language plpgsql stable security definer as $$
declare
  v_permissions jsonb;
  v_is_owner boolean;
begin
  select is_owner into v_is_owner from public.admin_users where user_id = p_user_id and is_active = true;

  if v_is_owner is null then
    return '[]'::jsonb;
  end if;

  if v_is_owner = true then
    select jsonb_agg(p.code order by p.code) into v_permissions
    from public.admin_permissions p;
  else
    select jsonb_agg(p.code order by p.code) into v_permissions
    from public.admin_role_permissions rp
    join public.admin_permissions p on p.id = rp.permission_id
    join public.admin_users au on au.role_id = rp.role_id
    where au.user_id = p_user_id and au.is_active = true;
  end if;

  return coalesce(v_permissions, '[]'::jsonb);
end;
$$;

-- ==================== 15. RLS POLICIES ====================

alter table public.admin_roles enable row level security;
alter table public.admin_permissions enable row level security;
alter table public.admin_role_permissions enable row level security;
alter table public.admin_users enable row level security;
alter table public.admin_invitations enable row level security;
alter table public.audit_logs enable row level security;

do $$ begin
  -- Admin roles: all authenticated users can read
  execute 'create policy "admin_roles_select" on public.admin_roles for select using (true)';
exception when duplicate_object then null; end $$;

do $$ begin
  -- Admin permissions: all authenticated users can read
  execute 'create policy "admin_permissions_select" on public.admin_permissions for select using (true)';
exception when duplicate_object then null; end $$;

do $$ begin
  -- Admin role permissions: readable by authenticated users
  execute 'create policy "admin_role_permissions_select" on public.admin_role_permissions for select using (true)';
exception when duplicate_object then null; end $$;

do $$ begin
  -- Admin users: users can read own record, admins can read all
  execute 'create policy "admin_users_select" on public.admin_users for select using (auth.uid() = user_id or public.check_admin_permission(auth.uid(), ''admin_users.view''))';
exception when duplicate_object then null; end $$;

do $$ begin
  -- Admin users: only owner can insert/update
  execute 'create policy "admin_users_owner_all" on public.admin_users for all using (public.check_admin_permission(auth.uid(), ''admin_users.invite''))';
exception when duplicate_object then null; end $$;

do $$ begin
  -- Invitations: viewable by owner or users with invitations.view
  execute 'create policy "invitations_select" on public.admin_invitations for select using (public.check_admin_permission(auth.uid(), ''invitations.view''))';
exception when duplicate_object then null; end $$;

do $$ begin
  -- Invitations: only owner can create/revoke
  execute 'create policy "invitations_owner_all" on public.admin_invitations for all using (public.check_admin_permission(auth.uid(), ''invitations.create''))';
exception when duplicate_object then null; end $$;

do $$ begin
  -- Audit logs: viewable by users with logs.view permission
  execute 'create policy "audit_logs_select" on public.audit_logs for select using (public.check_admin_permission(auth.uid(), ''logs.view''))';
exception when duplicate_object then null; end $$;

do $$ begin
  -- Audit logs: insertable by the system (security definer function handles auth)
  execute 'create policy "audit_logs_insert" on public.audit_logs for insert with check (true)';
exception when duplicate_object then null; end $$;

-- Grant table permissions to service role
grant all on all tables in schema public to service_role;

-- ==================== 16. SEED THE PLATFORM OWNER ====================
-- This must be run manually after migration to set the actual owner.
-- Example:
--   insert into public.admin_users (user_id, role_id, is_owner)
--   select 'ACTUAL_USER_UUID', id, true from public.admin_roles where name = 'Platform Owner';
