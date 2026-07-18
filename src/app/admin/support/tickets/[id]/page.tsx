'use client'

import { useCallback, useEffect, useState, useRef } from 'react'
import { useRouter, useParams } from 'next/navigation'
import { useAdminStore } from '@/stores/admin-store'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Textarea } from '@/components/ui/textarea'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Avatar, AvatarFallback } from '@/components/ui/avatar'
import { toast } from 'sonner'
import {
  ArrowLeft, Send, Loader2, MessageSquare,
  AlertCircle, ArrowUpCircle, Clock, CheckCircle2,
  ShieldAlert, Mail, User, Flag,
} from 'lucide-react'
import Link from 'next/link'

const statusOptions = [
  { value: 'open', label: 'Open' },
  { value: 'in_progress', label: 'In Progress' },
  { value: 'waiting_user', label: 'Waiting User' },
  { value: 'resolved', label: 'Resolved' },
  { value: 'closed', label: 'Closed' },
]

const priorityOptions = [
  { value: 'low', label: 'Low' },
  { value: 'normal', label: 'Normal' },
  { value: 'high', label: 'High' },
  { value: 'urgent', label: 'Urgent' },
]

const statusBadge: Record<string, { variant: 'default' | 'secondary' | 'destructive' | 'outline'; icon: any }> = {
  open: { variant: 'default', icon: AlertCircle },
  in_progress: { variant: 'secondary', icon: ArrowUpCircle },
  waiting_user: { variant: 'outline', icon: Clock },
  resolved: { variant: 'outline', icon: CheckCircle2 },
  closed: { variant: 'destructive', icon: CheckCircle2 },
}

