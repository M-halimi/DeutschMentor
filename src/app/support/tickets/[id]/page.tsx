'use client'

import { useCallback, useEffect, useState, useRef } from 'react'
import { useParams, useRouter } from 'next/navigation'
import { useAuthStore } from '@/stores/auth-store'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Textarea } from '@/components/ui/textarea'
import { Avatar, AvatarFallback } from '@/components/ui/avatar'
import { Card, CardContent } from '@/components/ui/card'
import { toast } from 'sonner'
import {
  ArrowLeft, Send, Loader2, MessageSquare, Clock,
  CheckCircle2, AlertCircle, ArrowUpCircle,
} from 'lucide-react'
import Link from 'next/link'

const statusConfig: Record<string, { label: string; color: string }> = {
  open: { label: 'Open', color: 'bg-blue-500/10 text-blue-600 border-blue-200' },
  in_progress: { label: 'In Progress', color: 'bg-amber-500/10 text-amber-600 border-amber-200' },
  waiting_user: { label: 'Waiting for You', color: 'bg-purple-500/10 text-purple-600 border-purple-200' },
  resolved: { label: 'Resolved', color: 'bg-emerald-500/10 text-emerald-600 border-emerald-200' },
  closed: { label: 'Closed', color: 'bg-gray-500/10 text-gray-600 border-gray-200' },
}

function MinimalShell({ children }: { children: React.ReactNode }) {
  const { user } = useAuthStore()
  const backHref = user?.status === 'suspended' || user?.status === 'banned' ? '/account-suspended' : '/support/tickets'
  return (
    <div className="min-h-screen bg-background">
      <div className="flex h-16 items-center gap-4 border-b bg-background/80 backdrop-blur-xl px-6">
        <Link href={backHref}>
          <Button variant="ghost" size="sm">
            <ArrowLeft className="h-4 w-4 mr-2" />
            Back to Tickets
          </Button>
        </Link>
        <div className="flex-1" />
      </div>
      <main className="p-6">{children}</main>
    </div>
  )
}

