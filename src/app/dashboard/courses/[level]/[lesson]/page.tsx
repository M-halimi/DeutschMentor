'use client'

import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { useParams } from 'next/navigation'
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
import type { LucideIcon } from 'lucide-react'
import { ChevronLeft, BookOpen, Volume2, CheckCircle2, XCircle, Target, RotateCcw, Mic, Pen, FileText, Headphones, Loader2, MessageSquare, Lightbulb, Home, Star, Sparkles } from 'lucide-react'
import type { CourseLessonFull, LessonExercise, LessonTestQuestion, LessonVocabulary, LessonGrammar } from '@/types'

export default function CourseLessonPage() {
  const params = useParams()
  const levelParam = params.level as string
  const lessonId = params.lesson as string
  const queryClient = useQueryClient()
  const [testResult, setTestResult] = useState<{
    passed: boolean; percentage: number; score: number; total_points: number; answers: { question_id: string; answer: string; correct: boolean; points_earned: number }[]
  } | null>(null)

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

  const l = lesson

  const sectionTabs = [
    { value: 'overview', label: 'Overview', icon: BookOpen, show: true },
    { value: 'objectives', label: 'Objectives', icon: Target, show: true },
    { value: 'vocabulary', label: 'Vocabulary', icon: BookOpen, show: (l?.vocabulary?.length ?? 0) > 0 },
    { value: 'expressions', label: 'Expressions', icon: MessageSquare, show: l?.has_expressions && (l?.expressions?.length ?? 0) > 0 },
    { value: 'grammar', label: 'Grammar', icon: FileText, show: (l?.grammar?.length ?? 0) > 0 },
    { value: 'reading', label: 'Reading', icon: BookOpen, show: l?.has_reading && (l?.reading_content?.length ?? 0) > 0 },
    { value: 'listening', label: 'Listening', icon: Headphones, show: l?.has_listening && (l?.listening_content?.length ?? 0) > 0 },
    { value: 'speaking', label: 'Speaking', icon: Mic, show: l?.has_speaking && (l?.speaking_prompts?.length ?? 0) > 0 },
    { value: 'writing', label: 'Writing', icon: Pen, show: l?.has_writing && (l?.writing_prompts?.length ?? 0) > 0 },
    { value: 'conversation', label: 'Conversation', icon: MessageSquare, show: l?.has_conversation && (l?.conversations?.length ?? 0) > 0 },
    { value: 'exercises', label: 'Exercises', icon: Target, show: (l?.exercises?.length ?? 0) > 0 },
    { value: 'ai-challenges', label: 'AI Challenges', icon: Sparkles, show: l?.has_ai_challenges && (l?.ai_challenges?.length ?? 0) > 0 },
    { value: 'test', label: 'Test', icon: Target, show: (l?.test_questions?.length ?? 0) > 0 },
    { value: 'homework', label: 'Homework', icon: Pen, show: l?.has_homework && (l?.homework?.length ?? 0) > 0 },
    { value: 'review', label: 'Review', icon: RotateCcw, show: l?.has_review && ((l?.review?.length ?? 0) > 0 || (l?.flashcards?.length ?? 0) > 0) },
    { value: 'flashcards', label: 'Flashcards', icon: Star, show: (l?.flashcards?.length ?? 0) > 0 },
    { value: 'progress', label: 'Progress', icon: Target, show: true },
    { value: 'ai-teacher', label: 'AI Teacher', icon: Sparkles, show: true },
  ]

  const visibleTabs = sectionTabs.filter(t => t.show)

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
              <Badge variant="secondary" className="text-xs capitalize">{lesson.lesson_type}</Badge>
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

        <Tabs defaultValue="overview">
          {visibleTabs.length > 0 && (
            <div className="relative">
              <TabsList className="flex-wrap h-auto gap-1">
                {visibleTabs.map(t => (
                  <TabsTrigger key={t.value} value={t.value} className="text-xs">
                    <t.icon className="h-3.5 w-3.5 mr-1 hidden sm:inline" />
                    {t.label}
                  </TabsTrigger>
                ))}
              </TabsList>
            </div>
          )}

          <TabsContent value="overview">
            <OverviewSection lesson={lesson} />
          </TabsContent>

          <TabsContent value="objectives">
            <ObjectivesSection lesson={lesson} />
          </TabsContent>

          {lesson.vocabulary.length > 0 && (
            <TabsContent value="vocabulary">
              <VocabularySection vocabulary={lesson.vocabulary} />
            </TabsContent>
          )}

          {lesson.expressions && lesson.expressions.length > 0 && (
            <TabsContent value="expressions">
              <ExpressionsSection expressions={lesson.expressions} />
            </TabsContent>
          )}

          {lesson.grammar.length > 0 && (
            <TabsContent value="grammar">
              <GrammarSection grammar={lesson.grammar} />
            </TabsContent>
          )}

          {lesson.reading_content && lesson.reading_content.length > 0 && (
            <TabsContent value="reading">
              <ReadingSection items={lesson.reading_content} />
            </TabsContent>
          )}

          {lesson.listening_content && lesson.listening_content.length > 0 && (
            <TabsContent value="listening">
              <ListeningSection items={lesson.listening_content} />
            </TabsContent>
          )}

          {lesson.speaking_prompts && lesson.speaking_prompts.length > 0 && (
            <TabsContent value="speaking">
              <SpeakingSection prompts={lesson.speaking_prompts} onComplete={() => saveProgress.mutate({})} />
            </TabsContent>
          )}

          {lesson.writing_prompts && lesson.writing_prompts.length > 0 && (
            <TabsContent value="writing">
              <WritingSection prompts={lesson.writing_prompts} />
            </TabsContent>
          )}

          {lesson.conversations && lesson.conversations.length > 0 && (
            <TabsContent value="conversation">
              <ConversationSection conversations={lesson.conversations} />
            </TabsContent>
          )}

          {lesson.exercises.length > 0 && (
            <TabsContent value="exercises">
              <ExercisesSection exercises={lesson.exercises} onComplete={() => saveProgress.mutate({})} />
            </TabsContent>
          )}

          {lesson.ai_challenges && lesson.ai_challenges.length > 0 && (
            <TabsContent value="ai-challenges">
              <AiChallengesSection challenges={lesson.ai_challenges} />
            </TabsContent>
          )}

          {lesson.test_questions.length > 0 && (
            <TabsContent value="test">
              {testResult ? (
                <TestResultSection result={testResult} questions={lesson.test_questions} onRetry={() => setTestResult(null)} />
              ) : (
                <TestSection questions={lesson.test_questions} onSubmit={(answers) => submitTest.mutate(answers)} isPending={submitTest.isPending} />
              )}
            </TabsContent>
          )}

          {lesson.homework && lesson.homework.length > 0 && (
            <TabsContent value="homework">
              <HomeworkSection homework={lesson.homework} />
            </TabsContent>
          )}

          {(lesson.review && lesson.review.length > 0) || (lesson.flashcards && lesson.flashcards.length > 0) ? (
            <TabsContent value="review">
              <ReviewSection reviews={lesson.review ?? []} />
            </TabsContent>
          ) : null}

          {lesson.flashcards && lesson.flashcards.length > 0 && (
            <TabsContent value="flashcards">
              <FlashcardsSection flashcards={lesson.flashcards} />
            </TabsContent>
          )}

          <TabsContent value="progress">
            <ProgressSection lesson={lesson} />
          </TabsContent>

          <TabsContent value="ai-teacher">
            <AiTeacherSection lesson={lesson} />
          </TabsContent>
        </Tabs>
      </div>
    </AppShell>
  )
}

