'use client'

import { useCallback, useEffect, useState } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from '@/components/ui/table'
import { Skeleton } from '@/components/ui/skeleton'
import {
  Search, Shield, MoreHorizontal, ChevronLeft, ChevronRight,
  CheckCircle2, XCircle, AlertTriangle, Clock,
} from 'lucide-react'
import {
  DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuSeparator, DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import { useRouter, useSearchParams } from 'next/navigation'

interface UserProfile {
  id: string
  user_id: string
  full_name: string
  email: string | null
  role: string
  current_level: string
  status: string
  created_at: string
}

const statusIcons: Record<string, any> = {
  active: CheckCircle2,
  expired: XCircle,
  suspended: AlertTriangle,
  trial: Clock,
  lifetime: CheckCircle2,
  cancelled: XCircle,
}

const statusColors: Record<string, string> = {
  active: 'text-emerald-500 border-emerald-500',
  expired: 'text-red-500 border-red-500',
  suspended: 'text-amber-500 border-amber-500',
  trial: 'text-blue-500 border-blue-500',
  lifetime: 'text-purple-500 border-purple-500',
  cancelled: 'text-gray-400 border-gray-400',
}

export default function AdminUsersPage() {
  const [users, setUsers] = useState<UserProfile[]>([])
  const [total, setTotal] = useState(0)
  const [page, setPage] = useState(1)
  const [pageSize] = useState(20)
  const [search, setSearch] = useState('')
  const [statusFilter, setStatusFilter] = useState('')
  const [loading, setLoading] = useState(true)
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

  const updateUser = async (userId: string, updates: Record<string, any>) => {
    const res = await fetch('/api/admin/users', {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ user_id: userId, ...updates }),
    })
    if (res.ok) fetchUsers()
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

        <div className="flex gap-2">
          <div className="relative flex-1">
            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
            <Input
              placeholder="Search by name or email..."
              className="pl-10"
              value={search}
              onChange={e => { setSearch(e.target.value); setPage(1) }}
            />
          </div>
          {['', 'active', 'expired', 'suspended', 'trial', 'lifetime'].map(s => (
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
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead>Name</TableHead>
                    <TableHead>Email</TableHead>
                    <TableHead>Role</TableHead>
                    <TableHead>Level</TableHead>
                    <TableHead>Status</TableHead>
                    <TableHead>Joined</TableHead>
                    <TableHead className="w-10"></TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {users.length === 0 ? (
                    <TableRow>
                      <TableCell colSpan={7} className="text-center text-muted-foreground py-8">
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
                              {user.status}
                            </Badge>
                          </TableCell>
                          <TableCell className="text-sm text-muted-foreground">
                            {new Date(user.created_at).toLocaleDateString()}
                          </TableCell>
                          <TableCell>
                            <DropdownMenu>
                              <DropdownMenuTrigger>
                                <Button variant="ghost" size="icon"><MoreHorizontal className="h-4 w-4" /></Button>
                              </DropdownMenuTrigger>
                              <DropdownMenuContent align="end" className="w-40">
                                {user.status !== 'suspended' && (
                                  <DropdownMenuItem onClick={() => updateUser(user.user_id, { status: 'suspended', status_reason: 'Admin action' })}>
                                    Suspend
                                  </DropdownMenuItem>
                                )}
                                {user.status !== 'active' && (
                                  <DropdownMenuItem onClick={() => updateUser(user.user_id, { status: 'active', status_reason: null })}>
                                    Activate
                                  </DropdownMenuItem>
                                )}
                                <DropdownMenuSeparator />
                                {['student', 'teacher', 'admin'].filter(r => r !== user.role).map(role => (
                                  <DropdownMenuItem key={role} onClick={() => updateUser(user.user_id, { role })} className="capitalize">
                                    Set as {role}
                                  </DropdownMenuItem>
                                ))}
                              </DropdownMenuContent>
                            </DropdownMenu>
                          </TableCell>
                        </TableRow>
                      )
                    })
                  )}
                </TableBody>
              </Table>
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
    </AppShell>
  )
}
