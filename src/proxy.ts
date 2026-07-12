import { NextRequest, NextResponse } from 'next/server'
import { createServerClient } from '@supabase/ssr'

const protectedRoutes = ['/dashboard', '/admin', '/onboarding']
const publicRoutes = ['/', '/login', '/signup']

export default async function proxy(req: NextRequest) {
  const path = req.nextUrl.pathname
  const isProtectedRoute = protectedRoutes.some(route => path.startsWith(route))
  const isPublicRoute = publicRoutes.includes(path)

  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
  const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

  const hasValidConfig = supabaseUrl &&
    supabaseUrl !== 'https://your-project.supabase.co' &&
    supabaseAnonKey &&
    !supabaseAnonKey.endsWith('.example')

  if (!hasValidConfig) {
    if (isProtectedRoute) {
      return NextResponse.redirect(new URL('/login', req.nextUrl))
    }
    return NextResponse.next({ request: req })
  }

  let supabaseResponse = NextResponse.next({ request: req })

  const supabase = createServerClient(supabaseUrl, supabaseAnonKey, {
    cookies: {
      getAll() { return req.cookies.getAll() },
      setAll(cookiesToSet) {
        cookiesToSet.forEach(({ name, value }) => req.cookies.set(name, value))
        supabaseResponse = NextResponse.next({ request: req })
        cookiesToSet.forEach(({ name, value, options }) =>
          supabaseResponse.cookies.set(name, value, options)
        )
      },
    },
  })

  try {
    const { data: { user } } = await supabase.auth.getUser()
    const isAuthenticated = !!user

    if (isProtectedRoute && !isAuthenticated) {
      const loginUrl = new URL('/login', req.nextUrl)
      loginUrl.searchParams.set('redirect', path)
      return NextResponse.redirect(loginUrl)
    }

    if (isAuthenticated && isPublicRoute && path !== '/signup' && path !== '/login') {
      return NextResponse.redirect(new URL('/dashboard', req.nextUrl))
    }
  } catch {
    // Supabase not reachable — allow public routes, block protected ones
    if (isProtectedRoute) {
      return NextResponse.redirect(new URL('/login', req.nextUrl))
    }
  }

  return supabaseResponse
}

export const config = {
  matcher: ['/((?!api|_next/static|_next/image|favicon.ico|.*\\.(?:svg|png|jpg|jpeg|gif|webp)$).*)'],
}
