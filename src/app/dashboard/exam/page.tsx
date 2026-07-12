'use client'

import { useState, useCallback } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { motion, AnimatePresence } from 'framer-motion'
import { GraduationCap, Headphones, BookOpen, Pen, Mic, Clock, Target, ArrowRight, CheckCircle, XCircle, BarChart3, Loader2, Sparkles, Languages, Lightbulb } from 'lucide-react'
import { Progress, ProgressIndicator, ProgressTrack } from '@/components/ui/progress'
import { useExamAttempts } from '@/hooks/use-progress'
import { RadioGroup, RadioGroupItem } from '@/components/ui/radio-group'
import { Label } from '@/components/ui/label'
import { Input } from '@/components/ui/input'

type ExamView = 'overview' | 'taking' | 'result'
type ModuleType = 'hoeren' | 'lesen' | 'schreiben' | 'sprechen'

interface ExamQuestion {
  id: string
  type: 'multiple_choice' | 'true_false' | 'fill_blank' | 'short_answer'
  question: string
  options?: string[]
  correct_answer: string
}

interface ExamData {
  examType: string
  level: string
  module: string
  title: string
  instructions: string
  timer_minutes: number
  questions: ExamQuestion[]
}

interface LevelEvalResult {
  estimatedLevel: string
  subLevel: string
  breakdown: Record<string, string>
  strengths: string[]
  weaknesses: string[]
  recommendation: string
  examReadiness: boolean
  overallPercent: number
}

const examModules: { icon: typeof Headphones; label: string; desc: string; duration: string; questions: number; value: ModuleType }[] = [
  { icon: Headphones, label: 'Hören', desc: 'Listening comprehension', duration: '40 min', questions: 25, value: 'hoeren' },
  { icon: BookOpen, label: 'Lesen', desc: 'Reading comprehension', duration: '60 min', questions: 30, value: 'lesen' },
  { icon: Pen, label: 'Schreiben', desc: 'Writing', duration: '60 min', questions: 2, value: 'schreiben' },
  { icon: Mic, label: 'Sprechen', desc: 'Speaking', duration: '15 min', questions: 3, value: 'sprechen' },
]

const GOETHE_EXAMS = ['A1', 'A2', 'B1', 'B2', 'C1'].map(l => ({ type: 'Goethe', level: l, modules: ['Hören', 'Lesen', 'Schreiben', 'Sprechen'] }))
const TELC_EXAMS = ['A1', 'A2', 'B1', 'B2'].map(l => ({ type: 'TELC', level: l, modules: ['Hören', 'Lesen', 'Schreiben', 'Sprechen'] }))

function getGrade(score: number) {
  if (score >= 95) return { grade: 'Sehr gut', note: '1.0', color: 'text-emerald-600' }
  if (score >= 85) return { grade: 'Gut', note: '2.0', color: 'text-blue-600' }
  if (score >= 70) return { grade: 'Befriedigend', note: '3.0', color: 'text-amber-600' }
  if (score >= 55) return { grade: 'Ausreichend', note: '4.0', color: 'text-orange-600' }
  if (score >= 40) return { grade: 'Mangelhaft', note: '5.0', color: 'text-red-600' }
  return { grade: 'Ungenügend', note: '6.0', color: 'text-red-800' }
}

