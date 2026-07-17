'use server'

import { createServerSupabaseClient } from '@/lib/supabase/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { redirect } from 'next/navigation'
import { revalidatePath } from 'next/cache'
import { headers } from 'next/headers'

export async function signUp(formData: FormData) {
  const supabase = await createServerSupabaseClient()

  const email = formData.get('email') as string | null
  const password = formData.get('password') as string | null
  const fullName = formData.get('fullName') as string | null

  if (!email || !password || !fullName) {
    return { error: 'All fields are required' }
  }

  if (password.length < 8) {
    return { error: 'Password must be at least 8 characters' }
  }

  const { data, error } = await supabase.auth.signUp({
    email,
    password,
    options: {
      data: { full_name: fullName },
    },
  })

  if (error) {
    return { error: error.message }
  }

  if (data.session) {
    await supabase.from('profiles').upsert({
      user_id: data.user!.id,
      full_name: fullName,
      email,
      role: 'student',
    }, { onConflict: 'user_id' })

    await supabase.from('learning_goals').upsert({
      user_id: data.user!.id,
      current_level: 'A1',
      target_level: 'B1',
    }, { onConflict: 'user_id' })
  }

  revalidatePath('/', 'layout')
  redirect(data.session ? '/onboarding' : '/login?check_email=true')
}

export async function signIn(formData: FormData) {
  const supabase = await createServerSupabaseClient()

  const email = formData.get('email') as string | null
  const password = formData.get('password') as string | null

  if (!email || !password) {
    return { error: 'Email and password are required' }
  }

  const { error, data } = await supabase.auth.signInWithPassword({
    email,
    password,
  })

  if (error) {
    await logSecurityEvent(null, email, 'LOGIN_FAILED', { error: error.message })
    return { error: error.message }
  }

  if (data.user) {
    const { data: profile } = await supabase
      .from('profiles')
      .select('role, role_id, is_owner')
      .eq('user_id', data.user.id)
      .maybeSingle()

    const isAdmin = profile && (
      profile.is_owner === true ||
      profile.role_id !== null ||
      profile.role === 'admin' ||
      profile.role === 'super_admin'
    )

    console.log('[AUTH:signIn] user:', data.user.id, 'role:', profile?.role, 'is_owner:', profile?.is_owner, 'isAdmin:', isAdmin)

    await logSecurityEvent(data.user.id, email, 'LOGIN_SUCCESS', {
      role: profile?.role || 'none',
      isAdmin,
      redirectTo: isAdmin ? '/admin' : profile?.role === 'teacher' ? '/teacher' : '/dashboard',
    })

    if (isAdmin) {
      revalidatePath('/', 'layout')
      redirect('/admin')
    }
    if (profile?.role === 'teacher') {
      revalidatePath('/', 'layout')
      redirect('/teacher')
    }
  }

  revalidatePath('/', 'layout')
  redirect('/dashboard')
}

async function logSecurityEvent(userId: string | null, email: string | null, action: string, metadata: Record<string, unknown>) {
  try {
    const admin = createAdminClient()
    const h = await headers()
    await admin.rpc('log_audit_entry', {
      p_user_id: userId,
      p_action: action,
      p_module: 'auth',
      p_resource_type: 'session',
      p_resource_id: null,
      p_details: { ...metadata, email },
      p_old_values: null,
      p_new_values: null,
      p_ip_address: h.get('x-forwarded-for') || h.get('x-real-ip'),
      p_user_agent: h.get('user-agent'),
    })
  } catch {
    // audit failures never break auth
  }
}

export async function signOut() {
  const supabase = await createServerSupabaseClient()
  await supabase.auth.signOut()
  revalidatePath('/', 'layout')
  redirect('/login')
}

export async function signInWithGoogle() {
  const supabase = await createServerSupabaseClient()

  const siteUrl = process.env.NEXT_PUBLIC_SITE_URL
  if (!siteUrl) {
    return { error: 'NEXT_PUBLIC_SITE_URL is not configured' }
  }

  const { data, error } = await supabase.auth.signInWithOAuth({
    provider: 'google',
    options: {
      redirectTo: `${siteUrl}/auth/callback`,
    },
  })

  if (error) {
    return { error: error.message }
  }

  if (data.url) {
    redirect(data.url)
  }

  return { error: 'Failed to initiate Google sign in' }
}
