'use client'

import { useAuthStore } from '@/stores/auth-store'
import {
  useDashboardStats,
  useDailyPlan,
  useLearningAnalytics,
  useExerciseAttempts,
} from '@/hooks/use-progress'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Button } from '@/components/ui/button'
import { Progress } from '@/components/ui/progress'
import { Skeleton } from '@/components/ui/skeleton'
import { motion } from 'framer-motion'
import {
  Clock,
  Flame,
  BookOpen,
  CheckCircle,
  Headphones,
  BookOpen as BookOpenIcon,
  Pen,
  Mic,
  TrendingUp,
  AlertCircle,
  Sparkles,
  ArrowRight,
  Play,
  BarChart3,
  Target,
  Star,
} from 'lucide-react'
import Link from 'next/link'
import { cn } from '@/lib/utils'
import type { SkillType, LessonType } from '@/types'

const skillConfig: Record<SkillType, { label: string; icon: typeof Headphones; color: string; ringColor: string }> = {
  hoeren: { label: 'Hören', icon: Headphones, color: 'text-blue-500', ringColor: '#3b82f6' },
  lesen: { label: 'Lesen', icon: BookOpenIcon, color: 'text-emerald-500', ringColor: '#10b981' },
  schreiben: { label: 'Schreiben', icon: Pen, color: 'text-purple-500', ringColor: '#8b5cf6' },
  sprechen: { label: 'Sprechen', icon: Mic, color: 'text-amber-500', ringColor: '#f59e0b' },
}

const skillKeys: SkillType[] = ['hoeren', 'lesen', 'schreiben', 'sprechen']

const monthLabels = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

const activityIcons: Record<LessonType, typeof Headphones> = {
  listening: Headphones,
  reading: BookOpenIcon,
  writing: Pen,
  speaking: Mic,
  vocabulary: BookOpen,
  grammar: TrendingUp,
}

const quickActions = [
  { href: '/dashboard/hoeren', label: 'Continue Listening', icon: Headphones },
  { href: '/dashboard/vocabulary', label: 'Practice Vocabulary', icon: BookOpen },
  { href: '/dashboard/schreiben', label: 'Write Exercise', icon: Pen },
  { href: '/dashboard/lesen', label: 'Reading Practice', icon: BookOpenIcon },
] as const

function timeAgo(dateStr: string): string {
  const diff = Date.now() - new Date(dateStr).getTime()
  const mins = Math.floor(diff / 60000)
  if (mins < 1) return 'Just now'
  if (mins < 60) return `${mins}m ago`
  const hrs = Math.floor(mins / 60)
  if (hrs < 24) return `${hrs}h ago`
  const days = Math.floor(hrs / 24)
  return `${days}d ago`
}

function CircularProgress({ score, color, label, sublabel, delay }: {
  score: number; color: string; label: string; sublabel: string; delay: number
}) {
  const r = 44
  const circumference = 2 * Math.PI * r
  const offset = circumference - (score / 100) * circumference

  return (
    <motion.div
      initial={{ opacity: 0, scale: 0.8 }}
      animate={{ opacity: 1, scale: 1 }}
      transition={{ delay, duration: 0.5 }}
      className="flex flex-col items-center gap-2"
    >
      <div className="relative flex items-center justify-center">
        <svg width="108" height="108" className="-rotate-90">
          <circle cx="54" cy="54" r={r} fill="none" stroke="hsl(var(--muted))" strokeWidth="8" />
          <motion.circle
            cx="54" cy="54" r={r} fill="none"
            stroke={color} strokeWidth="8" strokeLinecap="round"
            initial={{ strokeDasharray: circumference, strokeDashoffset: circumference }}
            animate={{ strokeDashoffset: offset }}
            transition={{ delay: delay + 0.3, duration: 1, ease: 'easeOut' }}
          />
        </svg>
        <span className={cn('absolute text-xl font-bold', color)}>{score}%</span>
      </div>
      <span className="text-sm font-medium">{label}</span>
      <span className="text-xs text-muted-foreground">{sublabel}</span>
    </motion.div>
  )
}

function getCefrLevelLabel(level: string): string {
  const map: Record<string, string> = {
    A1: 'Beginner A1', A2: 'Elementary A2',
    B1: 'Intermediate B1', B2: 'Upper Intermediate B2',
    C1: 'Advanced C1',
  }
  return map[level] ?? level
}

