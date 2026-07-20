'use client'

import { useCallback, useEffect, useRef, useState } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Avatar, AvatarImage, AvatarFallback } from '@/components/ui/avatar'
import { Skeleton } from '@/components/ui/skeleton'
import {
  Search, Wifi, WifiOff, Users, Activity, ChevronLeft, ChevronRight,
  ArrowUpDown, ArrowUp, ArrowDown, Monitor, Smartphone, Tablet,
} from 'lucide-react'

interface LiveUser {
  user_id: string
  session_id: string | null
  full_name: string
  email: string
  role: string
  avatar_url: string
  is_online: boolean
  last_seen: string | null
  current_page: string | null
  device_type: string | null
  browser_name: string | null
  operating_system: string | null
  login_time: string | null
  connected_at: string | null
  duration_seconds: number | null
}

interface Summary {
  onlineUsers: number
  offlineUsers: number
  totalUsers: number
  activeToday: number
}

function timeAgo(dateStr: string | null): string {
  if (!dateStr) return '—'
  const seconds = Math.floor((Date.now() - new Date(dateStr).getTime()) / 1000)
  if (seconds < 10) return 'Just now'
  if (seconds < 60) return `${seconds}s ago`
  const minutes = Math.floor(seconds / 60)
  if (minutes < 60) return `${minutes}m ago`
  const hours = Math.floor(minutes / 60)
  if (hours < 24) return `${hours}h ago`
  const days = Math.floor(hours / 24)
  return `${days}d ago`
}

function formatDateTime(dateStr: string | null): string {
  if (!dateStr) return '—'
  return new Date(dateStr).toLocaleString(undefined, {
    month: 'short', day: 'numeric', hour: '2-digit', minute: '2-digit',
  })
}

function formatDuration(seconds: number | null): string {
  if (seconds === null || seconds === undefined) return '—'
  if (seconds < 60) return `${seconds}s`
  const minutes = Math.floor(seconds / 60)
  if (minutes < 60) return `${minutes}m ${seconds % 60}s`
  const hours = Math.floor(minutes / 60)
  const remainMin = minutes % 60
  return `${hours}h ${remainMin}m ${seconds % 60}s`
}

function getDeviceIcon(type: string | null) {
  if (type === 'mobile') return <Smartphone className="h-3.5 w-3.5" />
  if (type === 'tablet') return <Tablet className="h-3.5 w-3.5" />
  return <Monitor className="h-3.5 w-3.5" />
}

function getOsLabel(os: string | null): string {
  if (!os) return '—'
  if (os === 'macOS') return 'macOS'
  if (os === 'iOS') return 'iOS'
  return os
}

function getDeviceLabel(type: string | null): string {
  if (!type) return '—'
  return type.charAt(0).toUpperCase() + type.slice(1)
}

const COLUMNS = [
  { key: 'full_name', label: 'User', sortable: true },
  { key: 'email', label: 'Email', sortable: true },
  { key: 'is_online', label: 'Status', sortable: true },
  { key: 'device_type', label: 'Device', sortable: true },
  { key: 'browser_name', label: 'Browser', sortable: true },
  { key: 'operating_system', label: 'OS', sortable: true },
  { key: 'current_page', label: 'Page', sortable: true },
  { key: 'connected_at', label: 'Connected At', sortable: true },
  { key: 'last_seen', label: 'Last Seen', sortable: true },
  { key: 'duration_seconds', label: 'Duration', sortable: true },
  { key: 'role', label: 'Role', sortable: true },
] as const

