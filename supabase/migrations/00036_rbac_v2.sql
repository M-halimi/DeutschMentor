-- =============================================================================
-- Enterprise RBAC v2 — Simplified, Production-Ready
-- Tables: roles, permissions, role_permissions, invitations, audit_logs
-- role_id + is_owner on profiles
-- =============================================================================

-- ==================== 1. ROLES ====================
create table if not exists public.roles (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  slug text not null unique,
  description text,
  is_system boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- ==================== 2. PERMISSIONS ====================
create table if not exists public.permissions (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  slug text not null unique,
  description text,
  category text not null,
  created_at timestamptz not null default now()
);

-- ==================== 3. ROLE-PERMISSION MAPPING ====================
create table if not exists public.role_permissions (
  role_id uuid not null references public.roles(id) on delete cascade,
  permission_id uuid not null references public.permissions(id) on delete cascade,
  primary key (role_id, permission_id)
);

-- ==================== 4. ADD role_id + is_owner TO PROFILES ====================
alter table public.profiles
  add column if not exists role_id uuid references public.roles(id),
  add column if not exists is_owner boolean not null default false;

-- Drop old role check constraint, add new one that includes owner
alter table public.profiles
  drop constraint if exists profiles_role_check,
  add constraint profiles_role_check
    check (role in ('student', 'teacher', 'admin', 'super_admin', 'owner'));

-- ==================== 5. INVITATIONS ====================
create table if not exists public.invitations (
  id uuid primary key default gen_random_uuid(),
  email text not null,
  role_id uuid not null references public.roles(id),
  invited_by uuid not null references auth.users(id),
  token text not null unique,
  expires_at timestamptz not null,
  accepted_at timestamptz,
  revoked_at timestamptz,
  created_at timestamptz not null default now()
);

create unique index if not exists idx_active_invitation_email on public.invitations(email) where accepted_at is null and revoked_at is null;

-- ==================== 6. AUDIT LOGS ====================
-- Ensure table exists (may already exist from 00034_admin_rbac.sql)
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

-- Add module column if not present (v2 addition)
alter table public.audit_logs add column if not exists module text not null default 'general';

-- Add old_values alias if not present (v2 naming)
alter table public.audit_logs add column if not exists old_values jsonb default null;

create index if not exists idx_audit_logs_user on public.audit_logs(user_id);
create index if not exists idx_audit_logs_resource on public.audit_logs(resource_type, resource_id);
create index if not exists idx_audit_logs_created on public.audit_logs(created_at desc);
create index if not exists idx_audit_logs_module on public.audit_logs(module);

-- ==================== 7. SEED PERMISSIONS ====================
insert into public.permissions (name, slug, description, category) values

  -- Dashboard
  ('View Dashboard', 'dashboard.view', 'View the admin dashboard overview', 'dashboard'),

  -- Users
  ('View Users', 'users.view', 'View user list and profiles', 'users'),
  ('Create Users', 'users.create', 'Create new user accounts', 'users'),
  ('Edit Users', 'users.edit', 'Modify user details and settings', 'users'),
  ('Delete Users', 'users.delete', 'Remove user accounts', 'users'),
  ('Ban Users', 'users.ban', 'Suspend or ban users', 'users'),
  ('Reset User Passwords', 'users.reset_password', 'Force password reset for users', 'users'),

  -- Roles & Permissions
  ('View Roles', 'roles.view', 'View roles list', 'roles'),
  ('Create Roles', 'roles.create', 'Create custom roles', 'roles'),
  ('Edit Roles', 'roles.edit', 'Modify role permissions', 'roles'),
  ('Delete Roles', 'roles.delete', 'Remove roles', 'roles'),

  -- Staff Management
  ('View Staff', 'staff.view', 'View admin staff list', 'staff'),
  ('Invite Staff', 'staff.invite', 'Send admin invitations', 'staff'),
  ('Edit Staff', 'staff.edit', 'Change staff roles and status', 'staff'),
  ('Remove Staff', 'staff.remove', 'Revoke admin access', 'staff'),

  -- Invitations
  ('View Invitations', 'invitations.view', 'View pending and past invitations', 'invitations'),
  ('Create Invitations', 'invitations.create', 'Send new staff invitations', 'invitations'),
  ('Revoke Invitations', 'invitations.revoke', 'Cancel pending invitations', 'invitations'),

  -- Courses
  ('View Courses', 'courses.view', 'View course catalog', 'courses'),
  ('Create Courses', 'courses.create', 'Create new courses', 'courses'),
  ('Edit Courses', 'courses.edit', 'Modify course details', 'courses'),
  ('Delete Courses', 'courses.delete', 'Remove courses', 'courses'),
  ('Publish Courses', 'courses.publish', 'Change course publication status', 'courses'),

  -- Curriculum
  ('View Curriculum', 'curriculum.view', 'View curriculum structure', 'curriculum'),
  ('Create Curriculum', 'curriculum.create', 'Add curriculum levels', 'curriculum'),
  ('Edit Curriculum', 'curriculum.edit', 'Modify curriculum', 'curriculum'),
  ('Delete Curriculum', 'curriculum.delete', 'Remove curriculum', 'curriculum'),

  -- Modules
  ('View Modules', 'modules.view', 'View course modules', 'modules'),
  ('Create Modules', 'modules.create', 'Create new modules', 'modules'),
  ('Edit Modules', 'modules.edit', 'Modify modules', 'modules'),
  ('Delete Modules', 'modules.delete', 'Remove modules', 'modules'),

  -- Lessons
  ('View Lessons', 'lessons.view', 'View lesson content', 'lessons'),
  ('Create Lessons', 'lessons.create', 'Create new lessons', 'lessons'),
  ('Edit Lessons', 'lessons.edit', 'Modify lesson content', 'lessons'),
  ('Delete Lessons', 'lessons.delete', 'Remove lessons', 'lessons'),

  -- Vocabulary
  ('View Vocabulary', 'vocabulary.view', 'View vocabulary entries', 'vocabulary'),
  ('Create Vocabulary', 'vocabulary.create', 'Add vocabulary entries', 'vocabulary'),
  ('Edit Vocabulary', 'vocabulary.edit', 'Modify vocabulary', 'vocabulary'),
  ('Delete Vocabulary', 'vocabulary.delete', 'Remove vocabulary', 'vocabulary'),
  ('Bulk Import Vocabulary', 'vocabulary.bulk_import', 'Import vocabulary in bulk', 'vocabulary'),

  -- Grammar
  ('View Grammar', 'grammar.view', 'View grammar rules', 'grammar'),
  ('Create Grammar', 'grammar.create', 'Add grammar rules', 'grammar'),
  ('Edit Grammar', 'grammar.edit', 'Modify grammar rules', 'grammar'),
  ('Delete Grammar', 'grammar.delete', 'Remove grammar rules', 'grammar'),

  -- Exercises
  ('View Exercises', 'exercises.view', 'View exercise content', 'exercises'),
  ('Create Exercises', 'exercises.create', 'Create new exercises', 'exercises'),
  ('Edit Exercises', 'exercises.edit', 'Modify exercises', 'exercises'),
  ('Delete Exercises', 'exercises.delete', 'Remove exercises', 'exercises'),

  -- Listening
  ('View Listening', 'listening.view', 'View listening exercises', 'listening'),
  ('Create Listening', 'listening.create', 'Create listening content', 'listening'),
  ('Edit Listening', 'listening.edit', 'Modify listening content', 'listening'),
  ('Delete Listening', 'listening.delete', 'Remove listening content', 'listening'),

  -- Reading
  ('View Reading', 'reading.view', 'View reading exercises', 'reading'),
  ('Create Reading', 'reading.create', 'Create reading content', 'reading'),
  ('Edit Reading', 'reading.edit', 'Modify reading content', 'reading'),
  ('Delete Reading', 'reading.delete', 'Remove reading content', 'reading'),

  -- Writing
  ('View Writing', 'writing.view', 'View writing exercises', 'writing'),
  ('Create Writing', 'writing.create', 'Create writing content', 'writing'),
  ('Edit Writing', 'writing.edit', 'Modify writing content', 'writing'),
  ('Delete Writing', 'writing.delete', 'Remove writing content', 'writing'),

  -- Speaking
  ('View Speaking', 'speaking.view', 'View speaking exercises', 'speaking'),
  ('Create Speaking', 'speaking.create', 'Create speaking content', 'speaking'),
  ('Edit Speaking', 'speaking.edit', 'Modify speaking content', 'speaking'),
  ('Delete Speaking', 'speaking.delete', 'Remove speaking content', 'speaking'),

  -- AI Tutor
  ('View AI Tutor', 'ai_tutor.view', 'View AI tutor content', 'ai_tutor'),
  ('Create AI Tutor', 'ai_tutor.create', 'Create AI tutor prompts', 'ai_tutor'),
  ('Edit AI Tutor', 'ai_tutor.edit', 'Modify AI tutor configuration', 'ai_tutor'),
  ('Delete AI Tutor', 'ai_tutor.delete', 'Remove AI tutor content', 'ai_tutor'),

  -- Flashcards
  ('View Flashcards', 'flashcards.view', 'View flashcard sets', 'flashcards'),
  ('Create Flashcards', 'flashcards.create', 'Create flashcard content', 'flashcards'),
  ('Edit Flashcards', 'flashcards.edit', 'Modify flashcard sets', 'flashcards'),
  ('Delete Flashcards', 'flashcards.delete', 'Remove flashcard sets', 'flashcards'),

  -- Certificates
  ('View Certificates', 'certificates.view', 'View certificates and templates', 'certificates'),
  ('Create Certificates', 'certificates.create', 'Create certificate templates', 'certificates'),
  ('Edit Certificates', 'certificates.edit', 'Modify certificate templates', 'certificates'),
  ('Delete Certificates', 'certificates.delete', 'Remove certificate templates', 'certificates'),
  ('Issue Certificates', 'certificates.issue', 'Manually issue certificates', 'certificates'),

  -- Achievements
  ('View Achievements', 'achievements.view', 'View achievements and badges', 'achievements'),
  ('Create Achievements', 'achievements.create', 'Create achievement definitions', 'achievements'),
  ('Edit Achievements', 'achievements.edit', 'Modify achievements', 'achievements'),
  ('Delete Achievements', 'achievements.delete', 'Remove achievements', 'achievements'),

  -- CMS
  ('View CMS', 'cms.view', 'View content pages', 'cms'),
  ('Create CMS', 'cms.create', 'Create content pages', 'cms'),
  ('Edit CMS', 'cms.edit', 'Modify content pages', 'cms'),
  ('Delete CMS', 'cms.delete', 'Remove content pages', 'cms'),
  ('Publish CMS', 'cms.publish', 'Change page publication status', 'cms'),

  -- Media
  ('View Media', 'media.view', 'View media library', 'media'),
  ('Upload Media', 'media.upload', 'Upload files to media library', 'media'),
  ('Delete Media', 'media.delete', 'Remove media files', 'media'),

  -- Analytics
  ('View Analytics', 'analytics.view', 'View platform analytics', 'analytics'),
  ('Export Analytics', 'analytics.export', 'Export analytics data', 'analytics'),

  -- Payments
  ('View Payments', 'payments.view', 'View payment transactions', 'payments'),
  ('Refund Payments', 'payments.refund', 'Process payment refunds', 'payments'),
  ('Export Payments', 'payments.export', 'Export payment data', 'payments'),

  -- Subscriptions
  ('View Subscriptions', 'subscriptions.view', 'View subscription plans and user subscriptions', 'subscriptions'),
  ('Edit Subscriptions', 'subscriptions.edit', 'Modify subscription plans', 'subscriptions'),
  ('Cancel Subscriptions', 'subscriptions.cancel', 'Cancel user subscriptions', 'subscriptions'),

  -- Coupons
  ('View Coupons', 'coupons.view', 'View coupon codes', 'coupons'),
  ('Create Coupons', 'coupons.create', 'Create discount coupons', 'coupons'),
  ('Edit Coupons', 'coupons.edit', 'Modify coupon details', 'coupons'),
  ('Delete Coupons', 'coupons.delete', 'Remove coupon codes', 'coupons'),

  -- Notifications
  ('View Notifications', 'notifications.view', 'View notification history', 'notifications'),
  ('Send Notifications', 'notifications.send', 'Send push/email notifications', 'notifications'),
  ('Edit Notifications', 'notifications.edit', 'Modify notification templates', 'notifications'),

  -- Email Templates
  ('View Email Templates', 'email_templates.view', 'View email templates', 'email_templates'),
  ('Create Email Templates', 'email_templates.create', 'Create email templates', 'email_templates'),
  ('Edit Email Templates', 'email_templates.edit', 'Modify email templates', 'email_templates'),
  ('Delete Email Templates', 'email_templates.delete', 'Remove email templates', 'email_templates'),

  -- Translations
  ('View Translations', 'translations.view', 'View translation entries', 'translations'),
  ('Create Translations', 'translations.create', 'Add translation entries', 'translations'),
  ('Edit Translations', 'translations.edit', 'Modify translations', 'translations'),
  ('Delete Translations', 'translations.delete', 'Remove translations', 'translations'),

  -- Database
  ('View Database', 'database.view', 'View database schema and tables', 'database'),
  ('Query Database', 'database.query', 'Execute SQL queries', 'database'),
  ('Export Database', 'database.export', 'Export database tables', 'database'),

  -- Import / Export
  ('Import Data', 'import_export.import', 'Import data into platform', 'import_export'),
  ('Export Data', 'import_export.export', 'Export platform data', 'import_export'),

  -- Backup / Restore
  ('View Backups', 'backup.view', 'View backup history', 'backup'),
  ('Create Backups', 'backup.create', 'Create manual backups', 'backup'),
  ('Restore Backups', 'backup.restore', 'Restore from backups', 'backup'),
  ('Delete Backups', 'backup.delete', 'Remove backup archives', 'backup'),

  -- Logs
  ('View Logs', 'logs.view', 'View system and audit logs', 'logs'),
  ('Export Logs', 'logs.export', 'Export log data', 'logs'),

  -- API Keys
  ('View API Keys', 'api_keys.view', 'View API key list', 'api_keys'),
  ('Create API Keys', 'api_keys.create', 'Generate new API keys', 'api_keys'),
  ('Revoke API Keys', 'api_keys.revoke', 'Revoke existing API keys', 'api_keys'),

  -- Integrations
  ('View Integrations', 'integrations.view', 'View third-party integrations', 'integrations'),
  ('Create Integrations', 'integrations.create', 'Add new integrations', 'integrations'),
  ('Edit Integrations', 'integrations.edit', 'Modify integration config', 'integrations'),
  ('Delete Integrations', 'integrations.delete', 'Remove integrations', 'integrations'),

  -- Security
  ('View Security', 'security.view', 'View security settings', 'security'),
  ('Edit Security', 'security.edit', 'Modify security settings', 'security'),

  -- Settings
  ('View Settings', 'settings.view', 'View platform settings', 'settings'),
  ('Edit Settings', 'settings.edit', 'Modify platform settings', 'settings'),

  -- System
  ('View System', 'system.view', 'View system configuration', 'system'),
  ('Edit System', 'system.edit', 'Modify system configuration', 'system'),

  -- Audit
  ('View Audit Logs', 'audit.view', 'View audit log entries', 'audit'),
  ('Export Audit Logs', 'audit.export', 'Export audit log data', 'audit')

on conflict (slug) do nothing;

-- ==================== 8. SEED ROLES ====================
insert into public.roles (name, slug, description, is_system) values
  ('Platform Owner', 'owner', 'Unrestricted access to the entire platform. Only one Owner exists.', true),
  ('Super Admin', 'super-admin', 'Full access except Owner-only actions (delete owner, manage backups, API keys, security settings, ownership transfer).', true),
  ('Administrator', 'admin', 'Full administrative access to day-to-day operations.', true),
  ('Editor', 'editor', 'Content management — courses, lessons, vocabulary, grammar, exercises.', true),
  ('Support', 'support', 'User management and basic analytics.', true)
on conflict (slug) do nothing;

-- ==================== 9. LINK PERMISSIONS TO ROLES ====================

-- Owner gets every permission
insert into public.role_permissions (role_id, permission_id)
select r.id, p.id
from public.roles r
cross join public.permissions p
where r.slug = 'owner'
on conflict do nothing;

-- Super Admin gets all permissions except Owner-only ones
insert into public.role_permissions (role_id, permission_id)
select r.id, p.id
from public.roles r
cross join public.permissions p
where r.slug = 'super-admin'
  and p.slug not in (
    'backup.delete', 'backup.restore',
    'api_keys.view', 'api_keys.create', 'api_keys.revoke',
    'security.edit', 'system.edit',
    'invitations.create', 'invitations.revoke',
    'staff.invite', 'staff.edit', 'staff.remove',
    'roles.create', 'roles.edit', 'roles.delete',
    'users.delete', 'settings.edit', 'backup.create'
  )
on conflict do nothing;

-- Admin gets operational permissions (no owner/super-admin stuff)
insert into public.role_permissions (role_id, permission_id)
select r.id, p.id
from public.roles r
cross join public.permissions p
where r.slug = 'admin'
  and p.slug not in (
    'backup.delete', 'backup.restore', 'backup.create',
    'api_keys.view', 'api_keys.create', 'api_keys.revoke',
    'security.edit', 'security.view', 'system.edit', 'system.view',
    'invitations.create', 'invitations.revoke',
    'staff.invite', 'staff.edit', 'staff.remove',
    'roles.create', 'roles.edit', 'roles.delete',
    'users.delete', 'settings.edit',
    'database.view', 'database.query', 'database.export',
    'import_export.export', 'import_export.import',
    'logs.export', 'audit.export',
    'payments.refund', 'subscriptions.cancel'
  )
on conflict do nothing;

-- Editor gets content-related permissions
insert into public.role_permissions (role_id, permission_id)
select r.id, p.id
from public.roles r
cross join public.permissions p
where r.slug = 'editor'
  and p.slug in (
    'dashboard.view',
    'courses.view', 'courses.create', 'courses.edit',
    'curriculum.view', 'curriculum.create', 'curriculum.edit',
    'modules.view', 'modules.create', 'modules.edit',
    'lessons.view', 'lessons.create', 'lessons.edit',
    'vocabulary.view', 'vocabulary.create', 'vocabulary.edit', 'vocabulary.bulk_import',
    'grammar.view', 'grammar.create', 'grammar.edit',
    'exercises.view', 'exercises.create', 'exercises.edit',
    'listening.view', 'listening.create', 'listening.edit',
    'reading.view', 'reading.create', 'reading.edit',
    'writing.view', 'writing.create', 'writing.edit',
    'speaking.view', 'speaking.create', 'speaking.edit',
    'flashcards.view', 'flashcards.create', 'flashcards.edit',
    'media.view', 'media.upload',
    'cms.view', 'cms.create', 'cms.edit'
  )
on conflict do nothing;

-- Support gets user management + basic read permissions
insert into public.role_permissions (role_id, permission_id)
select r.id, p.id
from public.roles r
cross join public.permissions p
where r.slug = 'support'
  and p.slug in (
    'dashboard.view',
    'users.view', 'users.edit', 'users.ban', 'users.reset_password',
    'subscriptions.view', 'subscriptions.cancel',
    'analytics.view',
    'logs.view',
    'audit.view'
  )
on conflict do nothing;

-- ==================== 10. ENFORCE SINGLE OWNER TRIGGER ====================
create or replace function public.enforce_single_owner_v2()
returns trigger as $$
begin
  if new.is_owner = true then
    update public.profiles set is_owner = false
    where is_owner = true and user_id <> new.user_id;
  end if;
  if TG_OP = 'UPDATE' and old.is_owner = true and new.is_owner = false then
    raise exception 'Cannot remove Platform Owner status. Transfer ownership first.';
  end if;
  return new;
end;
$$ language plpgsql security definer;

drop trigger if exists trg_enforce_single_owner_v2 on public.profiles;
create trigger trg_enforce_single_owner_v2
  before insert or update on public.profiles
  for each row execute function public.enforce_single_owner_v2();

-- ==================== 11. OWNER SETUP FUNCTION ====================
-- Creates the Owner role assignment for a given auth user.
-- Call this after creating the user via auth.admin.createUser()
create or replace function public.setup_platform_owner(p_user_id uuid)
returns void
language plpgsql security definer as $$
declare
  v_owner_role_id uuid;
begin
  select id into v_owner_role_id from public.roles where slug = 'owner';
  if v_owner_role_id is null then
    raise exception 'Owner role not found. Run role seeds first.';
  end if;

  update public.profiles
  set role_id = v_owner_role_id,
      is_owner = true,
      role = 'owner',
      updated_at = now()
  where user_id = p_user_id;
end;
$$;

-- ==================== 12. PERMISSION CHECK FUNCTION ====================
create or replace function public.check_permission(
  p_user_id uuid,
  p_permission_slug text
)
returns boolean
language plpgsql stable security definer as $$
begin
  -- Platform Owner has all permissions
  if exists (select 1 from public.profiles where user_id = p_user_id and is_owner = true) then
    return true;
  end if;

  -- Check if user has a role with the permission
  return exists (
    select 1
    from public.profiles p
    join public.role_permissions rp on rp.role_id = p.role_id
    join public.permissions perm on perm.id = rp.permission_id
    where p.user_id = p_user_id
      and p.role_id is not null
      and perm.slug = p_permission_slug
  );
end;
$$;

-- ==================== 13. GET USER PERMISSIONS FUNCTION ====================
create or replace function public.get_user_permissions(p_user_id uuid)
returns jsonb
language plpgsql stable security definer as $$
declare
  v_permissions jsonb;
  v_is_owner boolean;
begin
  select is_owner into v_is_owner from public.profiles where user_id = p_user_id;

  if v_is_owner is null then
    return '[]'::jsonb;
  end if;

  if v_is_owner = true then
    select jsonb_agg(p.slug order by p.slug) into v_permissions
    from public.permissions p;
  else
    select jsonb_agg(p.slug order by p.slug) into v_permissions
    from public.role_permissions rp
    join public.permissions p on p.id = rp.permission_id
    join public.profiles pr on pr.role_id = rp.role_id
    where pr.user_id = p_user_id;
  end if;

  return coalesce(v_permissions, '[]'::jsonb);
end;
$$;

-- ==================== 14. INVITATION ACCEPTANCE FUNCTION ====================
create or replace function public.accept_invitation(p_token text, p_user_id uuid)
returns jsonb
language plpgsql security definer as $$
declare
  v_invite public.invitations;
begin
  select * into v_invite
  from public.invitations
  where token = p_token
    and accepted_at is null
    and revoked_at is null
    and expires_at > now();

  if v_invite.id is null then
    return jsonb_build_object('success', false, 'error', 'Invalid or expired invitation token');
  end if;

  -- Check if user already has a role
  if exists (select 1 from public.profiles where user_id = p_user_id and role_id is not null) then
    return jsonb_build_object('success', false, 'error', 'User already has a role assigned');
  end if;

  -- Assign role
  update public.profiles
  set role_id = v_invite.role_id,
      role = 'admin',
      updated_at = now()
  where user_id = p_user_id;

  -- Mark invitation as accepted
  update public.invitations
  set accepted_at = now()
  where id = v_invite.id;

  -- Log audit
  insert into public.audit_logs (user_id, action, module, resource_type, resource_id, details)
  values (p_user_id, 'invitation_accepted', 'staff', 'invitation', v_invite.id,
    jsonb_build_object('email', v_invite.email, 'role_id', v_invite.role_id));

  return jsonb_build_object('success', true, 'role_id', v_invite.role_id);
end;
$$;

-- ==================== 15. AUDIT LOG FUNCTION ====================
create or replace function public.log_audit_entry(
  p_user_id uuid,
  p_action text,
  p_module text default 'general',
  p_resource_type text default '',
  p_resource_id text default null,
  p_details jsonb default '{}'::jsonb,
  p_old_values jsonb default null,
  p_new_values jsonb default null,
  p_ip_address text default null,
  p_user_agent text default null
)
returns void
language plpgsql security definer as $$
begin
  insert into public.audit_logs (user_id, action, module, resource_type, resource_id, details, old_values, new_values, ip_address, user_agent)
  values (p_user_id, p_action, p_module, p_resource_type, p_resource_id, p_details, p_old_values, p_new_values, p_ip_address, p_user_agent);
end;
$$;

-- ==================== 16. MIGRATE EXISTING ADMIN USERS ====================
-- Map old admin_roles to new roles based on name
do $$
declare
  v_old_role_name text;
  v_new_role_slug text;
  v_new_role_id uuid;
  v_user record;
begin
  for v_user in
    select au.user_id, ar.name as old_role_name
    from public.admin_users au
    join public.admin_roles ar on ar.id = au.role_id
    where au.is_active = true
  loop
    v_new_role_slug := case
      when v_user.old_role_name = 'Platform Owner' then 'owner'
      when v_user.old_role_name = 'Super Admin' then 'super-admin'
      else 'admin'
    end;

    select id into v_new_role_id from public.roles where slug = v_new_role_slug;

    if v_new_role_id is not null then
      update public.profiles
      set role_id = v_new_role_id,
          is_owner = case when v_new_role_slug = 'owner' then true else false end,
          role = case when v_new_role_slug = 'owner' then 'owner' else 'admin' end,
          updated_at = now()
      where user_id = v_user.user_id;
    end if;
  end loop;
end;
$$;

-- ==================== 17. RLS POLICIES ====================
alter table public.roles enable row level security;
alter table public.permissions enable row level security;
alter table public.role_permissions enable row level security;
alter table public.invitations enable row level security;
alter table public.audit_logs enable row level security;

do $$ begin
  execute 'create policy "roles_select" on public.roles for select using (true)';
exception when duplicate_object then null; end $$;

do $$ begin
  execute 'create policy "permissions_select" on public.permissions for select using (true)';
exception when duplicate_object then null; end $$;

do $$ begin
  execute 'create policy "role_permissions_select" on public.role_permissions for select using (true)';
exception when duplicate_object then null; end $$;

do $$ begin
  -- Invitations: viewable by owner or users with invitations.view
  execute 'create policy "invitations_select" on public.invitations for select using (public.check_permission(auth.uid(), ''invitations.view''))';
exception when duplicate_object then null; end $$;

do $$ begin
  -- Invitations: only owner can create/revoke
  execute 'create policy "invitations_owner_all" on public.invitations for all using (public.check_permission(auth.uid(), ''invitations.create''))';
exception when duplicate_object then null; end $$;

do $$ begin
  -- Audit logs: viewable by users with audit.view permission
  execute 'create policy "audit_logs_select" on public.audit_logs for select using (public.check_permission(auth.uid(), ''audit.view''))';
exception when duplicate_object then null; end $$;

do $$ begin
  -- Audit logs: insertable by the system
  execute 'create policy "audit_logs_insert" on public.audit_logs for insert with check (true)';
exception when duplicate_object then null; end $$;

-- Grant permissions to service_role
grant all on all tables in schema public to service_role;
