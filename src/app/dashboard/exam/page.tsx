'use client'

import { useState } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { motion } from 'framer-motion'
import { GraduationCap, Headphones, BookOpen, Pen, Mic, Clock, Target, ArrowRight, CheckCircle, XCircle, BarChart3 } from 'lucide-react'
import { Progress } from '@/components/ui/progress'
import { useExamAttempts } from '@/hooks/use-progress'

const examModules = [
  { icon: Headphones, label: 'Hören', desc: 'Listening comprehension', duration: '40 min', questions: 25 },
  { icon: BookOpen, label: 'Lesen', desc: 'Reading comprehension', duration: '60 min', questions: 30 },
  { icon: Pen, label: 'Schreiben', desc: 'Writing', duration: '60 min', questions: 2 },
  { icon: Mic, label: 'Sprechen', desc: 'Speaking', duration: '15 min', questions: 3 },
]

const GOETHE_EXAMS = [
  { type: 'Goethe', level: 'A1', modules: ['Hören', 'Lesen', 'Schreiben', 'Sprechen'] },
  { type: 'Goethe', level: 'A2', modules: ['Hören', 'Lesen', 'Schreiben', 'Sprechen'] },
  { type: 'Goethe', level: 'B1', modules: ['Hören', 'Lesen', 'Schreiben', 'Sprechen'] },
  { type: 'Goethe', level: 'B2', modules: ['Hören', 'Lesen', 'Schreiben', 'Sprechen'] },
  { type: 'Goethe', level: 'C1', modules: ['Hören', 'Lesen', 'Schreiben', 'Sprechen'] },
]

const TELC_EXAMS = [
  { type: 'TELC', level: 'A1', modules: ['Hören', 'Lesen', 'Schreiben', 'Sprechen'] },
  { type: 'TELC', level: 'A2', modules: ['Hören', 'Lesen', 'Schreiben', 'Sprechen'] },
  { type: 'TELC', level: 'B1', modules: ['Hören', 'Lesen', 'Schreiben', 'Sprechen'] },
  { type: 'TELC', level: 'B2', modules: ['Hören', 'Lesen', 'Schreiben', 'Sprechen'] },
]

