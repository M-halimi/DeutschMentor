import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { isAdminUser, isOwner } from '@/lib/rbac/permissions'
import { logAudit } from '@/lib/rbac/audit'

async function getUser() {
  const cookieStore = await cookies()
  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
  )
  const { data: { user } } = await supabase.auth.getUser()
  return user
}

export async function GET() {
  try {
    const user = await getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const admin = await isAdminUser(user.id)
    if (!admin) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const supabase = createAdminClient()
    const { data: roles, error } = await supabase
      .from('roles')
      .select('*, role_permissions(count)')
      .order('name')
    if (error) throw error

    const { data: userCounts } = await supabase
      .from('profiles')
      .select('role_id')
      .not('role_id', 'is', null)

    const countMap: Record<string, number> = {}
    if (userCounts) {
      for (const p of userCounts) {
        countMap[p.role_id] = (countMap[p.role_id] || 0) + 1
      }
    }

    const mapped = (roles || []).map((r: any) => ({
      ...r,
      permission_count: r.role_permissions?.[0]?.count || 0,
      user_count: countMap[r.id] || 0,
      role_permissions: undefined,
    }))

    return NextResponse.json({ data: mapped })
  } catch (error) {
    console.error('Roles fetch error:', error)
    return NextResponse.json({ error: 'Failed to fetch roles' }, { status: 500 })
  }
}

export async function POST(req: NextRequest) {
  try {
    const user = await getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const owner = await isOwner(user.id)
    if (!owner) return NextResponse.json({ error: 'Only the Platform Owner can create roles' }, { status: 403 })

    const body = await req.json()
    const { name, slug, description, permission_ids } = body
    if (!name?.trim()) return NextResponse.json({ error: 'Role name is required' }, { status: 400 })

    const roleSlug = (slug || name).trim().toLowerCase().replace(/\s+/g, '-')

    const supabase = createAdminClient()

    const { data: role, error: roleError } = await supabase
      .from('roles')
      .insert({ name: name.trim(), slug: roleSlug, description: description || null })
      .select()
      .single()
    if (roleError) {
      if (roleError.code === '23505') {
        return NextResponse.json({ error: 'A role with this slug already exists' }, { status: 409 })
      }
      throw roleError
    }

    if (permission_ids?.length > 0) {
      const links = permission_ids.map((pid: string) => ({ role_id: role.id, permission_id: pid }))
      const { error: linkError } = await supabase.from('role_permissions').insert(links)
      if (linkError) throw linkError
    }

    logAudit({ userId: user.id, action: 'role_created', module: 'roles', resourceType: 'role', resourceId: role.id, details: { name, slug } })

    return NextResponse.json({ data: role })
  } catch (error) {
    console.error('Role create error:', error)
    return NextResponse.json({ error: 'Failed to create role' }, { status: 500 })
  }
}

export async function PATCH(req: NextRequest) {
  try {
    const user = await getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const owner = await isOwner(user.id)
    if (!owner) return NextResponse.json({ error: 'Only the Platform Owner can edit roles' }, { status: 403 })

    const body = await req.json()
    const { id, name, slug, description, permission_ids } = body
    if (!id) return NextResponse.json({ error: 'Role ID is required' }, { status: 400 })

    const supabase = createAdminClient()

    const { data: existing } = await supabase.from('roles').select('is_system, name, slug, description').eq('id', id).single()
    if (!existing) return NextResponse.json({ error: 'Role not found' }, { status: 404 })
    if (existing.is_system) return NextResponse.json({ error: 'System roles cannot be modified' }, { status: 400 })

    const oldValues: Record<string, any> = {}

    if (name || description || slug) {
      const updates: Record<string, any> = {}
      if (name) { updates.name = name.trim(); oldValues.name = existing.name }
      if (slug) { updates.slug = slug.trim().toLowerCase().replace(/\s+/g, '-'); oldValues.slug = existing.slug }
      if (description !== undefined) { updates.description = description; oldValues.description = existing.description }
      updates.updated_at = new Date().toISOString()
      await supabase.from('roles').update(updates).eq('id', id)
    }

    if (permission_ids) {
      await supabase.from('role_permissions').delete().eq('role_id', id)
      if (permission_ids.length > 0) {
        const links = permission_ids.map((pid: string) => ({ role_id: id, permission_id: pid }))
        await supabase.from('role_permissions').insert(links)
      }
    }

    const { data: role } = await supabase.from('roles').select('*').eq('id', id).single()

    logAudit({ userId: user.id, action: 'role_updated', module: 'roles', resourceType: 'role', resourceId: id, oldValues, newValues: { name, slug } })

    return NextResponse.json({ data: role })
  } catch (error) {
    console.error('Role update error:', error)
    return NextResponse.json({ error: 'Failed to update role' }, { status: 500 })
  }
}

export async function DELETE(req: NextRequest) {
  try {
    const user = await getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const owner = await isOwner(user.id)
    if (!owner) return NextResponse.json({ error: 'Only the Platform Owner can delete roles' }, { status: 403 })

    const { searchParams } = new URL(req.url)
    const id = searchParams.get('id')
    if (!id) return NextResponse.json({ error: 'Role ID is required' }, { status: 400 })

    const supabase = createAdminClient()

    const { data: existing } = await supabase.from('roles').select('is_system, name').eq('id', id).single()
    if (!existing) return NextResponse.json({ error: 'Role not found' }, { status: 404 })
    if (existing.is_system) return NextResponse.json({ error: 'System roles cannot be deleted' }, { status: 400 })

    const { data: usersWithRole } = await supabase.from('profiles').select('user_id').eq('role_id', id).limit(1)
    if (usersWithRole && usersWithRole.length > 0) {
      return NextResponse.json({ error: 'Role is assigned to users. Reassign them first.' }, { status: 400 })
    }

    await supabase.from('role_permissions').delete().eq('role_id', id)
    await supabase.from('roles').delete().eq('id', id)

    logAudit({ userId: user.id, action: 'role_deleted', module: 'roles', resourceType: 'role', resourceId: id, details: { name: existing.name } })

    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('Role delete error:', error)
    return NextResponse.json({ error: 'Failed to delete role' }, { status: 500 })
  }
}
