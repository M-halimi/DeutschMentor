'use client'

import { useEffect, useState } from 'react'
import { useRouter, useSearchParams } from 'next/navigation'
import {
  ShieldAlert, Clock, Mail, ArrowLeft, Loader2, TicketCheck,
  MessageSquare, ChevronRight, AlertCircle, ArrowUpCircle,
  CheckCircle2, ExternalLink,
} from 'lucide-react'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from '@/components/ui/card'
import { Textarea } from '@/components/ui/textarea'
import { createClient } from '@/lib/supabase/client'
import { useAuthStore } from '@/stores/auth-store'
import Link from 'next/link'

interface SuspensionData {
  status: string
  suspension_reason: string | null
  suspension_note: string | null
  suspended_at: string | null
  suspension_expires_at: string | null
  email: string | null
  full_name: string | null
}

interface TicketSummary {
  id: string
  ticket_number: string | null
  subject: string
  status: string
  category: string
  created_at: string
  updated_at: string
  latest_reply: {
    message: string
    is_admin: boolean
    created_at: string
  } | null
}

const statusConfig: Record<string, { label: string; variant: 'default' | 'secondary' | 'destructive' | 'outline'; icon: any }> = {
  open: { label: 'Open', variant: 'default', icon: AlertCircle },
  in_progress: { label: 'In Progress', variant: 'secondary', icon: ArrowUpCircle },
  waiting_user: { label: 'Waiting for You', variant: 'outline', icon: Clock },
  resolved: { label: 'Resolved', variant: 'outline', icon: CheckCircle2 },
  closed: { label: 'Closed', variant: 'destructive', icon: CheckCircle2 },
}

