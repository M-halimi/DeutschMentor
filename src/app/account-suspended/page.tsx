'use client'

import { useEffect, useState } from 'react'
import { useRouter, useSearchParams } from 'next/navigation'
import { ShieldAlert, Clock, Mail, ArrowLeft, Loader2 } from 'lucide-react'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from '@/components/ui/card'
import { createClient } from '@/lib/supabase/client'
import { useAuthStore } from '@/stores/auth-store'

interface SuspensionData {
  status: string
  suspension_reason: string | null
  suspension_note: string | null
  suspended_at: string | null
  suspension_expires_at: string | null
  email: string | null
  full_name: string | null
}

export default function AccountSuspendedPage() {
  const router = useRouter()
  const searchParams = useSearchParams()
  const reason = searchParams.get('reason') || 'suspended'
  const { signOut, user } = useAuthStore()
  const [data, setData] = useState<SuspensionData | null>(null)
  const [loading, setLoading] = useState(true)
  const [showTicket, setShowTicket] = useState(false)
  const [ticketMessage, setTicketMessage] = useState('')
  const [sending, setSending] = useState(false)
  const [sent, setSent] = useState(false)

  useEffect(() => {
    async function load() {
      const supabase = createClient()
      const { data: { session } } = await supabase.auth.getSession()
      if (!session?.user) {
        router.push('/login')
        return
      }
      const { data: profile } = await supabase
        .from('profiles')
        .select('status, suspension_reason, suspension_note, suspended_at, suspension_expires_at, email, full_name')
        .eq('user_id', session.user.id)
        .maybeSingle()
      setData(profile as SuspensionData)
      setLoading(false)
    }
    load()
  }, [router])

  async function handleSubmitTicket(e: React.FormEvent) {
    e.preventDefault()
    if (!ticketMessage.trim()) return
    setSending(true)
    try {
      const res = await fetch('/api/support/tickets', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          subject: `Suspension appeal - ${data?.email || user?.email || ''}`,
          message: ticketMessage,
        }),
      })
      if (res.ok) setSent(true)
    } finally {
      setSending(false)
    }
  }

  async function handleLogout() {
    await signOut()
  }

  if (loading) {
    return (
      <div className="flex min-h-screen items-center justify-center">
        <Loader2 className="h-8 w-8 animate-spin text-muted-foreground" />
      </div>
    )
  }

  const isBanned = reason === 'banned' || data?.status === 'banned'
  const isSuspended = data?.status === 'suspended'
  const expiresDate = data?.suspension_expires_at ? new Date(data.suspension_expires_at).toLocaleDateString('de-DE', { year: 'numeric', month: 'long', day: 'numeric' }) : null
  const suspendedDate = data?.suspended_at ? new Date(data.suspended_at).toLocaleDateString('de-DE', { year: 'numeric', month: 'long', day: 'numeric' }) : null

  return (
    <div className="flex min-h-screen items-center justify-center bg-gradient-to-b from-background to-destructive/5 p-4">
      <Card className="w-full max-w-lg">
        <CardHeader className="text-center">
          <div className="mx-auto mb-4 flex h-16 w-16 items-center justify-center rounded-full bg-destructive/10">
            <ShieldAlert className="h-8 w-8 text-destructive" />
          </div>
          <CardTitle className="text-2xl">
            {isBanned ? 'Your account has been permanently banned' : 'Your account has been temporarily suspended'}
          </CardTitle>
          <CardDescription>
            {isBanned
              ? 'This action cannot be reversed. Please contact support if you believe this was a mistake.'
              : 'Access to your account has been restricted.'}
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-4">
          <div className="rounded-lg border bg-card p-4 space-y-3">
            <div className="flex items-center justify-between">
              <span className="text-sm font-medium">Status</span>
              <span className="text-sm font-bold text-destructive uppercase">{data?.status || reason?.toUpperCase()}</span>
            </div>

            {data?.suspension_reason && (
              <div className="border-t pt-3">
                <span className="text-sm font-medium">Reason</span>
                <p className="mt-1 text-sm text-muted-foreground">{data.suspension_reason}</p>
              </div>
            )}

            {suspendedDate && (
              <div className="flex items-center justify-between border-t pt-3">
                <span className="text-sm font-medium">Suspended on</span>
                <span className="text-sm text-muted-foreground">{suspendedDate}</span>
              </div>
            )}

            {expiresDate && !isBanned && (
              <div className="flex items-center justify-between border-t pt-3">
                <div className="flex items-center gap-2">
                  <Clock className="h-4 w-4 text-muted-foreground" />
                  <span className="text-sm font-medium">Expires</span>
                </div>
                <span className="text-sm text-muted-foreground">{expiresDate}</span>
              </div>
            )}
          </div>

          <p className="text-sm text-muted-foreground text-center">
            If you believe this action was made by mistake, please contact our support team.
          </p>

          {!sent ? (
            <div className="rounded-lg border p-4 space-y-3">
              <button
                onClick={() => setShowTicket(!showTicket)}
                className="flex items-center gap-2 text-sm font-medium text-primary hover:underline"
              >
                <Mail className="h-4 w-4" />
                Contact Support
              </button>

              {showTicket && (
                <form onSubmit={handleSubmitTicket} className="space-y-3">
                  <textarea
                    className="w-full min-h-[100px] rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring"
                    placeholder="Describe your issue or appeal..."
                    value={ticketMessage}
                    onChange={e => setTicketMessage(e.target.value)}
                    required
                  />
                  <Button type="submit" disabled={sending || !ticketMessage.trim()}>
                    {sending ? 'Sending...' : 'Send Appeal'}
                  </Button>
                </form>
              )}
            </div>
          ) : (
            <div className="rounded-lg border border-green-200 bg-green-50 dark:border-green-800 dark:bg-green-950 p-4 text-center">
              <p className="text-sm font-medium text-green-800 dark:text-green-200">
                Appeal submitted successfully
              </p>
              <p className="text-xs text-green-600 dark:text-green-400 mt-1">
                We will review your case and respond as soon as possible.
              </p>
            </div>
          )}
        </CardContent>
        <CardFooter className="flex justify-center">
          <Button variant="ghost" onClick={handleLogout}>
            <ArrowLeft className="h-4 w-4 mr-2" />
            Logout
          </Button>
        </CardFooter>
      </Card>
    </div>
  )
}
