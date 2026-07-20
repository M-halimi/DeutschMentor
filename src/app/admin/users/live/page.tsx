'use client'

import { useCallback, useEffect, useState } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Avatar, AvatarImage, AvatarFallback } from '@/components/ui/avatar'
import { Skeleton } from '@/components/ui/skeleton'
import {
  Search, Users, Activity, Monitor, Smartphone, Tablet,
  Globe, MapPin, Clock, Shield, ChevronLeft, ChevronRight,
  Brain, Wifi, WifiOff, Filter, X,
} from 'lucide-react'

interface LiveUser {
  user_id: string
  full_name: string
  email: string
  avatar_url: string | null
  role: string
  gender: string | null
  country: string | null
  city: string | null
  timezone: string | null
  current_level: string
  learning_level: string | null
  subscription_plan: string | null
  current_page: string | null
  last_action: string | null
  last_action_at: string | null
  last_vocabulary_practiced: string | null
  last_verb_practiced: string | null
  completed_lessons: number
  progress_percentage: number
  engagement_score: number
  is_online: boolean
  last_seen: string | null
  session_duration_seconds: number | null
  ip_address: string | null
  device_type: string | null
  browser_name: string | null
  operating_system: string | null
  login_sessions_count: number
}

function timeAgo(d: string | null): string {
  if (!d) return '—'
  const s = Math.floor((Date.now() - new Date(d).getTime()) / 1000)
  if (s < 10) return 'Just now'
  if (s < 60) return `${s}s`
  const m = Math.floor(s / 60)
  if (m < 60) return `${m}m`
  const h = Math.floor(m / 60)
  if (h < 24) return `${h}h`
  return `${Math.floor(h / 24)}d`
}

function fmt(d: string | null): string {
  if (!d) return '—'
  return new Date(d).toLocaleString(undefined, { month: 'short', day: 'numeric', hour: '2-digit', minute: '2-digit' })
}

function fmtDur(s: number | null): string {
  if (s === null || s === undefined) return '—'
  if (s < 60) return `${s}s`
  const m = Math.floor(s / 60)
  if (m < 60) return `${m}m ${s % 60}s`
  return `${Math.floor(m / 60)}h ${m % 60}m`
}

function EngagementBadge({ score }: { score: number }) {
  if (score >= 70) return <Badge className="bg-emerald-500/10 text-emerald-500 border-emerald-500/20">{score}</Badge>
  if (score >= 40) return <Badge className="bg-amber-500/10 text-amber-500 border-amber-500/20">{score}</Badge>
  return <Badge className="bg-red-500/10 text-red-500 border-red-500/20">{score}</Badge>
}

function getDeviceIcon(t: string | null) {
  if (t === 'mobile') return <Smartphone className="h-3.5 w-3.5" />
  if (t === 'tablet') return <Tablet className="h-3.5 w-3.5" />
  return <Monitor className="h-3.5 w-3.5" />
}

const LEVELS = ['', 'A1', 'A2', 'B1', 'B2', 'C1', 'C2']
const PLANS = ['', 'free', 'premium', 'pro']
const STATUSES = ['', 'online', 'offline', 'away']

