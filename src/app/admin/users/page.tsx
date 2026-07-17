'use client'

import { useCallback, useEffect, useState } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Textarea } from '@/components/ui/textarea'
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from '@/components/ui/table'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Skeleton } from '@/components/ui/skeleton'
import {
  Dialog, DialogContent, DialogHeader, DialogTitle, DialogDescription, DialogFooter,
} from '@/components/ui/dialog'
import {
  Search, Shield, MoreHorizontal, ChevronLeft, ChevronRight,
  CheckCircle2, XCircle, AlertTriangle, Clock, Ban, UserCheck, History,
} from 'lucide-react'
import {
  DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuSeparator, DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { useRouter, useSearchParams } from 'next/navigation'
import { toast } from 'sonner'

interface UserProfile {
  id: string
  user_id: string
  full_name: string
  email: string | null
  role: string
  current_level: string
  status: string
  status_reason: string | null
  suspension_reason: string | null
  suspension_note: string | null
  suspended_at: string | null
  suspension_expires_at: string | null
  created_at: string
}

const statusIcons: Record<string, any> = {
  active: CheckCircle2,
  expired: XCircle,
  suspended: AlertTriangle,
  trial: Clock,
  lifetime: CheckCircle2,
  cancelled: XCircle,
  banned: Ban,
}

const statusColors: Record<string, string> = {
  active: 'text-emerald-500 border-emerald-500',
  expired: 'text-red-500 border-red-500',
  suspended: 'text-amber-500 border-amber-500',
  trial: 'text-blue-500 border-blue-500',
  lifetime: 'text-purple-500 border-purple-500',
  cancelled: 'text-gray-400 border-gray-400',
  banned: 'text-red-600 border-red-600',
}

const SUSPENSION_REASONS = [
  { value: 'payment_issue', label: 'Payment Issue' },
  { value: 'abuse', label: 'Abuse' },
  { value: 'rules_violation', label: 'Violation of Rules' },
  { value: 'suspicious_activity', label: 'Suspicious Activity' },
  { value: 'other', label: 'Other' },
]

const SUSPENSION_DURATIONS = [
  { value: '24h', label: '24 hours', getDate: () => new Date(Date.now() + 24 * 60 * 60 * 1000) },
  { value: '7d', label: '7 days', getDate: () => new Date(Date.now() + 7 * 24 * 60 * 60 * 1000) },
  { value: '30d', label: '30 days', getDate: () => new Date(Date.now() + 30 * 24 * 60 * 60 * 1000) },
  { value: 'permanent', label: 'Permanent', getDate: () => null },
]

export default function AdminUsersPage() {
  const [users, setUsers] = useState<UserProfile[]>([])
  const [total, setTotal] = useState(0)
  const [page, setPage] = useState(1)
  const [pageSize] = useState(20)
  const [search, setSearch] = useState('')
  const [statusFilter, setStatusFilter] = useState('')
  const [loading, setLoading] = useState(true)
  const [selectedUser, setSelectedUser] = useState<UserProfile | null>(null)
  const [suspendReason, setSuspendReason] = useState('')
  const [suspendNote, setSuspendNote] = useState('')
  const [suspendDuration, setSuspendDuration] = useState('7d')
  const [showSuspendDialog, setShowSuspendDialog] = useState(false)
  const [showStatusHistory, setShowStatusHistory] = useState(false)
  const [statusHistory, setStatusHistory] = useState<any[]>([])
  const [actionLoading, setActionLoading] = useState(false)
  const searchParams = useSearchParams()
  const router = useRouter()

  const tab = searchParams.get('tab') || 'users'

  const fetchUsers = useCallback(async () => {
    setLoading(true)
    const params = new URLSearchParams({ page: page.toString(), pageSize: pageSize.toString() })
    if (search) params.set('search', search)
    if (statusFilter) params.set('status', statusFilter)

    const res = await fetch(`/api/admin/users?${params}`)
    const data = await res.json()
    setUsers(data.data || [])
    setTotal(data.total || 0)
    setLoading(false)
  }, [page, pageSize, search, statusFilter])

  useEffect(() => { fetchUsers() }, [fetchUsers])

  async function updateUser(userId: string, updates: Record<string, any>) {
    setActionLoading(true)
    const res = await fetch('/api/admin/users', {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ user_id: userId, ...updates }),
    })
    if (res.ok) {
      toast.success('User updated successfully')
      fetchUsers()
    } else {
      const err = await res.json()
      toast.error(err.error || 'Failed to update user')
    }
    setActionLoading(false)
  }

  function openSuspendDialog(user: UserProfile) {
    setSelectedUser(user)
    setSuspendReason('')
    setSuspendNote('')
    setSuspendDuration('7d')
    setShowSuspendDialog(true)
  }

  async function handleSuspend() {
    if (!selectedUser || !suspendReason) return
    const duration = SUSPENSION_DURATIONS.find(d => d.value === suspendDuration)
    const expiresAt = duration?.getDate()
    await updateUser(selectedUser.user_id, {
      status: 'suspended',
      suspension_reason: SUSPENSION_REASONS.find(r => r.value === suspendReason)?.label || suspendReason,
      suspension_note: suspendNote || null,
      suspension_expires_at: expiresAt?.toISOString() || null,
    })
    setShowSuspendDialog(false)
    setSelectedUser(null)
  }

  async function handleUnsuspend(user: UserProfile) {
    if (!confirm(`Remove suspension for ${user.full_name || user.email}?`)) return
    await updateUser(user.user_id, { status: 'active' })
  }

  async function handleBan(user: UserProfile) {
    if (!confirm(`Are you sure you want to permanently ban ${user.full_name || user.email}? This cannot be undone.`)) return
    await updateUser(user.user_id, {
      status: 'banned',
      suspension_reason: 'Permanently banned by admin',
      suspended_at: new Date().toISOString(),
      suspended_by: 'admin',
    })
  }

  async function openStatusHistory(user: UserProfile) {
    setSelectedUser(user)
    setStatusHistory([])
    setShowStatusHistory(true)
    try {
      const res = await fetch(`/api/admin/users/history?user_id=${user.user_id}`)
      if (res.ok) {
        const data = await res.json()
        setStatusHistory(data.data || [])
      }
    } catch {}
  }

  const totalPages = Math.ceil(total / pageSize)

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Shield className="h-6 w-6 text-primary" />
            <h1 className="text-2xl font-bold">Manage Users</h1>
          </div>
          <div className="flex gap-2">
            <Button
              variant={tab === 'users' ? 'default' : 'outline'}
              size="sm"
              onClick={() => router.push('/admin/users?tab=users')}
            >
              Users
            </Button>
            <Button
              variant={tab === 'subscriptions' ? 'default' : 'outline'}
              size="sm"
              onClick={() => router.push('/admin/users?tab=subscriptions')}
            >
              Subscriptions
            </Button>
          </div>
        </div>

        <div className="flex flex-wrap gap-2">
          <div className="relative flex-1 min-w-[200px]">
            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
            <Input
              placeholder="Search by name or email..."
              className="pl-10"
              value={search}
              onChange={e => { setSearch(e.target.value); setPage(1) }}
            />
          </div>
          {['', 'active', 'suspended', 'banned', 'expired', 'trial', 'lifetime'].map(s => (
            <Button
              key={s}
              variant={statusFilter === s ? 'default' : 'outline'}
              size="sm"
              onClick={() => { setStatusFilter(s); setPage(1) }}
              className="capitalize"
            >
              {s || 'All'}
            </Button>
          ))}
        </div>

        <Card>
          <CardHeader className="p-0">
            {loading ? (
              <div className="p-4 space-y-3">
                {[...Array(5)].map((_, i) => <Skeleton key={i} className="h-12 w-full" />)}
              </div>
            ) : (
              <div className="overflow-x-auto">
                <Table>
                  <TableHeader>
                    <TableRow>
                      <TableHead>Name</TableHead>
                      <TableHead>Email</TableHead>
                      <TableHead>Role</TableHead>
                      <TableHead>Level</TableHead>
                      <TableHead>Status</TableHead>
                      <TableHead>Reason</TableHead>
                      <TableHead>Joined</TableHead>
                      <TableHead className="w-10"></TableHead>
                    </TableRow>
                  </TableHeader>
                  <TableBody>
                    {users.length === 0 ? (
                      <TableRow>
                        <TableCell colSpan={8} className="text-center text-muted-foreground py-8">
                          No users found
                        </TableCell>
                      </TableRow>
                    ) : (
                      users.map((user) => {
                        const StatusIcon = statusIcons[user.status] || Clock
                        return (
                          <TableRow key={user.id}>
                            <TableCell className="font-medium">{user.full_name || 'Unnamed'}</TableCell>
                            <TableCell className="text-muted-foreground">{user.email || '—'}</TableCell>
                            <TableCell>
                              <Badge variant={user.role === 'admin' ? 'default' : user.role === 'teacher' ? 'secondary' : 'outline'} className="capitalize">
                                {user.role}
                              </Badge>
                            </TableCell>
                            <TableCell>{user.current_level || '—'}</TableCell>
                            <TableCell>
                              <Badge variant="outline" className={`gap-1 capitalize ${statusColors[user.status] || ''}`}>
                                <StatusIcon className="h-3 w-3" />
                                {user.status === 'banned' ? 'Banned' : user.status}
                              </Badge>
                            </TableCell>
                            <TableCell className="text-sm text-muted-foreground max-w-[200px] truncate">
                              {user.suspension_reason || user.status_reason || '—'}
                            </TableCell>
                            <TableCell className="text-sm text-muted-foreground whitespace-nowrap">
                              {new Date(user.created_at).toLocaleDateString()}
                            </TableCell>
                            <TableCell>
                              <DropdownMenu>
                                <DropdownMenuTrigger>
                                  <Button variant="ghost" size="icon"><MoreHorizontal className="h-4 w-4" /></Button>
                                </DropdownMenuTrigger>
                                <DropdownMenuContent align="end" className="w-44">
                                  {user.status !== 'suspended' && (
                                    <DropdownMenuItem onClick={() => openSuspendDialog(user)}>
                                      <AlertTriangle className="h-4 w-4 mr-2 text-amber-500" />
                                      Suspend
                                    </DropdownMenuItem>
                                  )}
                                  {user.status === 'suspended' && (
                                    <DropdownMenuItem onClick={() => handleUnsuspend(user)}>
                                      <UserCheck className="h-4 w-4 mr-2 text-emerald-500" />
                                      Unsuspend
                                    </DropdownMenuItem>
                                  )}
                                  {(user.status !== 'active' && user.status !== 'suspended') && (
                                    <DropdownMenuItem onClick={() => updateUser(user.user_id, { status: 'active', status_reason: null })}>
                                      <CheckCircle2 className="h-4 w-4 mr-2 text-emerald-500" />
                                      Activate
                                    </DropdownMenuItem>
                                  )}
                                  {user.status !== 'banned' && (
                                    <>
                                      <DropdownMenuSeparator />
                                      <DropdownMenuItem onClick={() => handleBan(user)} className="text-destructive">
                                        <Ban className="h-4 w-4 mr-2" />
                                        Ban Permanently
                                      </DropdownMenuItem>
                                    </>
                                  )}
                                  <DropdownMenuSeparator />
                                  <DropdownMenuItem onClick={() => openStatusHistory(user)}>
                                    <History className="h-4 w-4 mr-2" />
                                    Status History
                                  </DropdownMenuItem>
                                </DropdownMenuContent>
                              </DropdownMenu>
                            </TableCell>
                          </TableRow>
                        )
                      })
                    )}
                  </TableBody>
                </Table>
              </div>
            )}
          </CardHeader>
        </Card>

        {totalPages > 1 && (
          <div className="flex items-center justify-between">
            <p className="text-sm text-muted-foreground">{total} total users</p>
            <div className="flex gap-1">
              <Button variant="outline" size="sm" disabled={page <= 1} onClick={() => setPage(p => p - 1)}>
                <ChevronLeft className="h-4 w-4" />
              </Button>
              {Array.from({ length: Math.min(totalPages, 5) }, (_, i) => {
                let pageNum: number
                if (totalPages <= 5) {
                  pageNum = i + 1
                } else if (page <= 3) {
                  pageNum = i + 1
                } else if (page >= totalPages - 2) {
                  pageNum = totalPages - 4 + i
                } else {
                  pageNum = page - 2 + i
                }
                return (
                  <Button
                    key={pageNum}
                    variant={page === pageNum ? 'default' : 'outline'}
                    size="sm"
                    onClick={() => setPage(pageNum)}
                  >
                    {pageNum}
                  </Button>
                )
              })}
              <Button variant="outline" size="sm" disabled={page >= totalPages} onClick={() => setPage(p => p + 1)}>
                <ChevronRight className="h-4 w-4" />
              </Button>
            </div>
          </div>
        )}
      </div>

      {/* Suspend Dialog */}
      <Dialog open={showSuspendDialog} onOpenChange={setShowSuspendDialog}>
        <DialogContent className="sm:max-w-md">
          <DialogHeader>
            <DialogTitle className="flex items-center gap-2">
              <AlertTriangle className="h-5 w-5 text-amber-500" />
              Suspend User
            </DialogTitle>
            <DialogDescription>
              {selectedUser?.full_name || selectedUser?.email || ''}
            </DialogDescription>
          </DialogHeader>
          <div className="space-y-4">
            <div>
              <label className="text-sm font-medium">Reason</label>
              <Select value={suspendReason} onValueChange={(v: string | null) => { if (v !== null) setSuspendReason(v) }}>
                <SelectTrigger className="mt-1">
                  <SelectValue placeholder="Select a reason" />
                </SelectTrigger>
                <SelectContent>
                  {SUSPENSION_REASONS.map(r => (
                    <SelectItem key={r.value} value={r.value}>{r.label}</SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>

            <div>
              <label className="text-sm font-medium">Duration</label>
              <Select value={suspendDuration} onValueChange={(v: string | null) => { if (v !== null) setSuspendDuration(v) }}>
                <SelectTrigger className="mt-1">
                  <SelectValue />
                </SelectTrigger>
                <SelectContent>
                  {SUSPENSION_DURATIONS.map(d => (
                    <SelectItem key={d.value} value={d.value}>{d.label}</SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>

            <div>
              <label className="text-sm font-medium">Internal Note</label>
              <p className="text-xs text-muted-foreground mb-1">Only visible to admins</p>
              <Textarea
                value={suspendNote}
                onChange={e => setSuspendNote(e.target.value)}
                placeholder="Add internal notes about this suspension..."
                className="min-h-[80px]"
              />
            </div>
          </div>
          <DialogFooter>
            <Button variant="outline" onClick={() => setShowSuspendDialog(false)}>Cancel</Button>
            <Button
              variant="destructive"
              onClick={handleSuspend}
              disabled={!suspendReason || actionLoading}
            >
              {actionLoading ? 'Suspending...' : 'Confirm Suspension'}
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>

      {/* Status History Dialog */}
      <Dialog open={showStatusHistory} onOpenChange={setShowStatusHistory}>
        <DialogContent className="sm:max-w-lg">
          <DialogHeader>
            <DialogTitle className="flex items-center gap-2">
              <History className="h-5 w-5 text-primary" />
              Status History
            </DialogTitle>
            <DialogDescription>
              {selectedUser?.full_name || selectedUser?.email || ''}
            </DialogDescription>
          </DialogHeader>
          <div className="space-y-3 max-h-80 overflow-y-auto">
            {statusHistory.length === 0 ? (
              <p className="text-sm text-muted-foreground text-center py-4">No status changes recorded</p>
            ) : (
              statusHistory.map((entry: any) => (
                <div key={entry.id} className="flex items-start gap-3 rounded-lg border p-3">
                  <div className="flex-1 min-w-0">
                    <div className="flex items-center gap-2 text-sm">
                      <Badge variant="outline" className="text-xs">
                        {entry.old_status || '—'}
                      </Badge>
                      <span className="text-muted-foreground">→</span>
                      <Badge className={`text-xs ${
                        entry.new_status === 'suspended' ? 'bg-amber-500' :
                        entry.new_status === 'banned' ? 'bg-destructive' :
                        entry.new_status === 'active' ? 'bg-emerald-500' : ''
                      }`}>
                        {entry.new_status}
                      </Badge>
                    </div>
                    {entry.reason && (
                      <p className="text-xs text-muted-foreground mt-1">{entry.reason}</p>
                    )}
                    <p className="text-xs text-muted-foreground mt-1">
                      {new Date(entry.created_at).toLocaleString()}
                    </p>
                  </div>
                </div>
              ))
            )}
          </div>
          <DialogFooter>
            <Button variant="outline" onClick={() => setShowStatusHistory(false)}>Close</Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </AppShell>
  )
}