export default function AdminTicketDetailPage() {
  const params = useParams()
  const router = useRouter()
  const { loaded, isAdminUser } = useAdminStore()
  const [ticket, setTicket] = useState<any>(null)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')
  const [reply, setReply] = useState('')
  const [sending, setSending] = useState(false)
  const bottomRef = useRef<HTMLDivElement>(null)

  const fetchTicket = useCallback(async () => {
    const res = await fetch(`/api/support/tickets/${params.id}`)
    if (res.ok) {
      const data = await res.json()
      setTicket(data.data)
    } else {
      const err = await res.json().catch(() => ({ error: 'Failed to load ticket' }))
      setError(err.error || 'Failed to load ticket')
    }
    setLoading(false)
  }, [params.id])

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded || !params.id) return
    fetchTicket()
  }, [loaded, isAdminUser, params.id, fetchTicket])

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

  async function handleStatusChange(status: string) {
    const res = await fetch(`/api/support/tickets/${params.id}`, {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ status }),
    })
    if (res.ok) {
      toast.success('Status updated')
      fetchTicket()
    } else {
      toast.error('Failed to update status')
    }
  }

  async function handlePriorityChange(priority: string) {
    const res = await fetch(`/api/support/tickets/${params.id}`, {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ priority }),
    })
    if (res.ok) {
      toast.success('Priority updated')
      fetchTicket()
    } else {
      toast.error('Failed to update priority')
    }
  }

  if (loading) {
    return (
      <AppShell>
        <div className="flex items-center justify-center h-64">
          <Loader2 className="h-8 w-8 animate-spin" />
        </div>
      </AppShell>
    )
  }

  if (error || !ticket) {
    return (
      <AppShell>
        <div className="text-center py-16">
          <MessageSquare className="h-12 w-12 mx-auto mb-3 text-muted-foreground opacity-50" />
          <p className="text-lg font-medium mb-1">{error || 'Ticket not found'}</p>
          <Link href="/admin/support/tickets"><Button variant="outline" className="mt-4">Back to Tickets</Button></Link>
        </div>
      </AppShell>
    )
  }

  const allMessages = [
    { id: 'original', user_id: ticket.user_id, message: ticket.message, is_admin: false, created_at: ticket.created_at, user: ticket.user },
    ...(ticket.replies || []),
  ].sort((a, b) => new Date(a.created_at).getTime() - new Date(b.created_at).getTime())

  const sb = statusBadge[ticket.status] || { variant: 'default' as const, icon: AlertCircle }
  const StatusIcon = sb.icon

  return (
    <AppShell>
      <div className="space-y-6">
        {/* Header */}
        <div className="flex items-center gap-3">
          <Link href="/admin/support/tickets">
            <Button variant="ghost" size="icon"><ArrowLeft className="h-5 w-5" /></Button>
          </Link>
          <div className="flex-1 min-w-0">
            <div className="flex items-center gap-2">
              {ticket.ticket_number && (
                <span className="text-sm font-mono text-muted-foreground">{ticket.ticket_number}</span>
              )}
              <h1 className="text-xl font-bold truncate">{ticket.subject}</h1>
            </div>
          </div>
          <Badge variant={sb.variant} className="gap-1 text-xs capitalize">
            <StatusIcon className="h-3 w-3" />
            {ticket.status?.replace('_', ' ')}
          </Badge>
        </div>

        <div className="grid gap-6 lg:grid-cols-3">
          {/* Conversation column */}
          <div className="lg:col-span-2 space-y-4">
            <Card>
              <CardContent className="p-0">
                <div className="divide-y">
                  {allMessages.map((msg, i) => {
                    const isAdmin = msg.is_admin
                    const name = isAdmin
                      ? 'Support Team'
                      : (msg.user?.full_name || msg.user?.email || 'User')
                    const initial = isAdmin ? 'S' : (msg.user?.full_name?.charAt(0)?.toUpperCase() || 'U')

                    return (
                      <div key={`${msg.id}-${i}`} className={`flex gap-3 p-4 ${isAdmin ? 'bg-primary/[0.03]' : ''}`}>
                        <Avatar className={`h-9 w-9 shrink-0 mt-0.5 ${isAdmin ? 'ring-2 ring-primary/20' : ''}`}>
                          <AvatarFallback className={isAdmin ? 'bg-primary/10 text-primary' : 'bg-muted'}>
                            {initial}
                          </AvatarFallback>
                        </Avatar>
                        <div className="flex-1 min-w-0">
                          <div className="flex items-center gap-2 mb-1">
                            <span className="text-sm font-medium">{name}</span>
                            {isAdmin && (
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
                    <label className="text-sm font-medium text-muted-foreground">Reply as Support Team</label>
                    <Textarea
                      value={reply}
                      onChange={e => setReply(e.target.value)}
                      placeholder="Type your reply..."
                      className="min-h-[120px] resize-y"
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
                <p className="text-sm font-medium">Ticket is {ticket.status}</p>
                <p className="text-xs text-muted-foreground mt-1">Change status to reopen the conversation.</p>
              </div>
            )}
            <div ref={bottomRef} />
          </div>

          {/* Sidebar */}
          <div className="space-y-4">
            {/* User info */}
            <Card>
              <CardHeader className="pb-3"><CardTitle className="text-base">User</CardTitle></CardHeader>
              <CardContent className="space-y-3 text-sm">
                {ticket.user && (
                  <>
                    <div className="flex items-center gap-2">
                      <User className="h-4 w-4 text-muted-foreground shrink-0" />
                      <span className="truncate font-medium">{ticket.user.full_name || 'Unknown'}</span>
                    </div>
                    <div className="flex items-center gap-2">
                      <Mail className="h-4 w-4 text-muted-foreground shrink-0" />
                      <a href={`mailto:${ticket.user.email}`} className="truncate text-primary hover:underline">
                        {ticket.user.email || '—'}
                      </a>
                    </div>
                    <div className="flex items-center gap-2">
                      <ShieldAlert className="h-4 w-4 text-muted-foreground shrink-0" />
                      <Badge variant={ticket.user.status === 'suspended' ? 'destructive' : ticket.user.status === 'banned' ? 'destructive' : 'outline'}>
                        {ticket.user.status || 'active'}
                      </Badge>
                    </div>
                  </>
                )}
                {ticket.suspension_reason && (
                  <div className="border-t pt-3">
                    <span className="text-xs font-medium text-muted-foreground">Suspension reason</span>
                    <p className="text-sm mt-1">{ticket.suspension_reason}</p>
                  </div>
                )}
                {ticket.user?.suspended_at && (
                  <div className="border-t pt-3 text-xs text-muted-foreground space-y-0.5">
                    <p>Suspended: {new Date(ticket.user.suspended_at).toLocaleDateString()}</p>
                    {ticket.user.suspension_expires_at && (
                      <p>Expires: {new Date(ticket.user.suspension_expires_at).toLocaleDateString()}</p>
                    )}
                  </div>
                )}
              </CardContent>
            </Card>

            {/* Manage */}
            <Card>
              <CardHeader className="pb-3"><CardTitle className="text-base">Manage</CardTitle></CardHeader>
              <CardContent className="space-y-3">
                <div>
                  <label className="text-xs font-medium text-muted-foreground">Status</label>
                  <Select value={ticket.status} onValueChange={(v) => { if (v) handleStatusChange(v) }}>
                    <SelectTrigger className="mt-1.5">
                      <SelectValue />
                    </SelectTrigger>
                    <SelectContent>
                      {statusOptions.map(o => (
                        <SelectItem key={o.value} value={o.value}>{o.label}</SelectItem>
                      ))}
                    </SelectContent>
                  </Select>
                </div>
                <div>
                  <label className="text-xs font-medium text-muted-foreground">Priority</label>
                  <Select value={ticket.priority} onValueChange={(v) => { if (v) handlePriorityChange(v) }}>
                    <SelectTrigger className="mt-1.5">
                      <SelectValue />
                    </SelectTrigger>
                    <SelectContent>
                      {priorityOptions.map(o => (
                        <SelectItem key={o.value} value={o.value}>{o.label}</SelectItem>
                      ))}
                    </SelectContent>
                  </Select>
                </div>
              </CardContent>
            </Card>

            {/* Details */}
            <Card>
              <CardHeader className="pb-3"><CardTitle className="text-base">Details</CardTitle></CardHeader>
              <CardContent className="space-y-2 text-sm">
                <div className="flex justify-between">
                  <span className="text-muted-foreground">Category</span>
                  <span className="capitalize font-medium">{ticket.category?.replace('_', ' ')}</span>
                </div>
                <div className="flex justify-between">
                  <span className="text-muted-foreground">Priority</span>
                  <span className="capitalize font-medium">{ticket.priority}</span>
                </div>
                <div className="flex justify-between">
                  <span className="text-muted-foreground">Created</span>
                  <span>{new Date(ticket.created_at).toLocaleDateString()}</span>
                </div>
                <div className="flex justify-between">
                  <span className="text-muted-foreground">Updated</span>
                  <span>{new Date(ticket.updated_at).toLocaleDateString()}</span>
                </div>
                {ticket.closed_at && (
                  <div className="flex justify-between">
                    <span className="text-muted-foreground">Closed</span>
                    <span>{new Date(ticket.closed_at).toLocaleDateString()}</span>
                  </div>
                )}
                <div className="flex justify-between">
                  <span className="text-muted-foreground">Messages</span>
                  <span className="font-medium">{allMessages.length}</span>
                </div>
              </CardContent>
            </Card>
          </div>
        </div>
      </div>
    </AppShell>
  )
}
