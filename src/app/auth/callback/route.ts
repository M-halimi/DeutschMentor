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
          getAll() {
            return cookieStore.getAll()
          },
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
      const { data: existingProfile } = await supabase
        .from('profiles')
        .select('current_level, full_name')
        .eq('user_id', data.user.id)
        .single()

      if (!existingProfile) {
        await supabase.from('profiles').upsert({
          user_id: data.user.id,
          email: data.user.email,
          full_name: data.user.user_metadata?.full_name ?? data.user.email?.split('@')[0] ?? 'User',
          role: 'student',
        }, { onConflict: 'user_id' })
      }

      const needsOnboarding = !existingProfile
      return NextResponse.redirect(
        `${origin}${needsOnboarding ? '/onboarding' : '/dashboard'}`
      )
    }
  }

  return NextResponse.redirect(`${origin}/login?error=auth_failed`)
}