export default function LiveUsersPage() {
  const [data, setData] = useState<LiveUser[]>([])
  const [summary, setSummary] = useState<Summary>({ onlineUsers: 0, offlineUsers: 0, totalUsers: 0, activeToday: 0 })
  const [total, setTotal] = useState(0)
  const [totalPages, setTotalPages] = useState(1)
  const [page, setPage] = useState(1)
  const [pageSize] = useState(15)
  const [search, setSearch] = useState('')
  const [statusFilter, setStatusFilter] = useState('')
  const [sortBy, setSortBy] = useState('last_seen')
  const [sortDir, setSortDir] = useState('desc')
  const [loading, setLoading] = useState(true)
  const [refreshing, setRefreshing] = useState(false)
  const intervalRef = useRef<number | null>(null)
  const searchRef = useRef('')

  useEffect(() => { searchRef.current = search }, [search])

  const fetchData = useCallback(async (isAutoRefresh = false) => {
    if (isAutoRefresh) setRefreshing(true)
    else setLoading(true)
    try {
      const params = new URLSearchParams({
        page: String(page),
        pageSize: String(pageSize),
        sortBy,
        sortDir,
        ...(searchRef.current && { search: searchRef.current }),
        ...(statusFilter && { status: statusFilter }),
      })
      const res = await fetch(`/api/admin/live-users?${params}`)
      if (res.ok) {
        const json = await res.json()
        setData(json.data || [])
        setTotal(json.total || 0)
        setTotalPages(json.totalPages || 1)
        setSummary(json.summary || { onlineUsers: 0, offlineUsers: 0, totalUsers: 0, activeToday: 0 })
      }
    } catch { /* swallow */ }
    setLoading(false)
    setRefreshing(false)
  }, [page, pageSize, sortBy, sortDir, statusFilter])

  useEffect(() => {
    fetchData()
    intervalRef.current = window.setInterval(() => fetchData(true), 5000)
    return () => { if (intervalRef.current) clearInterval(intervalRef.current) }
  }, [fetchData])

  function handleSort(key: string) {
    if (sortBy === key) {
      setSortDir(d => d === 'asc' ? 'desc' : 'asc')
    } else {
      setSortBy(key)
      setSortDir('desc')
    }
    setPage(1)
  }

  function handleSearch(val: string) {
    setSearch(val)
    setPage(1)
  }

  function SortIcon({ column }: { column: string }) {
    if (sortBy !== column) return <ArrowUpDown className="ml-1 h-3 w-3 opacity-30" />
    return sortDir === 'asc'
      ? <ArrowUp className="ml-1 h-3 w-3 text-primary" />
      : <ArrowDown className="ml-1 h-3 w-3 text-primary" />
  }

  const statCards = [
    { label: 'Online', value: summary.onlineUsers, icon: Wifi, color: 'text-emerald-500', bg: 'bg-emerald-500/10' },
    { label: 'Offline', value: summary.offlineUsers, icon: WifiOff, color: 'text-red-500', bg: 'bg-red-500/10' },
    { label: 'Total Users', value: summary.totalUsers, icon: Users, color: 'text-primary', bg: 'bg-primary/10' },
    { label: 'Active Today', value: summary.activeToday, icon: Activity, color: 'text-amber-500', bg: 'bg-amber-500/10' },
  ]

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-emerald-500 to-teal-600 text-white shadow-sm">
            <Wifi className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-2xl font-bold tracking-tight">Live Users</h1>
            <p className="text-sm text-muted-foreground">Real-time user presence and activity</p>
          </div>
          <div className="ml-auto">
            <Badge variant={refreshing ? 'default' : 'secondary'} className="gap-1.5">
              <span className={`inline-block h-1.5 w-1.5 rounded-full ${refreshing ? 'bg-emerald-500 animate-pulse' : 'bg-muted-foreground/40'}`} />
              {refreshing ? 'Live' : '5s'}
            </Badge>
          </div>
        </div>

        <div className="grid gap-3 grid-cols-2 lg:grid-cols-4">
          {statCards.map((card) => (
            <Card key={card.label}>
              <CardContent className="flex items-center gap-3 p-4">
                <div className={`flex h-10 w-10 shrink-0 items-center justify-center rounded-lg ${card.bg}`}>
                  <card.icon className={`h-5 w-5 ${card.color}`} />
                </div>
                <div className="min-w-0">
                  <p className="text-2xl font-bold">{card.value}</p>
                  <p className="text-xs text-muted-foreground truncate">{card.label}</p>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>

        <Card>
          <CardHeader className="flex flex-row items-center gap-4 space-y-0 py-3">
            <div className="relative flex-1 max-w-sm">
              <Search className="absolute left-2.5 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
              <Input
                placeholder="Search name or email..."
                value={search}
                onChange={e => handleSearch(e.target.value)}
                className="pl-8 h-9 text-sm"
              />
            </div>
            <div className="flex gap-1">
              {['', 'online', 'offline'].map((f) => (
                <Button
                  key={f}
                  variant={statusFilter === f ? 'default' : 'outline'}
                  size="sm"
                  className="h-9 text-xs"
                  onClick={() => { setStatusFilter(f); setPage(1) }}
                >
                  {f === '' ? 'All' : f === 'online' ? 'Online' : 'Offline'}
                </Button>
              ))}
            </div>
            <p className="text-sm text-muted-foreground hidden sm:block ml-auto">
              {total} user{total !== 1 ? 's' : ''}
            </p>
          </CardHeader>
          <CardContent className="p-0">
            {loading && data.length === 0 ? (
              <div className="space-y-2 p-4">
                {Array.from({ length: 5 }).map((_, i) => (
                  <Skeleton key={i} className="h-12 w-full" />
                ))}
              </div>
            ) : data.length === 0 ? (
              <div className="flex flex-col items-center justify-center py-16 text-muted-foreground">
                <WifiOff className="h-10 w-10 mb-3" />
                <p className="text-sm font-medium">No users found</p>
                <p className="text-xs">Try adjusting your search or filter</p>
              </div>
            ) : (
              <>
                <div className="overflow-x-auto">
                  <table className="w-full text-sm">
                    <thead>
                      <tr className="border-b text-left">
                        {COLUMNS.map((col) => (
                          <th
                            key={col.key}
                            className={`px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider whitespace-nowrap ${col.sortable ? 'cursor-pointer select-none hover:text-foreground' : ''}`}
                            onClick={() => col.sortable && handleSort(col.key)}
                          >
                            <span className="inline-flex items-center">
                              {col.label}
                              {col.sortable && <SortIcon column={col.key} />}
                            </span>
                          </th>
                        ))}
                      </tr>
                    </thead>
                    <tbody>
                      {data.map((row, idx) => (
                        <tr key={`${row.user_id}-${row.session_id || idx}`} className="border-b last:border-0 hover:bg-muted/30 transition-colors">
                          <td className="px-3 py-2.5">
                            <div className="flex items-center gap-2.5">
                              <Avatar size="sm" className="shrink-0">
                                {row.avatar_url ? (
                                  <AvatarImage src={row.avatar_url} alt={row.full_name} />
                                ) : null}
                                <AvatarFallback className="text-[10px]">
                                  {row.full_name?.charAt(0)?.toUpperCase() || '?'}
                                </AvatarFallback>
                                {row.is_online && (
                                  <span className="absolute -bottom-0.5 -right-0.5 flex h-2 w-2">
                                    <span className="absolute inline-flex h-full w-full animate-ping rounded-full bg-emerald-400 opacity-75 motion-reduce:animate-none" />
                                    <span className="relative inline-flex h-2 w-2 rounded-full bg-emerald-500 ring-1 ring-background" />
                                  </span>
                                )}
                              </Avatar>
                              <span className="font-medium truncate max-w-[140px]">{row.full_name}</span>
                            </div>
                          </td>
                          <td className="px-3 py-2.5 text-muted-foreground text-xs max-w-[160px] truncate">{row.email || '—'}</td>
                          <td className="px-3 py-2.5">
                            {row.is_online ? (
                              <span className="inline-flex items-center gap-1 rounded-full bg-emerald-500/10 px-2 py-0.5 text-xs font-medium text-emerald-500">
                                <span className="h-1.5 w-1.5 rounded-full bg-emerald-500" />
                                Online
                              </span>
                            ) : (
                              <span className="inline-flex items-center gap-1 rounded-full bg-red-500/10 px-2 py-0.5 text-xs font-medium text-red-500">
                                <span className="h-1.5 w-1.5 rounded-full bg-red-500" />
                                Offline
                              </span>
                            )}
                          </td>
                          <td className="px-3 py-2.5 text-xs text-muted-foreground whitespace-nowrap">
                            <span className="inline-flex items-center gap-1">
                              {getDeviceIcon(row.device_type)}
                              {getDeviceLabel(row.device_type)}
                            </span>
                          </td>
                          <td className="px-3 py-2.5 text-xs text-muted-foreground whitespace-nowrap">{row.browser_name || '—'}</td>
                          <td className="px-3 py-2.5 text-xs text-muted-foreground whitespace-nowrap">{getOsLabel(row.operating_system)}</td>
                          <td className="px-3 py-2.5 text-xs text-muted-foreground max-w-[140px] truncate">{row.current_page || '—'}</td>
                          <td className="px-3 py-2.5 text-xs text-muted-foreground whitespace-nowrap">{formatDateTime(row.connected_at)}</td>
                          <td className="px-3 py-2.5 text-xs text-muted-foreground whitespace-nowrap">{timeAgo(row.last_seen)}</td>
                          <td className="px-3 py-2.5 text-xs text-muted-foreground whitespace-nowrap">{formatDuration(row.duration_seconds)}</td>
                          <td className="px-3 py-2.5 text-xs whitespace-nowrap">
                            <Badge variant="outline" className="text-[10px] font-normal capitalize">
                              {row.role}
                            </Badge>
                          </td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>

                {totalPages > 1 && (
                  <div className="flex items-center justify-between border-t px-4 py-3">
                    <p className="text-xs text-muted-foreground">
                      Page {page} of {totalPages}
                    </p>
                    <div className="flex items-center gap-1">
                      <Button
                        variant="outline"
                        size="sm"
                        className="h-8 w-8 p-0"
                        disabled={page <= 1}
                        onClick={() => setPage(p => Math.max(1, p - 1))}
                      >
                        <ChevronLeft className="h-4 w-4" />
                      </Button>
                      {Array.from({ length: Math.min(totalPages, 5) }).map((_, i) => {
                        const p = Math.max(1, Math.min(page - 2, totalPages - 4)) + i
                        if (p > totalPages) return null
                        return (
                          <Button
                            key={p}
                            variant={page === p ? 'default' : 'outline'}
                            size="sm"
                            className="h-8 w-8 p-0 text-xs"
                            onClick={() => setPage(p)}
                          >
                            {p}
                          </Button>
                        )
                      })}
                      <Button
                        variant="outline"
                        size="sm"
                        className="h-8 w-8 p-0"
                        disabled={page >= totalPages}
                        onClick={() => setPage(p => Math.min(totalPages, p + 1))}
                      >
                        <ChevronRight className="h-4 w-4" />
                      </Button>
                    </div>
                  </div>
                )}
              </>
            )}
          </CardContent>
        </Card>
      </div>
    </AppShell>
  )
}