export default function ExamPage() {
  const [activeTab, setActiveTab] = useState('overview')
  const { data: attempts } = useExamAttempts()

  const passedCount = attempts?.filter(a => a.passed).length ?? 0
  const avgScore = attempts && attempts.length > 0
    ? Math.round(attempts.reduce((sum, a) => sum + a.score, 0) / attempts.length)
    : 0

  return (
    <AppShell>
      <div className="space-y-8">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-cyan-500 to-cyan-600 text-white">
            <GraduationCap className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Exam Preparation</h1>
            <p className="text-muted-foreground">Prepare for Goethe and TELC exams with mock tests and practice</p>
          </div>
        </div>

        <div className="grid gap-4 md:grid-cols-4">
          <Card><CardContent className="p-4 text-center">
            <p className="text-2xl font-bold">{attempts?.length ?? 0}</p>
            <p className="text-sm text-muted-foreground">Mock Exams</p>
          </CardContent></Card>
          <Card><CardContent className="p-4 text-center">
            <p className="text-2xl font-bold">{passedCount}</p>
            <p className="text-sm text-muted-foreground">Passed</p>
          </CardContent></Card>
          <Card><CardContent className="p-4 text-center">
            <p className="text-2xl font-bold">{avgScore}%</p>
            <p className="text-sm text-muted-foreground">Average Score</p>
          </CardContent></Card>
          <Card><CardContent className="p-4 text-center">
            <p className="text-2xl font-bold">{attempts?.filter(a => !a.passed).length ?? 0}</p>
            <p className="text-sm text-muted-foreground">Needs Review</p>
          </CardContent></Card>
        </div>

        <Tabs value={activeTab} onValueChange={setActiveTab}>
          <TabsList>
            <TabsTrigger value="overview">Overview</TabsTrigger>
            <TabsTrigger value="goethe">Goethe</TabsTrigger>
            <TabsTrigger value="telc">TELC</TabsTrigger>
            <TabsTrigger value="mock">Mock Exams</TabsTrigger>
          </TabsList>

          <TabsContent value="overview" className="mt-6">
            <div className="grid gap-4 md:grid-cols-2">
              {[
                { exam: 'Goethe', level: 'B1', progress: 65, color: 'from-cyan-500' },
                { exam: 'TELC', level: 'B1', progress: 40, color: 'from-violet-500' },
              ].map((exam) => (
                <Card key={exam.exam} className="hover:border-primary/50 transition-colors">
                  <CardContent className="p-6">
                    <div className="flex items-center justify-between mb-4">
                      <div>
                        <h3 className="font-semibold text-lg">{exam.exam} {exam.level}</h3>
                        <p className="text-sm text-muted-foreground">Practice progress</p>
                      </div>
                      <Target className="h-8 w-8 text-muted-foreground" />
                    </div>
                    <div className="space-y-2">
                      <div className="flex justify-between text-sm">
                        <span className="text-muted-foreground">Preparation</span>
                        <span className="font-medium">{exam.progress}%</span>
                      </div>
                      <Progress value={exam.progress} className={`h-2 bg-gradient-to-r ${exam.color} to-primary/30`} />
                    </div>
                    <Button variant="outline" className="mt-4 w-full">
                      Start Practice <ArrowRight className="ml-2 h-4 w-4" />
                    </Button>
                  </CardContent>
                </Card>
              ))}
            </div>

            <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4 mt-6">
              {examModules.map((mod, i) => (
                <motion.div key={mod.label} initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.1 }}>
                  <Card>
                    <CardContent className="p-6 text-center">
                      <div className="mb-4 flex justify-center">
                        <div className="flex h-12 w-12 items-center justify-center rounded-lg bg-primary/10">
                          <mod.icon className="h-6 w-6 text-primary" />
                        </div>
                      </div>
                      <h3 className="font-semibold">{mod.label}</h3>
                      <p className="text-sm text-muted-foreground mb-3">{mod.desc}</p>
                      <div className="space-y-1 text-xs text-muted-foreground">
                        <p>{mod.duration} · {mod.questions} questions</p>
                      </div>
                      <Button size="sm" className="mt-4 w-full" variant="outline">Practice</Button>
                    </CardContent>
                  </Card>
                </motion.div>
              ))}
            </div>
          </TabsContent>

          <TabsContent value="goethe" className="mt-6">
            <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
              {GOETHE_EXAMS.map((exam) => (
                <Card key={`${exam.type}-${exam.level}`} className="hover:border-primary/50 transition-colors">
                  <CardContent className="p-6">
                    <div className="flex items-center justify-between mb-4">
                      <Badge className="text-sm px-3 py-1">{exam.type} {exam.level}</Badge>
                      <GraduationCap className="h-5 w-5 text-muted-foreground" />
                    </div>
                    <p className="text-sm text-muted-foreground mb-4">{exam.modules.join(' · ')}</p>
                    <Button className="w-full">Start Mock Exam</Button>
                  </CardContent>
                </Card>
              ))}
            </div>
          </TabsContent>

          <TabsContent value="telc" className="mt-6">
            <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
              {TELC_EXAMS.map((exam) => (
                <Card key={`${exam.type}-${exam.level}`} className="hover:border-primary/50 transition-colors">
                  <CardContent className="p-6">
                    <div className="flex items-center justify-between mb-4">
                      <Badge variant="secondary" className="text-sm px-3 py-1">{exam.type} {exam.level}</Badge>
                      <GraduationCap className="h-5 w-5 text-muted-foreground" />
                    </div>
                    <p className="text-sm text-muted-foreground mb-4">{exam.modules.join(' · ')}</p>
                    <Button className="w-full">Start Mock Exam</Button>
                  </CardContent>
                </Card>
              ))}
            </div>
          </TabsContent>

          <TabsContent value="mock" className="mt-6">
            {attempts && attempts.length > 0 ? (
              <div className="space-y-4">
                {attempts.map((exam) => (
                  <Card key={exam.id}>
                    <CardContent className="flex items-center justify-between p-5">
                      <div className="flex items-center gap-4">
                        {exam.passed ? (
                          <CheckCircle className="h-10 w-10 text-emerald-500" />
                        ) : (
                          <XCircle className="h-10 w-10 text-destructive" />
                        )}
                        <div>
                          <div className="flex items-center gap-2">
                            <p className="font-semibold">{exam.exam_type} {exam.level} — {exam.module}</p>
                            <Badge variant={exam.passed ? 'default' : 'destructive'}>
                              {exam.passed ? 'Passed' : 'Failed'}
                            </Badge>
                          </div>
                          <p className="text-sm text-muted-foreground">
                            {new Date(exam.attempt_date).toLocaleDateString()}
                          </p>
                        </div>
                      </div>
                      <div className="text-right">
                        <p className="text-2xl font-bold">{exam.score}%</p>
                        <p className="text-xs text-muted-foreground">of {exam.max_score}</p>
                      </div>
                    </CardContent>
                  </Card>
                ))}
              </div>
            ) : (
              <Card>
                <CardContent className="p-8 text-center text-muted-foreground">
                  No mock exams attempted yet. Start one above!
                </CardContent>
              </Card>
            )}
          </TabsContent>
        </Tabs>
      </div>
    </AppShell>
  )
}
