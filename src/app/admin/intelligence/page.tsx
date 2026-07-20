'use client'

import { useCallback, useEffect, useRef, useState } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Avatar, AvatarImage, AvatarFallback } from '@/components/ui/avatar'
import { Skeleton } from '@/components/ui/skeleton'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import {
  Search, Users, Activity, TrendingUp, BookOpen, GraduationCap,
  Monitor, Smartphone, Tablet, Globe, MapPin, Clock, Shield,
  ArrowUpDown, ArrowUp, ArrowDown, ChevronLeft, ChevronRight,
  Sparkles, Brain, Target, BarChart3, Star, AlertTriangle,
  UserCheck, Wifi, WifiOff, ExternalLink, CreditCard,
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

interface Stats {
  totalUsers: number
  usersWithActivity: number
  totalActivityEvents: number
  totalSearches: number
  avgEngagementScore: number
  avgProgressPercentage: number
  totalCompletedLessons: number
  activeToday: number
  activityByType: Record<string, number>
  activityTrend: { date: string; count: number }[]
  levelDistribution: Record<string, number>
  planDistribution: Record<string, number>
}

interface TimelineItem {
  id: string
  user_id: string
  user_name: string
  user_email: string
  avatar_url: string | null
  activity_type: string
  description: string | null
  page_url: string | null
  duration_seconds: number | null
  created_at: string
}

interface SearchTopic {
  query_text: string
  search_count: number
  last_searched: string
}

interface DifficultLesson {
  lesson_id: string
  lesson_title: string
  module_name: string
  level: string
  avg_score: number
  total_attempts: number
  fail_rate: number
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
  return `${hours}h ${remainMin}m`
}

function getDeviceIcon(type: string | null) {
  if (type === 'mobile') return <Smartphone className="h-3.5 w-3.5" />
  if (type === 'tablet') return <Tablet className="h-3.5 w-3.5" />
  return <Monitor className="h-3.5 w-3.5" />
}

const levelColors: Record<string, string> = {
  A1: 'bg-emerald-500', A2: 'bg-blue-500', B1: 'bg-purple-500',
  B2: 'bg-amber-500', C1: 'bg-rose-500', C2: 'bg-red-500',
}

const activityIcons: Record<string, any> = {
  lesson_completed: BookOpen,
  lesson_started: GraduationCap,
  vocabulary_practice: Sparkles,
  verb_practice: Brain,
  search: Search,
  grammar_practice: BookOpen,
  login: UserCheck,
  exercise_completed: Target,
}

function getActivityColor(type: string): string {
  if (type.includes('lesson')) return 'text-blue-500'
  if (type.includes('vocab')) return 'text-emerald-500'
  if (type.includes('verb')) return 'text-purple-500'
  if (type.includes('search')) return 'text-amber-500'
  if (type.includes('grammar')) return 'text-rose-500'
  if (type.includes('login')) return 'text-cyan-500'
  return 'text-muted-foreground'
}

function getActivityBg(type: string): string {
  if (type.includes('lesson')) return 'bg-blue-500/10'
  if (type.includes('vocab')) return 'bg-emerald-500/10'
  if (type.includes('verb')) return 'bg-purple-500/10'
  if (type.includes('search')) return 'bg-amber-500/10'
  if (type.includes('grammar')) return 'bg-rose-500/10'
  if (type.includes('login')) return 'bg-cyan-500/10'
  return 'bg-muted'
}

function EngagementBadge({ score }: { score: number }) {
  if (score >= 70) return <Badge className="bg-emerald-500/10 text-emerald-500 border-emerald-500/20">{score}</Badge>
  if (score >= 40) return <Badge className="bg-amber-500/10 text-amber-500 border-amber-500/20">{score}</Badge>
  return <Badge className="bg-red-500/10 text-red-500 border-red-500/20">{score}</Badge>
}

export default function IntelligenceDashboard() {
  const [activeTab, setActiveTab] = useState('live-users')

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-indigo-500 to-purple-600 text-white shadow-sm">
            <Brain className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-2xl font-bold tracking-tight">User Intelligence</h1>
            <p className="text-sm text-muted-foreground">SaaS user behavior & learning analytics dashboard</p>
          </div>
        </div>

        <Tabs value={activeTab} onValueChange={setActiveTab} className="space-y-4">
          <TabsList>
            <TabsTrigger value="live-users" className="gap-2">
              <Users className="h-4 w-4" /> Live Users
            </TabsTrigger>
            <TabsTrigger value="analytics" className="gap-2">
              <BarChart3 className="h-4 w-4" /> Analytics
            </TabsTrigger>
            <TabsTrigger value="timeline" className="gap-2">
              <Activity className="h-4 w-4" /> Timeline
            </TabsTrigger>
            <TabsTrigger value="searches" className="gap-2">
              <Search className="h-4 w-4" /> Search Topics
            </TabsTrigger>
            <TabsTrigger value="difficult" className="gap-2">
              <AlertTriangle className="h-4 w-4" /> Difficult Lessons
            </TabsTrigger>
          </TabsList>

          <TabsContent value="live-users" className="mt-0">
            <LiveUsersTab />
          </TabsContent>

          <TabsContent value="analytics" className="mt-0">
            <AnalyticsTab />
          </TabsContent>

          <TabsContent value="timeline" className="mt-0">
            <TimelineTab />
          </TabsContent>

          <TabsContent value="searches" className="mt-0">
            <SearchesTab />
          </TabsContent>

          <TabsContent value="difficult" className="mt-0">
            <DifficultLessonsTab />
          </TabsContent>
        </Tabs>
      </div>
    </AppShell>
  )
}