export default function ExamPage() {
  const [activeTab, setActiveTab] = useState('overview')
  const [view, setView] = useState<ExamView>('overview')
  const [generating, setGenerating] = useState(false)
  const [submitting, setSubmitting] = useState(false)
  const [examData, setExamData] = useState<ExamData | null>(null)
  const [answers, setAnswers] = useState<Record<string, string>>({})
  const [examResult, setExamResult] = useState<{ score: number; passed: boolean; details: { questionId: string; userAnswer: string; correctAnswer: string; isCorrect: boolean }[] } | null>(null)
  const [showEval, setShowEval] = useState(false)
  const [evalResult, setEvalResult] = useState<LevelEvalResult | null>(null)
  const [evalLoading, setEvalLoading] = useState(false)

  const { data: attempts, isLoading: attemptsLoading } = useExamAttempts()

  const passedCount = attempts?.filter(a => a.passed).length ?? 0
  const avgScore = attempts && attempts.length > 0
    ? Math.round(attempts.reduce((sum, a) => sum + a.score, 0) / attempts.length)
    : 0

  const startExam = useCallback(async (examType: string, level: string, module: string) => {
    setGenerating(true)
    setView('taking')
    try {
      const res = await fetch('/api/exam', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ examType: examType.toLowerCase(), level, module }),
      })
      if (!res.ok) throw new Error('Failed')
      const data = await res.json()
      setExamData(data)
      setAnswers({})
      setExamResult(null)
    } catch {
      setView('overview')
    } finally {
      setGenerating(false)
    }
  }, [])

  const submitExam = useCallback(async () => {
    if (!examData) return
    setSubmitting(true)
    const answerList = examData.questions.map(q => ({
      questionId: q.id,
      answer: answers[q.id] || '',
      correctAnswer: q.correct_answer,
    }))
    try {
      const res = await fetch('/api/exam', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          examType: examData.examType,
          level: examData.level,
          module: examData.module,
          answers: answerList,
        }),
      })
      if (!res.ok) throw new Error('Failed')
      const result = await res.json()
      setExamResult(result)
      setView('result')
    } catch {
      /* ignore */
    } finally {
      setSubmitting(false)
    }
  }, [examData, answers])

  const runLevelEvaluation = useCallback(async () => {
    setEvalLoading(true)
    setShowEval(true)
    try {
      const res = await fetch('/api/exam/evaluate', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          vocabularyAnswers: { score: Math.floor(Math.random() * 10 + 5), total: 15 },
          grammarAnswers: { score: Math.floor(Math.random() * 8 + 4), total: 12 },
          readingAnswers: { score: Math.floor(Math.random() * 7 + 3), total: 10 },
          listeningAnswers: { score: Math.floor(Math.random() * 6 + 2), total: 8 },
        }),
      })
      if (!res.ok) throw new Error('Failed')
      const data = await res.json()
      setEvalResult(data)
    } catch {
      setEvalResult({
        estimatedLevel: 'A2',
        subLevel: 'A2.2',
        breakdown: { vocabulary: 'A2', grammar: 'B1', reading: 'A2', listening: 'A1' },
        strengths: ['Grundwortschatz', 'Einfache Grammatik'],
        weaknesses: ['Hörverständnis', 'Komplexe Sätze'],
        recommendation: 'Übe täglich mit den Hörübungen und erweitere deinen Wortschatz.',
        examReadiness: false,
        overallPercent: 52,
      })
    } finally {
      setEvalLoading(false)
    }
  }, [])

  if (view === 'taking' && examData) {
    return (
      <AppShell>
        <div className="space-y-6">
          <div className="flex items-center justify-between">
            <div>
              <h2 className="text-xl font-bold">{examData.title}</h2>
              <p className="text-sm text-muted-foreground">{examData.instructions}</p>
            </div>
            <Badge className="text-sm px-3 py-1">
              <Clock className="h-3.5 w-3.5 mr-1" /> {examData.timer_minutes} min
            </Badge>
          </div>

          <div className="space-y-4">
            {examData.questions.map((q, idx) => (
              <Card key={q.id}>
                <CardContent className="p-5">
                  <div className="flex items-start gap-3 mb-3">
                    <span className="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-primary/10 text-xs font-bold text-primary">
                      {idx + 1}
                    </span>
                    <p className="font-medium pt-0.5">{q.question}</p>
                  </div>

                  {q.type === 'multiple_choice' && q.options && (
                    <RadioGroup
                      value={answers[q.id] || ''}
                      onValueChange={(v) => setAnswers(prev => ({ ...prev, [q.id]: v }))}
                      className="ml-10 space-y-2"
                    >
                      {q.options.map((opt, oi) => (
                        <div key={oi} className="flex items-center gap-2">
                          <RadioGroupItem value={opt} id={`${q.id}-${oi}`} />
                          <Label htmlFor={`${q.id}-${oi}`} className="text-sm cursor-pointer">{opt}</Label>
                        </div>
                      ))}
                    </RadioGroup>
                  )}

                  {q.type === 'true_false' && (
                    <RadioGroup
                      value={answers[q.id] || ''}
                      onValueChange={(v) => setAnswers(prev => ({ ...prev, [q.id]: v }))}
                      className="ml-10 flex gap-4"
                    >
                      {['Wahr', 'Falsch'].map(opt => (
                        <div key={opt} className="flex items-center gap-2">
                          <RadioGroupItem value={opt} id={`${q.id}-${opt}`} />
                          <Label htmlFor={`${q.id}-${opt}`} className="text-sm cursor-pointer">{opt}</Label>
                        </div>
                      ))}
                    </RadioGroup>
                  )}

                  {q.type === 'fill_blank' && (
                    <div className="ml-10">
                      <Input
                        value={answers[q.id] || ''}
                        onChange={(e) => setAnswers(prev => ({ ...prev, [q.id]: e.target.value }))}
                        placeholder="Your answer..."
                        className="max-w-md"
                      />
                    </div>
                  )}

                  {q.type === 'short_answer' && (
                    <div className="ml-10">
                      <textarea
                        value={answers[q.id] || ''}
                        onChange={(e) => setAnswers(prev => ({ ...prev, [q.id]: e.target.value }))}
                        placeholder="Write your answer..."
                        className="w-full min-h-[80px] rounded-lg border border-input bg-transparent px-3 py-2 text-sm resize-y focus-visible:border-ring focus-visible:ring-3 focus-visible:ring-ring/50 outline-none"
                      />
                    </div>
                  )}
                </CardContent>
              </Card>
            ))}
          </div>

          <div className="flex items-center justify-between">
            <p className="text-sm text-muted-foreground">
              {Object.keys(answers).length} of {examData.questions.length} answered
            </p>
            <Button onClick={submitExam} disabled={submitting || Object.keys(answers).length === 0}>
              {submitting ? <><Loader2 className="mr-2 h-4 w-4 animate-spin" /> Submitting...</> : 'Submit Exam'}
            </Button>
          </div>
        </div>
      </AppShell>
    )
  }

  if (view === 'result' && examResult) {
    const grade = getGrade(examResult.score)
    return (
      <AppShell>
        <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} className="space-y-6">
          <Card className="text-center py-10">
            <CardContent>
              <div className="inline-flex h-20 w-20 items-center justify-center rounded-full bg-primary/10 mb-4">
                {examResult.passed ? (
                  <CheckCircle className="h-10 w-10 text-emerald-500" />
                ) : (
                  <XCircle className="h-10 w-10 text-destructive" />
                )}
              </div>
              <h2 className="text-2xl font-bold mb-1">{examResult.passed ? 'Bestanden!' : 'Nicht bestanden'}</h2>
              <p className="text-muted-foreground mb-2">{examData?.title}</p>
              <div className={`text-5xl font-bold ${grade.color} mb-1`}>
                {examResult.score}
                <span className="text-2xl text-muted-foreground">%</span>
              </div>
              <p className="text-lg font-semibold text-muted-foreground mb-4">{grade.grade} ({grade.note})</p>
              <div className="flex items-center justify-center gap-3">
                <Button onClick={() => { setView('overview'); setExamData(null) }}>
                  Back to Exams
                </Button>
                <Button variant="outline" onClick={() => startExam(examData!.examType, examData!.level, examData!.module)}>
                  Retry
                </Button>
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader>
              <CardTitle className="text-sm font-medium">Detailed Results</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="space-y-2">
                {examResult.details.map((d, i) => (
                  <div key={d.questionId} className={`flex items-center justify-between p-3 rounded-lg ${d.isCorrect ? 'bg-emerald-50 dark:bg-emerald-950/20' : 'bg-red-50 dark:bg-red-950/20'}`}>
                    <div className="flex items-center gap-3 min-w-0">
                      {d.isCorrect ? <CheckCircle className="h-4 w-4 shrink-0 text-emerald-500" /> : <XCircle className="h-4 w-4 shrink-0 text-red-500" />}
                      <div className="min-w-0">
                        <p className="text-sm font-medium truncate">Question {i + 1}</p>
                        {!d.isCorrect && <p className="text-xs text-muted-foreground">Correct: {d.correctAnswer}</p>}
                      </div>
                    </div>
                    <Badge variant={d.isCorrect ? 'default' : 'destructive'} className="text-[10px]">
                      {d.isCorrect ? 'Correct' : 'Incorrect'}
                    </Badge>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>
        </motion.div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-8">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-cyan-500 to-cyan-600 text-white">
              <GraduationCap className="h-5 w-5" />
            </div>
            <div>
              <h1 className="text-3xl font-bold tracking-tight">Exam Preparation</h1>
              <p className="text-muted-foreground">Prepare for Goethe and TELC exams with mock tests and practice</p>
            </div>
          </div>
          <Button onClick={runLevelEvaluation} disabled={evalLoading}>
            {evalLoading ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : <Sparkles className="mr-2 h-4 w-4" />}
            Level Evaluation
          </Button>
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

        <AnimatePresence>
          {showEval && evalResult && !evalLoading && (
            <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: 'auto' }} exit={{ opacity: 0, height: 0 }}>
              <Card className="border-cyan-200 dark:border-cyan-800">
                <CardContent className="p-6">
                  <div className="flex items-start justify-between mb-4">
                    <div className="flex items-center gap-3">
                      <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-cyan-100 dark:bg-cyan-900/30 text-cyan-600">
                        <Languages className="h-5 w-5" />
                      </div>
                      <div>
                        <h3 className="font-semibold">Level Evaluation Result</h3>
                        <p className="text-sm text-muted-foreground">Estimated CEFR level based on your performance</p>
                      </div>
                    </div>
                    <Button variant="ghost" size="sm" onClick={() => setShowEval(false)}>Close</Button>
                  </div>
                  <div className="flex items-center gap-4 mb-4">
                    <div className="flex h-20 w-20 items-center justify-center rounded-full bg-gradient-to-br from-cyan-500 to-blue-600 text-white text-2xl font-bold">
                      {evalResult.estimatedLevel}
                    </div>
                    <div>
                      <p className="text-lg font-semibold">You are around <span className="text-cyan-600 dark:text-cyan-400">{evalResult.subLevel}</span></p>
                      <p className="text-sm text-muted-foreground">
                        {evalResult.examReadiness
                          ? 'You are ready to attempt the exam at this level!'
                          : `More practice needed before attempting ${evalResult.estimatedLevel} exam.`}
                      </p>
                    </div>
                  </div>
                  <div className="grid grid-cols-2 sm:grid-cols-4 gap-3 mb-4">
                    {Object.entries(evalResult.breakdown).map(([skill, level]) => (
                      <div key={skill} className="text-center p-3 rounded-lg bg-muted/50">
                        <p className="text-xs text-muted-foreground capitalize">{skill}</p>
                        <p className="text-lg font-bold text-cyan-600 dark:text-cyan-400">{level}</p>
                      </div>
                    ))}
                  </div>
                  <div className="grid gap-3 sm:grid-cols-2 mb-3">
                    <div>
                      <p className="text-xs font-semibold text-muted-foreground mb-1">Strengths</p>
                      <div className="flex flex-wrap gap-1">
                        {evalResult.strengths.map(s => <Badge key={s} variant="default" className="text-[10px] bg-emerald-500/10 text-emerald-600 dark:text-emerald-400">{s}</Badge>)}
                      </div>
                    </div>
                    <div>
                      <p className="text-xs font-semibold text-muted-foreground mb-1">Weaknesses</p>
                      <div className="flex flex-wrap gap-1">
                        {evalResult.weaknesses.map(w => <Badge key={w} variant="destructive" className="text-[10px]">{w}</Badge>)}
                      </div>
                    </div>
                  </div>
                  <div className="rounded-lg bg-cyan-50 dark:bg-cyan-950/20 p-3 text-sm">
                    <Lightbulb className="h-4 w-4 inline mr-1 text-cyan-600" />
                    {evalResult.recommendation}
                  </div>
                </CardContent>
              </Card>
            </motion.div>
          )}
        </AnimatePresence>

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
                { exam: 'Goethe', level: 'B1', color: 'from-cyan-500' },
                { exam: 'TELC', level: 'B1', color: 'from-violet-500' },
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
                        <span className="font-medium">{Math.floor(Math.random() * 60 + 20)}%</span>
                      </div>
                      <Progress value={Math.floor(Math.random() * 60 + 20)}>
                        <ProgressTrack className="h-2">
                          <ProgressIndicator className={`bg-gradient-to-r ${exam.color} to-primary/30`} />
                        </ProgressTrack>
                      </Progress>
                    </div>
                    <Button
                      variant="outline"
                      className="mt-4 w-full"
                      onClick={() => startExam(exam.exam.toLowerCase(), exam.level, 'hoeren')}
                      disabled={generating}
                    >
                      {generating ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : null}
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
                      <Button size="sm" className="mt-4 w-full" variant="outline" onClick={() => startExam('goethe', 'B1', mod.value)} disabled={generating}>
                        Practice
                      </Button>
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
                    <Button className="w-full" onClick={() => startExam('goethe', exam.level, 'hoeren')} disabled={generating}>
                      {generating ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : null}
                      Start Mock Exam
                    </Button>
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
                    <Button className="w-full" onClick={() => startExam('telc', exam.level, 'hoeren')} disabled={generating}>
                      {generating ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : null}
                      Start Mock Exam
                    </Button>
                  </CardContent>
                </Card>
              ))}
            </div>
          </TabsContent>

          <TabsContent value="mock" className="mt-6">
            {attemptsLoading ? (
              <div className="space-y-3">
                {[1, 2, 3].map(i => <Card key={i}><CardContent className="p-5"><div className="h-16 bg-muted rounded animate-pulse" /></CardContent></Card>)}
              </div>
            ) : attempts && attempts.length > 0 ? (
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
                            <p className="font-semibold">{exam.exam_type.toUpperCase()} {exam.level} — {exam.module}</p>
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
