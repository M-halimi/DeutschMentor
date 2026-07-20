'use client'

import { useCallback, useEffect, useState } from 'react'
import { useParams } from 'next/navigation'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Avatar, AvatarImage, AvatarFallback } from '@/components/ui/avatar'
import { Skeleton } from '@/components/ui/skeleton'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import {
  ArrowLeft, Globe, MapPin, Clock, Shield, Mail, Calendar,
  Monitor, Smartphone, Tablet, Activity, Search, BookOpen, Brain,
  GraduationCap, Star, Target, UserCheck, Wifi, WifiOff,
} from 'lucide-react'
import Link from 'next/link'

interface UserDetail {
  profile: any
  presence: any
  sessions: any[]
  subscriptions: any[]
  activity: any[]
  searches: any[]
  dailyProgress: any[]
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

function fmtDate(d: string | null): string {
  if (!d) return '—'
  return new Date(d).toLocaleString(undefined, { month: 'short', day: 'numeric', year: 'numeric', hour: '2-digit', minute: '2-digit' })
}

function fmtDur(s: number | null): string {
  if (s === null || s === undefined) return '—'
  if (s < 60) return `${s}s`
  const m = Math.floor(s / 60)
  if (m < 60) return `${m}m ${s % 60}s`
  return `${Math.floor(m / 60)}h ${m % 60}m`
}

function getDeviceIcon(t: string | null) {
  if (t === 'mobile') return <Smartphone className="h-4 w-4" />
  if (t === 'tablet') return <Tablet className="h-4 w-4" />
  return <Monitor className="h-4 w-4" />
}

export default function UserDetailPage() {
  const params = useParams()
  const userId = params.id as string
  const [data, setData] = useState<UserDetail | null>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    if (!userId) return
    fetch(`/api/admin/users/${userId}`)
      .then(r => r.json())
      .then(d => { setData(d); setLoading(false) })
      .catch(() => setLoading(false))
  }, [userId])

  if (loading || !data) {
    return (
      <AppShell>
        <div className="space-y-4">
          <Skeleton className="h-10 w-48" />
          <div className="grid gap-4 md:grid-cols-3">
            <Skeleton className="h-48" />
            <Skeleton className="h-48 md:col-span-2" />
          </div>
          <Skeleton className="h-64" />
        </div>
      </AppShell>
    )
  }

  const p = data.profile
  const pr = data.presence

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <Link href="/admin/users/live" className="flex h-8 w-8 items-center justify-center rounded-lg border hover:bg-muted transition-colors">
            <ArrowLeft className="h-4 w-4" />
          </Link>
          <Avatar size="lg" className="shrink-0">
            {p.avatar_url ? <AvatarImage src={p.avatar_url} alt={p.full_name} /> : null}
            <AvatarFallback>{p.full_name?.charAt(0)?.toUpperCase() || '?'}</AvatarFallback>
            {pr?.is_online && (
              <span className="absolute -bottom-0.5 -right-0.5 flex h-3 w-3">
                <span className="absolute inline-flex h-full w-full animate-ping rounded-full bg-emerald-400 opacity-75" />
                <span className="relative inline-flex h-3 w-3 rounded-full bg-emerald-500 ring-2 ring-background" />
              </span>
            )}
          </Avatar>
          <div>
            <h1 className="text-2xl font-bold tracking-tight">{p.full_name}</h1>
            <div className="flex items-center gap-2 text-sm text-muted-foreground">
              <Mail className="h-3.5 w-3.5" /> {p.email || '—'}
              <span className="text-muted-foreground/30">|</span>
              <Shield className="h-3.5 w-3.5" /> {p.role}
              <span className="text-muted-foreground/30">|</span>
              <Calendar className="h-3.5 w-3.5" /> Joined {fmtDate(p.created_at)}
            </div>
          </div>
        </div>

        <div className="grid gap-4 md:grid-cols-3">
          <Card>
            <CardHeader><CardTitle className="text-base">Profile</CardTitle></CardHeader>
            <CardContent className="space-y-2 text-sm">
              <div className="flex justify-between"><span className="text-muted-foreground">Gender</span><span>{p.gender || '—'}</span></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Level</span><Badge variant="outline">{p.learning_level || p.current_level || 'A1'}</Badge></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Plan</span><Badge variant="secondary" className="capitalize">{p.subscription_plan || 'free'}</Badge></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Native Lang</span><span>{p.native_language || '—'}</span></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Goal</span><span className="capitalize">{p.learning_goal?.replace(/_/g, ' ') || '—'}</span></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Language</span><span>{p.language || 'de'}</span></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Status</span><Badge variant={p.status === 'active' ? 'default' : 'destructive'}>{p.status}</Badge></div>
              <div className="border-t pt-2 mt-2 space-y-2">
                {p.country && <span className="flex items-center gap-1 text-muted-foreground"><Globe className="h-3.5 w-3.5" />{p.country}</span>}
                {p.city && <span className="flex items-center gap-1 text-muted-foreground"><MapPin className="h-3.5 w-3.5" />{p.city}</span>}
                {p.timezone && <span className="flex items-center gap-1 text-muted-foreground"><Clock className="h-3.5 w-3.5" />{p.timezone}</span>}
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader><CardTitle className="text-base">Learning Progress</CardTitle></CardHeader>
            <CardContent className="space-y-3">
              <div className="flex items-center justify-between">
                <span className="text-sm text-muted-foreground">Lessons Completed</span>
                <span className="text-lg font-bold">{p.completed_lessons || 0}</span>
              </div>
              <div className="space-y-1">
                <div className="flex items-center justify-between text-sm">
                  <span className="text-muted-foreground">Progress</span>
                  <span>{p.progress_percentage || 0}%</span>
                </div>
                <div className="h-2 rounded-full bg-muted overflow-hidden">
                  <div className="h-full rounded-full bg-primary" style={{ width: `${Math.min(p.progress_percentage || 0, 100)}%` }} />
                </div>
              </div>
              <div className="flex items-center justify-between">
                <span className="text-sm text-muted-foreground">Engagement</span>
                <Badge className={
                  p.engagement_score >= 70 ? 'bg-emerald-500/10 text-emerald-500' :
                  p.engagement_score >= 40 ? 'bg-amber-500/10 text-amber-500' :
                  'bg-red-500/10 text-red-500'
                }>{p.engagement_score}/100</Badge>
              </div>
              <div className="border-t pt-2 mt-2 text-xs text-muted-foreground space-y-1">
                {p.last_vocabulary_practiced && <div>Last vocab: {p.last_vocabulary_practiced}</div>}
                {p.last_verb_practiced && <div>Last verb: {p.last_verb_practiced}</div>}
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader><CardTitle className="text-base">Current Session</CardTitle></CardHeader>
            <CardContent className="space-y-2 text-sm">
              {pr ? (
                <>
                  <div className="flex items-center justify-between">
                    <span className="text-muted-foreground">Status</span>
                    {pr.is_online ? (
                      <span className="inline-flex items-center gap-1 text-emerald-500"><Wifi className="h-3.5 w-3.5" /> Online</span>
                    ) : (
                      <span className="inline-flex items-center gap-1 text-red-500"><WifiOff className="h-3.5 w-3.5" /> Offline</span>
                    )}
                  </div>
                  {pr.last_seen && <div className="flex justify-between"><span className="text-muted-foreground">Last seen</span><span>{timeAgo(pr.last_seen)}</span></div>}
                  {pr.current_page && <div className="flex justify-between"><span className="text-muted-foreground">Page</span><span className="truncate max-w-[120px]">{pr.current_page}</span></div>}
                  {pr.ip_address && <div className="flex justify-between"><span className="text-muted-foreground">IP</span><span className="text-xs">{pr.ip_address}</span></div>}
                  <div className="flex justify-between items-center">
                    <span className="text-muted-foreground">Device</span>
                    <span className="inline-flex items-center gap-1">{getDeviceIcon(pr.device_type)}{pr.device_type || '—'}</span>
                  </div>
                  <div className="flex justify-between"><span className="text-muted-foreground">Browser</span><span>{pr.browser_name || '—'}</span></div>
                  <div className="flex justify-between"><span className="text-muted-foreground">OS</span><span>{pr.operating_system || '—'}</span></div>
                  {pr.duration_seconds !== null && <div className="flex justify-between"><span className="text-muted-foreground">Duration</span><span>{fmtDur(pr.duration_seconds)}</span></div>}
                </>
              ) : (
                <p className="text-muted-foreground text-sm">No active session</p>
              )}
            </CardContent>
          </Card>
        </div>

        <Tabs defaultValue="activity" className="space-y-4">
          <TabsList>
            <TabsTrigger value="activity" className="gap-2"><Activity className="h-4 w-4" />Activity</TabsTrigger>
            <TabsTrigger value="sessions" className="gap-2"><Monitor className="h-4 w-4" />Sessions & Devices</TabsTrigger>
            <TabsTrigger value="searches" className="gap-2"><Search className="h-4 w-4" />Searches</TabsTrigger>
            <TabsTrigger value="progress" className="gap-2"><GraduationCap className="h-4 w-4" />Daily Progress</TabsTrigger>
            <TabsTrigger value="subscriptions" className="gap-2"><Star className="h-4 w-4" />Subscriptions</TabsTrigger>
          </TabsList>

          <TabsContent value="activity">
            <Card>
              <CardContent className="p-0">
                {data.activity.length === 0 ? (
                  <p className="text-sm text-muted-foreground text-center py-8">No activity events yet</p>
                ) : (
                  <div className="divide-y">
                    {data.activity.map((e: any) => (
                      <div key={e.id} className="flex items-start gap-3 px-4 py-3 hover:bg-muted/30 transition-colors">
                        <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-primary/10">
                          <Activity className="h-4 w-4 text-primary" />
                        </div>
                        <div className="flex-1 min-w-0">
                          <p className="text-sm font-medium capitalize">{e.event_type.replace(/_/g, ' ')}</p>
                          {e.action && <p className="text-xs text-muted-foreground">{e.action}</p>}
                          {e.page && <p className="text-xs text-muted-foreground truncate">{e.page}</p>}
                          <p className="text-[10px] text-muted-foreground/60 mt-0.5">{fmtDate(e.created_at)}</p>
                        </div>
                      </div>
                    ))}
                  </div>
                )}
              </CardContent>
            </Card>
          </TabsContent>

          <TabsContent value="sessions">
            <Card>
              <CardContent className="p-0">
                {data.sessions.length === 0 ? (
                  <p className="text-sm text-muted-foreground text-center py-8">No login sessions recorded</p>
                ) : (
                  <div className="divide-y">
                    {data.sessions.map((s: any) => (
                      <div key={s.id} className="flex items-start gap-3 px-4 py-3 hover:bg-muted/30 transition-colors">
                        <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-muted">
                          {getDeviceIcon(s.device_type)}
                        </div>
                        <div className="flex-1 min-w-0 grid grid-cols-3 gap-2 text-sm">
                          <div>
                            <p className="font-medium">{s.device_name || s.device_type || 'Unknown device'}</p>
                            <p className="text-xs text-muted-foreground">ID: {s.device_id || '—'}</p>
                          </div>
                          <div className="text-xs text-muted-foreground">
                            <p>{s.browser_name || '—'} {s.browser_version || ''}</p>
                            <p>{s.operating_system || '—'} {s.os_version || ''}</p>
                          </div>
                          <div className="text-xs text-muted-foreground text-right">
                            <p>Login: {fmtDate(s.login_at)}</p>
                            {s.logout_at && <p>Logout: {fmtDate(s.logout_at)}</p>}
                            <Badge variant={s.is_active ? 'default' : 'secondary'} className="text-[10px]">
                              {s.is_active ? 'Active' : 'Ended'}
                            </Badge>
                          </div>
                          {s.ip_address && <p className="text-xs text-muted-foreground col-span-3">IP: {s.ip_address}{s.country ? ` · ${s.country}` : ''}{s.s_city ? ` · ${s.s_city}` : ''}</p>}
                        </div>
                      </div>
                    ))}
                  </div>
                )}
              </CardContent>
            </Card>
          </TabsContent>

          <TabsContent value="searches">
            <Card>
              <CardContent className="p-0">
                {data.searches.length === 0 ? (
                  <p className="text-sm text-muted-foreground text-center py-8">No search history</p>
                ) : (
                  <div className="divide-y">
                    {data.searches.map((s: any) => (
                      <div key={s.id} className="flex items-center gap-3 px-4 py-2.5 hover:bg-muted/30 transition-colors text-sm">
                        <Search className="h-4 w-4 text-muted-foreground shrink-0" />
                        <span className="flex-1">{s.query_text}</span>
                        <Badge variant="outline" className="text-[10px] capitalize">{s.search_type}</Badge>
                        <span className="text-xs text-muted-foreground">{timeAgo(s.created_at)}</span>
                      </div>
                    ))}
                  </div>
                )}
              </CardContent>
            </Card>
          </TabsContent>

          <TabsContent value="progress">
            <Card>
              <CardContent className="p-0">
                {data.dailyProgress.length === 0 ? (
                  <p className="text-sm text-muted-foreground text-center py-8">No daily progress data</p>
                ) : (
                  <div className="overflow-x-auto">
                    <table className="w-full text-sm">
                      <thead>
                        <tr className="border-b text-left">
                          <th className="px-4 py-3 text-xs font-medium text-muted-foreground">Date</th>
                          <th className="px-4 py-3 text-xs font-medium text-muted-foreground">Lessons</th>
                          <th className="px-4 py-3 text-xs font-medium text-muted-foreground">Vocabulary</th>
                          <th className="px-4 py-3 text-xs font-medium text-muted-foreground">Verbs</th>
                          <th className="px-4 py-3 text-xs font-medium text-muted-foreground">Exercises</th>
                          <th className="px-4 py-3 text-xs font-medium text-muted-foreground">Duration</th>
                          <th className="px-4 py-3 text-xs font-medium text-muted-foreground">Searches</th>
                        </tr>
                      </thead>
                      <tbody>
                        {data.dailyProgress.map((d: any) => (
                          <tr key={d.id} className="border-b last:border-0 hover:bg-muted/30 transition-colors">
                            <td className="px-4 py-2.5">{new Date(d.date).toLocaleDateString()}</td>
                            <td className="px-4 py-2.5">{d.lessons_completed}</td>
                            <td className="px-4 py-2.5">{d.vocabulary_practiced}</td>
                            <td className="px-4 py-2.5">{d.verbs_practiced}</td>
                            <td className="px-4 py-2.5">{d.exercises_completed}</td>
                            <td className="px-4 py-2.5">{fmtDur(d.session_duration_seconds)}</td>
                            <td className="px-4 py-2.5">{d.search_queries_count}</td>
                          </tr>
                        ))}
                      </tbody>
                    </table>
                  </div>
                )}
              </CardContent>
            </Card>
          </TabsContent>

          <TabsContent value="subscriptions">
            <Card>
              <CardContent className="p-0">
                {data.subscriptions.length === 0 ? (
                  <p className="text-sm text-muted-foreground text-center py-8">No subscriptions</p>
                ) : (
                  <div className="divide-y">
                    {data.subscriptions.map((s: any) => (
                      <div key={s.id} className="px-4 py-3 hover:bg-muted/30 transition-colors">
                        <div className="flex items-center justify-between">
                          <div>
                            <p className="text-sm font-medium capitalize">{s.plans?.name || 'Unknown plan'}</p>
                            {s.plans?.description && <p className="text-xs text-muted-foreground">{s.plans.description}</p>}
                          </div>
                          <Badge variant={s.status === 'active' ? 'default' : 'secondary'} className="capitalize">{s.status}</Badge>
                        </div>
                        <div className="flex gap-4 mt-1 text-xs text-muted-foreground">
                          <span>Start: {fmtDate(s.start_date)}</span>
                          {s.end_date && <span>End: {fmtDate(s.end_date)}</span>}
                        </div>
                      </div>
                    ))}
                  </div>
                )}
              </CardContent>
            </Card>
          </TabsContent>
        </Tabs>
      </div>
    </AppShell>
  )
}
