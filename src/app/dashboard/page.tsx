'use client'

import { useState, useEffect, useMemo } from 'react'
import { useAuthStore } from '@/stores/auth-store'
import { useDashboard, useAchievements } from '@/hooks/use-dashboard'
import { useDailyPlan } from '@/hooks/use-progress'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Button } from '@/components/ui/button'
import { Progress } from '@/components/ui/progress'
import { Skeleton } from '@/components/ui/skeleton'
import { motion } from 'framer-motion'
import {
  Clock, Flame, BookOpen, CheckCircle, Headphones,
  BookOpen as BookOpenIcon, Pen, Mic, TrendingUp,
  AlertCircle, Sparkles, ArrowRight, Play, BarChart3,
  Target, Star, RotateCcw, Trophy, Zap, Calendar,
  Brain, Award, Medal, Layers, Activity, ListChecks,
  ChevronRight, Moon, Sun, Sigma,
} from 'lucide-react'
import Link from 'next/link'
import { cn } from '@/lib/utils'
import type { SkillType, LessonType } from '@/types'

const skillConfig: Record<string, { label: string; icon: typeof Headphones; color: string }> = {
  hoeren: { label: 'Hören', icon: Headphones, color: 'text-blue-500' },
  lesen: { label: 'Lesen', icon: BookOpenIcon, color: 'text-emerald-500' },
  schreiben: { label: 'Schreiben', icon: Pen, color: 'text-purple-500' },
  sprechen: { label: 'Sprechen', icon: Mic, color: 'text-amber-500' },
}

const skillKeys = ['hoeren', 'lesen', 'schreiben', 'sprechen']

const monthLabels = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

const dayLabels = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']

const containerVariants = { hidden: { opacity: 0 }, visible: { opacity: 1, transition: { staggerChildren: 0.05 } } }
const itemVariants = { hidden: { opacity: 0, y: 16 }, visible: { opacity: 1, y: 0 } }

function CircularScore({ score, color, label }: { score: number; color: string; label: string }) {
  const r = 40; const circumference = 2 * Math.PI * r; const offset = circumference - (score / 100) * circumference
  return (
    <div className="flex flex-col items-center gap-1.5">
      <div className="relative flex items-center justify-center">
        <svg width="96" height="96" className="-rotate-90">
          <circle cx="48" cy="48" r={r} fill="none" stroke="hsl(var(--muted))" strokeWidth="7" />
          <motion.circle cx="48" cy="48" r={r} fill="none" stroke={color.replace('text-', '')} strokeWidth="7" strokeLinecap="round"
            initial={{ strokeDasharray: circumference, strokeDashoffset: circumference }}
            animate={{ strokeDashoffset: offset }} transition={{ duration: 1, ease: 'easeOut' }}
          />
        </svg>
        <span className={cn('absolute text-lg font-bold', color)}>{score}%</span>
      </div>
      <span className="text-xs font-medium">{label}</span>
    </div>
  )
}

function getCefrLabel(level: string) {
  const map: Record<string, string> = { A1: 'Beginner', A2: 'Elementary', B1: 'Intermediate', B2: 'Upper Int.', C1: 'Advanced', C2: 'Proficient' }
  return map[level] ?? level
}

function timeAgo(dateStr: string) {
  const diff = Date.now() - new Date(dateStr).getTime()
  const mins = Math.floor(diff / 60000)
  if (mins < 1) return 'Just now'
  if (mins < 60) return `${mins}m ago`
  const hrs = Math.floor(mins / 60)
  if (hrs < 24) return `${hrs}h ago`
  return `${Math.floor(hrs / 24)}d ago`
}

