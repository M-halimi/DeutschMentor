'use client'

import { useState, useEffect } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Button } from '@/components/ui/button'
import { Progress } from '@/components/ui/progress'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { motion } from 'framer-motion'
import { cn } from '@/lib/utils'
import { BarChart3, TrendingUp, TrendingDown, Clock, Flame, BookOpen, Headphones, BookMarked, Target, Award, Brain, ArrowUpRight } from 'lucide-react'
import { useLearningAnalytics, useExerciseAttempts, useDashboardStats } from '@/hooks/use-progress'
import { useAuthStore } from '@/stores/auth-store'

export default function AnalyticsPage() {
  const { user } = useAuthStore()
  const { data: analytics, isLoading: analyticsLoading } = useLearningAnalytics()
  const { data: stats, isLoading: statsLoading } = useDashboardStats(user?.id)
  const { data: attempts } = useExerciseAttempts({ limit: 50 })

  const isLoading = analyticsLoading || statsLoading

  if (isLoading) {
    return (
      <AppShell>
        <div className="space-y-6">
          <div className="h-10 w-64 animate-pulse rounded-lg bg-muted" />
          <div className="grid gap-4 md:grid-cols-4">
            {[1, 2, 3, 4].map(i => <div key={i} className="h-24 animate-pulse rounded-xl bg-muted" />)}
          </div>
        </div>
      </AppShell>
    )
  }

  const hours = analytics?.total_study_minutes ? Math.round(analytics.total_study_minutes / 60) : stats?.total_study_hours ?? 0
  const streak = analytics?.current_streak ?? stats?.current_streak ?? 0
  const vocabLearned = analytics?.total_vocabulary_learned ?? stats?.vocabulary_learned ?? 0
  const lessonsDone = analytics?.total_lessons_completed ?? stats?.completed_lessons ?? 0

  const skillScores = [
    { name: 'Hören', score: analytics?.hoeren_score ?? stats?.skill_scores?.hoeren ?? 0, icon: Headphones, color: 'blue' },
    { name: 'Lesen', score: analytics?.lesen_score ?? stats?.skill_scores?.lesen ?? 0, icon: BookOpen, color: 'emerald' },
    { name: 'Schreiben', score: analytics?.schreiben_score ?? stats?.skill_scores?.schreiben ?? 0, icon: BookMarked, color: 'purple' },
    { name: 'Sprechen', score: analytics?.sprechen_score ?? stats?.skill_scores?.sprechen ?? 0, icon: Brain, color: 'orange' },
  ]

  const weakTopics = analytics?.weak_topics ?? stats?.weak_areas ?? []
  const strongTopics = analytics?.strong_topics ?? []

  const monthlyData = analytics?.monthly_minutes ?? []
  const maxMonthly = Math.max(...monthlyData, 1)
  const currentMonth = new Date().getMonth()

  return (
    <AppShell>
      <div className="space-y-8">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-amber-500 to-amber-600 text-white">
            <BarChart3 className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Lernstatistiken</h1>
            <p className="text-muted-foreground">Verfolge deinen Fortschritt und erkenne Verbesserungsbereiche</p>
          </div>
          <Badge variant="outline" className="ml-auto text-sm">
            {analytics?.estimated_cefr_level ?? 'A1'} Niveau
          </Badge>
        </div>

        {/* Stats Grid */}
        <div className="grid gap-4 md:grid-cols-4">
          <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.05 }}>
            <Card className="overflow-hidden">
              <CardContent className="p-5">
                <div className="flex items-center justify-between">
                  <div>
                    <p className="text-sm text-muted-foreground">Lernstunden</p>
                    <p className="text-3xl font-bold mt-1">{hours}</p>
                    <p className="text-xs text-muted-foreground mt-1">Gesamtzeit</p>
                  </div>
                  <div className="flex h-12 w-12 items-center justify-center rounded-full bg-blue-500/10">
                    <Clock className="h-6 w-6 text-blue-500" />
                  </div>
                </div>
              </CardContent>
            </Card>
          </motion.div>

          <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.1 }}>
            <Card className="overflow-hidden">
              <CardContent className="p-5">
                <div className="flex items-center justify-between">
                  <div>
                    <p className="text-sm text-muted-foreground">Aktuelle Serie</p>
                    <p className="text-3xl font-bold mt-1">{streak}</p>
                    <p className="text-xs text-muted-foreground mt-1">{streak === 1 ? 'Tag' : 'Tage'} in Folge</p>
                  </div>
                  <div className="flex h-12 w-12 items-center justify-center rounded-full bg-orange-500/10">
                    <Flame className="h-6 w-6 text-orange-500" />
                  </div>
                </div>
              </CardContent>
            </Card>
          </motion.div>

          <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.15 }}>
            <Card className="overflow-hidden">
              <CardContent className="p-5">
                <div className="flex items-center justify-between">
                  <div>
                    <p className="text-sm text-muted-foreground">Lektionen abgeschlossen</p>
                    <p className="text-3xl font-bold mt-1">{lessonsDone}</p>
                    <p className="text-xs text-muted-foreground mt-1">Abgeschlossen</p>
                  </div>
                  <div className="flex h-12 w-12 items-center justify-center rounded-full bg-emerald-500/10">
                    <BookOpen className="h-6 w-6 text-emerald-500" />
                  </div>
                </div>
              </CardContent>
            </Card>
          </motion.div>

          <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: 0.2 }}>
            <Card className="overflow-hidden">
              <CardContent className="p-5">
                <div className="flex items-center justify-between">
                  <div>
                    <p className="text-sm text-muted-foreground">Wortschatz</p>
                    <p className="text-3xl font-bold mt-1">{vocabLearned}</p>
                    <p className="text-xs text-muted-foreground mt-1">Gelernte Wörter</p>
                  </div>
                  <div className="flex h-12 w-12 items-center justify-center rounded-full bg-rose-500/10">
                    <Target className="h-6 w-6 text-rose-500" />
                  </div>
                </div>
              </CardContent>
            </Card>
          </motion.div>
        </div>

        <Tabs defaultValue="overview">
          <TabsList>
            <TabsTrigger value="overview"><BarChart3 className="mr-2 h-4 w-4" /> Übersicht</TabsTrigger>
            <TabsTrigger value="skills"><Award className="mr-2 h-4 w-4" /> Fertigkeiten</TabsTrigger>
            <TabsTrigger value="activity"><TrendingUp className="mr-2 h-4 w-4" /> Aktivität</TabsTrigger>
          </TabsList>

          <TabsContent value="overview" className="space-y-6 mt-6">
            {/* Skill Scores */}
            <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
              {skillScores.map((skill, i) => (
                <motion.div key={skill.name} initial={{ opacity: 0, scale: 0.9 }} animate={{ opacity: 1, scale: 1 }} transition={{ delay: i * 0.1 }}>
                  <Card>
                    <CardContent className="p-5 text-center">
                      <div className="mx-auto mb-3 flex h-12 w-12 items-center justify-center rounded-full bg-muted">
                        <skill.icon className="h-6 w-6 text-primary" />
                      </div>
                      <p className="text-sm text-muted-foreground mb-1">{skill.name}</p>
                      <p className="text-3xl font-bold">{skill.score}%</p>
                      <Progress value={skill.score} className="mt-2 h-2" />
                    </CardContent>
                  </Card>
                </motion.div>
              ))}
            </div>

            {/* Weak & Strong Topics */}
            <div className="grid gap-4 md:grid-cols-2">
              <Card>
                <CardHeader>
                  <CardTitle className="text-base flex items-center gap-2">
                    <TrendingDown className="h-4 w-4 text-amber-500" />
                    Verbesserungsbereiche
                  </CardTitle>
                  <CardDescription>Themen, die mehr Übung brauchen</CardDescription>
                </CardHeader>
                <CardContent>
                  {weakTopics.length > 0 ? (
                    <div className="flex flex-wrap gap-2">
                      {weakTopics.map((topic: string) => (
                        <Badge key={topic} variant="secondary" className="bg-amber-500/10 text-amber-600 hover:bg-amber-500/20">
                          {topic}
                        </Badge>
                      ))}
                    </div>
                  ) : (
                    <p className="text-sm text-muted-foreground">Noch keine Schwachstellen identifiziert. Weiter üben!</p>
                  )}
                </CardContent>
              </Card>

              <Card>
                <CardHeader>
                  <CardTitle className="text-base flex items-center gap-2">
                    <TrendingUp className="h-4 w-4 text-emerald-500" />
                    Stärken
                  </CardTitle>
                  <CardDescription>Gemeisterte Themen</CardDescription>
                </CardHeader>
                <CardContent>
                  {strongTopics.length > 0 ? (
                    <div className="flex flex-wrap gap-2">
                      {strongTopics.map((topic: string) => (
                        <Badge key={topic} variant="secondary" className="bg-emerald-500/10 text-emerald-600 hover:bg-emerald-500/20">
                          {topic}
                        </Badge>
                      ))}
                    </div>
                  ) : (
                    <p className="text-sm text-muted-foreground">Mache mehr Übungen, um deine Stärken zu identifizieren.</p>
                  )}
                </CardContent>
              </Card>
            </div>

            {/* CEFR Progress */}
            <Card>
              <CardHeader>
                <CardTitle className="text-base flex items-center gap-2">
                  <Award className="h-4 w-4 text-primary" />
                  CEFR-Niveau Fortschritt
                </CardTitle>
                <CardDescription>Dein geschätztes Deutschniveau</CardDescription>
              </CardHeader>
              <CardContent>
                <div className="flex items-center justify-between mb-4">
                  {['A1', 'A2', 'B1', 'B2', 'C1'].map((level) => {
                    const current = analytics?.estimated_cefr_level ?? 'A1'
                    const levelIndex = ['A1', 'A2', 'B1', 'B2', 'C1'].indexOf(level)
                    const currentIndex = ['A1', 'A2', 'B1', 'B2', 'C1'].indexOf(current)
                    const achieved = levelIndex <= currentIndex
                    return (
                      <div key={level} className="flex flex-col items-center gap-1">
                        <div className={cn(
                          'flex h-10 w-10 items-center justify-center rounded-full text-sm font-bold transition-all',
                          achieved ? 'bg-primary text-primary-foreground shadow-md' : 'bg-muted text-muted-foreground'
                        )}>
                          {level}
                        </div>
                        {level === current && (
                          <span className="text-[10px] text-primary font-medium">Aktuell</span>
                        )}
                      </div>
                    )
                  })}
                </div>
                <div className="relative h-2 bg-muted rounded-full overflow-hidden">
                  <div
                    className="absolute inset-y-0 left-0 bg-gradient-to-r from-primary/60 to-primary rounded-full transition-all"
                    style={{ width: `${(['A1', 'A2', 'B1', 'B2', 'C1'].indexOf(analytics?.estimated_cefr_level ?? 'A1') + 1) * 20}%` }}
                  />
                </div>
                <p className="text-xs text-muted-foreground mt-2">
                  Nächstes Ziel: {['A1', 'A2', 'B1', 'B2', 'C1'][Math.min(['A1', 'A2', 'B1', 'B2', 'C1'].indexOf(analytics?.estimated_cefr_level ?? 'A1') + 1, 4)]}
                </p>
              </CardContent>
            </Card>

            {/* Exam Readiness */}
            {analytics && (
              <Card>
                <CardHeader>
                  <CardTitle className="text-base flex items-center gap-2">
                    <Target className="h-4 w-4 text-primary" />
                    Prüfungsbereitschaft
                  </CardTitle>
                  <CardDescription>Wie gut du auf Goethe-/TELC-Prüfungen vorbereitet bist</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="grid gap-4 md:grid-cols-4">
                    {[
                      { label: 'Hören', value: analytics.hoeren_score },
                      { label: 'Lesen', value: analytics.lesen_score },
                      { label: 'Schreiben', value: analytics.schreiben_score },
                      { label: 'Sprechen', value: analytics.sprechen_score },
                    ].map((s) => {
                      const readiness = Math.min(100, Math.round((s.value / 100) * 100))
                      const isReady = readiness >= 60
                      return (
                        <div key={s.label} className="text-center">
                          <p className="text-sm text-muted-foreground mb-1">{s.label}</p>
                          <p className="text-2xl font-bold">{readiness}%</p>
                          <Badge variant={isReady ? 'default' : 'secondary'} className="mt-1 text-xs">
                            {isReady ? 'Bereit' : 'Mehr Übung nötig'}
                          </Badge>
                        </div>
                      )
                    })}
                  </div>
                </CardContent>
              </Card>
            )}
          </TabsContent>

          <TabsContent value="skills" className="space-y-6 mt-6">
            <div className="grid gap-6 md:grid-cols-2">
              {skillScores.map((skill, i) => (
                <motion.div key={skill.name} initial={{ opacity: 0, x: -20 }} animate={{ opacity: 1, x: 0 }} transition={{ delay: i * 0.1 }}>
                  <Card>
                    <CardHeader>
                      <div className="flex items-center gap-3">
                        <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-muted">
                          <skill.icon className="h-5 w-5" />
                        </div>
                        <div>
                          <CardTitle className="text-base">{skill.name}</CardTitle>
                          <CardDescription>{skill.score}% Kenntnisse</CardDescription>
                        </div>
                      </div>
                    </CardHeader>
                    <CardContent>
                      <Progress value={skill.score} className="h-3 mb-4" />
                      <div className="grid grid-cols-2 gap-2 text-sm">
                        <div className="p-2 rounded-lg bg-muted/50">
                          <p className="text-muted-foreground">Übungen</p>
                          <p className="font-medium">{attempts?.filter((a: { exercise_type: string }) => a.exercise_type === skill.name.toLowerCase()).length ?? 0}</p>
                        </div>
                        <div className="p-2 rounded-lg bg-muted/50">
                          <p className="text-muted-foreground">Genauigkeit</p>
                          <p className="font-medium">{skill.score}%</p>
                        </div>
                      </div>
                    </CardContent>
                  </Card>
                </motion.div>
              ))}
            </div>
          </TabsContent>

          <TabsContent value="activity" className="space-y-6 mt-6">
            <Card>
              <CardHeader>
                <CardTitle className="text-base flex items-center gap-2">
                  <BarChart3 className="h-4 w-4 text-primary" />
                  Monatliche Lernaktivität
                </CardTitle>
                <CardDescription>Gelernte Minuten pro Monat</CardDescription>
              </CardHeader>
              <CardContent>
                <div className="flex items-end gap-2 h-40">
                  {monthlyData.map((minutes: number, i: number) => (
                    <div key={i} className="flex-1 flex flex-col items-center gap-1">
                      <span className="text-[10px] text-muted-foreground font-medium">
                        {minutes > 0 ? `${Math.round(minutes / 60)}h` : ''}
                      </span>
                      <div
                        className={cn(
                          'w-full rounded-t transition-all',
                          i === currentMonth ? 'bg-primary shadow-sm' : 'bg-primary/30'
                        )}
                        style={{ height: `${(minutes / maxMonthly) * 100}%`, minHeight: minutes > 0 ? '4px' : '2px' }}
                      />
                      <span className="text-[10px] text-muted-foreground">
                        {['J', 'F', 'M', 'A', 'M', 'J', 'J', 'A', 'S', 'O', 'N', 'D'][i]}
                      </span>
                    </div>
                  ))}
                </div>
                {monthlyData.every((m: number) => m === 0) && (
                  <p className="text-center text-sm text-muted-foreground py-8">
                    Noch keine Aktivitätsdaten. Beginne mit dem Üben, um deine monatlichen Fortschritte zu sehen!
                  </p>
                )}
              </CardContent>
            </Card>

            {/* Recent Activity */}
            <Card>
              <CardHeader>
                <CardTitle className="text-base">Letzte Aktivität</CardTitle>
                <CardDescription>Deine letzten Lernaktivitäten</CardDescription>
              </CardHeader>
              <CardContent>
                {attempts && attempts.length > 0 ? (
                  <div className="space-y-3">
                    {attempts.slice(0, 10).map((attempt: { id: string; exercise_type: string; correct: boolean; created_at: string }) => (
                      <div key={attempt.id} className="flex items-center gap-3 p-2 rounded-lg hover:bg-muted/50 transition-colors">
                        <div className={cn(
                          'flex h-8 w-8 items-center justify-center rounded-full',
                          attempt.correct ? 'bg-emerald-500/10' : 'bg-red-500/10'
                        )}>
                          {attempt.correct ? (
                            <TrendingUp className="h-4 w-4 text-emerald-500" />
                          ) : (
                            <TrendingDown className="h-4 w-4 text-red-500" />
                          )}
                        </div>
                        <div className="flex-1 min-w-0">
                          <p className="text-sm font-medium capitalize">{attempt.exercise_type}</p>
                          <p className="text-xs text-muted-foreground">
                            {new Date(attempt.created_at).toLocaleDateString()} · {attempt.correct ? 'Richtig' : 'Falsch'}
                          </p>
                        </div>
                        <Badge variant={attempt.correct ? 'default' : 'secondary'} className="text-xs">
                          {attempt.correct ? 'Bestanden' : 'Nicht bestanden'}
                        </Badge>
                      </div>
                    ))}
                  </div>
                ) : (
                  <div className="text-center py-8">
                    <BarChart3 className="h-12 w-12 text-muted-foreground mx-auto mb-3" />
                    <p className="text-sm text-muted-foreground">Noch keine Aktivität. Mache ein paar Übungen, um deinen Fortschritt zu sehen!</p>
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