export default function UserTicketDetailPage() {
  console.log('[TRACE] UserTicketDetailPage RENDERING START', { time: Date.now() })
  const params = useParams()
  const router = useRouter()
  const { user } = useAuthStore()
  const isSuspended = user?.status === 'suspended' || user?.status === 'banned'
  const showFullShell = !isSuspended && user
  const Shell = showFullShell ? AppShell : MinimalShell
  const [ticket, setTicket] = useState<any>(null)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')
  const [reply, setReply] = useState('')
  const [sending, setSending] = useState(false)
  const bottomRef = useRef<HTMLDivElement>(null)
  console.log('[TRACE] UserTicketDetailPage RENDERED with user', { userId: user?.user_id, userStatus: user?.status, paramsId: params?.id })

  const fetchTicket = useCallback(async () => {
    try {
      const res = await fetch(`/api/support/tickets/${params.id}`)
      console.log('[TRACE] TICKET API RESPONSE RAW', {
        status: res.status,
        statusText: res.statusText,
        redirected: res.redirected,
        url: res.url,
        headers: Object.fromEntries([...res.headers.entries()].filter(([k]) => k.startsWith('x-') || k === 'location')),
      })
      if (res.ok) {
        const data = await res.json()
        console.log('[TRACE] TICKET API RESPONSE BODY', data)
        if (data.data?.user_id !== user?.user_id) {
          console.error('[TRACE] TICKET OWNERSHIP MISMATCH', { ticketUserId: data.data?.user_id, loggedInUserId: user?.user_id })
          setError('You do not have access to this ticket.')
          setLoading(false)
          return
        }
        setTicket(data.data)
      } else if (res.status === 403) {
        const body = await res.json().catch(() => ({}))
        console.error('[TRACE] TICKET API 403', body)
        setError('You do not have permission to view this ticket.')
      } else if (res.status === 404) {
        console.error('[TRACE] TICKET API 404')
        setError('Ticket not found.')
      } else {
        const err = await res.json().catch(() => ({ error: 'Failed to load ticket' }))
        console.error('[TRACE] TICKET API ERROR', { status: res.status, body: err })
        setError(err.error || 'Failed to load ticket')
      }
    } catch (err) {
      console.error('[SupportTicketDetail] fetch error:', err)
      setError('An unexpected error occurred. Please try again.')
    }
    setLoading(false)
  }, [params.id, user?.user_id])

  useEffect(() => {
    console.log('[SupportTicketDetail] mounted', { paramsId: params.id, userId: user?.id, userStatus: user?.status })
    if (params.id && user) {
      console.log('[SupportTicketDetail] fetching ticket', params.id)
      fetchTicket()
    }
  }, [params.id, user, fetchTicket])

  useEffect(() => {
    bottomRef.current?.scrollIntoView({ behavior: 'smooth' })
  }, [ticket?.replies?.length])

  async function handleSendReply() {
    if (!reply.trim()) return
    setSending(true)
    const res = await fetch(`/api/support/tickets/${params.id}`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ message: reply }),
    })
    if (res.ok) {
      setReply('')
      toast.success('Reply sent')
      fetchTicket()
    } else {
      const err = await res.json().catch(() => ({ error: 'Failed to send' }))
      toast.error(err.error || 'Failed to send reply')
    }
    setSending(false)
  }

  if (loading) {
    return (
      <Shell>
        <div className="flex items-center justify-center h-64">
          <Loader2 className="h-8 w-8 animate-spin" />
        </div>
      </Shell>
    )
  }

  if (error || !ticket) {
    return (
      <Shell>
        <div className="max-w-3xl mx-auto text-center py-16">
          <MessageSquare className="h-12 w-12 mx-auto mb-3 text-muted-foreground opacity-50" />
          <p className="text-lg font-medium mb-1">{error || 'Ticket not found'}</p>
          <p className="text-sm text-muted-foreground mb-4">
            {error?.includes('not have access') ? 'This ticket belongs to another account.' : 'The ticket may have been removed.'}
          </p>
          <Link href="/support/tickets"><Button variant="outline">Back to Tickets</Button></Link>
        </div>
      </Shell>
    )
  }

  const allMessages = [
    { id: 'original', user_id: ticket.user_id, message: ticket.message, is_admin: false, created_at: ticket.created_at, user: ticket.user },
    ...(ticket.replies || []),
  ].sort((a, b) => new Date(a.created_at).getTime() - new Date(b.created_at).getTime())

  const sc = statusConfig[ticket.status] || { label: ticket.status, color: '' }

  return (
    <Shell>
      <div className="max-w-3xl mx-auto space-y-4">
        {/* Header */}
        <div className="flex items-center gap-3">
          <Button variant="ghost" size="icon" onClick={() => window.history.back()}>
            <ArrowLeft className="h-5 w-5" />
          </Button>
          <div className="flex-1 min-w-0">
            <div className="flex items-center gap-2">
              {ticket.ticket_number && (
                <span className="text-sm font-mono text-muted-foreground">{ticket.ticket_number}</span>
              )}
              <h1 className="text-xl font-bold truncate">{ticket.subject}</h1>
            </div>
          </div>
        </div>

        {/* Status bar */}
        <div className="flex flex-wrap items-center gap-3 text-sm">
          <span className={`inline-flex items-center gap-1.5 rounded-full border px-3 py-1 text-xs font-medium ${sc.color}`}>
            {ticket.status === 'open' && <AlertCircle className="h-3.5 w-3.5" />}
            {ticket.status === 'in_progress' && <ArrowUpCircle className="h-3.5 w-3.5" />}
            {ticket.status === 'waiting_user' && <Clock className="h-3.5 w-3.5" />}
            {ticket.status === 'resolved' && <CheckCircle2 className="h-3.5 w-3.5" />}
            {ticket.status === 'closed' && <CheckCircle2 className="h-3.5 w-3.5" />}
            {sc.label}
          </span>
          <span className="text-muted-foreground capitalize">{ticket.category?.replace('_', ' ')}</span>
          <span className="text-muted-foreground">Created {new Date(ticket.created_at).toLocaleDateString()}</span>
        </div>

        {/* Conversation */}
        <Card>
          <CardContent className="p-0">
            <div className="divide-y">
              {allMessages.map((msg, i) => {
                const isUser = !msg.is_admin
                const name = isUser
                  ? (msg.user?.full_name || msg.user?.email || 'You')
                  : 'Support Team'
                const initial = isUser
                  ? (msg.user?.full_name?.charAt(0)?.toUpperCase() || 'U')
                  : 'S'

                return (
                  <div key={`${msg.id}-${i}`} className={`flex gap-3 p-4 ${isUser ? '' : 'bg-muted/30'}`}>
                    <Avatar className={`h-9 w-9 shrink-0 mt-0.5 ${isUser ? '' : 'ring-2 ring-primary/20'}`}>
                      <AvatarFallback className={isUser ? 'bg-muted' : 'bg-primary/10 text-primary'}>
                        {initial}
                      </AvatarFallback>
                    </Avatar>
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center gap-2 mb-1">
                        <span className="text-sm font-medium">{name}</span>
                        {!isUser && (
                          <Badge variant="secondary" className="text-[10px] h-5 px-1.5">Staff</Badge>
                        )}
                        <span className="text-xs text-muted-foreground ml-auto">
                          {new Date(msg.created_at).toLocaleString()}
                        </span>
                      </div>
                      <p className="text-sm whitespace-pre-wrap leading-relaxed">{msg.message}</p>
                    </div>
                  </div>
                )
              })}
            </div>
          </CardContent>
        </Card>

        {/* Reply box */}
        {ticket.status !== 'closed' && ticket.status !== 'resolved' ? (
          <Card>
            <CardContent className="p-4">
              <div className="space-y-3">
                <label className="text-sm font-medium text-muted-foreground">Add a reply</label>
                <Textarea
                  value={reply}
                  onChange={e => setReply(e.target.value)}
                  placeholder="Type your message here..."
                  className="min-h-[100px] resize-y"
                  onKeyDown={e => {
                    if (e.key === 'Enter' && (e.metaKey || e.ctrlKey)) {
                      e.preventDefault()
                      handleSendReply()
                    }
                  }}
                />
                <div className="flex items-center justify-between">
                  <span className="text-xs text-muted-foreground">Cmd+Enter to send</span>
                  <Button onClick={handleSendReply} disabled={sending || !reply.trim()}>
                    {sending ? <Loader2 className="h-4 w-4 mr-2 animate-spin" /> : <Send className="h-4 w-4 mr-2" />}
                    Send Reply
                  </Button>
                </div>
              </div>
            </CardContent>
          </Card>
        ) : (
          <div className="rounded-lg border bg-muted/50 p-6 text-center">
            <CheckCircle2 className="h-8 w-8 mx-auto mb-2 text-muted-foreground" />
            <p className="text-sm font-medium">This ticket is {ticket.status === 'resolved' ? 'resolved' : 'closed'}.</p>
            <p className="text-xs text-muted-foreground mt-1">
              {ticket.status === 'resolved' ? 'If you need further help, create a new support ticket.' : 'This conversation is no longer active.'}
            </p>
          </div>
        )}
        <div ref={bottomRef} />
      </div>
      </Shell>
    )
  }
