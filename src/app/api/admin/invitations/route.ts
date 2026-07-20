import { NextRequest, NextResponse } from 'next/server'
import { createAdminClient } from '@/lib/supabase/admin'
import { createServerClient } from '@supabase/ssr'
import { cookies } from 'next/headers'
import { randomUUID } from 'crypto'
import { checkPermission, isOwner } from '@/lib/rbac/permissions'
import { logAudit } from '@/lib/rbac/audit'
import { getSiteUrl } from '@/lib/site-url'

async function getUser() {
  const cookieStore = await cookies()
  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    { cookies: { getAll() { return cookieStore.getAll() }, setAll() {} } }
  )
  const { data: { user } } = await supabase.auth.getUser()
  return user
}

export async function GET() {
  try {
    const user = await getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const admin = createAdminClient()
    const canView = await checkPermission(user.id, 'invitations.view')
    if (!canView) return NextResponse.json({ error: 'Forbidden' }, { status: 403 })

    const { data: invitations, error } = await admin
      .from('invitations')
      .select('*, roles!inner(name, slug)')
      .order('created_at', { ascending: false })
    if (error) throw error

    const mapped = (invitations || []).map((inv: any) => ({
      ...inv,
      role_name: inv.roles?.name || null,
      role_slug: inv.roles?.slug || null,
      roles: undefined,
    }))

    return NextResponse.json({ data: mapped })
  } catch (error) {
    console.error('Invitations fetch error:', error)
    return NextResponse.json({ error: 'Failed to fetch invitations' }, { status: 500 })
  }
}

export async function POST(req: NextRequest) {
  try {
    const user = await getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const owner = await isOwner(user.id)
    if (!owner) return NextResponse.json({ error: 'Only the Platform Owner can create invitations' }, { status: 403 })

    const body = await req.json()
    const { email, role_id } = body
    if (!email?.trim()) return NextResponse.json({ error: 'Email is required' }, { status: 400 })
    if (!role_id) return NextResponse.json({ error: 'Role is required' }, { status: 400 })

    const admin = createAdminClient()
    const token = randomUUID() + '-' + Date.now().toString(36)
    const expiresAt = new Date(Date.now() + 7 * 24 * 60 * 60 * 1000).toISOString()

    const { data: invite, error } = await admin
      .from('invitations')
      .insert({
        email: email.trim().toLowerCase(),
        role_id,
        invited_by: user.id,
        token,
        expires_at: expiresAt,
      })
      .select('*, roles!inner(name)')
      .single()
    if (error) {
      if (error.code === '23505') {
        return NextResponse.json({ error: 'An active invitation already exists for this email' }, { status: 409 })
      }
      throw error
    }

    const origin = await getSiteUrl()
    const inviteUrl = `${origin}/admin/accept-invitation?token=${token}`

    console.log(`[Invitation] Created for ${email} with token ${token}. URL: ${inviteUrl}`)

    // TODO: Send invitation email via Resend/Supabase
    // await sendInvitationEmail({ to: email, url: inviteUrl, roleName: invite.roles?.name })

    logAudit({ userId: user.id, action: 'invitation_created', module: 'staff', resourceType: 'invitation', resourceId: invite.id, details: { email, role_id } })

    return NextResponse.json({
      data: {
        ...invite,
        role_name: invite.roles?.name || null,
        roles: undefined,
      },
      invite_url: inviteUrl,
    })
  } catch (error) {
    console.error('Invitation create error:', error)
    return NextResponse.json({ error: 'Failed to create invitation' }, { status: 500 })
  }
}

export async function PATCH(req: NextRequest) {
  try {
    const user = await getUser()
    if (!user) return NextResponse.json({ error: 'Unauthorized' }, { status: 401 })

    const owner = await isOwner(user.id)
    if (!owner) return NextResponse.json({ error: 'Only the Platform Owner can revoke invitations' }, { status: 403 })

    const body = await req.json()
    const { id } = body
    if (!id) return NextResponse.json({ error: 'Invitation ID is required' }, { status: 400 })

    const admin = createAdminClient()
    const { error } = await admin
      .from('invitations')
      .update({ revoked_at: new Date().toISOString() })
      .eq('id', id)
      .is('accepted_at', null)
    if (error) throw error

    logAudit({ userId: user.id, action: 'invitation_revoked', module: 'staff', resourceType: 'invitation', resourceId: id })

    return NextResponse.json({ success: true })
  } catch (error) {
    console.error('Invitation revoke error:', error)
    return NextResponse.json({ error: 'Failed to revoke invitation' }, { status: 500 })
  }
}
