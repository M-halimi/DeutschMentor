'use client'

import { useEffect, useState } from 'react'
import { useAuthStore } from '@/stores/auth-store'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Card, CardContent } from '@/components/ui/card'
import { Loader2, MessageSquare, ArrowRight, Clock, CheckCircle2, AlertCircle, ArrowUpCircle } from 'lucide-react'
import Link from 'next/link'

const statusConfig: Record<string, { label: string; variant: 'default' | 'secondary' | 'destructive' | 'outline' }> = {
  open: { label: 'Open', variant: 'default' },
  in_progress: { label: 'In Progress', variant: 'secondary' },
  waiting_user: { label: 'Waiting for You', variant: 'outline' },
  resolved: { label: 'Resolved', variant: 'outline' },
  closed: { label: 'Closed', variant: 'destructive' },
}

const categoryLabels: Record<string, string> = {
  account_suspension: 'Account Suspension',
  payment: 'Payment',
  technical: 'Technical',
  other: 'Other',
}

export default function UserSupportTicketsPage() {
  const { user } = useAuthStore()
  const [tickets, setTickets] = useState<any[]>([])
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState('')

  useEffect(() => {
    async function loadTickets() {
      const res = await fetch('/api/support/tickets')
      if (res.ok) {
        const data = await res.json()
        setTickets(data.data || [])
      } else {
        const err = await res.json().catch(() => ({ error: 'Failed to load tickets' }))
        setError(err.error || 'Failed to load tickets')
      }
      setLoading(false)
    }
    loadTickets()
  }, [])

  if (loading) {
    return (
      <AppShell>
        <div className="flex items-center justify-center h-64">
          <Loader2 className="h-8 w-8 animate-spin" />
        </div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="max-w-3xl mx-auto space-y-6">
        <div className="flex items-center gap-3">
          <MessageSquare className="h-6 w-6 text-primary" />
          <h1 className="text-2xl font-bold">My Support Tickets</h1>
        </div>

        {error && (
          <div className="rounded-lg border border-destructive/50 bg-destructive/10 p-4 text-sm text-destructive">
            {error}
          </div>
        )}

        {tickets.length === 0 ? (
          <div className="text-center py-16 text-muted-foreground">
            <MessageSquare className="h-12 w-12 mx-auto mb-3 opacity-50" />
            <p className="text-lg font-medium mb-1">No support tickets</p>
            <p className="text-sm mb-4">You haven't submitted any support requests yet.</p>
            <Link href={user?.status === 'suspended' || user?.status === 'banned' ? '/account-suspended' : '/dashboard'}>
              <Button variant="outline">
                {user?.status === 'suspended' || user?.status === 'banned' ? 'Contact Support' : 'Go to Dashboard'}
              </Button>
            </Link>
          </div>
        ) : (
          <div className="space-y-2">
            {tickets.map(ticket => {
              const sc = statusConfig[ticket.status] || { label: ticket.status, variant: 'outline' }
              return (
                <Link key={ticket.id} href={`/support/tickets/${ticket.id}`}>
                  <Card className="hover:bg-accent/50 transition-colors cursor-pointer">
                    <CardContent className="p-4">
                      <div className="flex items-start justify-between gap-4">
                        <div className="flex-1 min-w-0">
                          <div className="flex items-center gap-2 mb-1">
                            {ticket.ticket_number && (
                              <span className="text-xs font-mono text-muted-foreground">{ticket.ticket_number}</span>
                            )}
                            <Badge variant={sc.variant} className="text-xs">{sc.label}</Badge>
                          </div>
                          <p className="font-medium truncate">{ticket.subject}</p>
                          <div className="flex items-center gap-2 mt-1 text-xs text-muted-foreground">
                            <span>{categoryLabels[ticket.category] || ticket.category}</span>
                            <span>·</span>
                            <span>Updated {new Date(ticket.updated_at || ticket.created_at).toLocaleDateString()}</span>
                          </div>
                        </div>
                        <div className="flex items-center gap-2 shrink-0">
                          {ticket.status === 'open' && <AlertCircle className="h-4 w-4 text-primary" />}
                          {ticket.status === 'in_progress' && <ArrowUpCircle className="h-4 w-4 text-amber-500" />}
                          {ticket.status === 'waiting_user' && <Clock className="h-4 w-4 text-amber-500" />}
                          {ticket.status === 'resolved' && <CheckCircle2 className="h-4 w-4 text-emerald-500" />}
                          {ticket.status === 'closed' && <CheckCircle2 className="h-4 w-4 text-muted-foreground" />}
                          <ArrowRight className="h-4 w-4 text-muted-foreground" />
                        </div>
                      </div>
                    </CardContent>
                  </Card>
                </Link>
              )
            })}
          </div>
        )}
      </div>
    </AppShell>
  )
}
