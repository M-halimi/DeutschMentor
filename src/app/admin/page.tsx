'use client'

import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { motion } from 'framer-motion'
import { Shield, Users, BookOpen, BarChart3, TrendingUp, Activity, UserCheck, GraduationCap } from 'lucide-react'
import Link from 'next/link'

export default function AdminPage() {
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
          {[
            { label: 'Total Users', value: '128', icon: Users, change: '+12 this month', color: 'text-blue-500' },
            { label: 'Active Students', value: '94', icon: UserCheck, change: '73% active rate', color: 'text-emerald-500' },
            { label: 'Courses', value: '16', icon: BookOpen, change: '4 in progress', color: 'text-purple-500' },
            { label: 'Completion Rate', value: '68%', icon: TrendingUp, change: '+5% vs last month', color: 'text-amber-500' },
          ].map((stat, i) => (
            <motion.div key={stat.label} initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.1 }}>
              <Card>
                <CardContent className="p-6">
                  <div className="flex items-center justify-between mb-4">
                    <stat.icon className={`h-8 w-8 ${stat.color}`} />
                    <Badge variant="secondary" className="text-xs">{stat.change}</Badge>
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
                <Activity className="h-5 w-5 text-primary" />
                Platform Activity
              </CardTitle>
              <CardDescription>Overview of user engagement this week</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="space-y-4">
                {[
                  { label: 'Study Sessions Today', value: '47', total: '120' },
                  { label: 'Exercises Completed', value: '312', total: '850' },
                  { label: 'New Registrations', value: '8', total: '15' },
                  { label: 'Vocabulary Reviewed', value: '1,234', total: '3,500' },
                ].map((item) => (
                  <div key={item.label} className="space-y-1">
                    <div className="flex justify-between text-sm">
                      <span className="text-muted-foreground">{item.label}</span>
                      <span className="font-medium">{item.value} / {item.total}</span>
                    </div>
                    <div className="h-2 rounded-full bg-muted overflow-hidden">
                      <div
                        className="h-full rounded-full bg-primary transition-all"
                        style={{ width: `${(parseInt(item.value.replace(/,/g, '')) / parseInt(item.total.replace(/,/g, ''))) * 100}%` }}
                      />
                    </div>
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
                {[
                  { level: 'A1', count: 18, color: 'bg-emerald-500' },
                  { level: 'A2', count: 25, color: 'bg-blue-500' },
                  { level: 'B1', count: 32, color: 'bg-purple-500' },
                  { level: 'B2', count: 14, color: 'bg-amber-500' },
                  { level: 'C1', count: 5, color: 'bg-rose-500' },
                ].map((item) => (
                  <div key={item.level} className="flex items-center gap-3">
                    <Badge variant="outline" className="w-10 justify-center">{item.level}</Badge>
                    <div className="flex-1 h-5 rounded-full bg-muted overflow-hidden">
                      <div
                        className={`h-full rounded-full ${item.color} transition-all`}
                        style={{ width: `${(item.count / 94) * 100}%` }}
                      />
                    </div>
                    <span className="text-sm font-medium w-8 text-right">{item.count}</span>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>
        </div>

        <div className="grid gap-4 md:grid-cols-3">
          <Link
            href="/admin/users"
            className="inline-flex h-24 flex-col items-center justify-center gap-2 rounded-xl border border-border bg-background text-sm font-medium hover:bg-muted hover:text-foreground transition-colors"
          >
            <Users className="h-6 w-6" />
            <span>Manage Users</span>
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