function XPBar({ current, required, level, title }: { current: number; required: number; level: number; title: string }) {
  const progress = required > 0 ? Math.min(Math.round((current / required) * 100), 100) : 100
  const prevRequired = required > 0 ? current : 0
  const xpInLevel = current
  return (
    <div className="space-y-1.5">
      <div className="flex items-center justify-between text-sm">
        <span className="font-semibold">Level {level} &middot; {title}</span>
        <span className="text-muted-foreground">{xpInLevel} / {required} XP</span>
      </div>
      <Progress value={progress} className="h-2.5" />
    </div>
  )
}

function ActivityChart({ data, color = 'bg-primary' }: { data: number[]; color?: string }) {
  const max = Math.max(...data, 1)
  return (
    <div className="flex items-end gap-1.5 h-24">
      {data.map((val, i) => (
        <div key={i} className="flex-1 flex flex-col items-center gap-1">
          <div className="w-full rounded-t-sm" style={{ height: `${(val / max) * 100}%`, backgroundColor: val > 0 ? 'var(--primary)' : 'hsl(var(--muted))', minHeight: val > 0 ? 4 : 0 }} />
        </div>
      ))}
    </div>
  )
}

function Heatmap({ data }: { data: { date: string; minutes: number; intensity: number }[] }) {
  const levels = ['bg-muted', 'bg-emerald-200 dark:bg-emerald-900', 'bg-emerald-400 dark:bg-emerald-700', 'bg-emerald-500 dark:bg-emerald-500', 'bg-emerald-700 dark:bg-emerald-300']
  return (
    <div className="flex flex-wrap gap-0.5">
      {data.slice(-91).map((d, i) => (
        <div key={i} title={`${d.date}: ${d.minutes}m`} className={cn('w-2.5 h-2.5 rounded-[2px]', levels[d.intensity] || levels[0])} />
      ))}
    </div>
  )
}

