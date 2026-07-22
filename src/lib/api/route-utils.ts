import { NextResponse } from 'next/server'
import { createServerSupabaseClient } from '@/lib/supabase/server'
import { isAdminUser } from '@/lib/rbac/permissions'

export interface AuthUser {
  id: string
  email?: string
}

export async function requireAdmin(): Promise<{ user: AuthUser; error?: never } | { user?: never; error: NextResponse }> {
  const supabase = await createServerSupabaseClient()
  const { data: { user } } = await supabase.auth.getUser()
  if (!user) {
    return { error: NextResponse.json({ error: 'Unauthorized' }, { status: 401 }) }
  }

  const admin = await isAdminUser(user.id)
  if (!admin) {
    return { error: NextResponse.json({ error: 'Forbidden' }, { status: 403 }) }
  }

  return { user: { id: user.id, email: user.email } }
}

export function handleError(error: unknown): NextResponse {
  const message = error instanceof Error ? error.message : 'Internal server error'
  console.error('[API Error]', error)
  return NextResponse.json({ error: message }, { status: 500 })
}