function SectionHeader({ icon: Icon, title, description }: { icon: LucideIcon; title: string; description?: string }) {
  return (
    <div className="flex items-center gap-3 mb-4">
      <div className="p-2 rounded-lg bg-primary/10 text-primary"><Icon className="h-5 w-5" /></div>
      <div>
        <h2 className="text-lg font-semibold">{title}</h2>
        {description && <p className="text-sm text-muted-foreground">{description}</p>}
      </div>
    </div>
  )
}

function OverviewSection({ lesson }: { lesson: CourseLessonFull }) {
  const typeIcons: Record<string, LucideIcon> = {
    vocabulary: BookOpen, grammar: FileText, reading: BookOpen,
    listening: Headphones, speaking: Mic, writing: Pen,
    review: RotateCcw, test: Target,
  }
  const Icon: LucideIcon = typeIcons[lesson.lesson_type] ?? BookOpen

  return (
    <div className="space-y-4">
      <Card>
        <CardContent className="p-6">
          <div className="flex items-start gap-4">
            <div className="p-3 rounded-lg bg-primary/10 text-primary"><Icon className="h-8 w-8" /></div>
            <div className="flex-1 min-w-0">
              <h2 className="text-lg font-semibold mb-1">{lesson.title}</h2>
              <p className="text-sm text-muted-foreground">{lesson.description}</p>
              <div className="flex flex-wrap items-center gap-3 mt-3 text-sm text-muted-foreground">
                <span>Duration: ~{lesson.duration_minutes} min</span>
                <span><span className="capitalize">{lesson.lesson_type}</span> Lesson</span>
                {lesson.difficulty_rating && <span>Difficulty: {lesson.difficulty_rating}/5</span>}
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
            {lesson.module.description && <p className="text-sm text-muted-foreground mt-1">{lesson.module.description}</p>}
          </CardContent>
        </Card>
      )}

      <Card>
        <CardHeader><CardTitle className="text-sm">Lesson Sections</CardTitle></CardHeader>
        <CardContent>
          <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-2">
            {[
              ['Vocabulary', !!lesson.vocabulary.length],
              ['Expressions', !!lesson.expressions?.length],
              ['Grammar', !!lesson.grammar.length],
              ['Reading', !!lesson.reading_content?.length],
              ['Listening', !!lesson.listening_content?.length],
              ['Speaking', !!lesson.speaking_prompts?.length],
              ['Writing', !!lesson.writing_prompts?.length],
              ['Conversation', !!lesson.conversations?.length],
              ['Exercises', !!lesson.exercises.length],
              ['AI Challenges', !!lesson.ai_challenges?.length],
              ['Test', !!lesson.test_questions.length],
              ['Homework', !!lesson.homework?.length],
              ['Review', !!lesson.review?.length],
              ['Flashcards', !!lesson.flashcards?.length],
            ].map(([name, has]) => (
              <div key={name as string} className="flex items-center gap-2 text-sm p-2 rounded bg-muted/50">
                {has ? <CheckCircle2 className="h-4 w-4 text-green-500 shrink-0" /> : <div className="h-4 w-4 shrink-0" />}
                <span className={has ? '' : 'text-muted-foreground/50'}>{name as string}</span>
              </div>
            ))}
          </div>
        </CardContent>
      </Card>
    </div>
  )
}

function ObjectivesSection({ lesson }: { lesson: CourseLessonFull }) {
  const objectives = lesson.objectives ?? []
  if (objectives.length === 0) return <p className="text-muted-foreground">No objectives listed.</p>

  return (
    <Card>
      <CardHeader><CardTitle>Learning Objectives</CardTitle></CardHeader>
      <CardContent>
        <ul className="space-y-2">
          {objectives.map((obj, i) => (
            <li key={i} className="flex items-start gap-3">
              <Target className="h-5 w-5 text-primary shrink-0 mt-0.5" />
              <span className="text-sm">{obj}</span>
            </li>
          ))}
        </ul>
      </CardContent>
    </Card>
  )
}

