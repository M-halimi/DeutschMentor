import { createAdminClient } from '@/lib/supabase/admin'
import { headers } from 'next/headers'

export interface AuditEntry {
  userId: string
  action: string
  module?: string
  resourceType: string
  resourceId?: string
  details?: Record<string, any>
  oldValues?: Record<string, any>
  newValues?: Record<string, any>
}

export async function logAudit(entry: AuditEntry): Promise<void> {
  try {
    const admin = createAdminClient()
    let ip: string | null = null
    let ua: string | null = null
    try {
      const h = await headers()
      ip = h.get('x-forwarded-for') || h.get('x-real-ip')
      ua = h.get('user-agent')
    } catch {}

    await admin.rpc('log_audit_entry', {
      p_user_id: entry.userId,
      p_action: entry.action,
      p_module: entry.module || 'general',
      p_resource_type: entry.resourceType,
      p_resource_id: entry.resourceId || null,
      p_details: entry.details || {},
      p_old_values: entry.oldValues || null,
      p_new_values: entry.newValues || null,
      p_ip_address: ip,
      p_user_agent: ua,
    })
  } catch {
    // audit failures should never break the request
  }
}
