'use server'

import { createServerSupabaseClient } from '@/lib/supabase/server'
import { redirect } from 'next/navigation'
import { revalidatePath } from 'next/cache'

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

  const { error } = await supabase.auth.signInWithPassword({
    email,
    password,
  })

  if (error) {
    return { error: error.message }
  }

  revalidatePath('/', 'layout')
  redirect('/dashboard')
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