function VocabularySection({ vocabulary }: { vocabulary: LessonVocabulary[] }) {
  const posColors: Record<string, string> = {
    noun: 'bg-blue-100 text-blue-700 dark:bg-blue-900/30 dark:text-blue-300',
    verb: 'bg-green-100 text-green-700 dark:bg-green-900/30 dark:text-green-300',
    adjective: 'bg-purple-100 text-purple-700 dark:bg-purple-900/30 dark:text-purple-300',
    adverb: 'bg-orange-100 text-orange-700 dark:bg-orange-900/30 dark:text-orange-300',
    phrase: 'bg-pink-100 text-pink-700 dark:bg-pink-900/30 dark:text-pink-300',
  }

  return (
    <div className="space-y-4">
      <SectionHeader icon={BookOpen} title="Vocabulary" description={`${vocabulary.length} words`} />
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
                    {v.ipa && <span className="text-xs text-muted-foreground font-mono">/{v.ipa}/</span>}
                  </div>
                </div>
                <span className={`text-xs px-2 py-0.5 rounded-full ${posColors[v.part_of_speech] ?? 'bg-gray-100 text-gray-700'}`}>
                  {v.part_of_speech}
                </span>
              </div>
              <div className="space-y-1 text-sm">
                <p><span className="text-muted-foreground">Arabic:</span> {v.arabic_translation}</p>
                <p><span className="text-muted-foreground">English:</span> {v.english_translation}</p>
                {v.cefr_level && <p><span className="text-muted-foreground">Level:</span> {v.cefr_level}</p>}
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
    </div>
  )
}

function ExpressionsSection({ expressions }: { expressions: NonNullable<CourseLessonFull['expressions']> }) {
  const [showTranslation, setShowTranslation] = useState<Record<string, boolean>>({})

  return (
    <div className="space-y-4">
      <SectionHeader icon={MessageSquare} title="Useful Expressions" description="Common daily phrases" />
      <div className="grid gap-3 sm:grid-cols-2">
        {expressions.map(ex => (
          <Card key={ex.id}>
            <CardContent className="p-4">
              <div className="flex items-start justify-between mb-2">
                <div>
                  <p className="text-lg font-bold">{ex.german}</p>
                  {ex.literal_translation && <p className="text-xs text-muted-foreground italic">Lit: {ex.literal_translation}</p>}
                </div>
                <div className="flex gap-1">
                  {ex.formality && <Badge variant="outline" className="text-xs">{ex.formality}</Badge>}
                  {ex.is_idiom && <Badge variant="secondary" className="text-xs">Idiom</Badge>}
                </div>
              </div>
              <p className="text-sm text-muted-foreground">{ex.english_translation}</p>
              {ex.arabic_translation && <p className="text-sm mt-1">{ex.arabic_translation}</p>}
              {ex.usage_context && (
                <Button variant="ghost" size="sm" className="h-auto p-0 mt-2 text-xs text-muted-foreground" onClick={() => setShowTranslation(s => ({ ...s, [ex.id]: !s[ex.id] }))}>
                  {showTranslation[ex.id] ? 'Hide' : 'Show'} context
                </Button>
              )}
              {showTranslation[ex.id] && ex.usage_context && (
                <p className="text-xs text-muted-foreground mt-1 italic">{ex.usage_context}</p>
              )}
            </CardContent>
          </Card>
        ))}
      </div>
    </div>
  )
}

