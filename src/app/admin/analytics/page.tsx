'use client'

import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { BarChart3, TrendingUp, Users, BookOpen, GraduationCap, Activity } from 'lucide-react'

export default function AdminAnalyticsPage() {
  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <BarChart3 className="h-6 w-6 text-primary" />
          <h1 className="text-2xl font-bold">Analytics</h1>
        </div>

        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
          {[
            { label: 'Total Users', value: '128', change: '+12%', icon: Users },
            { label: 'Active Today', value: '47', change: '+8%', icon: Activity },
            { label: 'Avg. Session', value: '24 min', change: '+3 min', icon: TrendingUp },
            { label: 'Course Completions', value: '89', change: '+15%', icon: GraduationCap },
          ].map((stat) => (
            <Card key={stat.label}>
              <CardContent className="p-6">
                <div className="flex items-center justify-between mb-2">
                  <stat.icon className="h-5 w-5 text-muted-foreground" />
                  <span className="text-sm text-emerald-500">{stat.change}</span>
                </div>
                <p className="text-2xl font-bold">{stat.value}</p>
                <p className="text-sm text-muted-foreground">{stat.label}</p>
              </CardContent>
            </Card>
          ))}
        </div>

        <div className="grid gap-6 md:grid-cols-2">
          <Card>
            <CardHeader>
              <CardTitle>Daily Active Users</CardTitle>
              <CardDescription>Last 30 days</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="flex items-end gap-2 h-[200px]">
                {Array.from({ length: 30 }, (_, i) => (
                  <div
                    key={i}
                    className="flex-1 rounded-t-md bg-primary/20 hover:bg-primary/40 transition-colors"
                    style={{ height: `${20 + ((i * 17 + 31) % 80)}%` }}
                  />
                ))}
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader>
              <CardTitle>Level Distribution</CardTitle>
              <CardDescription>Students by German level</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="space-y-4">
                {[
                  { level: 'A1', count: 18, color: 'bg-emerald-500', pct: 19 },
                  { level: 'A2', count: 25, color: 'bg-blue-500', pct: 27 },
                  { level: 'B1', count: 32, color: 'bg-purple-500', pct: 34 },
                  { level: 'B2', count: 14, color: 'bg-amber-500', pct: 15 },
                  { level: 'C1', count: 5, color: 'bg-rose-500', pct: 5 },
                ].map((item) => (
                  <div key={item.level} className="flex items-center gap-3">
                    <span className="w-8 text-sm font-medium">{item.level}</span>
                    <div className="flex-1 h-4 rounded-full bg-muted overflow-hidden">
                      <div className={`h-full rounded-full ${item.color}`} style={{ width: `${item.pct}%` }} />
                    </div>
                    <span className="text-sm text-muted-foreground w-8 text-right">{item.count}</span>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>
        </div>
      </div>
    </AppShell>
  )
}
