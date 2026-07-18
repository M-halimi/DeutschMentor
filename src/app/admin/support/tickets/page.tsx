'use client'

import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { useAdminStore } from '@/stores/admin-store'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Skeleton } from '@/components/ui/skeleton'
import { MessageSquare, Search, Clock, CheckCircle2, AlertCircle, ArrowUpCircle, Loader2 } from 'lucide-react'
import Link from 'next/link'

const statusConfig: Record<string, { label: string; variant: 'default' | 'secondary' | 'destructive' | 'outline' }> = {
  open: { label: 'Open', variant: 'default' },
  in_progress: { label: 'In Progress', variant: 'secondary' },
  waiting_user: { label: 'Waiting User', variant: 'outline' },
  resolved: { label: 'Resolved', variant: 'outline' },
  closed: { label: 'Closed', variant: 'destructive' },
}

const priorityConfig: Record<string, { label: string; color: string }> = {
  low: { label: 'Low', color: 'text-gray-500' },
  normal: { label: 'Normal', color: 'text-blue-500' },
  high: { label: 'High', color: 'text-amber-500' },
  urgent: { label: 'Urgent', color: 'text-red-500' },
}

const categoryLabels: Record<string, string> = {
  account_suspension: 'Account Suspension',
  payment: 'Payment',
  technical: 'Technical',
  other: 'Other',
}

export default function AdminSupportTicketsPage() {
  const { hasPermission, loaded, isAdminUser } = useAdminStore()
  const router = useRouter()
  const [tickets, setTickets] = useState<any[]>([])
  const [loading, setLoading] = useState(true)
  const [search, setSearch] = useState('')
  const [statusFilter, setStatusFilter] = useState('')
  const [categoryFilter, setCategoryFilter] = useState('')
  const [total, setTotal] = useState(0)

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded) return
    fetchTickets()
  }, [loaded, isAdminUser])

  async function fetchTickets() {
    setLoading(true)
    const params = new URLSearchParams()
    if (statusFilter) params.set('status', statusFilter)
    if (categoryFilter) params.set('category', categoryFilter)
    const res = await fetch(`/api/support/tickets?${params}`)
    if (res.ok) {
      const data = await res.json()
      setTickets(data.data || [])
      setTotal(data.total || 0)
    }
    setLoading(false)
  }

  const filtered = tickets.filter(t => {
    if (!search) return true
    const q = search.toLowerCase()
    return (
      t.ticket_number?.toLowerCase().includes(q) ||
      t.subject?.toLowerCase().includes(q) ||
      t.user?.email?.toLowerCase().includes(q) ||
      t.user?.full_name?.toLowerCase().includes(q)
    )
  })

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
      <div className="space-y-6">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <MessageSquare className="h-6 w-6 text-primary" />
            <h1 className="text-2xl font-bold">Support Tickets</h1>
            <Badge variant="secondary">{total}</Badge>
          </div>
        </div>

        <div className="flex flex-wrap gap-2">
          <div className="relative flex-1 min-w-[200px]">
            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
            <Input
              placeholder="Search tickets, users..."
              className="pl-10"
              value={search}
              onChange={e => setSearch(e.target.value)}
            />
          </div>
          <Select value={statusFilter} onValueChange={(v) => { setStatusFilter(v ?? ''); fetchTickets() }}>
            <SelectTrigger className="w-36">
              <SelectValue placeholder="All status" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="">All status</SelectItem>
              <SelectItem value="open">Open</SelectItem>
              <SelectItem value="in_progress">In Progress</SelectItem>
              <SelectItem value="waiting_user">Waiting User</SelectItem>
              <SelectItem value="resolved">Resolved</SelectItem>
              <SelectItem value="closed">Closed</SelectItem>
            </SelectContent>
          </Select>
          <Select value={categoryFilter} onValueChange={(v) => { setCategoryFilter(v ?? ''); fetchTickets() }}>
            <SelectTrigger className="w-40">
              <SelectValue placeholder="All categories" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="">All categories</SelectItem>
              <SelectItem value="account_suspension">Account Suspension</SelectItem>
              <SelectItem value="payment">Payment</SelectItem>
              <SelectItem value="technical">Technical</SelectItem>
              <SelectItem value="other">Other</SelectItem>
            </SelectContent>
          </Select>
        </div>

        <div className="space-y-2">
          {filtered.length === 0 ? (
            <div className="text-center py-12 text-muted-foreground">
              <MessageSquare className="h-12 w-12 mx-auto mb-3 opacity-50" />
              <p>No support tickets found</p>
            </div>
          ) : (
            filtered.map(ticket => {
              const sc = statusConfig[ticket.status] || { label: ticket.status, variant: 'outline' }
              const pc = priorityConfig[ticket.priority] || { label: ticket.priority, color: '' }
              return (
                <Link key={ticket.id} href={`/admin/support/tickets/${ticket.id}`}>
                  <Card className="hover:bg-accent/50 transition-colors cursor-pointer">
                    <CardContent className="p-4">
                      <div className="flex items-start justify-between gap-4">
                        <div className="flex-1 min-w-0">
                          <div className="flex items-center gap-2 mb-1">
                            {ticket.ticket_number && (
                              <span className="text-xs font-mono text-muted-foreground">{ticket.ticket_number}</span>
                            )}
                            <Badge variant={sc.variant} className="text-xs">{sc.label}</Badge>
                            <span className={`text-xs font-medium ${pc.color}`}>{pc.label}</span>
                          </div>
                          <p className="font-medium truncate">{ticket.subject}</p>
                          <div className="flex items-center gap-2 mt-1 text-xs text-muted-foreground">
                            <span>{ticket.user?.full_name || ticket.user?.email || 'Unknown'}</span>
                            <span>·</span>
                            <span>{categoryLabels[ticket.category] || ticket.category}</span>
                            <span>·</span>
                            <span>{new Date(ticket.created_at).toLocaleDateString()}</span>
                          </div>
                        </div>
                        <div className="flex items-center gap-2 shrink-0">
                          {ticket.status === 'open' && <AlertCircle className="h-4 w-4 text-primary" />}
                          {ticket.status === 'in_progress' && <ArrowUpCircle className="h-4 w-4 text-amber-500" />}
                          {ticket.status === 'resolved' && <CheckCircle2 className="h-4 w-4 text-emerald-500" />}
                          {ticket.status === 'closed' && <CheckCircle2 className="h-4 w-4 text-muted-foreground" />}
                          {ticket.status === 'waiting_user' && <Clock className="h-4 w-4 text-muted-foreground" />}
                        </div>
                      </div>
                    </CardContent>
                  </Card>
                </Link>
              )
            })
          )}
        </div>
      </div>
    </AppShell>
  )
}