const containerVariants = {
  hidden: { opacity: 0 },
  visible: { opacity: 1, transition: { staggerChildren: 0.06 } },
}

const itemVariants = {
  hidden: { opacity: 0, y: 16 },
  visible: { opacity: 1, y: 0 },
}

export default function DashboardPage() {
  const user = useAuthStore((s) => s.user)
  const isAuthLoading = useAuthStore((s) => s.isLoading)
  const { data: stats, isLoading: statsLoading } = useDashboardStats(user?.user_id)
  const { data: dailyPlan, isLoading: planLoading } = useDailyPlan(user?.user_id)
  const { data: analytics, isLoading: analyticsLoading } = useLearningAnalytics()
  const { data: recentAttempts, isLoading: attemptsLoading } = useExerciseAttempts({ limit: 8 })

  const loading = isAuthLoading || statsLoading || analyticsLoading

  if (loading) {
    return (
      <div className="flex min-h-screen items-center justify-center">
        <div className="h-8 w-8 animate-spin rounded-full border-4 border-primary border-t-transparent" />
      </div>
    )
  }

  if (!user) return null

  const firstName = user.full_name?.split(' ')[0] ?? 'Student'
  const cefr = analytics?.estimated_cefr_level ?? user.current_level
  const todayMinutes = analytics?.total_study_minutes ?? 0
  const dailyGoal = user.daily_study_minutes
  const goalProgress = Math.min(Math.round((todayMinutes / dailyGoal) * 100), 100)
  const monthlyData = analytics?.monthly_minutes ?? []
  const maxMonthly = Math.max(...monthlyData, 1)
  const currentMonth = new Date().getMonth()

  const exerciseTypeLabel: Record<string, string> = {
    listening: 'Listening', reading: 'Reading', writing: 'Writing',
    speaking: 'Speaking', grammar: 'Grammar', vocabulary: 'Vocabulary',
  }

  return (
    <AppShell>
      <motion.div
        variants={containerVariants}
        initial="hidden"
        animate="visible"
        className="space-y-8"
      >
        {/* 1. Welcome Section */}
        <motion.div variants={itemVariants} className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Willkommen, {firstName}</h1>
            <p className="mt-1 text-muted-foreground">
              {user.current_level} → {user.target_level} &middot; {dailyGoal} min daily goal
            </p>
          </div>
          <div className="flex items-center gap-3">
            <Badge variant="secondary" className="gap-1.5 px-3 py-1 text-sm">
              <Star className="h-3.5 w-3.5 text-amber-500" />
              {getCefrLevelLabel(cefr)}
            </Badge>
          </div>
        </motion.div>

        {/* Today's Goal Progress */}
        <motion.div variants={itemVariants}>
          <Card>
            <CardContent className="p-5">
              <div className="flex items-center justify-between gap-4">
                <div className="flex items-center gap-3">
                  <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-primary/10">
                    <Target className="h-5 w-5 text-primary" />
                  </div>
                  <div>
                    <p className="text-sm font-medium">Today&apos;s Study Goal</p>
                    <p className="text-xs text-muted-foreground">
                      {Math.round(todayMinutes / 60 * 10) / 10} of {dailyGoal} minutes completed
                    </p>
                  </div>
                </div>
                <span className="text-lg font-bold">{goalProgress}%</span>
              </div>
              <Progress value={goalProgress} className="mt-3 h-2" />
            </CardContent>
          </Card>
        </motion.div>

        {/* 2. Stats Cards Row */}
        <motion.div variants={itemVariants} className="grid gap-4 sm:grid-cols-2 lg:grid-cols-4">
          <Card>
            <CardContent className="flex items-center gap-4 p-5">
              <div className="flex h-11 w-11 items-center justify-center rounded-lg bg-blue-500/10">
                <Clock className="h-5 w-5 text-blue-500" />
              </div>
              <div>
                <p className="text-xs text-muted-foreground">Total Study Hours</p>
                <p className="text-2xl font-bold">{stats?.total_study_hours ?? 0}</p>
              </div>
            </CardContent>
          </Card>
          <Card>
            <CardContent className="flex items-center gap-4 p-5">
              <div className="flex h-11 w-11 items-center justify-center rounded-lg bg-orange-500/10">
                <Flame className="h-5 w-5 text-orange-500" />
              </div>
              <div>
                <p className="text-xs text-muted-foreground">Current Streak</p>
                <p className="text-2xl font-bold">
                  {stats?.current_streak ?? 0}
                  <span className="ml-1 text-sm font-normal text-muted-foreground">
                    &nbsp;🔥 {stats?.current_streak ?? 0} days
                  </span>
                </p>
              </div>
            </CardContent>
          </Card>
          <Card>
            <CardContent className="flex items-center gap-4 p-5">
              <div className="flex h-11 w-11 items-center justify-center rounded-lg bg-emerald-500/10">
                <CheckCircle className="h-5 w-5 text-emerald-500" />
              </div>
              <div>
                <p className="text-xs text-muted-foreground">Lessons Completed</p>
                <p className="text-2xl font-bold">{stats?.completed_lessons ?? 0}</p>
              </div>
            </CardContent>
          </Card>
          <Card>
            <CardContent className="flex items-center gap-4 p-5">
              <div className="flex h-11 w-11 items-center justify-center rounded-lg bg-purple-500/10">
                <BookOpen className="h-5 w-5 text-purple-500" />
              </div>
              <div>
                <p className="text-xs text-muted-foreground">Vocabulary Learned</p>
                <p className="text-2xl font-bold">{stats?.vocabulary_learned ?? 0}</p>
              </div>
            </CardContent>
          </Card>
        </motion.div>

        {/* Main grid: skills, chart, weak/strong, daily plan, quick actions, recent activity */}
        <div className="grid gap-6 lg:grid-cols-3">
          {/* Left column - Skills + Monthly Chart */}
          <div className="space-y-6 lg:col-span-2">
            {/* 3. Skill Scores */}
            <motion.div variants={itemVariants}>
              <Card>
                <CardHeader>
                  <CardTitle className="flex items-center gap-2">
                    <BarChart3 className="h-5 w-5 text-primary" />
                    Skill Scores
                  </CardTitle>
                  <CardDescription>Your proficiency across the four core language skills</CardDescription>
                </CardHeader>
                <CardContent>
                  {statsLoading ? (
                    <div className="flex justify-around">
                      {[1, 2, 3, 4].map((i) => <Skeleton key={i} className="h-32 w-24" />)}
                    </div>
                  ) : (
                    <div className="grid grid-cols-2 gap-6 sm:grid-cols-4">
                      {skillKeys.map((type, i) => {
                        const config = skillConfig[type]
                        const score = stats?.skill_scores[type] ?? 0
                        const level =
                          score >= 80 ? 'Advanced' : score >= 60 ? 'Intermediate' : score >= 40 ? 'Developing' : 'Beginner'
                        return (
                          <Link key={type} href={`/dashboard/${type}`} className="group">
                            <CircularProgress
                              score={score}
                              color={config.ringColor}
                              label={config.label}
                              sublabel={level}
                              delay={0.1 + i * 0.08}
                            />
                          </Link>
                        )
                      })}
                    </div>
                  )}
                </CardContent>
              </Card>
            </motion.div>

            {/* 4. Monthly Activity Chart */}
            <motion.div variants={itemVariants}>
              <Card>
                <CardHeader>
                  <CardTitle className="flex items-center gap-2">
                    <TrendingUp className="h-5 w-5 text-primary" />
                    Monthly Activity
                  </CardTitle>
                  <CardDescription>Study minutes per month</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="flex items-end justify-between gap-1.5" style={{ height: 140 }}>
                    {monthLabels.map((label, i) => {
                      const value = monthlyData[i] ?? 0
                      const pct = maxMonthly > 0 ? (value / maxMonthly) * 100 : 0
                      const isCurrent = i === currentMonth
                      return (
                        <div key={label} className="flex flex-1 flex-col items-center gap-1.5">
                          <motion.div
                            initial={{ height: 0 }}
                            animate={{ height: `${pct}%` }}
                            transition={{ delay: i * 0.03, duration: 0.5, ease: 'easeOut' }}
                            className={cn(
                              'w-full rounded-md transition-colors',
                              isCurrent
                                ? 'bg-primary'
                                : 'bg-primary/30 hover:bg-primary/50',
                            )}
                            style={{ maxHeight: 120, minHeight: value > 0 ? 4 : 0 }}
                          />
                          {value > 0 && (
                            <span className="text-[10px] font-medium text-muted-foreground">{value}</span>
                          )}
                          <span
                            className={cn(
                              'text-[10px]',
                              isCurrent ? 'font-semibold text-primary' : 'text-muted-foreground',
                            )}
                          >
                            {label}
                          </span>
                        </div>
                      )
                    })}
                  </div>
                </CardContent>
              </Card>
            </motion.div>

            {/* 5. Weak & Strong Topics */}
            <motion.div variants={itemVariants} className="grid gap-6 sm:grid-cols-2">
              <Card>
                <CardHeader>
                  <CardTitle className="flex items-center gap-2 text-amber-500">
                    <AlertCircle className="h-5 w-5" />
                    Weak Areas
                  </CardTitle>
                </CardHeader>
                <CardContent>
                  {analytics?.weak_topics && analytics.weak_topics.length > 0 ? (
                    <ul className="space-y-3">
                      {analytics.weak_topics.map((topic, i) => (
                        <li key={i} className="flex items-center justify-between gap-2 rounded-lg border border-amber-200/50 bg-amber-50/50 p-3 dark:border-amber-900/30 dark:bg-amber-950/20">
                          <div className="flex items-center gap-2">
                            <div className="h-2 w-2 rounded-full bg-amber-500" />
                            <span className="text-sm font-medium">{topic}</span>
                          </div>
                          <span className="text-xs text-muted-foreground">Needs practice</span>
                        </li>
                      ))}
                    </ul>
                  ) : (
                    <p className="text-sm text-muted-foreground">No weak areas identified yet. Keep learning!</p>
                  )}
                </CardContent>
              </Card>
              <Card>
                <CardHeader>
                  <CardTitle className="flex items-center gap-2 text-emerald-500">
                    <Star className="h-5 w-5" />
                    Strong Areas
                  </CardTitle>
                </CardHeader>
                <CardContent>
                  {analytics?.strong_topics && analytics.strong_topics.length > 0 ? (
                    <ul className="space-y-3">
                      {analytics.strong_topics.map((topic, i) => (
                        <li key={i} className="flex items-center justify-between gap-2 rounded-lg border border-emerald-200/50 bg-emerald-50/50 p-3 dark:border-emerald-900/30 dark:bg-emerald-950/20">
                          <div className="flex items-center gap-2">
                            <div className="h-2 w-2 rounded-full bg-emerald-500" />
                            <span className="text-sm font-medium">{topic}</span>
                          </div>
                          <span className="text-xs text-muted-foreground">Well done!</span>
                        </li>
                      ))}
                    </ul>
                  ) : (
                    <p className="text-sm text-muted-foreground">Keep going to build your strengths!</p>
                  )}
                </CardContent>
              </Card>
            </motion.div>
          </div>

          {/* Right column - Daily Plan, Quick Actions, Recent Activity */}
          <div className="space-y-6">
            {/* 6. Daily Plan */}
            <motion.div variants={itemVariants}>
              <Card>
                <CardHeader>
                  <CardTitle className="flex items-center gap-2">
                    <Sparkles className="h-5 w-5 text-primary" />
                    Today&apos;s Plan
                  </CardTitle>
                  <CardDescription>Your recommended study schedule</CardDescription>
                </CardHeader>
                <CardContent>
                  {planLoading ? (
                    <div className="space-y-3">
                      {[1, 2, 3].map((i) => <Skeleton key={i} className="h-20 w-full" />)}
                    </div>
                  ) : dailyPlan?.activities && dailyPlan.activities.length > 0 ? (
                    <div className="space-y-3">
                      {dailyPlan.activities.map((activity, i) => {
                        const Icon = activityIcons[activity.type] ?? Headphones
                        return (
                          <div
                            key={i}
                            className="group rounded-lg border p-3 transition-colors hover:border-primary/50"
                          >
                            <div className="flex items-start gap-3">
                              <div className="flex h-9 w-9 shrink-0 items-center justify-center rounded-lg bg-primary/10">
                                <Icon className="h-4 w-4 text-primary" />
                              </div>
                              <div className="min-w-0 flex-1">
                                <div className="flex items-center justify-between gap-2">
                                  <p className="truncate text-sm font-medium">{activity.title}</p>
                                  <span className="shrink-0 text-xs text-muted-foreground">
                                    {activity.duration_minutes} min
                                  </span>
                                </div>
                                <p className="mt-0.5 text-xs text-muted-foreground">{activity.description}</p>
                              </div>
                            </div>
                            <div className="mt-2 flex justify-end">
                              <Button size="sm" variant="ghost" className="h-7 gap-1 text-xs">
                                Start <ArrowRight className="h-3 w-3" />
                              </Button>
                            </div>
                          </div>
                        )
                      })}
                    </div>
                  ) : (
                    <p className="text-sm text-muted-foreground">No plan available for today.</p>
                  )}
                </CardContent>
              </Card>
            </motion.div>

            {/* 7. Quick Actions */}
            <motion.div variants={itemVariants}>
              <Card>
                <CardHeader>
                  <CardTitle className="flex items-center gap-2">
                    <Play className="h-5 w-5 text-primary" />
                    Quick Actions
                  </CardTitle>
                </CardHeader>
                <CardContent className="space-y-2">
                  {quickActions.map((action) => {
                    const Icon = action.icon
                    return (
                      <Link key={action.href} href={action.href}>
                        <Button variant="outline" className="w-full justify-between gap-2">
                          <span className="flex items-center gap-2">
                            <Icon className="h-4 w-4" />
                            {action.label}
                          </span>
                          <ArrowRight className="h-4 w-4" />
                        </Button>
                      </Link>
                    )
                  })}
                </CardContent>
              </Card>
            </motion.div>

            {/* 8. Recent Activity Feed */}
            <motion.div variants={itemVariants}>
              <Card>
                <CardHeader>
                  <CardTitle className="flex items-center gap-2">
                    <Clock className="h-5 w-5 text-primary" />
                    Recent Activity
                  </CardTitle>
                </CardHeader>
                <CardContent>
                  {attemptsLoading ? (
                    <div className="space-y-3">
                      {[1, 2, 3].map((i) => <Skeleton key={i} className="h-12 w-full" />)}
                    </div>
                  ) : recentAttempts && recentAttempts.length > 0 ? (
                    <div className="space-y-2">
                      {recentAttempts.map((attempt) => {
                        const label = exerciseTypeLabel[attempt.exercise_type] ?? attempt.exercise_type
                        return (
                          <div
                            key={attempt.id}
                            className="flex items-center gap-3 rounded-lg border p-3 transition-colors hover:border-primary/50"
                          >
                            <div
                              className={cn(
                                'flex h-8 w-8 shrink-0 items-center justify-center rounded-lg',
                                attempt.correct ? 'bg-emerald-500/10' : 'bg-red-500/10',
                              )}
                            >
                              <CheckCircle
                                className={cn(
                                  'h-4 w-4',
                                  attempt.correct ? 'text-emerald-500' : 'text-red-500',
                                )}
                              />
                            </div>
                            <div className="min-w-0 flex-1">
                              <p className="truncate text-sm font-medium capitalize">{label}</p>
                              {attempt.topic && (
                                <p className="truncate text-xs text-muted-foreground">{attempt.topic}</p>
                              )}
                            </div>
                            <span className="shrink-0 text-xs text-muted-foreground">
                              {timeAgo(attempt.created_at)}
                            </span>
                          </div>
                        )
                      })}
                    </div>
                  ) : (
                    <div className="flex flex-col items-center gap-2 py-6 text-center">
                      <BarChart3 className="h-8 w-8 text-muted-foreground/50" />
                      <p className="text-sm text-muted-foreground">No recent activity yet.</p>
                      <p className="text-xs text-muted-foreground/60">
                        Start a lesson or exercise to see your activity here.
                      </p>
                    </div>
                  )}
                </CardContent>
              </Card>
            </motion.div>

            {/* Link to full learning path */}
            <motion.div variants={itemVariants}>
              <Link href="/dashboard/learning">
                <Button variant="outline" className="w-full gap-2">
                  View Full Learning Path <ArrowRight className="h-4 w-4" />
                </Button>
              </Link>
            </motion.div>
          </div>
        </div>
      </motion.div>
    </AppShell>
  )
}