function GrammarSection({ grammar }: { grammar: LessonGrammar[] }) {
  const [expanded, setExpanded] = useState<string | null>(null)

  return (
    <div className="space-y-4">
      <SectionHeader icon={FileText} title="Grammar" description={`${grammar.length} topic${grammar.length > 1 ? 's' : ''}`} />
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

function ReadingSection({ items }: { items: NonNullable<CourseLessonFull['reading_content']> }) {
  const [showTranslation, setShowTranslation] = useState<Record<string, boolean>>({})

  return (
    <div className="space-y-4">
      <SectionHeader icon={BookOpen} title="Reading" description="Practice reading comprehension" />
      {items.map(item => (
        <Card key={item.id}>
          <CardHeader>
            <div className="flex items-center justify-between flex-wrap gap-2">
              <CardTitle className="text-lg">{item.title}</CardTitle>
              <div className="flex items-center gap-2">
                {item.difficulty_rating && <Badge variant="outline">{'⭐'.repeat(item.difficulty_rating)}</Badge>}
                {item.word_count && <span className="text-xs text-muted-foreground">{item.word_count} words</span>}
              </div>
            </div>
            {item.source && <p className="text-xs text-muted-foreground">Source: {item.source}</p>}
          </CardHeader>
          <CardContent>
            <div className="prose prose-sm dark:prose-invert max-w-none">
              {item.content.split('\n').map((p, i) => (
                <p key={i}>{p || '\u00A0'}</p>
              ))}
            </div>
            {(item.english_translation || item.arabic_translation) && (
              <div className="mt-4 pt-4 border-t">
                <Button variant="outline" size="sm" onClick={() => setShowTranslation(s => ({ ...s, [item.id]: !s[item.id] }))}>
                  {showTranslation[item.id] ? 'Hide' : 'Show'} Translation
                </Button>
                {showTranslation[item.id] && (
                  <div className="mt-3 space-y-2">
                    {item.english_translation && <p className="text-sm text-muted-foreground">{item.english_translation}</p>}
                    {item.arabic_translation && <p className="text-sm text-muted-foreground">{item.arabic_translation}</p>}
                  </div>
                )}
              </div>
            )}
          </CardContent>
        </Card>
      ))}
    </div>
  )
}

function ListeningSection({ items }: { items: NonNullable<CourseLessonFull['listening_content']> }) {
  const [showTranscript, setShowTranscript] = useState<Record<string, boolean>>({})

  return (
    <div className="space-y-4">
      <SectionHeader icon={Headphones} title="Listening" description="Practice listening comprehension" />
      {items.map(item => (
        <Card key={item.id}>
          <CardHeader>
            <div className="flex items-center justify-between flex-wrap gap-2">
              <CardTitle className="text-lg">{item.title}</CardTitle>
              <div className="flex items-center gap-2">
                {item.duration_seconds && <span className="text-xs text-muted-foreground">~{Math.round(item.duration_seconds / 60)} min</span>}
                {item.speaker_count > 0 && <span className="text-xs text-muted-foreground">{item.speaker_count} speakers</span>}
              </div>
            </div>
            {item.scenario && <Badge variant="secondary" className="text-xs">{item.scenario}</Badge>}
          </CardHeader>
          <CardContent>
            <div className="flex items-center gap-4 p-4 bg-muted rounded-lg mb-4">
              <Volume2 className="h-8 w-8 text-primary" />
              <div className="flex-1">
                <div className="h-2 bg-muted-foreground/20 rounded-full overflow-hidden">
                  <div className="h-2 bg-primary rounded-full w-1/3" />
                </div>
              </div>
            </div>
            <Button variant="outline" size="sm" onClick={() => setShowTranscript(s => ({ ...s, [item.id]: !s[item.id] }))}>
              {showTranscript[item.id] ? 'Hide' : 'Show'} Transcript
            </Button>
            {showTranscript[item.id] && (
              <div className="mt-3 space-y-2">
                <div className="p-3 bg-muted/50 rounded-lg text-sm whitespace-pre-wrap">{item.transcript}</div>
                {(item.english_translation || item.arabic_translation) && (
                  <div className="p-3 bg-muted/30 rounded-lg text-sm text-muted-foreground">
                    {item.english_translation && <p>{item.english_translation}</p>}
                    {item.arabic_translation && <p className="mt-1">{item.arabic_translation}</p>}
                  </div>
                )}
              </div>
            )}
          </CardContent>
        </Card>
      ))}
    </div>
  )
}

function SpeakingSection({ prompts, onComplete }: { prompts: NonNullable<CourseLessonFull['speaking_prompts']>; onComplete: () => void }) {
  const [activePrompt, setActivePrompt] = useState(0)
  const [isRecording, setIsRecording] = useState(false)
  const p = prompts[activePrompt]

  return (
    <div className="space-y-4">
      <SectionHeader icon={Mic} title="Speaking Practice" description="Practice your pronunciation" />
      <Card>
        <CardContent className="p-4">
          <div className="flex items-center gap-2 mb-3">
            {prompts.map((_, i) => (
              <button key={i} onClick={() => setActivePrompt(i)}
                className={`w-3 h-3 rounded-full ${i === activePrompt ? 'bg-primary' : 'bg-muted-foreground/30'}`} />
            ))}
          </div>
          <h3 className="font-semibold mb-1">{p.title}</h3>
          <p className="text-lg mb-4">{p.prompt}</p>
          {p.scenario && <p className="text-sm text-muted-foreground mb-4 italic">Scenario: {p.scenario}</p>}
          {p.tips.length > 0 && (
            <div className="mb-4">
              <p className="text-xs font-medium text-muted-foreground mb-1">Tips:</p>
              <ul className="space-y-1">
                {p.tips.map((t, i) => (
                  <li key={i} className="text-xs text-muted-foreground flex items-start gap-2"><Lightbulb className="h-3 w-3 mt-0.5 shrink-0" />{t}</li>
                ))}
              </ul>
            </div>
          )}
          {p.vocabulary_hints.length > 0 && (
            <div className="mb-4 flex flex-wrap gap-1">
              {p.vocabulary_hints.map((v, i) => (
                <Badge key={i} variant="secondary" className="text-xs">{v}</Badge>
              ))}
            </div>
          )}
          <div className="flex items-center gap-3 mt-4">
            <Button onClick={() => setIsRecording(!isRecording)} variant={isRecording ? 'destructive' : 'default'}>
              {isRecording ? 'Stop Recording' : 'Start Recording'}
            </Button>
            <Button variant="outline" onClick={onComplete}>Mark as Practiced</Button>
          </div>
        </CardContent>
      </Card>
    </div>
  )
}

function WritingSection({ prompts }: { prompts: NonNullable<CourseLessonFull['writing_prompts']> }) {
  const [activePrompt, setActivePrompt] = useState(0)
  const [userText, setUserText] = useState('')
  const p = prompts[activePrompt]

  return (
    <div className="space-y-4">
      <SectionHeader icon={Pen} title="Writing Practice" description="Practice your writing skills" />
      <Card>
        <CardContent className="p-4">
          <div className="flex items-center gap-2 mb-3">
            {prompts.map((_, i) => (
              <button key={i} onClick={() => { setActivePrompt(i); setUserText('') }}
                className={`w-3 h-3 rounded-full ${i === activePrompt ? 'bg-primary' : 'bg-muted-foreground/30'}`} />
            ))}
          </div>
          <h3 className="font-semibold mb-2">{p.title}</h3>
          <p className="text-sm mb-4">{p.task}</p>
          <div className="flex flex-wrap gap-2 mb-4">
            {p.tips.length > 0 && (
              <div className="w-full">
                <p className="text-xs font-medium text-muted-foreground mb-1">Tips:</p>
                <ul className="space-y-1">
                  {p.tips.map((t, i) => (
                    <li key={i} className="text-xs text-muted-foreground flex items-start gap-2"><Lightbulb className="h-3 w-3 mt-0.5 shrink-0" />{t}</li>
                  ))}
                </ul>
              </div>
            )}
            {p.vocabulary_hints.length > 0 && (
              <div className="w-full">
                <p className="text-xs font-medium text-muted-foreground mb-1">Useful vocabulary:</p>
                <div className="flex flex-wrap gap-1">
                  {p.vocabulary_hints.map((v, i) => (
                    <Badge key={i} variant="secondary" className="text-xs">{v}</Badge>
                  ))}
                </div>
              </div>
            )}
          </div>
          <div className="text-xs text-muted-foreground mb-2">Word limit: {p.word_limit_min}–{p.word_limit_max} words</div>
          <div className="space-y-2">
            <Label>Your Answer</Label>
            <textarea
              className="w-full min-h-[200px] p-3 border rounded-lg text-sm resize-y bg-background"
              value={userText}
              onChange={e => setUserText(e.target.value)}
              placeholder="Write your answer here..."
            />
            <div className="flex items-center justify-between">
              <span className="text-xs text-muted-foreground">{userText.split(/\s+/).filter(Boolean).length} words</span>
              <Button disabled={!userText.trim()}>Submit for AI Review</Button>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  )
}

function ConversationSection({ conversations }: { conversations: NonNullable<CourseLessonFull['conversations']> }) {
  const [activeConv, setActiveConv] = useState(0)
  const [messages, setMessages] = useState<{ role: string; text: string }[]>([])
  const [userInput, setUserInput] = useState('')
  const [isLoading, setIsLoading] = useState(false)
  const [hasStarted, setHasStarted] = useState(false)
  const c = conversations[activeConv]

  const startConversation = async () => {
    setHasStarted(true)
    setIsLoading(true)
    try {
      const res = await fetch('/api/ai/conversation', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ conversationId: c.id, history: [] }),
      })
      if (res.ok) {
        const data = await res.json()
        setMessages([{ role: 'ai', text: data.message }])
      }
    } catch {} finally { setIsLoading(false) }
  }

  const sendMessage = async () => {
    if (!userInput.trim() || isLoading) return
    const msg = userInput.trim()
    setUserInput('')
    setMessages(prev => [...prev, { role: 'user', text: msg }])
    setIsLoading(true)
    try {
      const history = messages.map(m => ({ role: m.role === c.role_user ? 'user' : 'ai', text: m.text }))
      const res = await fetch('/api/ai/conversation', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ conversationId: c.id, message: msg, history }),
      })
      if (res.ok) {
        const data = await res.json()
        setMessages(prev => [...prev, { role: 'ai', text: data.message }])
      }
    } catch {} finally { setIsLoading(false) }
  }

  return (
    <div className="space-y-4">
      <SectionHeader icon={MessageSquare} title="Conversation Practice" description="AI roleplay scenarios" />
      <div className="flex items-center gap-2 mb-2">
        {conversations.map((_, i) => (
          <button key={i} onClick={() => { setActiveConv(i); setMessages([]); setHasStarted(false) }}
            className={`px-3 py-1 text-xs rounded-full ${i === activeConv ? 'bg-primary text-primary-foreground' : 'bg-muted'}`}>
            {conversations[i].title}
          </button>
        ))}
      </div>
      <Card>
        <CardContent className="p-4">
          <div className="flex items-center justify-between mb-4">
            <div>
              <Badge variant="secondary" className="text-xs">{c.difficulty}</Badge>
              <p className="text-sm text-muted-foreground mt-1">{c.scenario}</p>
            </div>
            <div className="text-right text-xs text-muted-foreground">
              <p>You: {c.role_user}</p>
              <p>AI: {c.role_ai}</p>
            </div>
          </div>
          {c.context && <p className="text-sm bg-muted p-3 rounded mb-4 italic">{c.context}</p>}
          {c.vocabulary_hints.length > 0 && (
            <div className="flex flex-wrap gap-1 mb-4">
              {c.vocabulary_hints.map((v, i) => (
                <Badge key={i} variant="outline" className="text-xs">{v}</Badge>
              ))}
            </div>
          )}
          {!hasStarted ? (
            <Button onClick={startConversation} disabled={isLoading} className="w-full">
              {isLoading ? <Loader2 className="h-4 w-4 animate-spin mr-1.5" /> : <MessageSquare className="h-4 w-4 mr-1.5" />}
              Start Conversation
            </Button>
          ) : (
            <>
              <div className="space-y-3 mb-4 max-h-80 overflow-y-auto">
                {messages.map((m, i) => (
                  <div key={i} className={`flex ${m.role === 'user' ? 'justify-end' : 'justify-start'}`}>
                    <div className={`max-w-[80%] p-3 rounded-lg text-sm ${
                      m.role === 'user' ? 'bg-primary text-primary-foreground' : 'bg-muted'
                    }`}>
                      <p className="text-xs opacity-70 mb-1">{m.role === 'user' ? c.role_user : c.role_ai}</p>
                      <p>{m.text}</p>
                    </div>
                  </div>
                ))}
                {isLoading && (
                  <div className="flex justify-start">
                    <div className="bg-muted p-3 rounded-lg"><Loader2 className="h-5 w-5 animate-spin text-muted-foreground" /></div>
                  </div>
                )}
              </div>
              <div className="flex items-center gap-2">
                <Input value={userInput} onChange={e => setUserInput(e.target.value)}
                  onKeyDown={e => e.key === 'Enter' && sendMessage()}
                  placeholder={`Reply as ${c.role_user}...`} disabled={isLoading} />
                <Button onClick={sendMessage} size="sm" disabled={isLoading || !userInput.trim()}>
                  <SendIcon className="h-4 w-4" />
                </Button>
              </div>
            </>
          )}
        </CardContent>
      </Card>
    </div>
  )
}

