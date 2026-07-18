import { createServerClient } from '@supabase/ssr'
import { NextResponse, type NextRequest } from 'next/server'
import { type Locale, defaultLocale, LOCALE_COOKIE } from '@/lib/i18n/config'

const ADMIN_ROUTES = ['/admin']
const LOGIN_ROUTE = '/login'
const DASHBOARD_ROUTE = '/dashboard'
const SUSPENDED_ROUTE = '/account-suspended'
const PUBLIC_ADMIN_PAGES = ['/admin/accept-invitation']

const LOCALE_PATTERN = /^\/(de|en|fr|ar)(\/|$)/

function stripLocale(pathname: string): string {
  return pathname.replace(/^\/(de|en|fr|ar)/, '') || '/'
}

function isSupportRoute(pathname: string) {
  const match = pathname.match(/^\/_next\/data\/[^/]+\/(.+)$/)
  if (match) return isSupportRoute('/' + match[1])
  return pathname === '/support' ||
    pathname.startsWith('/support/') ||
    pathname === '/api/support' ||
    pathname.startsWith('/api/support/')
}

function isSuspendedPage(pathname: string) {
  return pathname === '/account-suspended' ||
    pathname.startsWith('/account-suspended/')
}

function isAuthRoute(pathname: string) {
  return pathname === '/login' ||
    pathname.startsWith('/login/') ||
    pathname === '/api/auth' ||
    pathname.startsWith('/api/auth/')
}

function isSkippable(pathname: string) {
  return pathname.startsWith('/_next/') || pathname.startsWith('/api/') ||
    pathname === '/favicon.ico'
}

