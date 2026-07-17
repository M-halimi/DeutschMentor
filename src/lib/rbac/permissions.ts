import { createAdminClient } from '@/lib/supabase/admin'

const ACTION_MAP: Record<string, string> = {
  list: 'view',
  read: 'view',
  update: 'edit',
  patch: 'edit',
  post: 'create',
  remove: 'delete',
}

export function permissionSlug(category: string, action: string): string {
  const normalized = ACTION_MAP[action] || action
  return `${category}.${normalized}`
}

export async function checkPermission(userId: string, slug: string): Promise<boolean> {
  const admin = createAdminClient()
  const { data, error } = await admin.rpc('check_permission', {
    p_user_id: userId,
    p_permission_slug: slug,
  })
  if (error) return false
  return data === true
}

export async function getUserPermissions(userId: string): Promise<string[]> {
  const admin = createAdminClient()
  const { data, error } = await admin.rpc('get_user_permissions', { p_user_id: userId })
  if (error || !data) return []
  return data
}

export async function requirePermission(userId: string, slug: string): Promise<void> {
  const has = await checkPermission(userId, slug)
  if (!has) {
    throw new PermissionDeniedError(`Missing permission: ${slug}`)
  }
}

export async function requireRole(userId: string, roleSlug: string): Promise<void> {
  const admin = createAdminClient()
  const { data } = await admin
    .from('profiles')
    .select('roles!inner(slug)')
    .eq('user_id', userId)
    .eq('roles.slug', roleSlug)
    .maybeSingle()
  if (!data) {
    throw new PermissionDeniedError(`Required role: ${roleSlug}`)
  }
}

export async function isOwner(userId: string): Promise<boolean> {
  const admin = createAdminClient()
  const { data } = await admin
    .from('profiles')
    .select('is_owner')
    .eq('user_id', userId)
    .maybeSingle()
  return data?.is_owner === true
}

export async function requireOwner(userId: string): Promise<void> {
  const owner = await isOwner(userId)
  if (!owner) {
    throw new PermissionDeniedError('Only the Platform Owner can perform this action')
  }
}

export async function getRole(userId: string) {
  const admin = createAdminClient()
  const { data } = await admin
    .from('profiles')
    .select('role_id, is_owner, roles!inner(id, name, slug)')
    .eq('user_id', userId)
    .maybeSingle()
  return data
}

export async function isAdminUser(userId: string): Promise<boolean> {
  const admin = createAdminClient()
  const { data } = await admin
    .from('profiles')
    .select('role_id')
    .eq('user_id', userId)
    .not('role_id', 'is', null)
    .maybeSingle()
  return !!data
}

export class PermissionDeniedError extends Error {
  constructor(message: string) {
    super(message)
    this.name = 'PermissionDeniedError'
  }
}
