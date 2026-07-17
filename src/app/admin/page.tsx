'use client'

import { useEffect, useState } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Skeleton } from '@/components/ui/skeleton'
import { motion } from 'framer-motion'
import { Shield, Users, BookOpen, BarChart3, TrendingUp, Activity, UserCheck, GraduationCap, CreditCard } from 'lucide-react'
import Link from 'next/link'

const levelColors: Record<string, string> = {
  A1: 'bg-emerald-500',
  A2: 'bg-blue-500',
  B1: 'bg-purple-500',
  B2: 'bg-amber-500',
  C1: 'bg-rose-500',
  C2: 'bg-red-500',
}

export default function AdminPage() {
  const [stats, setStats] = useState<any>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    fetch('/api/admin/stats')
      .then(r => r.json())
      .then(d => setStats(d))
      .finally(() => setLoading(false))
  }, [])

  if (loading) {
    return (
      <AppShell>
        <div className="space-y-6">
          <Skeleton className="h-8 w-64" />
          <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
            {[...Array(4)].map((_, i) => <Skeleton key={i} className="h-32" />)}
          </div>
        </div>
      </AppShell>
    )
  }

  const statCards = [
    { label: 'Total Users', value: stats?.totalUsers?.toString() || '0', icon: Users, color: 'text-blue-500', badge: `${stats?.activeUsers || 0} active` },
    { label: 'Active Students', value: stats?.activeUsers?.toString() || '0', icon: UserCheck, color: 'text-emerald-500', badge: `${stats?.activeRate || 0}% rate` },
    { label: 'Courses', value: stats?.totalCourses?.toString() || '0', icon: BookOpen, color: 'text-purple-500', badge: 'total lessons' },
    { label: 'Subscriptions', value: stats?.subscriptionStats?.active?.toString() || '0', icon: CreditCard, color: 'text-amber-500', badge: `${stats?.subscriptionStats?.trial || 0} in trial` },
  ]

  return (
    <AppShell>
      <div className="space-y-8">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-primary to-primary/60 text-white">
              <Shield className="h-5 w-5" />
            </div>
            <div>
              <h1 className="text-3xl font-bold tracking-tight">Admin Dashboard</h1>
              <p className="text-muted-foreground">Manage your DeutschMentor platform</p>
            </div>
          </div>
        </div>

        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
          {statCards.map((stat, i) => (
            <motion.div key={stat.label} initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.1 }}>
              <Card>
                <CardContent className="p-6">
                  <div className="flex items-center justify-between mb-4">
                    <stat.icon className={`h-8 w-8 ${stat.color}`} />
                    <Badge variant="secondary" className="text-xs">{stat.badge}</Badge>
                  </div>
                  <p className="text-2xl font-bold">{stat.value}</p>
                  <p className="text-sm text-muted-foreground">{stat.label}</p>
                </CardContent>
              </Card>
            </motion.div>
          ))}
        </div>

        <div className="grid gap-6 md:grid-cols-2">
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center gap-2">
                <CreditCard className="h-5 w-5 text-primary" />
                Subscription Distribution
              </CardTitle>
              <CardDescription>User subscription status breakdown</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="space-y-4">
                {stats?.subscriptionStats && Object.entries(stats.subscriptionStats).map(([status, count]) => (
                  <div key={status} className="flex items-center gap-3">
                    <Badge variant="outline" className="w-24 justify-center capitalize">{status}</Badge>
                    <div className="flex-1 h-5 rounded-full bg-muted overflow-hidden">
                      <div
                        className={`h-full rounded-full transition-all ${
                          status === 'active' ? 'bg-emerald-500' :
                          status === 'trial' ? 'bg-blue-500' :
                          status === 'expired' ? 'bg-red-500' :
                          status === 'suspended' ? 'bg-amber-500' :
                          status === 'lifetime' ? 'bg-purple-500' :
                          'bg-gray-400'
                        }`}
                        style={{ width: `${stats.totalUsers > 0 ? ((count as number) / stats.totalUsers) * 100 : 0}%` }}
                      />
                    </div>
                    <span className="text-sm font-medium w-8 text-right">{count as number}</span>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader>
              <CardTitle className="flex items-center gap-2">
                <GraduationCap className="h-5 w-5 text-primary" />
                Level Distribution
              </CardTitle>
              <CardDescription>Students by German level</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="space-y-4">
                {stats?.levelDistribution && Object.entries(stats.levelDistribution)
                  .sort(([a], [b]) => a.localeCompare(b))
                  .map(([level, count]) => (
                    <div key={level} className="flex items-center gap-3">
                      <Badge variant="outline" className="w-10 justify-center">{level}</Badge>
                      <div className="flex-1 h-5 rounded-full bg-muted overflow-hidden">
                        <div
                          className={`h-full rounded-full ${levelColors[level] || 'bg-gray-400'} transition-all`}
                          style={{ width: `${(count as number / (stats?.activeUsers || 1)) * 100}%` }}
                        />
                      </div>
                      <span className="text-sm font-medium w-8 text-right">{count as number}</span>
                    </div>
                  ))}
              </div>
            </CardContent>
          </Card>
        </div>

        <div className="grid gap-4 md:grid-cols-4">
          <Link
            href="/admin/users"
            className="inline-flex h-24 flex-col items-center justify-center gap-2 rounded-xl border border-border bg-background text-sm font-medium hover:bg-muted hover:text-foreground transition-colors"
          >
            <Users className="h-6 w-6" />
            <span>Manage Users</span>
          </Link>
          <Link
            href="/admin/users?tab=subscriptions"
            className="inline-flex h-24 flex-col items-center justify-center gap-2 rounded-xl border border-border bg-background text-sm font-medium hover:bg-muted hover:text-foreground transition-colors"
          >
            <CreditCard className="h-6 w-6" />
            <span>Subscriptions</span>
          </Link>
          <Link
            href="/admin/courses"
            className="inline-flex h-24 flex-col items-center justify-center gap-2 rounded-xl border border-border bg-background text-sm font-medium hover:bg-muted hover:text-foreground transition-colors"
          >
            <BookOpen className="h-6 w-6" />
            <span>Manage Courses</span>
          </Link>
          <Link
            href="/admin/analytics"
            className="inline-flex h-24 flex-col items-center justify-center gap-2 rounded-xl border border-border bg-background text-sm font-medium hover:bg-muted hover:text-foreground transition-colors"
          >
            <BarChart3 className="h-6 w-6" />
            <span>View Analytics</span>
          </Link>
        </div>
      </div>
    </AppShell>
  )
}