export async function proxy(request: NextRequest) {
  let { pathname } = request.nextUrl
  const startTime = Date.now()

  function log(msg: string, data?: Record<string, unknown>) {
    console.log(`[AUTH:middleware] ${msg}`, data ? JSON.stringify(data) : '')
  }

  // ──────────────────────────────────────────────
  // LANGUAGE ROUTING
  // ──────────────────────────────────────────────
  let detectedLocale: Locale | null = null
  let rscDataPrefix = ''
  let isRscData = false

  // Handle RSC data routes (_next/data/<build-id>/de/...) for client navigation
  const rscMatch = pathname.match(/^(\/_next\/data\/[^/]+)\/(de|en|fr|ar)(\/.*)?$/)
  if (rscMatch) {
    isRscData = true
    rscDataPrefix = rscMatch[1]
    detectedLocale = rscMatch[2] as Locale
    pathname = rscMatch[3] || '/'
    log('locale_detected_rsc', { original: request.nextUrl.pathname, stripped: pathname, locale: detectedLocale })
  } else if (!isSkippable(pathname)) {
    const localeMatch = pathname.match(LOCALE_PATTERN)
    if (localeMatch) {
      detectedLocale = localeMatch[1] as Locale
      pathname = stripLocale(pathname)
      log('locale_detected', { original: request.nextUrl.pathname, stripped: pathname, locale: detectedLocale })
    } else if (pathname === '/') {
      const cookie = request.cookies.get(LOCALE_COOKIE)?.value
      let targetLocale: Locale = defaultLocale
      if (cookie && ['de', 'en', 'fr', 'ar'].includes(cookie)) {
        targetLocale = cookie as Locale
      } else {
        const acceptLang = request.headers.get('accept-language')?.slice(0, 2)
        if (acceptLang && ['de', 'en', 'fr', 'ar'].includes(acceptLang)) {
          targetLocale = acceptLang as Locale
        }
      }
      log('locale_redirect_root', { targetLocale })
      const url = request.nextUrl.clone()
      url.pathname = `/${targetLocale}`
      const redirectRes = NextResponse.redirect(url)
      redirectRes.cookies.set(LOCALE_COOKIE, targetLocale, { maxAge: 31536000, path: '/', sameSite: 'lax' })
      return redirectRes
    }
  }

  let supabaseResponse = NextResponse.next({ request })

  // Set locale cookie if detected from URL
  if (detectedLocale) {
    supabaseResponse.cookies.set(LOCALE_COOKIE, detectedLocale, { maxAge: 31536000, path: '/', sameSite: 'lax' })
  }
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

  // --- Auth check: redirect unauthenticated users to login ---
  if (!user) {
    const isPublicPage = isRscData || isAuthRoute(pathname) || isSuspendedPage(pathname) ||
      pathname === '/' || pathname.startsWith('/signup') || pathname.startsWith('/_next/')
    if (!isPublicPage) {
      log('no_user_redirect_to_login', { pathname })
      const url = request.nextUrl.clone()
      url.pathname = LOGIN_ROUTE
      url.searchParams.set('redirect', pathname)
      return NextResponse.redirect(url)
    }
    return supabaseResponse
  }

  // --- User is authenticated ---
  try {
    const adminClient = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.SUPABASE_SERVICE_ROLE_KEY!,
      { cookies: { getAll: () => [], setAll: () => {} } }
    )

    await adminClient.rpc('expire_suspended_accounts').maybeSingle()

    const { data: profile } = await adminClient
      .from('profiles')
      .select('status, role_id, is_owner, role')
      .eq('user_id', user.id)
      .maybeSingle()

    const isAdmin = profile && (
      profile.is_owner === true ||
      profile.role_id !== null ||
      profile.role === 'admin' ||
      profile.role === 'super_admin'
    )

    const isSuspended = profile?.status === 'suspended' || profile?.status === 'banned'

    // --- SUSPENDED USER RULES ---
    if (isSuspended) {
      const isSupportPath = isSupportRoute(pathname)
      const isSuspendedPath = isSuspendedPage(pathname)
      const isAuthPath = isAuthRoute(pathname)

      log('suspended_user_check', {
        userId: user.id, pathname, profileStatus: profile?.status,
        isSupportPath, isSuspendedPath, isAuthPath, isAdmin,
      })

      if (isSupportPath || isSuspendedPath || isAuthPath) {
        log('suspended_user_allowed', {
          userId: user.id, pathname,
          decision: 'ALLOW',
          routeType: isSupportPath ? 'support' : isSuspendedPath ? 'suspended' : 'auth',
        })
        if (isSupportPath) return supabaseResponse
        return supabaseResponse
      }

      log('suspended_user_blocked', { userId: user.id, pathname, decision: 'REDIRECT_TO_SUSPENDED' })
      const url = request.nextUrl.clone()
      url.pathname = SUSPENDED_ROUTE
      url.searchParams.set('reason', profile?.status === 'banned' ? 'banned' : 'suspended')
      return NextResponse.redirect(url)
    }

    // --- NORMAL USER: Check admin routes ---
    const isAdminRoute = ADMIN_ROUTES.some(r => pathname === r || pathname.startsWith(r + '/'))
    const isPublicAdminPage = PUBLIC_ADMIN_PAGES.some(p => pathname.startsWith(p))

    if (isAdminRoute && !isPublicAdminPage) {
      log('admin_check', {
        userId: user.id, pathname, profileRole: profile?.role || 'none',
        profileRoleId: profile?.role_id || 'none',
        profileIsOwner: profile?.is_owner || false, isAdmin,
      })

      if (!isAdmin) {
        log('non_admin_redirect_to_dashboard', { userId: user.id, role: profile?.role })
        try {
          await adminClient.rpc('log_audit_entry', {
            p_user_id: user.id, p_action: 'ADMIN_ACCESS_DENIED', p_module: 'auth',
            p_resource_type: 'route', p_resource_id: pathname,
            p_details: { route: pathname, role: profile?.role },
            p_old_values: null, p_new_values: null,
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
          p_user_id: user.id, p_action: 'ADMIN_ACCESS_GRANTED', p_module: 'auth',
          p_resource_type: 'route', p_resource_id: pathname,
          p_details: { route: pathname, role: profile?.role, isOwner: profile?.is_owner },
          p_old_values: null, p_new_values: null,
          p_ip_address: request.headers.get('x-forwarded-for') || request.headers.get('x-real-ip'),
          p_user_agent: request.headers.get('user-agent'),
        })
      } catch { /* audit never blocks */ }
    }
  } catch (err) {
    log('middleware_error', { error: String(err) })
  }

  if (isSupportRoute(pathname)) {
    supabaseResponse.headers.set('x-proxy-support', 'allowed')
  }

  // If locale was detected in URL, rewrite to stripped path so pages match
  if (detectedLocale) {
    const rewritePath = rscDataPrefix ? `${rscDataPrefix}${pathname}` : pathname
    const strippedUrl = new URL(rewritePath, request.url)
    const rewriteRes = NextResponse.rewrite(strippedUrl)
    // Copy ALL cookies from supabaseResponse (includes auth cookies from Supabase SSR)
    for (const c of supabaseResponse.cookies.getAll()) {
      rewriteRes.cookies.set(c.name, c.value, { ...c })
    }
    rewriteRes.cookies.set(LOCALE_COOKIE, detectedLocale, { maxAge: 31536000, path: '/', sameSite: 'lax' })
    return rewriteRes
  }

  return supabaseResponse
}


