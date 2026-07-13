'use client'

import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { useParams } from 'next/navigation'
import Link from 'next/link'
import { useState } from 'react'
import { toast } from 'sonner'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Button } from '@/components/ui/button'
import { Progress } from '@/components/ui/progress'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { LinkButton } from '@/components/shared/link-button'
import { ChevronLeft, BookOpen, Volume2, CheckCircle2, XCircle, Target, RotateCcw, ArrowRight, Mic, Pen, FileText, Headphones, Loader2 } from 'lucide-react'
import type { CourseLessonFull, LessonExercise, LessonTestQuestion, LessonVocabulary, LessonGrammar } from '@/types'

export default function CourseLessonPage() {
  const params = useParams()
  const levelParam = params.level as string
  const lessonId = params.lesson as string
  const queryClient = useQueryClient()

  const { data: lesson, isLoading, error } = useQuery<CourseLessonFull>({
    queryKey: ['course-lesson', lessonId],
    queryFn: async () => {
      const res = await fetch(`/api/courses?lesson=${lessonId}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    enabled: !!lessonId,
  })

  const saveProgress = useMutation({
    mutationFn: async (data: { completed?: boolean; score?: number; timeSpentMinutes?: number }) => {
      const res = await fetch('/api/courses', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action: 'save_progress', lessonId, moduleId: lesson?.module_id, ...data }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['course-lesson', lessonId] })
      queryClient.invalidateQueries({ queryKey: ['course-modules'] })
      toast.success('Progress saved')
    },
  })

  const submitTest = useMutation({
    mutationFn: async (answers: string[]) => {
      const res = await fetch('/api/courses', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action: 'submit_test', lessonId, answers }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['course-lesson', lessonId] })
      queryClient.invalidateQueries({ queryKey: ['module-lessons'] })
      setTestResult(data)
      toast[data.passed ? 'success' : 'error'](data.passed ? 'Test passed!' : 'Test failed. Try again!')
    },
  })

  const [testResult, setTestResult] = useState<any>(null)

  const lessonType = lesson?.lesson_type ?? 'vocabulary'
  const showOverview = lessonType !== 'test'
  const showVocab = lessonType === 'vocabulary' || lessonType === 'grammar' || lessonType === 'review'
  const showGrammar = lessonType === 'vocabulary' || lessonType === 'grammar' || lessonType === 'review'
  const showExercises = ['vocabulary', 'grammar', 'review'].includes(lessonType)
  const showTest = true
  const showReading = lessonType === 'reading'
  const showListening = lessonType === 'listening'
  const showSpeaking = lessonType === 'speaking'
  const showWriting = lessonType === 'writing'

  const tabs = [
    ...(showOverview ? [{ value: 'overview', label: 'Overview' }] : []),
    ...(showReading ? [{ value: 'reading', label: 'Reading' }] : []),
    ...(showListening ? [{ value: 'listening', label: 'Listening' }] : []),
    ...(showSpeaking ? [{ value: 'speaking', label: 'Speaking' }] : []),
    ...(showWriting ? [{ value: 'writing', label: 'Writing' }] : []),
    ...(showVocab && (lesson?.vocabulary?.length ?? 0) > 0 ? [{ value: 'vocabulary', label: 'Vocabulary' }] : []),
    ...(showGrammar && (lesson?.grammar?.length ?? 0) > 0 ? [{ value: 'grammar', label: 'Grammar' }] : []),
    ...(showExercises && (lesson?.exercises?.length ?? 0) > 0 ? [{ value: 'exercises', label: 'Exercises' }] : []),
    ...(showTest && (lesson?.test_questions?.length ?? 0) > 0 ? [{ value: 'test', label: 'Lesson Test' }] : []),
  ]

  if (isLoading) return (
    <AppShell><div className="flex justify-center py-20"><Loader2 className="h-8 w-8 animate-spin text-muted-foreground" /></div></AppShell>
  )
  if (error || !lesson) return (
    <AppShell>
      <div className="text-center py-20">
        <BookOpen className="h-12 w-12 text-muted-foreground/50 mx-auto mb-4" />
        <h3 className="font-semibold mb-2">Lesson not found</h3>
        <LinkButton href={`/dashboard/courses/${levelParam}`} variant="outline">Back to Level</LinkButton>
      </div>
    </AppShell>
  )

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <LinkButton href={`/dashboard/courses/${levelParam}`} variant="ghost" size="icon">
            <ChevronLeft className="h-4 w-4" />
          </LinkButton>
          <div className="flex-1 min-w-0">
            <div className="flex items-center gap-2 mb-0.5">
              <Badge variant="outline" className="text-xs">{levelParam?.toUpperCase()}</Badge>
              <Badge variant="secondary" className="text-xs capitalize">{lessonType}</Badge>
              {lesson.topic && <Badge variant="secondary" className="text-xs">{lesson.topic}</Badge>}
            </div>
            <h1 className="text-xl font-bold truncate">{lesson.title}</h1>
          </div>
          {lesson.progress != null && lesson.progress > 0 && (
            <div className="text-right shrink-0">
              <div className="text-sm font-medium">{lesson.progress}%</div>
              <Progress value={lesson.progress ?? null} className="h-1.5 w-20" />
            </div>
          )}
        </div>

        <Tabs defaultValue={tabs[0]?.value ?? 'overview'}>
          {tabs.length > 0 && (
            <TabsList className="flex-wrap">
              {tabs.map(t => <TabsTrigger key={t.value} value={t.value}>{t.label}</TabsTrigger>)}
            </TabsList>
          )}

          {showOverview && (
            <TabsContent value="overview">
              <OverviewSection lesson={lesson} lessonType={lessonType} />
            </TabsContent>
          )}

          {showReading && (
            <TabsContent value="reading">
              <ReadingSection lesson={lesson} />
            </TabsContent>
          )}

          {showListening && (
            <TabsContent value="listening">
              <ListeningSection lesson={lesson} />
            </TabsContent>
          )}

          {showSpeaking && (
            <TabsContent value="speaking">
              <SpeakingSection lesson={lesson} />
            </TabsContent>
          )}

          {showWriting && (
            <TabsContent value="writing">
              <WritingSection lesson={lesson} />
            </TabsContent>
          )}

          {showVocab && lesson.vocabulary.length > 0 && (
            <TabsContent value="vocabulary">
              <VocabularySection vocabulary={lesson.vocabulary} />
            </TabsContent>
          )}

          {showGrammar && lesson.grammar.length > 0 && (
            <TabsContent value="grammar">
              <GrammarSection grammar={lesson.grammar} />
            </TabsContent>
          )}

          {showExercises && lesson.exercises.length > 0 && (
            <TabsContent value="exercises">
              <ExercisesSection exercises={lesson.exercises} onComplete={() => saveProgress.mutate({})} />
            </TabsContent>
          )}

          {showTest && lesson.test_questions.length > 0 && (
            <TabsContent value="test">
              {testResult ? (
                <TestResultSection result={testResult} questions={lesson.test_questions} onRetry={() => setTestResult(null)} />
              ) : (
                <TestSection questions={lesson.test_questions} onSubmit={(answers) => submitTest.mutate(answers)} isPending={submitTest.isPending} />
              )}
            </TabsContent>
          )}
        </Tabs>
      </div>
    </AppShell>
  )
}

// === OVERVIEW ===
function OverviewSection({ lesson, lessonType }: { lesson: CourseLessonFull; lessonType: string }) {
  const typeIcons: Record<string, React.ReactNode> = {
    vocabulary: <BookOpen className="h-8 w-8" />,
    grammar: <FileText className="h-8 w-8" />,
    reading: <BookOpen className="h-8 w-8" />,
    listening: <Headphones className="h-8 w-8" />,
    speaking: <Mic className="h-8 w-8" />,
    writing: <Pen className="h-8 w-8" />,
    review: <RotateCcw className="h-8 w-8" />,
    test: <Target className="h-8 w-8" />,
  }

  return (
    <div className="space-y-4">
      <Card>
        <CardContent className="p-6">
          <div className="flex items-start gap-4">
            <div className="p-3 rounded-lg bg-primary/10 text-primary">{typeIcons[lessonType] ?? <BookOpen className="h-8 w-8" />}</div>
            <div className="flex-1 min-w-0">
              <h2 className="text-lg font-semibold mb-1">{lesson.title}</h2>
              <p className="text-sm text-muted-foreground">{lesson.description}</p>
              <div className="flex items-center gap-3 mt-3 text-sm text-muted-foreground">
                <span>Duration: ~{lesson.duration_minutes} min</span>
                <span>Type: <span className="capitalize">{lessonType}</span></span>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>

      {lesson.module && (
        <Card>
          <CardHeader><CardTitle className="text-sm">Module</CardTitle></CardHeader>
          <CardContent>
            <p className="font-medium">{lesson.module.title}</p>
            {lesson.module.objectives?.map((obj: string, i: number) => (
              <p key={i} className="text-sm text-muted-foreground flex items-start gap-2 mt-1">
                <Target className="h-3.5 w-3.5 mt-0.5 shrink-0" />
                {obj}
              </p>
            ))}
          </CardContent>
        </Card>
      )}

      {lesson.objectives && lesson.objectives.length > 0 && (
        <Card>
          <CardHeader><CardTitle className="text-sm">Learning Objectives</CardTitle></CardHeader>
          <CardContent>
            <ul className="space-y-1">
              {lesson.objectives.map((obj: string, i: number) => (
                <li key={i} className="flex items-start gap-2 text-sm">
                  <CheckCircle2 className="h-4 w-4 text-primary mt-0.5 shrink-0" />
                  {obj}
                </li>
              ))}
            </ul>
          </CardContent>
        </Card>
      )}
    </div>
  )
}

// === READING ===
function ReadingSection({ lesson }: { lesson: CourseLessonFull }) {
  const content = lesson.source_content as Record<string, any> | null
  const [showTranslation, setShowTranslation] = useState(false)

  if (!content) return <p className="text-muted-foreground">No reading content linked.</p>

  return (
    <div className="space-y-4">
      <Card>
        <CardHeader>
          <div className="flex items-center justify-between">
            <CardTitle className="text-lg">{content.title ?? 'Reading'}</CardTitle>
            <div className="flex items-center gap-2">
              {content.level && <Badge variant="outline">{content.level}</Badge>}
              {content.word_count && <span className="text-xs text-muted-foreground">{content.word_count} words</span>}
              {content.reading_time && <span className="text-xs text-muted-foreground">{content.reading_time} min</span>}
            </div>
          </div>
          {content.category && <Badge variant="secondary">{content.category}</Badge>}
        </CardHeader>
        <CardContent>
          <div className="prose prose-sm dark:prose-invert max-w-none">
            {content.content?.split('\n').map((p: string, i: number) => (
              <p key={i}>{p}</p>
            ))}
          </div>
        </CardContent>
      </Card>

      {content.translation && (
        <Card>
          <CardHeader className="py-3">
            <Button variant="ghost" size="sm" className="w-full justify-between" onClick={() => setShowTranslation(!showTranslation)}>
              <span>Translation</span>
              <span>{showTranslation ? 'Hide' : 'Show'}</span>
            </Button>
          </CardHeader>
          {showTranslation && (
            <CardContent>
              <p className="text-sm text-muted-foreground">{content.translation}</p>
            </CardContent>
          )}
        </Card>
      )}
    </div>
  )
}

// === LISTENING ===
function ListeningSection({ lesson }: { lesson: CourseLessonFull }) {
  const content = lesson.source_content as Record<string, any> | null
  const [showTranscript, setShowTranscript] = useState(false)

  if (!content) return <p className="text-muted-foreground">No listening content linked.</p>

  return (
    <div className="space-y-4">
      <Card>
        <CardHeader>
          <div className="flex items-center justify-between">
            <CardTitle className="text-lg">{content.title ?? 'Listening'}</CardTitle>
            <Badge variant="outline">{content.cefr_level ?? content.level}</Badge>
          </div>
          {content.scenario && <Badge variant="secondary">{content.scenario}</Badge>}
          {content.duration_seconds && <p className="text-xs text-muted-foreground mt-1">Duration: ~{Math.round(content.duration_seconds / 60)} min</p>}
        </CardHeader>
        <CardContent>
          <div className="flex items-center gap-4 p-4 bg-muted rounded-lg">
            <Volume2 className="h-8 w-8 text-primary" />
            <div className="flex-1">
              <div className="h-2 bg-muted-foreground/20 rounded-full">
                <div className="h-2 bg-primary rounded-full w-0" />
              </div>
            </div>
          </div>

          <Button variant="outline" size="sm" className="mt-3" onClick={() => setShowTranscript(!showTranscript)}>
            {showTranscript ? 'Hide' : 'Show'} Transcript
          </Button>
          {showTranscript && content.transcript && (
            <div className="mt-3 p-3 bg-muted/50 rounded-lg text-sm">
              {content.transcript}
            </div>
          )}
        </CardContent>
      </Card>
    </div>
  )
}

// === SPEAKING ===
function SpeakingSection({ lesson }: { lesson: CourseLessonFull }) {
  const content = lesson.source_content as Record<string, any> | null
  const [isRecording, setIsRecording] = useState(false)

  return (
    <div className="space-y-4">
      <Card>
        <CardHeader><CardTitle>Speaking Practice</CardTitle></CardHeader>
        <CardContent>
          {content?.topic ? (
            <>
              <h3 className="font-semibold mb-2">{content.topic}</h3>
              {content.description && <p className="text-sm text-muted-foreground mb-4">{content.description}</p>}
              {content.prompts && Array.isArray(content.prompts) && (
                <ul className="space-y-1 mb-4">
                  {content.prompts.map((p: string, i: number) => (
                    <li key={i} className="text-sm flex items-start gap-2"><Mic className="h-3.5 w-3.5 mt-0.5 shrink-0" />{p}</li>
                  ))}
                </ul>
              )}
              <Button onClick={() => setIsRecording(!isRecording)} variant={isRecording ? 'destructive' : 'default'}>
                {isRecording ? 'Stop Recording' : 'Start Recording'}
              </Button>
            </>
          ) : (
            <p className="text-muted-foreground">No speaking content linked.</p>
          )}
        </CardContent>
      </Card>
    </div>
  )
}

// === WRITING ===
function WritingSection({ lesson }: { lesson: CourseLessonFull }) {
  const content = lesson.source_content as Record<string, any> | null
  const [userText, setUserText] = useState('')

  return (
    <div className="space-y-4">
      <Card>
        <CardHeader><CardTitle>Writing Task</CardTitle></CardHeader>
        <CardContent>
          {content ? (
            <>
              <h3 className="font-semibold mb-2">{content.title ?? 'Writing Task'}</h3>
              {content.task_description && <p className="text-sm text-muted-foreground mb-4">{content.task_description}</p>}
              {content.hints && Array.isArray(content.hints) && (
                <div className="mb-4">
                  <p className="text-xs font-medium text-muted-foreground mb-1">Hints:</p>
                  <ul className="space-y-1">
                    {content.hints.map((h: string, i: number) => (
                      <li key={i} className="text-xs text-muted-foreground flex items-start gap-2"><Pen className="h-3 w-3 mt-0.5 shrink-0" />{h}</li>
                    ))}
                  </ul>
                </div>
              )}
              <div className="space-y-2">
                <Label>Your Answer</Label>
                <textarea
                  className="w-full min-h-[200px] p-3 border rounded-lg text-sm resize-y"
                  value={userText}
                  onChange={e => setUserText(e.target.value)}
                  placeholder="Write your answer here..."
                />
                <Button disabled={!userText.trim()}>Submit for Review</Button>
              </div>
            </>
          ) : (
            <p className="text-muted-foreground">No writing content linked.</p>
          )}
        </CardContent>
      </Card>
    </div>
  )
}

// === VOCABULARY ===
function VocabularySection({ vocabulary }: { vocabulary: LessonVocabulary[] }) {
  const posColors: Record<string, string> = { noun: 'bg-blue-100 text-blue-700 dark:bg-blue-900/30 dark:text-blue-300', verb: 'bg-green-100 text-green-700 dark:bg-green-900/30 dark:text-green-300', adjective: 'bg-purple-100 text-purple-700 dark:bg-purple-900/30 dark:text-purple-300', adverb: 'bg-orange-100 text-orange-700 dark:bg-orange-900/30 dark:text-orange-300', phrase: 'bg-pink-100 text-pink-700 dark:bg-pink-900/30 dark:text-pink-300' }

  return (
    <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
      {vocabulary.map(v => (
        <Card key={v.id}>
          <CardContent className="p-4">
            <div className="flex items-start justify-between mb-2">
              <div>
                <div className="flex items-center gap-1.5">
                  {v.article && <span className="text-xs font-medium text-muted-foreground">{v.article}</span>}
                  <span className="text-lg font-bold">{v.german_word}</span>
                  {v.plural && <span className="text-xs text-muted-foreground">, {v.plural}</span>}
                </div>
              </div>
              <span className={`text-xs px-2 py-0.5 rounded-full ${posColors[v.part_of_speech] ?? 'bg-gray-100 text-gray-700'}`}>
                {v.part_of_speech}
              </span>
            </div>
            <div className="space-y-1 text-sm">
              <p><span className="text-muted-foreground">Arabic:</span> {v.arabic_translation}</p>
              <p><span className="text-muted-foreground">English:</span> {v.english_translation}</p>
            </div>
            {v.example_sentence && (
              <div className="mt-2 p-2 bg-muted rounded text-sm">
                <p className="italic">{v.example_sentence}</p>
                {v.example_translation && <p className="text-muted-foreground text-xs mt-0.5">{v.example_translation}</p>}
              </div>
            )}
          </CardContent>
        </Card>
      ))}
    </div>
  )
}

// === GRAMMAR ===
function GrammarSection({ grammar }: { grammar: LessonGrammar[] }) {
  const [expanded, setExpanded] = useState<string | null>(null)

  return (
    <div className="space-y-4">
      {grammar.map(g => (
        <Card key={g.id}>
          <CardHeader className="cursor-pointer" onClick={() => setExpanded(expanded === g.id ? null : g.id)}>
            <CardTitle className="text-base">{g.title}</CardTitle>
          </CardHeader>
          {expanded === g.id && (
            <CardContent className="space-y-4">
              <p className="text-sm text-muted-foreground">{g.explanation}</p>
              {g.rules.length > 0 && (
                <div>
                  <h4 className="text-sm font-semibold mb-2">Rules</h4>
                  <ul className="space-y-1">
                    {g.rules.map((r, i) => (
                      <li key={i} className="text-sm flex items-start gap-2">
                        <span className="text-primary mt-0.5">•</span>
                        <div>
                          <span>{r.rule}</span>
                          {r.note && <span className="text-muted-foreground text-xs ml-1">({r.note})</span>}
                        </div>
                      </li>
                    ))}
                  </ul>
                </div>
              )}
              {g.examples.length > 0 && (
                <div>
                  <h4 className="text-sm font-semibold mb-2">Examples</h4>
                  <div className="space-y-2">
                    {g.examples.map((ex, i) => (
                      <div key={i} className="p-2 bg-muted rounded text-sm">
                        <p className="font-medium">{ex.german}</p>
                        <p className="text-muted-foreground">{ex.arabic}</p>
                        <p className="text-muted-foreground text-xs">{ex.english}</p>
                      </div>
                    ))}
                  </div>
                </div>
              )}
              {g.common_mistakes.length > 0 && (
                <div>
                  <h4 className="text-sm font-semibold mb-2 text-destructive">Common Mistakes</h4>
                  <div className="space-y-2">
                    {g.common_mistakes.map((m, i) => (
                      <div key={i} className="p-2 bg-destructive/5 rounded text-sm">
                        <p><span className="text-destructive">✗</span> {m.mistake}</p>
                        <p><span className="text-green-600">✓</span> {m.correction}</p>
                        <p className="text-muted-foreground text-xs">{m.explanation}</p>
                      </div>
                    ))}
                  </div>
                </div>
              )}
            </CardContent>
          )}
        </Card>
      ))}
    </div>
  )
}

// === EXERCISES ===
function ExercisesSection({ exercises, onComplete }: { exercises: LessonExercise[]; onComplete: () => void }) {
  const [answers, setAnswers] = useState<Record<string, string>>({})
  const [checked, setChecked] = useState<Record<string, boolean>>({})
  const [completed, setCompleted] = useState(false)

  const handleCheck = (id: string) => {
    const isCorrect = answers[id]?.trim().toLowerCase() === exercises.find(e => e.id === id)?.correct_answer.trim().toLowerCase()
    setChecked(p => ({ ...p, [id]: true }))
    if (!isCorrect) toast.error('Not quite right. Try again!')
  }

  const allCorrect = exercises.every(e => checked[e.id] && answers[e.id]?.trim().toLowerCase() === e.correct_answer.trim().toLowerCase())

  const handleComplete = () => {
    setCompleted(true)
    onComplete()
    toast.success('Exercises completed!')
  }

  return (
    <div className="space-y-4">
      {exercises.map(ex => (
        <Card key={ex.id}>
          <CardContent className="p-4">
            <div className="flex items-center gap-2 mb-3">
              <Badge variant="outline" className="text-xs">{ex.exercise_type.replace('_', ' ')}</Badge>
              <span className="text-xs text-muted-foreground">{ex.points} pt</span>
            </div>
            <p className="font-medium mb-3">{ex.question}</p>
            {ex.options.length > 0 ? (
              <div className="space-y-2">
                {ex.options.map((opt, i) => (
                  <label key={i} className={`flex items-center gap-2 p-2 rounded cursor-pointer text-sm ${answers[ex.id] === opt ? 'bg-primary/10 border border-primary/30' : 'bg-muted hover:bg-muted/80'} ${checked[ex.id] ? 'pointer-events-none opacity-60' : ''}`}>
                    <input type="radio" name={`ex-${ex.id}`} value={opt} checked={answers[ex.id] === opt} onChange={e => setAnswers(p => ({ ...p, [ex.id]: e.target.value }))} disabled={!!checked[ex.id]} className="accent-primary" />
                    {opt}
                  </label>
                ))}
              </div>
            ) : (
              <Input value={answers[ex.id] ?? ''} onChange={e => setAnswers(p => ({ ...p, [ex.id]: e.target.value }))} disabled={!!checked[ex.id]} placeholder="Type your answer" />
            )}
            <div className="flex items-center gap-2 mt-3">
              {!checked[ex.id] ? (
                <Button size="sm" onClick={() => handleCheck(ex.id)} disabled={!answers[ex.id]}>Check</Button>
              ) : (
                <div className="flex items-center gap-2">
                  {answers[ex.id]?.trim().toLowerCase() === ex.correct_answer.trim().toLowerCase() ? (
                    <span className="flex items-center gap-1 text-sm text-green-600"><CheckCircle2 className="h-4 w-4" /> Correct!</span>
                  ) : (
                    <span className="flex items-center gap-1 text-sm text-destructive"><XCircle className="h-4 w-4" /> Answer: {ex.correct_answer}</span>
                  )}
                  {ex.explanation && <span className="text-xs text-muted-foreground">{ex.explanation}</span>}
                </div>
              )}
            </div>
          </CardContent>
        </Card>
      ))}
      {!completed && exercises.every(e => checked[e.id]) && (
        <Button onClick={handleComplete} className="w-full">
          Complete Exercises
        </Button>
      )}
    </div>
  )
}

// === TEST RESULT ===
function TestResultSection({ result, questions, onRetry }: { result: any; questions: LessonTestQuestion[]; onRetry: () => void }) {
  return (
    <div className="space-y-4">
      <Card className={`${result.passed ? 'border-green-500' : 'border-destructive'}`}>
        <CardContent className="p-6 text-center">
          {result.passed ? <CheckCircle2 className="h-12 w-12 text-green-500 mx-auto mb-3" /> : <XCircle className="h-12 w-12 text-destructive mx-auto mb-3" />}
          <h2 className="text-xl font-bold mb-1">{result.passed ? 'Test Passed!' : 'Test Failed'}</h2>
          <p className="text-3xl font-bold mb-1">{result.percentage}%</p>
          <p className="text-sm text-muted-foreground">{result.score} / {result.total_points} points</p>
          {result.passed && <Badge className="mt-2" variant="default">Passed</Badge>}
          <div className="flex items-center justify-center gap-3 mt-4">
            {!result.passed && (
              <Button variant="outline" onClick={onRetry}>
                <RotateCcw className="h-4 w-4 mr-1.5" />
                Retry
              </Button>
            )}
          </div>
        </CardContent>
      </Card>
      <div className="space-y-2">
        {questions.map((q, i) => {
          const answer = result.answers?.[i]
          return (
            <Card key={q.id}>
              <CardContent className="p-3 flex items-start gap-3">
                {answer?.correct ? <CheckCircle2 className="h-5 w-5 text-green-500 mt-0.5 shrink-0" /> : <XCircle className="h-5 w-5 text-destructive mt-0.5 shrink-0" />}
                <div className="min-w-0 flex-1">
                  <p className="text-sm font-medium">{q.question}</p>
                  <p className="text-xs text-muted-foreground">Your answer: {answer?.answer ?? '-'}</p>
                  {!answer?.correct && <p className="text-xs text-green-600">Correct: {q.correct_answer}</p>}
                </div>
              </CardContent>
            </Card>
          )
        })}
      </div>
    </div>
  )
}

// === TEST ===
function TestSection({ questions, onSubmit, isPending }: { questions: LessonTestQuestion[]; onSubmit: (answers: string[]) => void; isPending: boolean }) {
  const [answers, setAnswers] = useState<string[]>(new Array(questions.length).fill(''))

  return (
    <div className="space-y-4">
      <Card>
        <CardHeader>
          <CardTitle className="text-base">Lesson Test</CardTitle>
          <p className="text-sm text-muted-foreground">Answer all questions. You need 60% to pass.</p>
        </CardHeader>
      </Card>
      {questions.map((q, i) => (
        <Card key={q.id}>
          <CardContent className="p-4">
            <div className="flex items-center gap-2 mb-3">
              <span className="text-sm font-medium text-muted-foreground">Q{i + 1}</span>
              <Badge variant="outline" className="text-xs">{q.question_type.replace('_', ' ')}</Badge>
              <span className="text-xs text-muted-foreground">{q.points} pt{q.points > 1 ? 's' : ''}</span>
            </div>
            <p className="font-medium mb-3">{q.question}</p>
            {q.options.length > 0 ? (
              <div className="space-y-2">
                {q.options.map((opt, j) => (
                  <label key={j} className={`flex items-center gap-2 p-2 rounded cursor-pointer text-sm ${answers[i] === opt ? 'bg-primary/10 border border-primary/30' : 'bg-muted hover:bg-muted/80'}`}>
                    <input type="radio" name={`q-${q.id}`} value={opt} checked={answers[i] === opt} onChange={e => { const a = [...answers]; a[i] = e.target.value; setAnswers(a) }} className="accent-primary" />
                    {opt}
                  </label>
                ))}
              </div>
            ) : (
              <Input value={answers[i]} onChange={e => { const a = [...answers]; a[i] = e.target.value; setAnswers(a) }} placeholder="Type your answer" />
            )}
          </CardContent>
        </Card>
      ))}
      <Button onClick={() => onSubmit(answers)} disabled={answers.some(a => !a) || isPending} className="w-full">
        {isPending ? <Loader2 className="h-4 w-4 animate-spin mr-1" /> : <Target className="h-4 w-4 mr-1" />}
        Submit Test
      </Button>
    </div>
  )
}