function LiveUsersTab() {
  const [data, setData] = useState<LiveUser[]>([])
  const [total, setTotal] = useState(0)
  const [totalPages, setTotalPages] = useState(1)
  const [page, setPage] = useState(1)
  const [pageSize] = useState(15)
  const [search, setSearch] = useState('')
  const [statusFilter, setStatusFilter] = useState('')
  const [loading, setLoading] = useState(true)
  const [summary, setSummary] = useState({ onlineUsers: 0, activeToday: 0, totalUsers: 0 })

  const fetchData = useCallback(async () => {
    setLoading(true)
    try {
      const params = new URLSearchParams({
        page: String(page), pageSize: String(pageSize),
        ...(search && { search }),
        ...(statusFilter && { status: statusFilter }),
      })
      const res = await fetch(`/api/admin/intelligence/live-users?${params}`)
      if (res.ok) {
        const json = await res.json()
        setData(json.data || [])
        setTotal(json.total || 0)
        setTotalPages(json.totalPages || 1)
        setSummary(json.summary || { onlineUsers: 0, activeToday: 0, totalUsers: 0 })
      }
    } catch {}
    setLoading(false)
  }, [page, pageSize, search, statusFilter])

  useEffect(() => { fetchData() }, [fetchData])

  const statCards = [
    { label: 'Online', value: summary.onlineUsers, icon: Wifi, color: 'text-emerald-500', bg: 'bg-emerald-500/10' },
    { label: 'Active Today', value: summary.activeToday, icon: Activity, color: 'text-amber-500', bg: 'bg-amber-500/10' },
    { label: 'Total Users', value: summary.totalUsers, icon: Users, color: 'text-primary', bg: 'bg-primary/10' },
  ]

  return (
    <div className="space-y-4">
      <div className="grid gap-3 grid-cols-3">
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
              onChange={e => { setSearch(e.target.value); setPage(1) }}
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
          <p className="text-sm text-muted-foreground ml-auto">{total} user{total !== 1 ? 's' : ''}</p>
        </CardHeader>
        <CardContent className="p-0">
          {loading ? (
            <div className="space-y-2 p-4">
              {Array.from({ length: 5 }).map((_, i) => (
                <Skeleton key={i} className="h-16 w-full" />
              ))}
            </div>
          ) : data.length === 0 ? (
            <div className="flex flex-col items-center justify-center py-16 text-muted-foreground">
              <Users className="h-10 w-10 mb-3" />
              <p className="text-sm font-medium">No users found</p>
              <p className="text-xs">Try adjusting your search or filter</p>
            </div>
          ) : (
            <>
              <div className="overflow-x-auto">
                <table className="w-full text-sm">
                  <thead>
                    <tr className="border-b text-left">
                      <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider whitespace-nowrap">User</th>
                      <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider whitespace-nowrap">Level / Plan</th>
                      <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider whitespace-nowrap">Location</th>
                      <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider whitespace-nowrap">Device</th>
                      <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider whitespace-nowrap">Last Action</th>
                      <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider whitespace-nowrap">Learning</th>
                      <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider whitespace-nowrap">Engagement</th>
                      <th className="px-3 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider whitespace-nowrap">Status</th>
                    </tr>
                  </thead>
                  <tbody>
                    {data.map((row) => (
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
                              <p className="font-medium truncate max-w-[140px]">{row.full_name}</p>
                              <p className="text-xs text-muted-foreground truncate max-w-[160px]">{row.email || '—'}</p>
                            </div>
                          </div>
                        </td>
                        <td className="px-3 py-2.5">
                          <div className="flex flex-col gap-1">
                            <Badge variant="outline" className="text-[10px] font-normal w-fit">{row.current_level}</Badge>
                            {row.subscription_plan && (
                              <Badge variant="secondary" className="text-[10px] font-normal w-fit">{row.subscription_plan}</Badge>
                            )}
                          </div>
                        </td>
                        <td className="px-3 py-2.5">
                          <div className="flex flex-col gap-0.5 text-xs text-muted-foreground">
                            {row.country && (
                              <span className="inline-flex items-center gap-1">
                                <Globe className="h-3 w-3" /> {row.country}
                              </span>
                            )}
                            {row.city && (
                              <span className="inline-flex items-center gap-1">
                                <MapPin className="h-3 w-3" /> {row.city}
                              </span>
                            )}
                            {row.timezone && (
                              <span className="inline-flex items-center gap-1">
                                <Clock className="h-3 w-3" /> {row.timezone}
                              </span>
                            )}
                            {!row.country && !row.city && <span className="text-muted-foreground/50">—</span>}
                          </div>
                        </td>
                        <td className="px-3 py-2.5">
                          <div className="flex flex-col gap-0.5 text-xs">
                            <span className="inline-flex items-center gap-1">
                              {getDeviceIcon(row.device_type)}
                              {row.device_type || '—'}
                            </span>
                            <span className="text-muted-foreground">{row.browser_name || '—'} / {row.operating_system || '—'}</span>
                            {row.login_sessions_count > 0 && (
                              <span className="text-muted-foreground">{row.login_sessions_count} active session{row.login_sessions_count !== 1 ? 's' : ''}</span>
                            )}
                          </div>
                        </td>
                        <td className="px-3 py-2.5">
                          <div className="flex flex-col gap-0.5 text-xs">
                            <span className="capitalize">{row.last_action || '—'}</span>
                            <span className="text-muted-foreground">{timeAgo(row.last_action_at)}</span>
                            {row.current_page && (
                              <span className="text-muted-foreground truncate max-w-[120px]" title={row.current_page}>
                                {row.current_page}
                              </span>
                            )}
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
                          <div className="flex flex-col gap-1 text-xs">
                            <EngagementBadge score={row.engagement_score} />
                            <span className="text-muted-foreground">{row.progress_percentage}% progress</span>
                          </div>
                        </td>
                        <td className="px-3 py-2.5">
                          <div className="flex flex-col gap-0.5 text-xs">
                            {row.is_online ? (
                              <span className="inline-flex items-center gap-1 rounded-full bg-emerald-500/10 px-2 py-0.5 text-xs font-medium text-emerald-500 w-fit">
                                <span className="h-1.5 w-1.5 rounded-full bg-emerald-500" />
                                Online
                              </span>
                            ) : (
                              <span className="inline-flex items-center gap-1 rounded-full bg-red-500/10 px-2 py-0.5 text-xs font-medium text-red-500 w-fit">
                                <span className="h-1.5 w-1.5 rounded-full bg-red-500" />
                                Offline
                              </span>
                            )}
                            <span className="text-muted-foreground">{timeAgo(row.last_seen)}</span>
                            <span className="text-muted-foreground">{formatDuration(row.session_duration_seconds)}</span>
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
                      return (
                        <Button key={p} variant={page === p ? 'default' : 'outline'} size="sm" className="h-8 w-8 p-0 text-xs" onClick={() => setPage(p)}>
                          {p}
                        </Button>
                      )
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
  )
}

function AnalyticsTab() {
  const [stats, setStats] = useState<Stats | null>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    fetch('/api/admin/intelligence/stats')
      .then(r => r.json())
      .then(d => { setStats(d); setLoading(false) })
      .catch(() => setLoading(false))
  }, [])

  if (loading || !stats) {
    return (
      <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
        {Array.from({ length: 8 }).map((_, i) => (
          <Skeleton key={i} className="h-28" />
        ))}
      </div>
    )
  }

  const statCards = [
    { label: 'Total Users', value: stats.totalUsers, icon: Users, color: 'text-blue-500', bg: 'bg-blue-500/10' },
    { label: 'Active Today', value: stats.activeToday, icon: Activity, color: 'text-emerald-500', bg: 'bg-emerald-500/10' },
    { label: 'Activity Events', value: stats.totalActivityEvents, icon: TrendingUp, color: 'text-purple-500', bg: 'bg-purple-500/10' },
    { label: 'Total Searches', value: stats.totalSearches, icon: Search, color: 'text-amber-500', bg: 'bg-amber-500/10' },
    { label: 'Avg Engagement', value: stats.avgEngagementScore, icon: Star, color: 'text-rose-500', bg: 'bg-rose-500/10', suffix: '/100' },
    { label: 'Avg Progress', value: `${stats.avgProgressPercentage}%`, icon: TrendingUp, color: 'text-cyan-500', bg: 'bg-cyan-500/10' },
    { label: 'Completed Lessons', value: stats.totalCompletedLessons, icon: GraduationCap, color: 'text-indigo-500', bg: 'bg-indigo-500/10' },
    { label: 'Active Users', value: stats.usersWithActivity, icon: UserCheck, color: 'text-teal-500', bg: 'bg-teal-500/10' },
  ]

  return (
    <div className="space-y-6">
      <div className="grid gap-3 grid-cols-2 lg:grid-cols-4">
        {statCards.map((card) => (
          <Card key={card.label}>
            <CardContent className="flex items-center gap-3 p-4">
              <div className={`flex h-10 w-10 shrink-0 items-center justify-center rounded-lg ${card.bg}`}>
                <card.icon className={`h-5 w-5 ${card.color}`} />
              </div>
              <div className="min-w-0">
                <p className="text-2xl font-bold">{card.value}{'suffix' in card ? (card as any).suffix : ''}</p>
                <p className="text-xs text-muted-foreground truncate">{card.label}</p>
              </div>
            </CardContent>
          </Card>
        ))}
      </div>

      <div className="grid gap-6 md:grid-cols-2">
        <Card>
          <CardHeader>
            <CardTitle className="flex items-center gap-2 text-base">
              <Activity className="h-4 w-4 text-primary" />
              Activity by Type
            </CardTitle>
          </CardHeader>
          <CardContent>
            <div className="space-y-3">
              {Object.entries(stats.activityByType)
                .sort(([, a], [, b]) => b - a)
                .slice(0, 10)
                .map(([type, count]) => {
                  const total = stats.totalActivityEvents || 1
                  const pct = Math.round((count / total) * 100)
                  return (
                    <div key={type} className="flex items-center gap-3">
                      <span className="w-32 text-xs capitalize truncate">{type.replace(/_/g, ' ')}</span>
                      <div className="flex-1 h-4 rounded-full bg-muted overflow-hidden">
                        <div className={`h-full rounded-full ${getActivityBg(type).replace('/10', '')}`} style={{ width: `${pct}%` }} />
                      </div>
                      <span className="text-xs text-muted-foreground w-12 text-right">{count}</span>
                    </div>
                  )
                })}
              {Object.keys(stats.activityByType).length === 0 && (
                <p className="text-sm text-muted-foreground text-center py-4">No activity data yet</p>
              )}
            </div>
          </CardContent>
        </Card>

        <Card>
          <CardHeader>
            <CardTitle className="flex items-center gap-2 text-base">
              <GraduationCap className="h-4 w-4 text-primary" />
              Level Distribution
            </CardTitle>
          </CardHeader>
          <CardContent>
            <div className="space-y-3">
              {Object.entries(stats.levelDistribution)
                .sort(([a], [b]) => a.localeCompare(b))
                .map(([level, count]) => {
                  const total = stats.totalUsers || 1
                  const pct = Math.round((count / total) * 100)
                  return (
                    <div key={level} className="flex items-center gap-3">
                      <span className="w-8 text-xs font-medium">{level}</span>
                      <div className="flex-1 h-4 rounded-full bg-muted overflow-hidden">
                        <div className={`h-full rounded-full ${levelColors[level] || 'bg-gray-400'}`} style={{ width: `${pct}%` }} />
                      </div>
                      <span className="text-xs text-muted-foreground w-8 text-right">{count}</span>
                    </div>
                  )
                })}
            </div>
          </CardContent>
        </Card>

        <Card>
          <CardHeader>
            <CardTitle className="flex items-center gap-2 text-base">
              <BarChart3 className="h-4 w-4 text-primary" />
              Activity Trend (30 days)
            </CardTitle>
          </CardHeader>
          <CardContent>
            {stats.activityTrend.length > 0 ? (
              <div className="flex items-end gap-1 h-[160px]">
                {stats.activityTrend.map((point) => {
                  const max = Math.max(...stats.activityTrend.map(p => p.count), 1)
                  const height = Math.max((point.count / max) * 100, 2)
                  return (
                    <div key={point.date} className="flex-1 flex flex-col items-center gap-1 group relative">
                      <div
                        className="w-full rounded-t-sm bg-primary/30 hover:bg-primary/60 transition-colors cursor-pointer"
                        style={{ height: `${height}%` }}
                        title={`${point.date}: ${point.count} events`}
                      />
                    </div>
                  )
                })}
              </div>
            ) : (
              <p className="text-sm text-muted-foreground text-center py-8">No activity data for last 30 days</p>
            )}
          </CardContent>
        </Card>

        <Card>
          <CardHeader>
            <CardTitle className="flex items-center gap-2 text-base">
              <CreditCard className="h-4 w-4 text-primary" />
              Subscription Plan Distribution
            </CardTitle>
          </CardHeader>
          <CardContent>
            <div className="space-y-3">
              {Object.entries(stats.planDistribution).length > 0 ? (
                Object.entries(stats.planDistribution)
                  .sort(([, a], [, b]) => b - a)
                  .map(([plan, count]) => {
                    const total = Object.values(stats.planDistribution).reduce((a, b) => a + b, 0)
                    const pct = Math.round((count / total) * 100)
                    return (
                      <div key={plan} className="flex items-center gap-3">
                        <Badge variant="outline" className="w-20 justify-center capitalize text-xs">{plan}</Badge>
                        <div className="flex-1 h-4 rounded-full bg-muted overflow-hidden">
                          <div className="h-full rounded-full bg-primary/40" style={{ width: `${pct}%` }} />
                        </div>
                        <span className="text-xs text-muted-foreground w-8 text-right">{count}</span>
                      </div>
                    )
                  })
              ) : (
                <p className="text-sm text-muted-foreground text-center py-4">No active subscriptions</p>
              )}
            </div>
          </CardContent>
        </Card>
      </div>
    </div>
  )
}

function TimelineTab() {
  const [items, setItems] = useState<TimelineItem[]>([])
  const [loading, setLoading] = useState(true)
  const [typeFilter, setTypeFilter] = useState('')

  const fetchTimeline = useCallback(async () => {
    setLoading(true)
    try {
      const params = new URLSearchParams({ limit: '50', ...(typeFilter && { type: typeFilter }) })
      const res = await fetch(`/api/admin/intelligence/timeline?${params}`)
      if (res.ok) {
        const json = await res.json()
        setItems(json.data || [])
      }
    } catch {}
    setLoading(false)
  }, [typeFilter])

  useEffect(() => { fetchTimeline() }, [fetchTimeline])

  const activityTypes = Array.from(new Set(items.map(i => i.activity_type)))

  return (
    <div className="space-y-4">
      <div className="flex gap-2 flex-wrap">
        <Button variant={typeFilter === '' ? 'default' : 'outline'} size="sm" onClick={() => setTypeFilter('')}>All</Button>
        {activityTypes.slice(0, 8).map(type => (
          <Button key={type} variant={typeFilter === type ? 'default' : 'outline'} size="sm" onClick={() => setTypeFilter(type)} className="capitalize">
            {type.replace(/_/g, ' ')}
          </Button>
        ))}
      </div>

      <Card>
        <CardContent className="p-0">
          {loading ? (
            <div className="space-y-2 p-4">
              {Array.from({ length: 8 }).map((_, i) => (
                <Skeleton key={i} className="h-14 w-full" />
              ))}
            </div>
          ) : items.length === 0 ? (
            <div className="flex flex-col items-center justify-center py-16 text-muted-foreground">
              <Activity className="h-10 w-10 mb-3" />
              <p className="text-sm font-medium">No activity yet</p>
              <p className="text-xs">User actions will appear here as they happen</p>
            </div>
          ) : (
            <div className="divide-y">
              {items.map((item) => {
                const Icon = activityIcons[item.activity_type] || Activity
                return (
                  <div key={item.id} className="flex items-start gap-3 px-4 py-3 hover:bg-muted/30 transition-colors">
                    <div className={`flex h-8 w-8 shrink-0 items-center justify-center rounded-full ${getActivityBg(item.activity_type)}`}>
                      <Icon className={`h-4 w-4 ${getActivityColor(item.activity_type)}`} />
                    </div>
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center gap-2">
                        <span className="text-sm font-medium">{item.user_name}</span>
                        <span className="text-xs text-muted-foreground capitalize">{item.activity_type.replace(/_/g, ' ')}</span>
                      </div>
                      {item.description && (
                        <p className="text-xs text-muted-foreground mt-0.5">{item.description}</p>
                      )}
                      <div className="flex items-center gap-3 mt-1 text-[10px] text-muted-foreground">
                        <span>{timeAgo(item.created_at)}</span>
                        {item.duration_seconds !== null && (
                          <span>{formatDuration(item.duration_seconds)}</span>
                        )}
                        {item.page_url && (
                          <span className="truncate max-w-[200px]">{item.page_url}</span>
                        )}
                      </div>
                    </div>
                  </div>
                )
              })}
            </div>
          )}
        </CardContent>
      </Card>
    </div>
  )
}

function SearchesTab() {
  const [data, setData] = useState<SearchTopic[]>([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    fetch('/api/admin/intelligence/searches?limit=30')
      .then(r => r.json())
      .then(d => { setData(d.data || []); setLoading(false) })
      .catch(() => setLoading(false))
  }, [])

  if (loading) {
    return (
      <Card>
        <CardContent className="p-4 space-y-2">
          {Array.from({ length: 10 }).map((_, i) => (
            <Skeleton key={i} className="h-8 w-full" />
          ))}
        </CardContent>
      </Card>
    )
  }

  const maxCount = Math.max(...data.map(d => d.search_count), 1)

  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2 text-base">
          <Search className="h-4 w-4 text-primary" />
          Most Searched German Topics
        </CardTitle>
        <CardDescription>What users are searching for most frequently</CardDescription>
      </CardHeader>
      <CardContent>
        {data.length === 0 ? (
          <p className="text-sm text-muted-foreground text-center py-8">No search data yet</p>
        ) : (
          <div className="space-y-3">
            {data.map((topic, i) => (
              <div key={topic.query_text} className="flex items-center gap-3">
                <span className="w-6 text-xs text-muted-foreground font-medium text-right">{i + 1}</span>
                <div className="flex-1 min-w-0">
                  <div className="flex items-center justify-between mb-1">
                    <span className="text-sm font-medium truncate">{topic.query_text}</span>
                    <span className="text-xs text-muted-foreground ml-2">{topic.search_count} search{topic.search_count !== 1 ? 'es' : ''}</span>
                  </div>
                  <div className="h-3 rounded-full bg-muted overflow-hidden">
                    <div
                      className="h-full rounded-full bg-gradient-to-r from-indigo-500 to-purple-500"
                      style={{ width: `${(topic.search_count / maxCount) * 100}%` }}
                    />
                  </div>
                  <p className="text-[10px] text-muted-foreground mt-0.5">Last searched {timeAgo(topic.last_searched)}</p>
                </div>
              </div>
            ))}
          </div>
        )}
      </CardContent>
    </Card>
  )
}

function DifficultLessonsTab() {
  const [data, setData] = useState<DifficultLesson[]>([])
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    fetch('/api/admin/intelligence/difficult-lessons?limit=20')
      .then(r => r.json())
      .then(d => { setData(d.data || []); setLoading(false) })
      .catch(() => setLoading(false))
  }, [])

  if (loading) {
    return (
      <Card>
        <CardContent className="p-4 space-y-2">
          {Array.from({ length: 8 }).map((_, i) => (
            <Skeleton key={i} className="h-12 w-full" />
          ))}
        </CardContent>
      </Card>
    )
  }

  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2 text-base">
          <AlertTriangle className="h-4 w-4 text-amber-500" />
          Most Difficult Lessons
        </CardTitle>
        <CardDescription>Lessons with highest failure rates (sorted by fail rate)</CardDescription>
      </CardHeader>
      <CardContent className="p-0">
        {data.length === 0 ? (
          <p className="text-sm text-muted-foreground text-center py-8 px-4">Not enough exercise data yet (need at least 5 attempts per lesson)</p>
        ) : (
          <div className="overflow-x-auto">
            <table className="w-full text-sm">
              <thead>
                <tr className="border-b text-left">
                  <th className="px-4 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">#</th>
                  <th className="px-4 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">Lesson</th>
                  <th className="px-4 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">Module / Level</th>
                  <th className="px-4 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">Avg Score</th>
                  <th className="px-4 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">Attempts</th>
                  <th className="px-4 py-3 text-xs font-medium text-muted-foreground uppercase tracking-wider">Fail Rate</th>
                </tr>
              </thead>
              <tbody>
                {data.map((lesson, i) => (
                  <tr key={lesson.lesson_id} className="border-b last:border-0 hover:bg-muted/30 transition-colors">
                    <td className="px-4 py-3 text-xs text-muted-foreground">{i + 1}</td>
                    <td className="px-4 py-3 font-medium">{lesson.lesson_title}</td>
                    <td className="px-4 py-3">
                      <div className="flex items-center gap-2">
                        <span className="text-xs text-muted-foreground">{lesson.module_name}</span>
                        <Badge variant="outline" className="text-[10px]">{lesson.level}</Badge>
                      </div>
                    </td>
                    <td className="px-4 py-3">
                      <span className={lesson.avg_score < 60 ? 'text-red-500 font-medium' : lesson.avg_score < 75 ? 'text-amber-500' : 'text-emerald-500'}>
                        {lesson.avg_score}%
                      </span>
                    </td>
                    <td className="px-4 py-3 text-xs text-muted-foreground">{lesson.total_attempts}</td>
                    <td className="px-4 py-3">
                      <div className="flex items-center gap-2">
                        <div className="flex-1 h-2 rounded-full bg-muted overflow-hidden max-w-[80px]">
                          <div
                            className={`h-full rounded-full ${lesson.fail_rate >= 60 ? 'bg-red-500' : lesson.fail_rate >= 35 ? 'bg-amber-500' : 'bg-emerald-500'}`}
                            style={{ width: `${lesson.fail_rate}%` }}
                          />
                        </div>
                        <span className={`text-xs font-medium ${lesson.fail_rate >= 60 ? 'text-red-500' : lesson.fail_rate >= 35 ? 'text-amber-500' : 'text-emerald-500'}`}>
                          {lesson.fail_rate}%
                        </span>
                      </div>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </CardContent>
    </Card>
  )
}
