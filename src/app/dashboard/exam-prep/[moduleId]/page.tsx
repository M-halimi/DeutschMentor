'use client'

import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { useParams } from 'next/navigation'
import { useState } from 'react'
import { toast } from 'sonner'
import { ChevronLeft, Target, CheckCircle2, XCircle, RotateCcw, Loader2, Clock } from 'lucide-react'
import { LinkButton } from '@/components/shared/link-button'

export default function ExamPrepModulePage() {
  const params = useParams()
  const moduleId = params.moduleId as string
  const queryClient = useQueryClient()
  const [answers, setAnswers] = useState<string[]>([])
  const [result, setResult] = useState<any>(null)
  const [startTime] = useState(Date.now())

  const { data: module, isLoading } = useQuery({
    queryKey: ['exam-prep-module', moduleId],
    queryFn: async () => {
      const res = await fetch(`/api/exam-prep?module=${moduleId}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    enabled: !!moduleId,
  })

  const submitMutation = useMutation({
    mutationFn: async ({ answers: ans, timeSpentMinutes: t }: { answers: string[]; timeSpentMinutes: number }) => {
      const res = await fetch('/api/exam-prep', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action: 'submit', moduleId, answers: ans, timeSpentMinutes: t }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['exam-prep-module', moduleId] })
      setResult(data)
      toast[data.passed ? 'success' : 'error'](data.passed ? 'Passed!' : 'Keep practicing!')
    },
    onError: () => toast.error('Failed to submit'),
  })

  if (isLoading) return (
    <AppShell><div className="flex justify-center py-20"><Loader2 className="h-8 w-8 animate-spin" /></div></AppShell>
  )

  if (!module) return (
    <AppShell>
      <div className="text-center py-20">
        <Target className="h-12 w-12 text-muted-foreground/50 mx-auto mb-4" />
        <h3 className="font-semibold mb-2">Module not found</h3>
        <LinkButton href="/dashboard/exam-prep" variant="outline">Back to Exam Prep</LinkButton>
      </div>
    </AppShell>
  )

  const questions = module.questions ?? []
  const prevAttempts = module.previous_attempts ?? []
  const bestAttempt = prevAttempts.length > 0 ? Math.max(...prevAttempts.map((a: any) => a.score)) : 0

  if (result) {
    return (
      <AppShell>
        <div className="space-y-6">
          <div className="flex items-center gap-3">
            <LinkButton href="/dashboard/exam-prep" variant="ghost" size="icon">
              <ChevronLeft className="h-4 w-4" />
            </LinkButton>
            <h1 className="text-xl font-bold">Results</h1>
          </div>
          <Card className={result.passed ? 'border-green-500' : 'border-destructive'}>
            <CardContent className="p-6 text-center">
              {result.passed ? <CheckCircle2 className="h-12 w-12 text-green-500 mx-auto mb-3" /> : <XCircle className="h-12 w-12 text-destructive mx-auto mb-3" />}
              <h2 className="text-xl font-bold mb-1">{result.passed ? 'Passed!' : 'Not Quite'}</h2>
              <p className="text-3xl font-bold mb-1">{result.percentage}%</p>
              <p className="text-sm text-muted-foreground">{result.score} / {result.total_points} points (pass: {module.pass_threshold}%)</p>
              <div className="flex items-center justify-center gap-3 mt-4">
                <Button variant="outline" onClick={() => { setResult(null); setAnswers([]) }}>
                  <RotateCcw className="h-4 w-4 mr-1.5" /> Retry
                </Button>
                <LinkButton href="/dashboard/exam-prep">More Modules</LinkButton>
              </div>
            </CardContent>
          </Card>
          <div className="space-y-2">
            {questions.map((q: any, i: number) => {
              const ans = result.answers?.[i]
              return (
                <Card key={q.id}>
                  <CardContent className="p-3 flex items-start gap-3">
                    {ans?.correct ? <CheckCircle2 className="h-5 w-5 text-green-500 mt-0.5 shrink-0" /> : <XCircle className="h-5 w-5 text-destructive mt-0.5 shrink-0" />}
                    <div className="min-w-0 flex-1">
                      <p className="text-sm font-medium">{q.question}</p>
                      <p className="text-xs text-muted-foreground">Your answer: {ans?.answer ?? '-'}</p>
                      {!ans?.correct && <p className="text-xs text-green-600">Correct: {q.correct_answer}</p>}
                      {q.explanation && <p className="text-xs text-muted-foreground mt-1">{q.explanation}</p>}
                    </div>
                  </CardContent>
                </Card>
              )
            })}
          </div>
        </div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <LinkButton href="/dashboard/exam-prep" variant="ghost" size="icon">
            <ChevronLeft className="h-4 w-4" />
          </LinkButton>
          <div className="flex-1 min-w-0">
            <h1 className="text-xl font-bold">{module.title}</h1>
            <div className="flex items-center gap-2 text-sm text-muted-foreground">
              <Badge variant="outline" className="text-xs">{module.exam_type?.toUpperCase()}</Badge>
              <Badge variant="secondary" className="text-xs capitalize">{module.module_type.replace('_', ' ')}</Badge>
              <span>{module.total_points} pts</span>
              {module.time_limit_minutes && <span><Clock className="h-3 w-3 inline mr-0.5" />{module.time_limit_minutes} min</span>}
            </div>
          </div>
          {bestAttempt > 0 && <div className="text-right text-sm">Best: <span className="font-bold">{bestAttempt}/{module.total_points}</span></div>}
        </div>

        <div className="space-y-4">
          {questions.map((q: any, i: number) => (
            <Card key={q.id}>
              <CardContent className="p-4">
                <div className="flex items-center gap-2 mb-3">
                  <span className="text-sm font-medium text-muted-foreground">Q{i + 1}</span>
                  <Badge variant="outline" className="text-xs">{q.question_type.replace('_', ' ')}</Badge>
                  <span className="text-xs text-muted-foreground">{q.points} pt</span>
                </div>
                <p className="font-medium mb-3">{q.question}</p>
                {q.options?.length > 0 ? (
                  <div className="space-y-2">
                    {q.options.map((opt: string, j: number) => (
                      <label key={j} className={`flex items-center gap-2 p-2 rounded cursor-pointer text-sm ${answers[i] === opt ? 'bg-primary/10 border border-primary/30' : 'bg-muted hover:bg-muted/80'}`}>
                        <input type="radio" name={`q-${q.id}`} value={opt} checked={answers[i] === opt} onChange={e => { const a = [...answers]; a[i] = e.target.value; setAnswers(a) }} className="accent-primary" />
                        {opt}
                      </label>
                    ))}
                  </div>
                ) : (
                  <Input value={answers[i] ?? ''} onChange={e => { const a = [...answers]; a[i] = e.target.value; setAnswers(a) }} placeholder="Type your answer" />
                )}
              </CardContent>
            </Card>
          ))}
        </div>

        <Button
          onClick={() => submitMutation.mutate({ answers, timeSpentMinutes: Math.round((Date.now() - startTime) / 60000) })}
          disabled={answers.some(a => !a) || submitMutation.isPending || answers.length !== questions.length}
          className="w-full"
        >
          {submitMutation.isPending ? <Loader2 className="h-4 w-4 animate-spin mr-1" /> : <Target className="h-4 w-4 mr-1" />}
          Submit Answers
        </Button>
      </div>
    </AppShell>
  )
}
