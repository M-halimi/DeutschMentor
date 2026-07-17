import { NextResponse } from 'next/server'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { checkPermission, PermissionDeniedError, isAdminUser, isOwner } from './permissions'
import { logAudit } from './audit'

export type RouteHandler = (req: Request, user: { id: string; email?: string }) => Promise<NextResponse>

interface AuthUser {
  id: string
  email?: string
}

async function getUser(): Promise<{ user: AuthUser | null; error?: NextResponse }> {
  const cookieStore = await cookies()
  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
  )
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) return { user: null, error: NextResponse.json({ error: 'Unauthorized' }, { status: 401 }) }
  return { user: { id: user.id, email: user.email } }
}

export function requireAuth(handler: RouteHandler): RouteHandler {
  return async (req: Request) => {
    const { user, error } = await getUser()
    if (error || !user) return error!
    return handler(req, user)
  }
}

export function requireAdmin(handler: RouteHandler): RouteHandler {
  return async (req: Request) => {
    const { user, error } = await getUser()
    if (error || !user) return error!

    const admin = await isAdminUser(user.id)
    if (!admin) {
      return NextResponse.json({ error: 'Forbidden: Admin access required' }, { status: 403 })
    }

    return handler(req, user)
  }
}

export function requirePermissionSlug(permissionSlug: string) {
  return function (handler: RouteHandler): RouteHandler {
    return async (req: Request) => {
      const { user, error } = await getUser()
      if (error || !user) return error!

      const admin = await isAdminUser(user.id)
      if (!admin) {
        return NextResponse.json({ error: 'Forbidden: Admin access required' }, { status: 403 })
      }

      const has = await checkPermission(user.id, permissionSlug)
      if (!has) {
        return NextResponse.json({ error: 'Forbidden: Missing permission ' + permissionSlug }, { status: 403 })
      }

      return handler(req, user)
    }
  }
}

export function requirePermission(category: string, action: string) {
  return requirePermissionSlug(`${category}.${action}`)
}

export function requireRoleSlug(roleSlug: string) {
  return function (handler: RouteHandler): RouteHandler {
    return async (req: Request) => {
      const { user, error } = await getUser()
      if (error || !user) return error!

      const cookieStore = await cookies()
      const supabase = createServerClient(
        process.env.NEXT_PUBLIC_SUPABASE_URL!,
        process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
        { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
      )
      const { data } = await supabase
        .from('profiles')
        .select('roles!inner(slug)')
        .eq('user_id', user.id)
        .eq('roles.slug', roleSlug)
        .maybeSingle()

      if (!data) {
        return NextResponse.json({ error: 'Forbidden: Required role ' + roleSlug }, { status: 403 })
      }

      return handler(req, user)
    }
  }
}

export function requireOwner(handler: RouteHandler): RouteHandler {
  return async (req: Request) => {
    const { user, error } = await getUser()
    if (error || !user) return error!

    const owner = await isOwner(user.id)
    if (!owner) {
      return NextResponse.json({ error: 'Forbidden: Only the Platform Owner can perform this action' }, { status: 403 })
    }

    return handler(req, user)
  }
}

export function withAudit(action: string, module: string, resourceType: string) {
  return (result: NextResponse, userId: string, resourceId?: string, prev?: any, nextVal?: any) => {
    if (result.status < 400) {
      logAudit({
        userId,
        action,
        module,
        resourceType,
        resourceId,
        oldValues: prev,
        newValues: nextVal,
      })
    }
    return result
  }
}

function tryCatch(handler: RouteHandler): RouteHandler {
  return async (req: Request) => {
    try {
      return await handler(req, { id: '', email: '' })
    } catch (e) {
      if (e instanceof PermissionDeniedError) {
        return NextResponse.json({ error: e.message }, { status: 403 })
      }
      console.error('[RBAC Middleware]', e)
      return NextResponse.json({ error: 'Internal server error' }, { status: 500 })
    }
  }
}