function SendIcon(props: { className?: string }) {
  return (
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className={props.className}>
      <line x1="22" y1="2" x2="11" y2="13" /><polygon points="22 2 15 22 11 13 2 9 22 2" />
    </svg>
  )
}

function ExercisesSection({ exercises, onComplete }: { exercises: LessonExercise[]; onComplete: () => void }) {
  const [answers, setAnswers] = useState<Record<string, string>>({})
  const [checked, setChecked] = useState<Record<string, boolean>>({})
  const [completed, setCompleted] = useState(false)

  const handleCheck = (id: string) => {
    const isCorrect = answers[id]?.trim().toLowerCase() === exercises.find(e => e.id === id)?.correct_answer.trim().toLowerCase()
    setChecked(p => ({ ...p, [id]: true }))
    if (!isCorrect) toast.error('Not quite right. Try again!')
  }

  const handleComplete = () => {
    setCompleted(true)
    onComplete()
    toast.success('Exercises completed!')
  }

  const allChecked = exercises.every(e => checked[e.id])

  return (
    <div className="space-y-4">
      <SectionHeader icon={Target} title="Exercises" description={`${exercises.length} exercise${exercises.length > 1 ? 's' : ''}`} />
      {exercises.map(ex => (
        <Card key={ex.id}>
          <CardContent className="p-4">
            <div className="flex items-center gap-2 mb-3">
              <Badge variant="outline" className="text-xs">{ex.exercise_type.replace(/_/g, ' ')}</Badge>
              <span className="text-xs text-muted-foreground">{ex.points} pt</span>
            </div>
            <p className="font-medium mb-3">{ex.question}</p>
            {ex.options.length > 0 ? (
              <div className="space-y-2">
                {ex.options.map((opt, i) => (
                  <label key={i} className={`flex items-center gap-2 p-2 rounded cursor-pointer text-sm ${answers[ex.id] === opt ? 'bg-primary/10 border border-primary/30' : 'bg-muted hover:bg-muted/80'} ${checked[ex.id] ? 'pointer-events-none opacity-60' : ''}`}>
                    <input type="radio" name={`ex-${ex.id}`} value={opt} checked={answers[ex.id] === opt}
                      onChange={e => setAnswers(p => ({ ...p, [ex.id]: e.target.value }))} disabled={!!checked[ex.id]} className="accent-primary" />
                    {opt}
                  </label>
                ))}
              </div>
            ) : (
              <Input value={answers[ex.id] ?? ''} onChange={e => setAnswers(p => ({ ...p, [ex.id]: e.target.value }))}
                disabled={!!checked[ex.id]} placeholder="Type your answer" />
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
      {!completed && allChecked && (
        <Button onClick={handleComplete} className="w-full">Complete Exercises</Button>
      )}
    </div>
  )
}

function AiChallengesSection({ challenges }: { challenges: NonNullable<CourseLessonFull['ai_challenges']> }) {
  const [active, setActive] = useState(0)
  const c = challenges[active]

  return (
    <div className="space-y-4">
      <SectionHeader icon={Sparkles} title="AI Challenges" description="Open-ended tasks with AI feedback" />
      <div className="flex items-center gap-2 mb-2">
        {challenges.map((_, i) => (
          <button key={i} onClick={() => setActive(i)}
            className={`px-3 py-1 text-xs rounded-full ${i === active ? 'bg-primary text-primary-foreground' : 'bg-muted'}`}>
            {challenges[i].title}
          </button>
        ))}
      </div>
      <Card>
        <CardContent className="p-4">
          <div className="flex items-center justify-between mb-3">
            <Badge variant="outline" className="text-xs capitalize">{c.difficulty}</Badge>
          </div>
          <h3 className="font-semibold mb-2">{c.question}</h3>
          {c.scenario && <p className="text-sm text-muted-foreground mb-4 italic">{c.scenario}</p>}
          {c.tips.length > 0 && (
            <div className="mb-4">
              <p className="text-xs font-medium text-muted-foreground mb-1">Tips:</p>
              <ul className="space-y-1">
                {c.tips.map((t, i) => (
                  <li key={i} className="text-xs text-muted-foreground flex items-start gap-2"><Lightbulb className="h-3 w-3 mt-0.5 shrink-0" />{t}</li>
                ))}
              </ul>
            </div>
          )}
          {c.expected_elements.length > 0 && (
            <div className="mb-4">
              <p className="text-xs font-medium text-muted-foreground mb-1">Expected elements:</p>
              <div className="flex flex-wrap gap-1">
                {c.expected_elements.map((e, i) => (
                  <Badge key={i} variant="secondary" className="text-xs">{e}</Badge>
                ))}
              </div>
            </div>
          )}
          <div className="space-y-2">
            <Label>Your Answer</Label>
            <textarea className="w-full min-h-[150px] p-3 border rounded-lg text-sm resize-y bg-background" placeholder="Write your answer..." />
            <Button><Sparkles className="h-4 w-4 mr-1.5" /> Get AI Feedback</Button>
          </div>
        </CardContent>
      </Card>
    </div>
  )
}

function TestResultSection({ result, questions, onRetry }: { result: { passed: boolean; percentage: number; score: number; total_points: number; answers: { question_id: string; answer: string; correct: boolean; points_earned: number }[] }; questions: LessonTestQuestion[]; onRetry: () => void }) {
  return (
    <div className="space-y-4">
      <Card className={`${result.passed ? 'border-green-500' : 'border-destructive'}`}>
        <CardContent className="p-6 text-center">
          {result.passed ? <CheckCircle2 className="h-12 w-12 text-green-500 mx-auto mb-3" /> : <XCircle className="h-12 w-12 text-destructive mx-auto mb-3" />}
          <h2 className="text-xl font-bold mb-1">{result.passed ? 'Test Passed!' : 'Test Failed'}</h2>
          <p className="text-3xl font-bold mb-1">{result.percentage}%</p>
          <p className="text-sm text-muted-foreground">{result.score} / {result.total_points} points</p>
          {result.passed && <Badge className="mt-2" variant="default">Passed</Badge>}
          {!result.passed && (
            <Button variant="outline" className="mt-4" onClick={onRetry}>
              <RotateCcw className="h-4 w-4 mr-1.5" /> Retry
            </Button>
          )}
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

function TestSection({ questions, onSubmit, isPending }: { questions: LessonTestQuestion[]; onSubmit: (answers: string[]) => void; isPending: boolean }) {
  const [answers, setAnswers] = useState<string[]>(new Array(questions.length).fill(''))

  return (
    <div className="space-y-4">
      <SectionHeader icon={Target} title="Lesson Test" description={`${questions.length} questions. 60% to pass.`} />
      {questions.map((q, i) => (
        <Card key={q.id}>
          <CardContent className="p-4">
            <div className="flex items-center gap-2 mb-3">
              <span className="text-sm font-medium text-muted-foreground">Q{i + 1}</span>
              <Badge variant="outline" className="text-xs">{q.question_type.replace(/_/g, ' ')}</Badge>
              <span className="text-xs text-muted-foreground">{q.points} pt{q.points > 1 ? 's' : ''}</span>
            </div>
            <p className="font-medium mb-3">{q.question}</p>
            {q.options.length > 0 ? (
              <div className="space-y-2">
                {q.options.map((opt, j) => (
                  <label key={j} className={`flex items-center gap-2 p-2 rounded cursor-pointer text-sm ${answers[i] === opt ? 'bg-primary/10 border border-primary/30' : 'bg-muted hover:bg-muted/80'}`}>
                    <input type="radio" name={`q-${q.id}`} value={opt} checked={answers[i] === opt}
                      onChange={e => { const a = [...answers]; a[i] = e.target.value; setAnswers(a) }} className="accent-primary" />
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

function HomeworkSection({ homework }: { homework: NonNullable<CourseLessonFull['homework']> }) {
  return (
    <div className="space-y-4">
      <SectionHeader icon={Home} title="Homework" description="Additional practice" />
      {homework.map(h => (
        <Card key={h.id}>
          <CardContent className="p-4">
            <div className="flex items-center justify-between mb-3">
              <CardTitle className="text-base">{h.title}</CardTitle>
              <div className="flex items-center gap-2">
                <Badge variant="secondary" className="text-xs capitalize">{h.homework_type}</Badge>
                <span className="text-xs text-muted-foreground">~{h.estimated_minutes} min</span>
              </div>
            </div>
            <p className="text-sm text-muted-foreground mb-3">{h.description}</p>
            {h.tasks.length > 0 && (
              <ul className="space-y-2">
                {h.tasks.map((task: Record<string, unknown>, i: number) => (
                  <li key={i} className="flex items-start gap-2 text-sm p-2 bg-muted rounded">
                    <CheckCircle2 className="h-4 w-4 text-muted-foreground mt-0.5 shrink-0" />
                    <span>{String(task.description ?? task.question ?? JSON.stringify(task))}</span>
                  </li>
                ))}
              </ul>
            )}
          </CardContent>
        </Card>
      ))}
    </div>
  )
}

function ReviewSection({ reviews }: { reviews: NonNullable<CourseLessonFull['review']> }) {
  return (
    <div className="space-y-4">
      <SectionHeader icon={RotateCcw} title="Lesson Review" description="Key points summary" />
      {reviews.map(r => (
        <Card key={r.id}>
          <CardContent className="p-4 space-y-4">
            <p className="text-sm">{r.summary}</p>
            {r.key_points.length > 0 && (
              <div>
                <h4 className="text-sm font-semibold mb-2">Key Points</h4>
                <ul className="space-y-1">
                  {r.key_points.map((kp, i) => (
                    <li key={i} className="text-sm flex items-start gap-2"><CheckCircle2 className="h-4 w-4 text-primary mt-0.5 shrink-0" />{kp}</li>
                  ))}
                </ul>
              </div>
            )}
            {r.common_mistakes_summary.length > 0 && (
              <div>
                <h4 className="text-sm font-semibold mb-2 text-destructive">Common Mistakes</h4>
                <ul className="space-y-1">
                  {r.common_mistakes_summary.map((m, i) => (
                    <li key={i} className="text-sm flex items-start gap-2"><XCircle className="h-4 w-4 text-destructive mt-0.5 shrink-0" />{m}</li>
                  ))}
                </ul>
              </div>
            )}
            {r.tips.length > 0 && (
              <div>
                <h4 className="text-sm font-semibold mb-2">Tips</h4>
                <ul className="space-y-1">
                  {r.tips.map((t, i) => (
                    <li key={i} className="text-sm flex items-start gap-2"><Lightbulb className="h-4 w-4 text-amber-500 mt-0.5 shrink-0" />{t}</li>
                  ))}
                </ul>
              </div>
            )}
          </CardContent>
        </Card>
      ))}
    </div>
  )
}

function FlashcardsSection({ flashcards }: { flashcards: NonNullable<CourseLessonFull['flashcards']> }) {
  const [current, setCurrent] = useState(0)
  const [flipped, setFlipped] = useState(false)
  const f = flashcards[current]

  return (
    <div className="space-y-4">
      <SectionHeader icon={Star} title="Flashcards" description="Quick review" />
      <div className="flex items-center justify-center gap-2 mb-4">
        {flashcards.map((_, i) => (
          <button key={i} onClick={() => { setCurrent(i); setFlipped(false) }}
            className={`w-2.5 h-2.5 rounded-full ${i === current ? 'bg-primary' : 'bg-muted-foreground/30'}`} />
        ))}
      </div>
      <div className="perspective-1000 cursor-pointer" onClick={() => setFlipped(!flipped)}>
        <div className={`transition-transform duration-500 ${flipped ? 'rotate-y-180' : ''}`} style={{ transformStyle: 'preserve-3d' }}>
          <Card className="min-h-[200px] flex items-center justify-center">
            <CardContent className={`p-8 text-center ${flipped ? 'hidden' : ''}`}>
              <Badge variant="outline" className="text-xs mb-3 capitalize">{f.category}</Badge>
              <p className="text-2xl font-bold">{f.front}</p>
              {f.hint && <p className="text-sm text-muted-foreground mt-2">Hint: {f.hint}</p>}
              <p className="text-xs text-muted-foreground mt-4">Tap to reveal</p>
            </CardContent>
            <CardContent className={`p-8 text-center ${!flipped ? 'hidden' : ''}`}>
              <Badge variant="outline" className="text-xs mb-3 capitalize">{f.category}</Badge>
              <p className="text-xl font-semibold">{f.back}</p>
              <p className="text-xs text-muted-foreground mt-4">Tap to flip back</p>
            </CardContent>
          </Card>
        </div>
      </div>
      <div className="flex items-center justify-center gap-3">
        <Button variant="outline" size="sm" onClick={() => { setCurrent(i => Math.max(0, i - 1)); setFlipped(false) }} disabled={current === 0}>
          Previous
        </Button>
        <span className="text-sm text-muted-foreground">{current + 1} / {flashcards.length}</span>
        <Button variant="outline" size="sm" onClick={() => { setCurrent(i => Math.min(flashcards.length - 1, i + 1)); setFlipped(false) }} disabled={current === flashcards.length - 1}>
          Next
        </Button>
      </div>
    </div>
  )
}

function ProgressSection({ lesson }: { lesson: CourseLessonFull }) {
  return (
    <div className="space-y-4">
      <SectionHeader icon={Target} title="Progress" description="Your learning progress" />
      <Card>
        <CardContent className="p-6 space-y-4">
          <div>
            <div className="flex items-center justify-between mb-2">
              <span className="text-sm font-medium">Lesson Progress</span>
              <span className="text-sm">{lesson.progress ?? 0}%</span>
            </div>
            <Progress value={lesson.progress ?? null} className="h-2" />
          </div>
          {lesson.score != null && (
            <div>
              <div className="flex items-center justify-between mb-2">
                <span className="text-sm font-medium">Test Score</span>
                <span className="text-sm">{lesson.score}%</span>
              </div>
              <Progress value={lesson.score} className="h-2" />
            </div>
          )}
          <div className="grid grid-cols-2 gap-4 pt-4 border-t">
            <div className="text-center">
              <p className="text-2xl font-bold">{lesson.duration_minutes}</p>
              <p className="text-xs text-muted-foreground">Duration (min)</p>
            </div>
            <div className="text-center">
              <p className="text-2xl font-bold">{lesson.vocabulary.length + (lesson.expressions?.length ?? 0)}</p>
              <p className="text-xs text-muted-foreground">Words & Phrases</p>
            </div>
            <div className="text-center">
              <p className="text-2xl font-bold">{lesson.exercises.length}</p>
              <p className="text-xs text-muted-foreground">Exercises</p>
            </div>
            <div className="text-center">
              <p className="text-2xl font-bold">{lesson.test_questions.length}</p>
              <p className="text-xs text-muted-foreground">Test Questions</p>
            </div>
          </div>
          <div className="pt-2">
            <Button className="w-full" onClick={() => {}}>
              <CheckCircle2 className="h-4 w-4 mr-1.5" />
              Mark Lesson as Complete
            </Button>
          </div>
        </CardContent>
      </Card>
    </div>
  )
}

function AiTeacherSection({ lesson }: { lesson: CourseLessonFull }) {
  const [question, setQuestion] = useState('')
  const [isLoading, setIsLoading] = useState(false)
  const [currentMessages, setCurrentMessages] = useState<{ role: string; text: string }[]>([
    { role: 'ai', text: `Hi! I'm your AI Teacher for "${lesson.title}". I know everything about this lesson — vocabulary, grammar, expressions, exercises, and more. Ask me anything!` },
  ])

  const sendQuestion = async () => {
    if (!question.trim() || isLoading) return
    const msg = question.trim()
    setQuestion('')
    setCurrentMessages(prev => [...prev, { role: 'user', text: msg }])
    setIsLoading(true)
    try {
      const history = currentMessages
        .filter(m => m.role !== 'system')
        .map(m => ({ role: m.role as 'user' | 'ai', text: m.text }))
      const res = await fetch('/api/ai/teacher', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ lessonId: lesson.id, message: msg, history }),
      })
      if (res.ok) {
        const data = await res.json()
        setCurrentMessages(prev => [...prev, { role: 'ai', text: data.message }])
      } else {
        setCurrentMessages(prev => [...prev, { role: 'ai', text: 'Sorry, I had trouble processing your question. Please try again.' }])
      }
    } catch {
      setCurrentMessages(prev => [...prev, { role: 'ai', text: 'Connection error. Please check your internet and try again.' }])
    } finally { setIsLoading(false) }
  }

  return (
    <div className="space-y-4">
      <SectionHeader icon={Sparkles} title="AI Teacher" description="Lesson-specific AI tutor" />
      <Card>
        <CardContent className="p-4">
          <div className="flex items-center gap-2 mb-3 text-xs text-muted-foreground">
            <Badge variant="secondary" className="text-xs">{lesson.module?.title ?? ''}</Badge>
            <Badge variant="outline" className="text-xs">{lesson.lesson_type}</Badge>
          </div>
          <div className="space-y-3 mb-4 max-h-96 overflow-y-auto">
            {currentMessages.map((m, i) => (
              <div key={i} className={`flex ${m.role === 'user' ? 'justify-end' : 'justify-start'}`}>
                <div className={`max-w-[80%] p-3 rounded-lg text-sm ${
                  m.role === 'user' ? 'bg-primary text-primary-foreground' : 'bg-muted'
                }`}>
                  <p className="text-xs opacity-70 mb-1">{m.role === 'user' ? 'You' : 'AI Teacher'}</p>
                  <p className="whitespace-pre-wrap">{m.text}</p>
                </div>
              </div>
            ))}
            {isLoading && (
              <div className="flex justify-start">
                <div className="bg-muted p-3 rounded-lg"><Loader2 className="h-5 w-5 animate-spin text-muted-foreground" /></div>
              </div>
            )}
          </div>
          <div className="flex items-center gap-2">
            <Input value={question} onChange={e => setQuestion(e.target.value)}
              onKeyDown={e => e.key === 'Enter' && sendQuestion()}
              placeholder="Ask about vocabulary, grammar, expressions..." disabled={isLoading} />
            <Button onClick={sendQuestion} size="sm" disabled={isLoading || !question.trim()}>
              <Sparkles className="h-4 w-4" />
            </Button>
          </div>
        </CardContent>
      </Card>
    </div>
  )
}