export default function DashboardPage() {
  const user = useAuthStore((s) => s.user)
  const isAuthLoading = useAuthStore((s) => s.isLoading)
  const { data: dashboard, isLoading: dashLoading } = useDashboard()
  const { data: achData } = useAchievements()
  const { data: dailyPlan } = useDailyPlan(user?.user_id)

  const loading = isAuthLoading || dashLoading

  if (loading) return (
    <div className="flex min-h-screen items-center justify-center">
      <div className="h-8 w-8 animate-spin rounded-full border-4 border-primary border-t-transparent" />
    </div>
  )

  if (!user || !dashboard) return null

  const firstName = user.full_name?.split(' ')[0] ?? 'Student'
  const todayGoal = user.daily_study_minutes || 30
  const todayProgress = Math.min(Math.round((dashboard.today_minutes / todayGoal) * 100), 100)
  const remaining = Math.max(todayGoal - dashboard.today_minutes, 0)
  const totalHours = dashboard.total_study_hours
  const totalMins = dashboard.total_study_minutes

  // Weekly chart
  const weeklyMinutes = dashboard.weekly_activity?.map(d => d.minutes) || Array(7).fill(0)

  // Heatmap - last 3 months
  const heatmapData = dashboard.heatmap || []

  // Monthly chart (mock from weekly aggregated)
  const monthlyData = Array(12).fill(0).map((_, i) => {
    const month = monthLabels[i]
    return Math.round(weeklyMinutes.reduce((a, b) => a + b, 0) / 7 * 30 * (0.5 + Math.random() * 0.5))
  })

  return (
    <AppShell>
      <motion.div variants={containerVariants} initial="hidden" animate="visible" className="space-y-6">
        {/* WELCOME */}
        <motion.div variants={itemVariants} className="flex flex-col gap-2 sm:flex-row sm:items-center sm:justify-between">
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Willkommen, {firstName}</h1>
            <p className="mt-1 text-muted-foreground flex items-center gap-2 flex-wrap">
              <Badge variant="secondary">{user.current_level} → {user.target_level}</Badge>
              <Badge variant="outline">{dashboard.cefr_level || user.current_level} estimated</Badge>
              <span className="text-sm">{todayGoal} Min. Tagesziel</span>
            </p>
          </div>
          <div className="flex items-center gap-3">
            <div className="flex items-center gap-1.5 text-sm font-medium">
              <Trophy className="h-4 w-4 text-amber-500" />
              <span>Level {dashboard.level}</span>
              <span className="text-muted-foreground">· {dashboard.xp} XP</span>
            </div>
            {dashboard.rank > 0 && (
              <Badge variant="secondary" className="gap-1">
                <Medal className="h-3 w-3" />#{dashboard.rank}
              </Badge>
            )}
          </div>
        </motion.div>

        {/* STATS ROW */}
        <motion.div variants={itemVariants} className="grid gap-3 grid-cols-2 sm:grid-cols-4">
          {[
            { icon: Clock, label: 'Today', value: `${dashboard.today_minutes}m`, sub: `${remaining}m left`, color: 'text-blue-500' },
            { icon: Flame, label: 'Streak', value: `🔥 ${dashboard.current_streak}`, sub: `Best ${dashboard.longest_streak}d`, color: 'text-orange-500' },
            { icon: BookOpen, label: 'Lessons', value: `${dashboard.lessons_completed}`, sub: `${dashboard.lessons_total} total`, color: 'text-emerald-500' },
            { icon: Star, label: 'Vocabulary', value: `${dashboard.vocabulary_learned}`, sub: `${dashboard.vocabulary_mastered} mastered`, color: 'text-purple-500' },
          ].map((s, i) => (
            <Card key={i}>
              <CardContent className="p-4">
                <div className="flex items-center justify-between mb-1">
                  <s.icon className={cn('h-5 w-5', s.color)} />
                </div>
                <p className="text-xl font-bold">{s.value}</p>
                <p className="text-xs text-muted-foreground">{s.label}</p>
                <p className="text-[10px] text-muted-foreground">{s.sub}</p>
              </CardContent>
            </Card>
          ))}
        </motion.div>

        {/* TODAY'S GOAL */}
        <motion.div variants={itemVariants}>
          <Card className={todayProgress >= 100 ? 'border-emerald-300 dark:border-emerald-700' : ''}>
            <CardContent className="p-5 space-y-3">
              <div className="flex items-center justify-between">
                <div className="flex items-center gap-2">
                  <Target className="h-5 w-5 text-primary" />
                  <span className="font-semibold">Today's Study Goal</span>
                </div>
                <span className="text-sm font-medium">{dashboard.today_minutes} of {todayGoal} min</span>
              </div>
              <Progress value={todayProgress} className="h-3" />
              <div className="flex items-center justify-between text-sm">
                <span className="text-muted-foreground">{todayProgress}% complete</span>
                {todayProgress >= 100 ? (
                  <span className="flex items-center gap-1 text-emerald-500 font-medium">
                    <CheckCircle className="h-4 w-4" /> Goal reached! 🎉
                  </span>
                ) : (
                  <span className="text-muted-foreground">~{Math.round(remaining * 1.2)}m estimated remaining</span>
                )}
              </div>
            </CardContent>
          </Card>
        </motion.div>

        {/* TOTAL STUDY HOURS + XP + ACHIEVEMENTS */}
        <motion.div variants={itemVariants} className="grid gap-4 md:grid-cols-3">
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium flex items-center gap-2"><Clock className="h-4 w-4" />Total Study</CardTitle>
            </CardHeader>
            <CardContent>
              <p className="text-2xl font-bold">{Math.floor(totalHours)}h {Math.round(totalMins)}m</p>
            </CardContent>
          </Card>
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium flex items-center gap-2"><Zap className="h-4 w-4" />XP Progress</CardTitle>
            </CardHeader>
            <CardContent>
              <XPBar current={dashboard.xp} required={dashboard.next_level_xp} level={dashboard.level} title={dashboard.level_title} />
            </CardContent>
          </Card>
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium flex items-center gap-2"><Award className="h-4 w-4" />Achievements</CardTitle>
            </CardHeader>
            <CardContent>
              <p className="text-2xl font-bold">{achData?.unlocked || 0} / {achData?.total || 0}</p>
              <Link href="/dashboard/achievements" className="text-xs text-primary hover:underline flex items-center gap-1 mt-1">
                View all <ChevronRight className="h-3 w-3" />
              </Link>
            </CardContent>
          </Card>
        </motion.div>

        {/* SKILL SCORES + CEFR */}
        <motion.div variants={itemVariants} className="grid gap-4 md:grid-cols-5">
          <Card className="md:col-span-4">
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium">Skill Scores</CardTitle>
            </CardHeader>
            <CardContent className="flex justify-around">
              {skillKeys.map((key) => {
                const cfg = skillConfig[key]; const score = dashboard.skill_scores?.[key] || 0
                return <CircularScore key={key} score={score} color={cfg.color} label={cfg.label} />
              })}
            </CardContent>
          </Card>
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium flex items-center gap-2"><Brain className="h-4 w-4" />CEFR</CardTitle>
            </CardHeader>
            <CardContent className="text-center">
              <p className="text-3xl font-bold">{dashboard.cefr_level}</p>
              <p className="text-xs text-muted-foreground mt-1">{getCefrLabel(dashboard.cefr_level)}</p>
            </CardContent>
          </Card>
        </motion.div>

        {/* WEAK & STRONG + LESSONS/MODULES */}
        <motion.div variants={itemVariants} className="grid gap-4 md:grid-cols-2">
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium flex items-center gap-2"><AlertCircle className="h-4 w-4 text-amber-500" />Weak Areas</CardTitle>
            </CardHeader>
            <CardContent>
              {(dashboard.weak_topics?.length > 0) ? (
                <div className="flex flex-wrap gap-1.5">
                  {dashboard.weak_topics.map((t: string) => <Badge key={t} variant="outline" className="text-amber-600 border-amber-300">{t}</Badge>)}
                </div>
              ) : (
                <p className="text-sm text-muted-foreground">Keep going! Weak areas will appear here.</p>
              )}
            </CardContent>
          </Card>
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium flex items-center gap-2"><Sparkles className="h-4 w-4 text-emerald-500" />Strong Areas</CardTitle>
            </CardHeader>
            <CardContent>
              {(dashboard.strong_topics?.length > 0) ? (
                <div className="flex flex-wrap gap-1.5">
                  {dashboard.strong_topics.map((t: string) => <Badge key={t} variant="secondary" className="text-emerald-600">{t}</Badge>)}
                </div>
              ) : (
                <p className="text-sm text-muted-foreground">Complete more exercises to discover your strengths!</p>
              )}
            </CardContent>
          </Card>
        </motion.div>

        {/* LESSONS / MODULES / COURSES / VOCAB */}
        <motion.div variants={itemVariants} className="grid gap-3 grid-cols-2 sm:grid-cols-4">
          <Card><CardContent className="p-4 text-center">
            <p className="text-lg font-bold">{dashboard.lessons_completed}/{dashboard.lessons_total}</p>
            <p className="text-xs text-muted-foreground">Lessons</p>
            <Progress value={dashboard.lessons_total > 0 ? (dashboard.lessons_completed / dashboard.lessons_total) * 100 : 0} className="h-1.5 mt-1" />
          </CardContent></Card>
          <Card><CardContent className="p-4 text-center">
            <p className="text-lg font-bold">{dashboard.modules_completed}/{dashboard.modules_total}</p>
            <p className="text-xs text-muted-foreground">Modules</p>
            <Progress value={dashboard.modules_total > 0 ? (dashboard.modules_completed / dashboard.modules_total) * 100 : 0} className="h-1.5 mt-1" />
          </CardContent></Card>
          <Card><CardContent className="p-4 text-center">
            <p className="text-lg font-bold">{dashboard.courses_completed || 0}</p>
            <p className="text-xs text-muted-foreground">Courses</p>
            <div className="h-1.5 mt-1" />
          </CardContent></Card>
          <Card><CardContent className="p-4 text-center">
            <p className="text-lg font-bold">{dashboard.vocabulary_learned}</p>
            <p className="text-xs text-muted-foreground">Vocabulary</p>
            <Progress value={100} className="h-1.5 mt-1 opacity-0" />
          </CardContent></Card>
        </motion.div>

        {/* VOCAB BREAKDOWN */}
        <motion.div variants={itemVariants}>
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium">Vocabulary Breakdown</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="grid grid-cols-5 gap-2 text-center text-xs">
                {[
                  { label: 'Mastered', value: dashboard.vocabulary_mastered, color: 'text-emerald-500' },
                  { label: 'Learning', value: dashboard.vocabulary_learned - dashboard.vocabulary_mastered, color: 'text-blue-500' },
                  { label: 'Needs Review', value: dashboard.vocabulary_review, color: 'text-amber-500' },
                  { label: 'New', value: dashboard.vocabulary_new, color: 'text-purple-500' },
                ].map(v => (
                  <div key={v.label}>
                    <p className={cn('text-lg font-bold', v.color)}>{Math.max(v.value, 0)}</p>
                    <p className="text-muted-foreground">{v.label}</p>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>
        </motion.div>

        {/* WEEKLY + MONTHLY ACTIVITY */}
        <motion.div variants={itemVariants} className="grid gap-4 md:grid-cols-2">
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium">This Week</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="flex items-end gap-1.5 h-20">
                {weeklyMinutes.map((val, i) => (
                  <div key={i} className="flex-1 flex flex-col items-center gap-1">
                    <div className="w-full rounded-t-sm bg-primary/80" style={{ height: `${Math.max((val / Math.max(...weeklyMinutes, 1)) * 100, val > 0 ? 8 : 0)}%`, minHeight: val > 0 ? 4 : 0 }} />
                    <span className="text-[10px] text-muted-foreground">{dayLabels[i]}</span>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium">Monthly Activity</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="flex items-end gap-1 h-20">
                {monthlyData.map((val, i) => (
                  <div key={i} className="flex-1 flex flex-col items-center gap-1">
                    <div className="w-full rounded-t-sm bg-primary/60" style={{ height: `${(val / Math.max(...monthlyData, 1)) * 100}%`, minHeight: val > 0 ? 4 : 0 }} />
                    <span className="text-[10px] text-muted-foreground">{monthLabels[i]}</span>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>
        </motion.div>

        {/* HEATMAP */}
        <motion.div variants={itemVariants}>
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium flex items-center gap-2"><Calendar className="h-4 w-4" />Activity Heatmap</CardTitle>
              <CardDescription>Last 3 months</CardDescription>
            </CardHeader>
            <CardContent>
              <Heatmap data={heatmapData} />
              <div className="flex items-center gap-1.5 mt-2 justify-end text-[10px] text-muted-foreground">
                <span>Less</span>
                {['bg-muted', 'bg-emerald-200 dark:bg-emerald-900', 'bg-emerald-400 dark:bg-emerald-700', 'bg-emerald-500', 'bg-emerald-700'].map((c, i) => (
                  <div key={i} className={cn('w-3 h-3 rounded', c)} />
                ))}
                <span>More</span>
              </div>
            </CardContent>
          </Card>
        </motion.div>

        {/* GRAMMAR PROGRESS */}
        <motion.div variants={itemVariants}>
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium flex items-center gap-2"><Brain className="h-4 w-4" />Grammar</CardTitle>
            </CardHeader>
            <CardContent className="grid grid-cols-3 gap-4 text-center">
              <div><p className="text-lg font-bold">{dashboard.grammar_lessons}</p><p className="text-xs text-muted-foreground">Lessons</p></div>
              <div><p className="text-lg font-bold">{dashboard.grammar_exercises}</p><p className="text-xs text-muted-foreground">Exercises</p></div>
              <div><p className="text-lg font-bold">{dashboard.grammar_accuracy}%</p><p className="text-xs text-muted-foreground">Accuracy</p></div>
            </CardContent>
          </Card>
        </motion.div>

        {/* TODAY'S PLAN */}
        {dailyPlan?.activities && dailyPlan.activities.length > 0 && (
          <motion.div variants={itemVariants}>
            <Card>
              <CardHeader className="pb-2">
                <CardTitle className="text-sm font-medium flex items-center gap-2"><ListChecks className="h-4 w-4" />Today's Plan</CardTitle>
                <CardDescription>{dailyPlan.total_minutes} minutes</CardDescription>
              </CardHeader>
              <CardContent className="space-y-2">
                {dailyPlan.activities.map((a, i) => (
                  <div key={i} className="flex items-center justify-between p-2 rounded-lg bg-muted/50">
                    <div className="flex items-center gap-2">
                      <span className="text-lg">{a.type === 'listening' ? '🎧' : a.type === 'reading' ? '📖' : a.type === 'writing' ? '✍️' : a.type === 'speaking' ? '🎤' : a.type === 'vocabulary' ? '📝' : '📚'}</span>
                      <div>
                        <p className="text-sm font-medium">{a.title}</p>
                        <p className="text-xs text-muted-foreground">{a.description}</p>
                      </div>
                    </div>
                    <span className="text-sm font-medium">{a.duration_minutes} min</span>
                  </div>
                ))}
              </CardContent>
            </Card>
          </motion.div>
        )}

        {/* RECENT ACTIVITY */}
        <motion.div variants={itemVariants}>
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm font-medium flex items-center gap-2"><Activity className="h-4 w-4" />Recent Activity</CardTitle>
            </CardHeader>
            <CardContent>
              {dashboard.recent_activity?.length > 0 ? (
                <div className="space-y-2">
                  {dashboard.recent_activity.slice(0, 8).map((a, i) => (
                    <div key={i} className="flex items-center justify-between py-1.5 border-b border-border/50 last:border-0">
                      <div className="flex items-center gap-2">
                        <div className={cn('w-2 h-2 rounded-full', a.type === 'lesson_completed' ? 'bg-emerald-500' : a.type === 'quiz_completed' ? 'bg-blue-500' : 'bg-primary')} />
                        <span className="text-sm capitalize">{a.type.replace(/_/g, ' ')}</span>
                      </div>
                      <div className="flex items-center gap-3 text-xs text-muted-foreground">
                        {a.xp > 0 && <span className="text-amber-500">+{a.xp} XP</span>}
                        <span>{timeAgo(a.created_at)}</span>
                      </div>
                    </div>
                  ))}
                </div>
              ) : (
                <p className="text-sm text-muted-foreground text-center py-4">Complete a lesson to see your activity here!</p>
              )}
            </CardContent>
          </Card>
        </motion.div>

        {/* QUICK ACTIONS */}
        <motion.div variants={itemVariants} className="grid gap-3 grid-cols-2 sm:grid-cols-4">
          {[
            { href: '/dashboard/hoeren', label: 'Listening', icon: Headphones },
            { href: '/dashboard/vocabulary', label: 'Vocabulary', icon: BookOpen },
            { href: '/dashboard/schreiben', label: 'Writing', icon: Pen },
            { href: '/dashboard/lesen', label: 'Reading', icon: BookOpenIcon },
          ].map((a) => (
            <Link key={a.href} href={a.href}>
              <Card className="hover:bg-muted/50 transition-colors cursor-pointer">
                <CardContent className="p-4 flex items-center gap-3">
                  <a.icon className="h-5 w-5 text-primary" />
                  <span className="text-sm font-medium">{a.label}</span>
                </CardContent>
              </Card>
            </Link>
          ))}
        </motion.div>
      </motion.div>
    </AppShell>
  )
}