export default function LiveUsersPage() {
  const [data, setData] = useState<LiveUser[]>([])
  const [total, setTotal] = useState(0)
  const [totalPages, setTotalPages] = useState(1)
  const [page, setPage] = useState(1)
  const [pageSize] = useState(20)
  const [search, setSearch] = useState('')
  const [status, setStatus] = useState('')
  const [level, setLevel] = useState('')
  const [plan, setPlan] = useState('')
  const [showFilters, setShowFilters] = useState(false)
  const [loading, setLoading] = useState(true)
  const [summary, setSummary] = useState({ onlineUsers: 0, activeToday: 0, totalUsers: 0 })

  const fetchData = useCallback(async () => {
    setLoading(true)
    try {
      const p = new URLSearchParams({ page: String(page), pageSize: String(pageSize) })
      if (search) p.set('search', search)
      if (status) p.set('status', status)
      if (level) p.set('level', level)
      if (plan) p.set('plan', plan)
      const res = await fetch(`/api/admin/users/live?${p}`)
      if (res.ok) {
        const j = await res.json()
        setData(j.data || [])
        setTotal(j.total || 0)
        setTotalPages(j.totalPages || 1)
        setSummary(j.summary || { onlineUsers: 0, activeToday: 0, totalUsers: 0 })
      }
    } catch {}
    setLoading(false)
  }, [page, pageSize, search, status, level, plan])

  useEffect(() => { fetchData() }, [fetchData])

  const hasFilters = status || level || plan

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-emerald-500 to-teal-600 text-white shadow-sm">
            <Wifi className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-2xl font-bold tracking-tight">Live Users</h1>
            <p className="text-sm text-muted-foreground">Real-time user presence and intelligence</p>
          </div>
        </div>

        <div className="grid gap-3 grid-cols-3">
          {[
            { label: 'Online', value: summary.onlineUsers, icon: Wifi, color: 'text-emerald-500', bg: 'bg-emerald-500/10' },
            { label: 'Active Today', value: summary.activeToday, icon: Activity, color: 'text-amber-500', bg: 'bg-amber-500/10' },
            { label: 'Total Users', value: summary.totalUsers, icon: Users, color: 'text-primary', bg: 'bg-primary/10' },
          ].map(c => (
            <Card key={c.label}>
              <CardContent className="flex items-center gap-3 p-4">
                <div className={`flex h-10 w-10 shrink-0 items-center justify-center rounded-lg ${c.bg}`}>
                  <c.icon className={`h-5 w-5 ${c.color}`} />
                </div>
                <div className="min-w-0">
                  <p className="text-2xl font-bold">{c.value}</p>
                  <p className="text-xs text-muted-foreground truncate">{c.label}</p>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>

        <Card>
          <CardHeader className="flex flex-row items-center gap-2 space-y-0 py-3 flex-wrap">
            <div className="relative flex-1 min-w-[200px] max-w-sm">
              <Search className="absolute left-2.5 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
              <Input placeholder="Search name or email..." value={search}
                onChange={e => { setSearch(e.target.value); setPage(1) }} className="pl-8 h-9 text-sm" />
            </div>
            <div className="flex gap-1">
              {STATUSES.map(s => (
                <Button key={s} variant={status === s ? 'default' : 'outline'} size="sm" className="h-9 text-xs capitalize"
                  onClick={() => { setStatus(s); setPage(1) }}>
                  {s || 'All'}
                </Button>
              ))}
            </div>
            <Button variant="ghost" size="sm" className="h-9" onClick={() => setShowFilters(!showFilters)}>
              <Filter className="h-4 w-4 mr-1" /> Filters {hasFilters && <Badge className="ml-1 h-4 px-1 text-[9px]">!</Badge>}
            </Button>
            <p className="text-sm text-muted-foreground ml-auto">{total} user{total !== 1 ? 's' : ''}</p>
          </CardHeader>

          {showFilters && (
            <div className="flex gap-3 px-4 pb-3 flex-wrap border-b">
              <div className="flex items-center gap-2">
                <span className="text-xs text-muted-foreground">Level:</span>
                {LEVELS.map(l => (
                  <Button key={l} variant={level === l ? 'default' : 'outline'} size="sm" className="h-7 text-xs"
                    onClick={() => { setLevel(l); setPage(1) }}>{l || 'All'}</Button>
                ))}
              </div>
              <div className="flex items-center gap-2">
                <span className="text-xs text-muted-foreground">Plan:</span>
                {PLANS.map(p => (
                  <Button key={p} variant={plan === p ? 'default' : 'outline'} size="sm" className="h-7 text-xs capitalize"
                    onClick={() => { setPlan(p); setPage(1) }}>{p || 'All'}</Button>
                ))}
              </div>
              {hasFilters && (
                <Button variant="ghost" size="sm" className="h-7 text-xs text-red-500"
                  onClick={() => { setLevel(''); setPlan(''); setPage(1) }}>
                  <X className="h-3 w-3 mr-1" /> Clear
                </Button>
              )}
            </div>
          )}

          <CardContent className="p-0">
            {loading ? (
              <div className="space-y-2 p-4">{Array.from({ length: 8 }).map((_, i) => <Skeleton key={i} className="h-16 w-full" />)}</div>
            ) : data.length === 0 ? (
              <div className="flex flex-col items-center justify-center py-16 text-muted-foreground">
                <Users className="h-10 w-10 mb-3" />
                <p className="text-sm font-medium">No users found</p>
                <p className="text-xs">Try adjusting your search or filters</p>
              </div>
            ) : (
              <>
                <div className="overflow-x-auto">
                  <table className="w-full text-sm">
                    <thead>
                      <tr className="border-b text-left">
                        <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">User</th>
                        <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">Gender</th>
                        <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">Role / Sub / Level</th>
                        <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">Location / IP</th>
                        <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">Device</th>
                        <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">Activity</th>
                        <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">Learning</th>
                        <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">Engagement</th>
                        <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">Status</th>
                      </tr>
                    </thead>
                    <tbody>
                      {data.map(row => (
                        <tr key={row.user_id} className="border-b last:border-0 hover:bg-muted/30 transition-colors">
                          <td className="px-3 py-2.5">
                            <div className="flex items-center gap-2.5">
                              <Avatar size="sm" className="shrink-0">
                                {row.avatar_url ? <AvatarImage src={row.avatar_url} alt={row.full_name} /> : null}
                                <AvatarFallback className="text-[10px]">{row.full_name?.charAt(0)?.toUpperCase() || '?'}</AvatarFallback>
                                {row.is_online && (
                                  <span className="absolute -bottom-0.5 -right-0.5 flex h-2 w-2">
                                    <span className="absolute inline-flex h-full w-full animate-ping rounded-full bg-emerald-400 opacity-75" />
                                    <span className="relative inline-flex h-2 w-2 rounded-full bg-emerald-500 ring-1 ring-background" />
                                  </span>
                                )}
                              </Avatar>
                              <div className="min-w-0">
                                <a href={`/admin/users/${row.user_id}`} className="font-medium truncate max-w-[140px] hover:text-primary block">{row.full_name}</a>
                                <p className="text-xs text-muted-foreground truncate max-w-[160px]">{row.email || '—'}</p>
                              </div>
                            </div>
                          </td>
                          <td className="px-3 py-2.5 text-xs text-muted-foreground">{row.gender || '—'}</td>
                          <td className="px-3 py-2.5">
                            <div className="flex flex-col gap-1">
                              <Badge variant="outline" className="text-[10px] font-normal w-fit capitalize">{row.role}</Badge>
                              <div className="flex gap-1">
                                {row.subscription_plan && <Badge className="text-[10px] w-fit capitalize" variant="secondary">{row.subscription_plan}</Badge>}
                                <Badge variant="outline" className="text-[10px] w-fit">{row.learning_level || row.current_level || 'A1'}</Badge>
                              </div>
                            </div>
                          </td>
                          <td className="px-3 py-2.5">
                            <div className="flex flex-col gap-0.5 text-xs text-muted-foreground">
                              {row.country && <span className="inline-flex items-center gap-1"><Globe className="h-3 w-3" />{row.country}</span>}
                              {row.city && <span className="inline-flex items-center gap-1"><MapPin className="h-3 w-3" />{row.city}</span>}
                              {row.timezone && <span className="inline-flex items-center gap-1"><Clock className="h-3 w-3" />{row.timezone}</span>}
                              {row.ip_address && <span className="text-[10px] text-muted-foreground/60">{row.ip_address}</span>}
                              {!row.country && !row.city && <span className="text-muted-foreground/50">—</span>}
                            </div>
                          </td>
                          <td className="px-3 py-2.5">
                            <div className="flex flex-col gap-0.5 text-xs">
                              <span className="inline-flex items-center gap-1">
                                {getDeviceIcon(row.device_type)} {row.device_type || '—'}
                              </span>
                              <span className="text-muted-foreground">{row.browser_name || '—'} / {row.operating_system || '—'}</span>
                              {row.login_sessions_count > 0 && (
                                <span className="text-muted-foreground/70">{row.login_sessions_count} session{row.login_sessions_count !== 1 ? 's' : ''}</span>
                              )}
                            </div>
                          </td>
                          <td className="px-3 py-2.5">
                            <div className="flex flex-col gap-0.5 text-xs">
                              <span className="capitalize">{row.last_action || '—'}</span>
                              <span className="text-muted-foreground">{timeAgo(row.last_action_at)}</span>
                              {row.current_page && <span className="text-muted-foreground truncate max-w-[120px]" title={row.current_page}>{row.current_page}</span>}
                              <span className="text-[10px] text-muted-foreground/60">{fmt(row.last_action_at)}</span>
                            </div>
                          </td>
                          <td className="px-3 py-2.5">
                            <div className="flex flex-col gap-0.5 text-xs">
                              <span>{row.completed_lessons} lessons</span>
                              {row.last_vocabulary_practiced && <span className="text-muted-foreground truncate max-w-[100px]">Vocab: {row.last_vocabulary_practiced}</span>}
                              {row.last_verb_practiced && <span className="text-muted-foreground truncate max-w-[100px]">Verb: {row.last_verb_practiced}</span>}
                            </div>
                          </td>
                          <td className="px-3 py-2.5">
                            <div className="flex flex-col gap-1 text-xs items-start">
                              <EngagementBadge score={row.engagement_score} />
                              <span className="text-muted-foreground">{row.progress_percentage}% progress</span>
                            </div>
                          </td>
                          <td className="px-3 py-2.5 whitespace-nowrap">
                            <div className="flex flex-col gap-0.5 text-xs">
                              {row.is_online ? (
                                <span className="inline-flex items-center gap-1 rounded-full bg-emerald-500/10 px-2 py-0.5 font-medium text-emerald-500 w-fit">
                                  <span className="h-1.5 w-1.5 rounded-full bg-emerald-500" /> Online
                                </span>
                              ) : (
                                <span className="inline-flex items-center gap-1 rounded-full bg-red-500/10 px-2 py-0.5 font-medium text-red-500 w-fit">
                                  <span className="h-1.5 w-1.5 rounded-full bg-red-500" /> Offline
                                </span>
                              )}
                              <span className="text-muted-foreground">{timeAgo(row.last_seen)}</span>
                              <span className="text-muted-foreground/70">{fmtDur(row.session_duration_seconds)}</span>
                            </div>
                          </td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>

                {totalPages > 1 && (
                  <div className="flex items-center justify-between border-t px-4 py-3">
                    <p className="text-xs text-muted-foreground">Page {page} of {totalPages}</p>
                    <div className="flex items-center gap-1">
                      <Button variant="outline" size="sm" className="h-8 w-8 p-0" disabled={page <= 1} onClick={() => setPage(p => Math.max(1, p - 1))}>
                        <ChevronLeft className="h-4 w-4" />
                      </Button>
                      {Array.from({ length: Math.min(totalPages, 5) }).map((_, i) => {
                        const p = Math.max(1, Math.min(page - 2, totalPages - 4)) + i
                        if (p > totalPages) return null
                        return <Button key={p} variant={page === p ? 'default' : 'outline'} size="sm" className="h-8 w-8 p-0 text-xs" onClick={() => setPage(p)}>{p}</Button>
                      })}
                      <Button variant="outline" size="sm" className="h-8 w-8 p-0" disabled={page >= totalPages} onClick={() => setPage(p => Math.min(totalPages, p + 1))}>
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
