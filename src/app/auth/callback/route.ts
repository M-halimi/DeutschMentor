import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { NextResponse } from 'next/server'

export async function GET(request: Request) {
  const { searchParams, origin } = new URL(request.url)
  const code = searchParams.get('code')

  if (code) {
    const cookieStore = await cookies()
    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      {
        cookies: {
          getAll() { return cookieStore.getAll() },
          setAll(cookiesToSet) {
            cookiesToSet.forEach(({ name, value, options }) =>
              cookieStore.set(name, value, options)
            )
          },
        },
      }
    )

    const { data, error } = await supabase.auth.exchangeCodeForSession(code)
    if (!error && data.user) {
      const adminClient = createServerClient(
        process.env.NEXT_PUBLIC_SUPABASE_URL!,
        process.env.SUPABASE_SERVICE_ROLE_KEY!,
        { cookies: { getAll: () => [], setAll: () => {} } }
      )

      const { data: existingProfile } = await adminClient
        .from('profiles')
        .select('current_level, full_name, role, status, role_id, is_owner')
        .eq('user_id', data.user.id)
        .maybeSingle()

      if (!existingProfile) {
        await adminClient.from('profiles').upsert({
          user_id: data.user.id,
          email: data.user.email,
          full_name: data.user.user_metadata?.full_name ?? data.user.email?.split('@')[0] ?? 'User',
          role: 'student',
        }, { onConflict: 'user_id' })

        return NextResponse.redirect(`${origin}/onboarding`)
      }

      // Check suspension before any other redirect
      if (existingProfile.status === 'suspended' || existingProfile.status === 'banned') {
        return NextResponse.redirect(`${origin}/account-suspended?reason=${existingProfile.status}`)
      }

      if (existingProfile.role === 'super_admin' || existingProfile.is_owner || existingProfile.role_id) {
        return NextResponse.redirect(`${origin}/admin`)
      }
      if (existingProfile.role === 'teacher') {
        return NextResponse.redirect(`${origin}/teacher`)
      }
      return NextResponse.redirect(`${origin}/dashboard`)
    }
  }

  return NextResponse.redirect(`${origin}/login?error=auth_failed`)
}
