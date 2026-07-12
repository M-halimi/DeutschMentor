import { createBrowserClient } from '@supabase/ssr'

let configWarningShown = false

export function createClient() {
  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL
  const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY

  if (!supabaseUrl || supabaseUrl === 'https://your-project.supabase.co') {
    if (!configWarningShown) {
      configWarningShown = true
      console.error(
        'DeutschMentor: NEXT_PUBLIC_SUPABASE_URL is not configured.\n' +
        'Create a project at https://supabase.com and set the URL in .env.local'
      )
    }
  }

  if (!supabaseAnonKey || supabaseAnonKey.includes('your-project') || supabaseAnonKey.endsWith('.example')) {
    if (!configWarningShown) {
      configWarningShown = true
      console.error(
        'DeutschMentor: NEXT_PUBLIC_SUPABASE_ANON_KEY is not configured.\n' +
        'Get your anon key from Supabase Dashboard > Settings > API'
      )
    }
  }

  return createBrowserClient(
    supabaseUrl || 'https://placeholder.supabase.co',
    supabaseAnonKey || 'placeholder'
  )
}