export default function AccountSuspendedPage() {
  const router = useRouter()
  const searchParams = useSearchParams()
  const reason = searchParams.get('reason') || 'suspended'
  const { signOut, user } = useAuthStore()
  const [data, setData] = useState<SuspensionData | null>(null)
  const [loading, setLoading] = useState(true)
  const [tickets, setTickets] = useState<TicketSummary[]>([])
  const [ticketsLoading, setTicketsLoading] = useState(false)
  const [showAppealForm, setShowAppealForm] = useState(false)
  const [ticketMessage, setTicketMessage] = useState('')
  const [sending, setSending] = useState(false)
  const [ticketResult, setTicketResult] = useState<{ success: boolean; ticketNumber?: string } | null>(null)

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

  useEffect(() => {
    if (!loading && data?.status) {
      loadTickets()
    }
  }, [loading, data?.status])

  async function loadTickets() {
    setTicketsLoading(true)
    try {
      const res = await fetch('/api/support/tickets')
      if (res.ok) {
        const body = await res.json()
        setTickets((body.data || []).filter((t: TicketSummary) =>
          t.category === 'account_suspension' || t.status !== 'closed'
        ))
      }
    } catch {
      // silently fail
    }
    setTicketsLoading(false)
  }

  async function handleSubmitTicket(e: React.FormEvent) {
    e.preventDefault()
    if (!ticketMessage.trim()) return
    setSending(true)
    try {
      const res = await fetch('/api/support/tickets', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          subject: 'Account suspension appeal',
          message: ticketMessage,
          category: 'account_suspension',
          priority: 'normal',
        }),
      })
      const body = await res.json()
      if (res.ok) {
        setTicketResult({ success: true, ticketNumber: body.data?.ticket_number })
        loadTickets()
      } else {
        setTicketResult({ success: false })
      }
    } catch {
      setTicketResult({ success: false })
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
  const expiresDate = data?.suspension_expires_at
    ? new Date(data.suspension_expires_at).toLocaleDateString('de-DE', { year: 'numeric', month: 'long', day: 'numeric' })
    : null
  const suspendedDate = data?.suspended_at
    ? new Date(data.suspended_at).toLocaleDateString('de-DE', { year: 'numeric', month: 'long', day: 'numeric' })
    : null

  const hasTickets = tickets.length > 0
  const openTickets = tickets.filter(t => t.status !== 'closed' && t.status !== 'resolved')

  return (
    <div className="flex min-h-screen items-start justify-center bg-gradient-to-b from-background to-destructive/5 p-4 pt-12">
      <div className="w-full max-w-2xl space-y-6">
        {/* Suspension notice card */}
        <Card>
          <CardHeader className="text-center">
            <div className="mx-auto mb-4 flex h-16 w-16 items-center justify-center rounded-full bg-destructive/10">
              <ShieldAlert className="h-8 w-8 text-destructive" />
            </div>
            <CardTitle className="text-2xl">
              {isBanned ? 'Your account has been permanently banned' : 'Your account has been temporarily suspended'}
            </CardTitle>
            <CardDescription>
              {isBanned
                ? 'This action cannot be reversed.'
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

              {!expiresDate && !isBanned && isSuspended && (
                <div className="flex items-center justify-between border-t pt-3">
                  <div className="flex items-center gap-2">
                    <Clock className="h-4 w-4 text-muted-foreground" />
                    <span className="text-sm font-medium">Expires</span>
                  </div>
                  <span className="text-sm text-muted-foreground">Permanent</span>
                </div>
              )}
            </div>
          </CardContent>

          <CardFooter className="flex justify-center gap-3">
            <Button variant="ghost" onClick={handleLogout}>
              <ArrowLeft className="h-4 w-4 mr-2" />
              Logout
            </Button>
            <Link href="/support/tickets">
              <Button variant="outline">
                <MessageSquare className="h-4 w-4 mr-2" />
                All Tickets
              </Button>
            </Link>
          </CardFooter>
        </Card>

        {/* Support Center */}
        <Card>
          <CardHeader>
            <div className="flex items-center gap-2">
              <MessageSquare className="h-5 w-5 text-primary" />
              <CardTitle className="text-lg">Support Center</CardTitle>
            </div>
            <CardDescription>
              {hasTickets
                ? 'Your existing support requests are listed below.'
                : 'Submit an appeal and our team will review your case.'}
            </CardDescription>
          </CardHeader>

          <CardContent className="space-y-4">
            {/* Loading */}
            {ticketsLoading && (
              <div className="flex items-center justify-center py-6">
                <Loader2 className="h-5 w-5 animate-spin text-muted-foreground" />
              </div>
            )}

            {/* Existing tickets */}
            {!ticketsLoading && hasTickets && (
              <div className="space-y-3">
                {tickets.map(ticket => {
                  const sc = statusConfig[ticket.status] || { label: ticket.status, variant: 'default' as const, icon: AlertCircle }
                  const StatusIcon = sc.icon
                  const latestReply = ticket.latest_reply

                  return (
                    <div
                      key={ticket.id}
                      className="rounded-lg border p-4 space-y-3 hover:bg-accent/30 transition-colors"
                    >
                      <div className="flex items-start justify-between gap-2">
                        <div className="min-w-0 flex-1">
                          <div className="flex items-center gap-2">
                            {ticket.ticket_number && (
                              <span className="text-xs font-mono text-muted-foreground">{ticket.ticket_number}</span>
                            )}
                            <Badge variant={sc.variant} className="gap-1 text-[10px]">
                              <StatusIcon className="h-3 w-3" />
                              {sc.label}
                            </Badge>
                          </div>
                          <p className="text-sm font-medium mt-1 truncate">{ticket.subject}</p>
                        </div>
                        <Link href={`/support/tickets/${ticket.id}`}>
                          <Button variant="ghost" size="sm" className="shrink-0 gap-1 text-xs">
                            View <ChevronRight className="h-3 w-3" />
                          </Button>
                        </Link>
                      </div>

                      {/* Latest reply preview */}
                      {latestReply && (
                        <div className="rounded-md bg-muted/50 p-3 text-sm">
                          <div className="flex items-center gap-2 mb-1">
                            <Badge variant="outline" className="text-[10px] h-5">
                              {latestReply.is_admin ? 'Staff reply' : 'Your reply'}
                            </Badge>
                            <span className="text-xs text-muted-foreground">
                              {new Date(latestReply.created_at).toLocaleDateString()}
                            </span>
                          </div>
                          <p className="text-xs text-muted-foreground line-clamp-2">{latestReply.message}</p>
                        </div>
                      )}

                      <div className="flex items-center justify-between text-xs text-muted-foreground">
                        <span>Updated {new Date(ticket.updated_at || ticket.created_at).toLocaleDateString()}</span>
                        <Link
                          href={`/support/tickets/${ticket.id}`}
                          className="text-primary hover:underline inline-flex items-center gap-1"
                        >
                          View conversation <ExternalLink className="h-3 w-3" />
                        </Link>
                      </div>
                    </div>
                  )
                })}

                {/* Create new appeal button */}
                {openTickets.length === 0 && !ticketResult?.success && (
                  <div className="pt-2">
                    <Button
                      variant="outline"
                      className="w-full"
                      onClick={() => setShowAppealForm(true)}
                    >
                      <Mail className="h-4 w-4 mr-2" />
                      Create New Appeal
                    </Button>
                  </div>
                )}
              </div>
            )}

            {/* Appeal form — shown when no tickets exist, or explicitly toggled */}
            {!ticketsLoading && (!hasTickets || showAppealForm) && !ticketResult?.success && (
              <div className="space-y-3 border-t pt-4">
                {hasTickets && (
                  <p className="text-xs text-muted-foreground text-center">
                    Need to discuss a different issue? Submit a new appeal below.
                  </p>
                )}

                <form onSubmit={handleSubmitTicket} className="space-y-3">
                  <div>
                    <label className="text-xs text-muted-foreground block mb-1">
                      Subject: Account suspension appeal
                    </label>
                    <Textarea
                      value={ticketMessage}
                      onChange={e => setTicketMessage(e.target.value)}
                      placeholder={
                        data?.suspension_reason
                          ? `I am writing to appeal the suspension of my account. The stated reason is: ${data.suspension_reason}.\n\nPlease explain why you believe this suspension should be reviewed...`
                          : 'Describe your situation and why you believe the suspension should be reviewed...'
                      }
                      className="min-h-[120px]"
                      required
                    />
                  </div>
                  <Button type="submit" disabled={sending || !ticketMessage.trim()} className="w-full">
                    {sending ? (
                      <><Loader2 className="h-4 w-4 mr-2 animate-spin" /> Sending...</>
                    ) : (
                      'Submit Appeal'
                    )}
                  </Button>
                </form>

                {hasTickets && (
                  <Button
                    variant="ghost"
                    size="sm"
                    className="w-full text-xs"
                    onClick={() => setShowAppealForm(false)}
                  >
                    Cancel
                  </Button>
                )}
              </div>
            )}

            {/* Success result */}
            {ticketResult?.success && (
              <div className="rounded-lg border border-green-200 bg-green-50 dark:border-green-800 dark:bg-green-950 p-5 text-center space-y-3">
                <div className="mx-auto flex h-12 w-12 items-center justify-center rounded-full bg-green-100 dark:bg-green-900">
                  <TicketCheck className="h-6 w-6 text-green-600 dark:text-green-400" />
                </div>
                <div>
                  <p className="text-sm font-medium text-green-800 dark:text-green-200">
                    Support request submitted
                  </p>
                  {ticketResult.ticketNumber && (
                    <p className="text-xs text-green-600 dark:text-green-400 mt-1 font-mono">
                      Ticket: {ticketResult.ticketNumber}
                    </p>
                  )}
                  <p className="text-xs text-green-600 dark:text-green-400 mt-2">
                    Our team will review your case and respond as soon as possible.
                  </p>
                </div>
                <Button variant="outline" size="sm" onClick={() => setTicketResult(null)}>
                  Submit another
                </Button>
              </div>
            )}

            {/* Error result */}
            {ticketResult?.success === false && (
              <div className="rounded-lg border border-destructive/20 bg-destructive/5 p-4 text-center">
                <p className="text-sm font-medium text-destructive">Failed to submit</p>
                <p className="text-xs text-muted-foreground mt-1">Please try again or contact support via email.</p>
                <Button variant="ghost" size="sm" className="mt-2" onClick={() => setTicketResult(null)}>
                  Try again
                </Button>
              </div>
            )}

            {/* No tickets, no form shown yet — show prompt */}
            {!ticketsLoading && !hasTickets && !ticketResult?.success && !showAppealForm && (
              <div className="text-center py-4">
                <p className="text-sm text-muted-foreground mb-3">
                  If you believe this action was made by mistake, please submit an appeal below.
                </p>
                <Button onClick={() => setShowAppealForm(true)} className="w-full">
                  <Mail className="h-4 w-4 mr-2" />
                  Contact Support
                </Button>
              </div>
            )}
          </CardContent>
        </Card>

        {/* Helpful links */}
        <div className="text-center space-x-4 text-xs text-muted-foreground">
          <Link href="/support/tickets" className="hover:underline">View all tickets</Link>
        </div>
      </div>
    </div>
  )
}
