import { createServerClient } from '@supabase/ssr'
import { NextResponse, type NextRequest } from 'next/server'

const ADMIN_ROUTES = ['/admin']
const LOGIN_ROUTE = '/login'
const DASHBOARD_ROUTE = '/dashboard'
const SUSPENDED_ROUTE = '/account-suspended'
const PUBLIC_ADMIN_PAGES = ['/admin/accept-invitation']
const SUSPENSION_EXEMPT_ROUTES = ['/account-suspended', '/api/support', '/api/auth', '/login']

export async function middleware(request: NextRequest) {
  const { pathname } = request.nextUrl
  const startTime = Date.now()

  function log(msg: string, data?: Record<string, unknown>) {
    console.log(`[AUTH:middleware] ${msg}`, data ? JSON.stringify(data) : '')
  }

  let supabaseResponse = NextResponse.next({ request })
  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    {
      cookies: {
        getAll() { return request.cookies.getAll() },
        setAll(cookiesToSet) {
          cookiesToSet.forEach(({ name, value }) => request.cookies.set(name, value))
          supabaseResponse = NextResponse.next({ request })
          cookiesToSet.forEach(({ name, value, options }) =>
            supabaseResponse.cookies.set(name, value, options)
          )
        },
      },
    }
  )

  const { data: { user }, error: authError } = await supabase.auth.getUser()

  log(`path=${pathname} auth=${!!user} error=${authError?.message || 'none'}`, {
    elapsed: Date.now() - startTime,
  })

  // --- Check suspension for authenticated users ---
  if (user) {
    const isExempt = SUSPENSION_EXEMPT_ROUTES.some(r => pathname === r || pathname.startsWith(r + '/'))
    if (!isExempt) {
      try {
        const adminClient = createServerClient(
          process.env.NEXT_PUBLIC_SUPABASE_URL!,
          process.env.SUPABASE_SERVICE_ROLE_KEY!,
          { cookies: { getAll: () => [], setAll: () => {} } }
        )

        // Auto-expire any overdue suspensions before checking
        await adminClient.rpc('expire_suspended_accounts').maybeSingle()

        const { data: profile } = await adminClient
          .from('profiles')
          .select('status, role_id, is_owner, role')
          .eq('user_id', user.id)
          .maybeSingle()

        const isSuspended = profile?.status === 'suspended'
        const isBanned = profile?.status === 'banned'
        const isAdmin = profile && (
          profile.is_owner === true ||
          profile.role_id !== null ||
          profile.role === 'admin' ||
          profile.role === 'super_admin'
        )

        if (isSuspended || isBanned) {
          log('suspended_user_redirect', {
            userId: user.id,
            status: profile?.status,
            pathname,
          })

          // If banned, send to account page too but don't say suspended
          const url = request.nextUrl.clone()
          url.pathname = SUSPENDED_ROUTE
          url.searchParams.set('reason', profile?.status === 'banned' ? 'banned' : 'suspended')
          return NextResponse.redirect(url)
        }
      } catch (err) {
        log('suspension_check_error', { error: String(err) })
      }
    }
  }

  // --- Check if this is an admin route ---
  const isAdminRoute = ADMIN_ROUTES.some(r => pathname === r || pathname.startsWith(r + '/'))
  const isPublicAdminPage = PUBLIC_ADMIN_PAGES.some(p => pathname.startsWith(p))

  if (isAdminRoute && !isPublicAdminPage) {
    if (!user) {
      log('no_user_redirect_to_login', { pathname })
      const url = request.nextUrl.clone()
      url.pathname = LOGIN_ROUTE
      url.searchParams.set('redirect', pathname)
      return NextResponse.redirect(url)
    }

    try {
      const adminClient = createServerClient(
        process.env.NEXT_PUBLIC_SUPABASE_URL!,
        process.env.SUPABASE_SERVICE_ROLE_KEY!,
        { cookies: { getAll: () => [], setAll: () => {} } }
      )

      const { data: profile } = await adminClient
        .from('profiles')
        .select('role, role_id, is_owner')
        .eq('user_id', user.id)
        .maybeSingle()

      const isAdmin = profile && (
        profile.is_owner === true ||
        profile.role_id !== null ||
        profile.role === 'admin' ||
        profile.role === 'super_admin'
      )

      log('admin_check', {
        userId: user.id,
        profileRole: profile?.role || 'none',
        profileRoleId: profile?.role_id || 'none',
        profileIsOwner: profile?.is_owner || false,
        isAdmin,
      })

      if (!isAdmin) {
        log('non_admin_redirect_to_dashboard', { userId: user.id, role: profile?.role })
        try {
          await adminClient.rpc('log_audit_entry', {
            p_user_id: user.id,
            p_action: 'ADMIN_ACCESS_DENIED',
            p_module: 'auth',
            p_resource_type: 'route',
            p_resource_id: pathname,
            p_details: { route: pathname, role: profile?.role },
            p_old_values: null,
            p_new_values: null,
            p_ip_address: request.headers.get('x-forwarded-for') || request.headers.get('x-real-ip'),
            p_user_agent: request.headers.get('user-agent'),
          })
        } catch { /* audit never blocks */ }
        const url = request.nextUrl.clone()
        url.pathname = DASHBOARD_ROUTE
        url.searchParams.set('admin_denied', 'true')
        return NextResponse.redirect(url)
      }
      try {
        await adminClient.rpc('log_audit_entry', {
          p_user_id: user.id,
          p_action: 'ADMIN_ACCESS_GRANTED',
          p_module: 'auth',
          p_resource_type: 'route',
          p_resource_id: pathname,
          p_details: { route: pathname, role: profile?.role, isOwner: profile?.is_owner },
          p_old_values: null,
          p_new_values: null,
          p_ip_address: request.headers.get('x-forwarded-for') || request.headers.get('x-real-ip'),
          p_user_agent: request.headers.get('user-agent'),
        })
      } catch { /* audit never blocks */ }
    } catch (err) {
      log('admin_check_error', { error: String(err) })
      const url = request.nextUrl.clone()
      url.pathname = LOGIN_ROUTE
      return NextResponse.redirect(url)
    }
  }

  return supabaseResponse
}

export const config = {
  matcher: [
    '/((?!_next/static|_next/image|favicon.ico|.*\\.(?:svg|png|jpg|jpeg|gif|webp)$|api/auth/|api/public/).*)',
  ],
}
