'use client'

import { useState, useMemo } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Skeleton } from '@/components/ui/skeleton'
import { Input } from '@/components/ui/input'
import { Textarea } from '@/components/ui/textarea'
import { Select, SelectTrigger, SelectValue, SelectContent, SelectItem } from '@/components/ui/select'
import { Progress, ProgressTrack, ProgressIndicator, ProgressValue } from '@/components/ui/progress'
import { ScrollArea } from '@/components/ui/scroll-area'
import { Separator } from '@/components/ui/separator'
import { motion, AnimatePresence } from 'framer-motion'
import {
  BookOpen, ArrowLeft, Clock, CheckCircle, XCircle, Volume2, BookmarkPlus,
  Search, Library, ChevronRight, Lightbulb, Quote, Award, BarChart3, BookMarked,
  ArrowUpDown, User, CalendarDays, Zap, HelpCircle
} from 'lucide-react'
import { useArticles, useArticle, useSubmitReadingAnswer, useCompleteArticle, useLearningAnalytics } from '@/hooks/use-progress'
import type { ReadingQuestionType, GermanLevel, Article } from '@/types'

const LEVELS: GermanLevel[] = ['A1', 'A2', 'B1', 'B2', 'C1']
const CATEGORIES = ['Alles', 'News', 'Wissenschaft', 'Technologie', 'Kultur', 'Reisen', 'Geschichte', 'Medizin', 'Umwelt', 'Wirtschaft', 'Politik', 'Bildung']
const SORT_OPTIONS = [{ value: 'difficulty', label: 'Schwierigkeit' }, { value: 'date', label: 'Datum' }, { value: 'word_count', label: 'Wortanzahl' }]

const QUIZ_LABELS: Record<ReadingQuestionType, string> = {
  multiple_choice: 'Multiple Choice',
  true_false: 'Richtig/Falsch',
  match_headings: 'Überschriften zuordnen',
  gap_filling: 'Lückentext',
  inference: 'Schlussfolgerung',
  vocabulary_context: 'Wortschatz im Kontext',
  short_answer: 'Kurzantwort',
}

const QUIZ_COLORS: Record<ReadingQuestionType, string> = {
  multiple_choice: 'bg-blue-500/10 text-blue-600 dark:text-blue-400',
  true_false: 'bg-purple-500/10 text-purple-600 dark:text-purple-400',
  match_headings: 'bg-orange-500/10 text-orange-600 dark:text-orange-400',
  gap_filling: 'bg-cyan-500/10 text-cyan-600 dark:text-cyan-400',
  inference: 'bg-rose-500/10 text-rose-600 dark:text-rose-400',
  vocabulary_context: 'bg-emerald-500/10 text-emerald-600 dark:text-emerald-400',
  short_answer: 'bg-amber-500/10 text-amber-600 dark:text-amber-400',
}

function DifficultyDots({ rating }: { rating: number }) {
  return (
    <div className="flex gap-0.5">
      {[1, 2, 3, 4, 5].map((d) => (
        <div
          key={d}
          className={`h-1.5 w-1.5 rounded-full transition-colors ${
            d <= rating ? 'bg-primary' : 'bg-muted-foreground/20'
          }`}
        />
      ))}
    </div>
  )
}

function LevelBadge({ level }: { level: GermanLevel }) {
  const colors: Record<GermanLevel, string> = {
    A1: 'bg-green-500/10 text-green-600 dark:text-green-400 border-green-200 dark:border-green-800',
    A2: 'bg-emerald-500/10 text-emerald-600 dark:text-emerald-400 border-emerald-200 dark:border-emerald-800',
    B1: 'bg-blue-500/10 text-blue-600 dark:text-blue-400 border-blue-200 dark:border-blue-800',
    B2: 'bg-purple-500/10 text-purple-600 dark:text-purple-400 border-purple-200 dark:border-purple-800',
    C1: 'bg-rose-500/10 text-rose-600 dark:text-rose-400 border-rose-200 dark:border-rose-800',
  }
  return (
    <Badge variant="outline" className={`text-xs font-semibold ${colors[level]}`}>
      {level}
    </Badge>
  )
}

export default function LesenPage() {
  const [selectedId, setSelectedId] = useState<string | null>(null)
  const [searchQuery, setSearchQuery] = useState('')
  const [levelFilter, setLevelFilter] = useState<string>('all')
  const [categoryFilter, setCategoryFilter] = useState<string>('Alles')
  const [sortBy, setSortBy] = useState('difficulty')
  const [currentQuestionIdx, setCurrentQuestionIdx] = useState(0)
  const [selectedAnswer, setSelectedAnswer] = useState<string | null>(null)
  const [showResult, setShowResult] = useState(false)
  const [completed, setCompleted] = useState(false)
  const [answers, setAnswers] = useState<Record<string, string>>({})
  const [showAllResults, setShowAllResults] = useState(false)

  const { data: articles, isLoading } = useArticles(
    levelFilter !== 'all' ? levelFilter : undefined,
    categoryFilter !== 'Alles' ? categoryFilter.toLowerCase() : undefined
  )
  const { data: articleDetail, isLoading: detailLoading } = useArticle(selectedId ?? undefined)
  const { data: analytics } = useLearningAnalytics()
  const submitAnswer = useSubmitReadingAnswer()
  const completeArticle = useCompleteArticle()

  const questions = articleDetail?.questions ?? []
  const currentQuestion = questions[currentQuestionIdx]
  const vocab = articleDetail?.vocabulary ?? []
  const correctCount = useMemo(() =>
    questions.filter((q) => answers[q.id] === q.correct_answer).length,
    [answers, questions]
  )

  const filteredArticles = useMemo(() => {
    if (!articles) return []
    let result = [...articles]
    if (searchQuery) {
      const q = searchQuery.toLowerCase()
      result = result.filter((a) => a.title.toLowerCase().includes(q) || a.summary.toLowerCase().includes(q))
    }
    if (sortBy === 'difficulty') result.sort((a, b) => a.difficulty_rating - b.difficulty_rating)
    else if (sortBy === 'date') result.sort((a, b) => new Date(b.created_at).getTime() - new Date(a.created_at).getTime())
    else if (sortBy === 'word_count') result.sort((a, b) => a.word_count - b.word_count)
    return result
  }, [articles, searchQuery, sortBy])

  function handleSelectAnswer(answer: string) {
    if (showResult) return
    setSelectedAnswer(answer)
    submitAnswer.mutate(
      { articleId: selectedId!, questionId: currentQuestion.id, answer },
      { onSuccess: () => setShowResult(true) }
    )
  }

  function nextQuestion() {
    setAnswers((prev) => ({ ...prev, [currentQuestion.id]: selectedAnswer ?? '' }))
    if (currentQuestionIdx < questions.length - 1) {
      setCurrentQuestionIdx((prev) => prev + 1)
      setSelectedAnswer(null)
      setShowResult(false)
    } else {
      completeArticle.mutate(selectedId!)
      setCompleted(true)
    }
  }

  function resetView() {
    setSelectedId(null)
    setCompleted(false)
    setCurrentQuestionIdx(0)
    setShowResult(false)
    setSelectedAnswer(null)
    setAnswers({})
    setShowAllResults(false)
  }

  function renderQuestion() {
    if (!currentQuestion) return null
    const isCorrect = showResult && selectedAnswer === currentQuestion.correct_answer
    const isWrong = showResult && selectedAnswer !== null && selectedAnswer !== currentQuestion.correct_answer

    return (
      <motion.div
        key={currentQuestion.id}
        initial={{ opacity: 0, x: 20 }}
        animate={{ opacity: 1, x: 0 }}
        className="space-y-6"
      >
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Badge className={QUIZ_COLORS[currentQuestion.question_type]}>
              {QUIZ_LABELS[currentQuestion.question_type]}
            </Badge>
            <span className="text-sm text-muted-foreground">
              Frage {currentQuestionIdx + 1} von {questions.length}
            </span>
          </div>
          <Progress value={(currentQuestionIdx + 1) / questions.length * 100} className="w-32">
            <ProgressTrack />
          </Progress>
        </div>

        <div className="rounded-lg bg-muted/50 p-4 border">
          <p className="text-base font-medium leading-relaxed">{currentQuestion.question}</p>
        </div>

        {currentQuestion.question_type === 'true_false' && (
          <div className="grid grid-cols-2 gap-4">
            {['Wahr', 'Falsch'].map((opt) => {
              const tfCorrect = showResult && opt === currentQuestion.correct_answer
              const tfSelected = opt === selectedAnswer
              const tfWrong = showResult && tfSelected && !tfCorrect
              return (
                <Button
                  key={opt}
                  variant="outline"
                  disabled={showResult}
                  onClick={() => handleSelectAnswer(opt)}
                  className={`h-24 text-lg font-bold transition-all ${
                    tfCorrect ? 'border-green-500 bg-green-500/10 ring-2 ring-green-500' : ''
                  } ${tfWrong ? 'border-red-500 bg-red-500/10 ring-2 ring-red-500' : ''} ${
                    !showResult && tfSelected ? 'border-primary bg-primary/10 ring-2 ring-primary' : ''
                  }`}
                >
                  {showResult && tfCorrect && <CheckCircle className="h-5 w-5 mr-2 text-green-500" />}
                  {showResult && tfWrong && <XCircle className="h-5 w-5 mr-2 text-red-500" />}
                  {opt}
                </Button>
              )
            })}
          </div>
        )}

        {currentQuestion.question_type === 'gap_filling' && (
          <div className="space-y-3">
            <Input
              placeholder="Ihre Antwort..."
              value={selectedAnswer ?? ''}
              onChange={(e) => !showResult && setSelectedAnswer(e.target.value)}
              disabled={showResult}
              className={`text-base ${showResult ? (isCorrect ? 'border-green-500' : 'border-red-500') : ''}`}
            />
            {selectedAnswer && (
              <Button onClick={() => handleSelectAnswer(selectedAnswer)} disabled={showResult}>
                Antwort prüfen
              </Button>
            )}
          </div>
        )}

        {(currentQuestion.question_type === 'short_answer') && (
          <div className="space-y-3">
            <Textarea
              placeholder="Schreiben Sie Ihre Antwort..."
              value={selectedAnswer ?? ''}
              onChange={(e) => !showResult && setSelectedAnswer(e.target.value)}
              disabled={showResult}
              className={`min-h-24 ${showResult ? (isCorrect ? 'border-green-500' : 'border-red-500') : ''}`}
            />
            {selectedAnswer && (
              <Button onClick={() => handleSelectAnswer(selectedAnswer)} disabled={showResult}>
                Antwort prüfen
              </Button>
            )}
          </div>
        )}

        {!['true_false', 'gap_filling', 'short_answer'].includes(currentQuestion.question_type) && (
          <div className="grid gap-2">
            {currentQuestion.options.map((option) => {
              const optCorrect = showResult && option === currentQuestion.correct_answer
              const optSelected = option === selectedAnswer
              const optWrong = showResult && optSelected && !optCorrect
              return (
                <Button
                  key={option}
                  variant="outline"
                  disabled={showResult}
                  onClick={() => handleSelectAnswer(option)}
                  className={`justify-start h-auto py-3 px-4 text-left transition-all ${
                    optCorrect ? 'border-green-500 bg-green-500/10 ring-2 ring-green-500' : ''
                  } ${optWrong ? 'border-red-500 bg-red-500/10 ring-2 ring-red-500' : ''} ${
                    !showResult && optSelected ? 'border-primary bg-primary/10 ring-2 ring-primary' : ''
                  }`}
                >
                  <div className="flex items-center gap-3 w-full">
                    <div className={`flex h-6 w-6 shrink-0 items-center justify-center rounded-full border text-xs font-medium ${
                      optCorrect ? 'border-green-500 bg-green-500 text-white' : ''
                    } ${optWrong ? 'border-red-500 bg-red-500 text-white' : ''} ${
                      !showResult && optSelected ? 'border-primary bg-primary text-primary-foreground' : ''
                    } ${!optSelected && !optCorrect && !optWrong ? 'border-muted-foreground/30' : ''}`}>
                      {String.fromCharCode(65 + currentQuestion.options.indexOf(option))}
                    </div>
                    <span className="flex-1">{option}</span>
                    {showResult && optCorrect && <CheckCircle className="h-5 w-5 shrink-0 text-green-500" />}
                    {showResult && optWrong && <XCircle className="h-5 w-5 shrink-0 text-red-500" />}
                  </div>
                </Button>
              )
            })}
          </div>
        )}

        {showResult && (
          <motion.div
            initial={{ opacity: 0, y: 10 }}
            animate={{ opacity: 1, y: 0 }}
            className={`rounded-lg p-4 border ${
              isCorrect ? 'bg-green-500/5 border-green-500/20' : 'bg-red-500/5 border-red-500/20'
            }`}
          >
            <div className="flex items-start gap-3">
              {isCorrect ? (
                <CheckCircle className="h-5 w-5 text-green-500 mt-0.5 shrink-0" />
              ) : (
                <XCircle className="h-5 w-5 text-red-500 mt-0.5 shrink-0" />
              )}
              <div className="space-y-2">
                <p className={`font-semibold text-sm ${isCorrect ? 'text-green-600 dark:text-green-400' : 'text-red-600 dark:text-red-400'}`}>
                  {isCorrect ? 'Richtig!' : 'Leider falsch.'}
                  {!isCorrect && (
                    <> Richtige Antwort: <span className="font-bold">{currentQuestion.correct_answer}</span></>
                  )}
                </p>
                {currentQuestion.explanation && (
                  <div className="flex items-start gap-2 text-sm text-muted-foreground">
                    <Lightbulb className="h-4 w-4 mt-0.5 shrink-0" />
                    <p>{currentQuestion.explanation}</p>
                  </div>
                )}
              </div>
            </div>
            <div className="mt-3 flex justify-end">
              <Button onClick={nextQuestion} size="sm">
                {currentQuestionIdx < questions.length - 1 ? (
                  <>Nächste Frage <ChevronRight className="h-4 w-4 ml-1" /></>
                ) : (
                  'Ergebnisse anzeigen'
                )}
              </Button>
            </div>
          </motion.div>
        )}
      </motion.div>
    )
  }

  function renderCompletion() {
    const score = questions.length > 0 ? Math.round((correctCount / questions.length) * 100) : 100
    const gradeColor = score >= 80 ? 'text-green-500' : score >= 60 ? 'text-amber-500' : 'text-red-500'
    const gradeLabel = score >= 90 ? 'Ausgezeichnet!' : score >= 80 ? 'Sehr gut!' : score >= 70 ? 'Gut' : score >= 60 ? 'Befriedigend' : 'Übungsbedarf'

    return (
      <motion.div
        initial={{ opacity: 0, scale: 0.95 }}
        animate={{ opacity: 1, scale: 1 }}
        className="space-y-6"
      >
        <Card className="text-center py-10">
          <CardContent className="space-y-6">
            <motion.div
              initial={{ scale: 0 }}
              animate={{ scale: 1 }}
              transition={{ type: 'spring', stiffness: 200, damping: 15 }}
            >
              <div className="mx-auto flex h-20 w-20 items-center justify-center rounded-full bg-gradient-to-br from-emerald-400 to-emerald-600 text-white shadow-lg">
                <Award className="h-10 w-10" />
              </div>
            </motion.div>
            <div>
              <h2 className="text-2xl font-bold">{gradeLabel}</h2>
              <p className="text-muted-foreground mt-1">
                Sie haben {articleDetail?.title} gelesen
              </p>
            </div>
            <div className="flex justify-center gap-8">
              <div className="text-center">
                <p className={`text-4xl font-bold ${gradeColor}`}>{score}%</p>
                <p className="text-xs text-muted-foreground mt-1">Gesamtpunktzahl</p>
              </div>
              <div className="text-center">
                <p className="text-4xl font-bold">{correctCount}/{questions.length}</p>
                <p className="text-xs text-muted-foreground mt-1">Richtige Antworten</p>
              </div>
            </div>
            <Progress value={score} className="max-w-xs mx-auto">
              <ProgressTrack className="h-2 rounded-full" />
              <ProgressIndicator className="rounded-full" />
            </Progress>
          </CardContent>
        </Card>

        {vocab.length > 0 && (
          <Card>
            <CardHeader>
              <CardTitle className="text-sm flex items-center gap-2">
                <BookMarked className="h-4 w-4" /> Gelernte Vokabeln
              </CardTitle>
            </CardHeader>
            <CardContent>
              <div className="grid gap-2 sm:grid-cols-2">
                {vocab.map((v) => (
                  <div key={v.id} className="flex items-center gap-2 text-sm p-2 rounded-lg bg-muted/30">
                    <Volume2 className="h-3 w-3 text-primary shrink-0" />
                    <span className="font-medium">{v.german_word}</span>
                    <span className="text-muted-foreground">— {v.english_translation}</span>
                    <Button variant="ghost" size="icon" className="h-6 w-6 ml-auto">
                      <BookmarkPlus className="h-3 w-3" />
                    </Button>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>
        )}

        {showAllResults && (
          <Card>
            <CardHeader>
              <CardTitle className="text-sm flex items-center gap-2">
                <BarChart3 className="h-4 w-4" /> Fragenübersicht
              </CardTitle>
            </CardHeader>
            <CardContent className="space-y-3">
              {questions.map((q, i) => {
                const userAns = answers[q.id] ?? ''
                const correct = userAns === q.correct_answer
                return (
                  <div key={q.id} className={`p-3 rounded-lg border text-sm ${
                    correct ? 'border-green-500/20 bg-green-500/5' : 'border-red-500/20 bg-red-500/5'
                  }`}>
                    <div className="flex items-start gap-2">
                      {correct ? (
                        <CheckCircle className="h-4 w-4 text-green-500 mt-0.5 shrink-0" />
                      ) : (
                        <XCircle className="h-4 w-4 text-red-500 mt-0.5 shrink-0" />
                      )}
                      <div>
                        <p className="font-medium">{q.question}</p>
                        <p className="text-muted-foreground mt-1">
                          Ihre Antwort: <span className={correct ? 'text-green-500' : 'text-red-500'}>{userAns || '—'}</span>
                          {!correct && <> | Richtig: <span className="text-green-500 font-medium">{q.correct_answer}</span></>}
                        </p>
                      </div>
                    </div>
                  </div>
                )
              })}
            </CardContent>
          </Card>
        )}

        <div className="flex flex-wrap gap-3 justify-center">
          <Button variant="outline" onClick={() => setShowAllResults(!showAllResults)}>
            <BarChart3 className="h-4 w-4 mr-2" />
            {showAllResults ? 'Ergebnisse verbergen' : 'Alle Ergebnisse anzeigen'}
          </Button>
          <Button onClick={resetView}>
            <Library className="h-4 w-4 mr-2" /> Zurück zur Bibliothek
          </Button>
        </div>
      </motion.div>
    )
  }

  function renderArticle() {
    return (
      <div className="space-y-6 max-w-4xl mx-auto">
        <Button variant="ghost" onClick={resetView} className="gap-2 -ml-3">
          <ArrowLeft className="h-4 w-4" /> Zurück zur Bibliothek
        </Button>

        <article>
          <div className="flex flex-wrap items-center gap-3 mb-2">
            <LevelBadge level={articleDetail!.level} />
            {articleDetail!.category && (
              <Badge variant="secondary" className="text-xs">{articleDetail!.category}</Badge>
            )}
            <DifficultyDots rating={articleDetail!.difficulty_rating} />
          </div>

          <h1 className="text-3xl font-bold tracking-tight mb-3">{articleDetail!.title}</h1>

          <div className="flex flex-wrap items-center gap-4 text-sm text-muted-foreground mb-6">
            {articleDetail!.author && (
              <span className="flex items-center gap-1.5"><User className="h-3.5 w-3.5" />{articleDetail!.author}</span>
            )}
            {articleDetail!.source && (
              <span className="flex items-center gap-1.5"><Quote className="h-3.5 w-3.5" />{articleDetail!.source}</span>
            )}
            <span className="flex items-center gap-1.5">
              <CalendarDays className="h-3.5 w-3.5" />
              {new Date(articleDetail!.created_at).toLocaleDateString('de-DE', { day: 'numeric', month: 'long', year: 'numeric' })}
            </span>
            <span className="flex items-center gap-1.5">
              <Clock className="h-3.5 w-3.5" />
              {articleDetail!.reading_time_minutes ?? Math.ceil(articleDetail!.word_count / 200)} Min. Lesezeit
            </span>
            <span className="flex items-center gap-1.5">
              <BookOpen className="h-3.5 w-3.5" />{articleDetail!.word_count} Wörter
            </span>
          </div>

          <Separator className="mb-6" />

          <div className="prose prose-neutral dark:prose-invert prose-headings:font-bold prose-a:text-primary max-w-none leading-relaxed">
            {articleDetail!.content.split('\n\n').map((paragraph, i) => {
              const trimmed = paragraph.trim()
              if (!trimmed) return null
              if (trimmed.startsWith('## ')) {
                return <h2 key={i} className="text-xl font-bold mt-8 mb-3">{trimmed.replace('## ', '')}</h2>
              }
              if (trimmed.startsWith('### ')) {
                return <h3 key={i} className="text-lg font-bold mt-6 mb-2">{trimmed.replace('### ', '')}</h3>
              }
              return <p key={i} className="mb-4 leading-[1.8]">{trimmed}</p>
            })}
          </div>
        </article>

        {vocab.length > 0 && (
          <Card className="border-primary/10">
            <CardHeader className="pb-3">
              <CardTitle className="text-sm flex items-center gap-2">
                <BookMarked className="h-4 w-4 text-primary" /> Schlüsselvokabeln
              </CardTitle>
              <CardDescription className="text-xs">Wichtige Wörter aus diesem Artikel</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="grid gap-2 sm:grid-cols-2 lg:grid-cols-3">
                {vocab.map((v) => (
                  <div key={v.id} className="flex items-center gap-2 p-2 rounded-lg bg-muted/30 border text-sm group hover:bg-muted/50 transition-colors">
                    <Volume2 className="h-3.5 w-3.5 text-primary shrink-0 cursor-pointer hover:text-primary/80" />
                    <div className="min-w-0 flex-1">
                      <p className="font-medium truncate">{v.german_word}</p>
                      <p className="text-xs text-muted-foreground truncate">{v.english_translation}</p>
                    </div>
                    <Button variant="ghost" size="icon" className="h-7 w-7 shrink-0 opacity-0 group-hover:opacity-100 transition-opacity">
                      <BookmarkPlus className="h-3.5 w-3.5" />
                    </Button>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>
        )}

        <Separator />

        {questions.length > 0 ? (
          <div className="space-y-4">
            <div className="flex items-center gap-2">
              <HelpCircle className="h-5 w-5 text-primary" />
              <h2 className="text-xl font-bold">Verständnisfragen</h2>
            </div>
            <p className="text-sm text-muted-foreground">
              Beantworten Sie die folgenden Fragen, um Ihr Textverständnis zu überprüfen.
            </p>
            {renderQuestion()}
          </div>
        ) : (
          <Card>
            <CardContent className="p-6 text-center space-y-3">
              <p className="text-muted-foreground">Für diesen Artikel sind keine Fragen verfügbar.</p>
              <Button onClick={() => { completeArticle.mutate(selectedId!); setCompleted(true) }}>
                <CheckCircle className="h-4 w-4 mr-2" /> Als gelesen markieren
              </Button>
            </CardContent>
          </Card>
        )}
      </div>
    )
  }

  if (isLoading) {
    return (
      <AppShell>
        <div className="space-y-6">
          <Skeleton className="h-10 w-64" />
          <div className="flex gap-2"><Skeleton className="h-8 w-20" /><Skeleton className="h-8 w-20" /><Skeleton className="h-8 w-20" /></div>
          <div className="grid gap-4 md:grid-cols-2">
            {[1, 2, 3, 4].map((i) => <Skeleton key={i} className="h-44" />)}
          </div>
        </div>
      </AppShell>
    )
  }

  if (selectedId && articleDetail) {
    return (
      <AppShell>
        {completed ? renderCompletion() : renderArticle()}
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-8">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-emerald-500 to-emerald-600 text-white shadow-sm">
              <BookOpen className="h-5 w-5" />
            </div>
            <div>
              <h1 className="text-3xl font-bold tracking-tight">Lesen</h1>
              <p className="text-muted-foreground">Verbessern Sie Ihr Leseverständnis mit authentischen deutschen Texten</p>
            </div>
          </div>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
          <Card className="bg-gradient-to-br from-emerald-500/5 to-emerald-500/10 border-emerald-500/20">
            <CardContent className="flex items-center gap-3 p-4">
              <div className="flex h-10 w-10 items-center justify-center rounded-full bg-emerald-500/10">
                <BookMarked className="h-5 w-5 text-emerald-500" />
              </div>
              <div>
                <p className="text-2xl font-bold">{analytics?.total_lessons_completed ?? 0}</p>
                <p className="text-xs text-muted-foreground">Artikel gelesen</p>
              </div>
            </CardContent>
          </Card>
          <Card className="bg-gradient-to-br from-blue-500/5 to-blue-500/10 border-blue-500/20">
            <CardContent className="flex items-center gap-3 p-4">
              <div className="flex h-10 w-10 items-center justify-center rounded-full bg-blue-500/10">
                <BarChart3 className="h-5 w-5 text-blue-500" />
              </div>
              <div>
                <p className="text-2xl font-bold">{analytics?.lesen_score ?? 0}%</p>
                <p className="text-xs text-muted-foreground">Lesen Kompetenz</p>
              </div>
            </CardContent>
          </Card>
          <Card className="bg-gradient-to-br from-amber-500/5 to-amber-500/10 border-amber-500/20">
            <CardContent className="flex items-center gap-3 p-4">
              <div className="flex h-10 w-10 items-center justify-center rounded-full bg-amber-500/10">
                <Zap className="h-5 w-5 text-amber-500" />
              </div>
              <div>
                <p className="text-2xl font-bold">{analytics?.current_streak ?? 0}</p>
                <p className="text-xs text-muted-foreground">Tage Serie</p>
              </div>
            </CardContent>
          </Card>
        </div>

        <div className="flex flex-wrap items-center gap-3">
          <div className="relative flex-1 min-w-[200px]">
            <Search className="absolute left-2.5 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground pointer-events-none" />
            <Input
              placeholder="Artikel durchsuchen..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="pl-8"
            />
          </div>
          <Select value={levelFilter} onValueChange={(v) => v && setLevelFilter(v)}>
            <SelectTrigger className="w-26">
              <SelectValue placeholder="Level" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="all">Alle Level</SelectItem>
              {LEVELS.map((l) => <SelectItem key={l} value={l}>{l}</SelectItem>)}
            </SelectContent>
          </Select>
          <Select value={categoryFilter} onValueChange={(v) => v && setCategoryFilter(v)}>
            <SelectTrigger className="w-36">
              <SelectValue placeholder="Kategorie" />
            </SelectTrigger>
            <SelectContent>
              {CATEGORIES.map((c) => <SelectItem key={c} value={c}>{c}</SelectItem>)}
            </SelectContent>
          </Select>
          <Select value={sortBy} onValueChange={(v) => v && setSortBy(v)}>
            <SelectTrigger className="w-36">
              <ArrowUpDown className="h-3.5 w-3.5 mr-1" />
              <SelectValue placeholder="Sortieren" />
            </SelectTrigger>
            <SelectContent>
              {SORT_OPTIONS.map((s) => <SelectItem key={s.value} value={s.value}>{s.label}</SelectItem>)}
            </SelectContent>
          </Select>
        </div>

        <div className="grid gap-4 md:grid-cols-2">
          <AnimatePresence mode="popLayout">
            {filteredArticles.map((article, i) => (
              <motion.div
                key={article.id}
                layout
                initial={{ opacity: 0, y: 20 }}
                animate={{ opacity: 1, y: 0 }}
                exit={{ opacity: 0, scale: 0.95 }}
                transition={{ delay: i * 0.03, duration: 0.25 }}
              >
                <Card
                  className="group cursor-pointer hover:border-primary/50 transition-all hover:shadow-lg h-full"
                  onClick={() => setSelectedId(article.id)}
                >
                  <CardContent className="p-5 flex flex-col h-full">
                    <div className="flex items-start justify-between mb-3">
                      <div className="flex items-center gap-2 flex-wrap">
                        <LevelBadge level={article.level} />
                        {article.category && (
                          <Badge variant="secondary" className="text-[10px] px-1.5 py-0 h-5">
                            {article.category}
                          </Badge>
                        )}
                      </div>
                      <DifficultyDots rating={article.difficulty_rating} />
                    </div>

                    <h3 className="font-semibold mb-1.5 group-hover:text-primary transition-colors line-clamp-1">
                      {article.title}
                    </h3>
                    <p className="text-sm text-muted-foreground line-clamp-2 mb-3 flex-1">
                      {article.summary}
                    </p>

                    {article.tags && article.tags.length > 0 && (
                      <div className="flex flex-wrap gap-1 mb-3">
                        {article.tags.slice(0, 3).map((tag) => (
                          <Badge key={tag} variant="outline" className="text-[10px] px-1.5 py-0 h-5 font-normal">
                            {tag}
                          </Badge>
                        ))}
                        {article.tags.length > 3 && (
                          <span className="text-[10px] text-muted-foreground self-center">+{article.tags.length - 3}</span>
                        )}
                      </div>
                    )}

                    <div className="flex items-center justify-between pt-3 border-t text-xs text-muted-foreground mt-auto">
                      <div className="flex items-center gap-3">
                        <span className="flex items-center gap-1">
                          <BookOpen className="h-3 w-3" />{article.word_count}
                        </span>
                        <span className="flex items-center gap-1">
                          <Clock className="h-3 w-3" />{article.reading_time_minutes ?? Math.ceil(article.word_count / 200)} Min.
                        </span>
                      </div>
                      <Button variant="ghost" size="sm" className="gap-1 h-7 text-xs opacity-0 group-hover:opacity-100 transition-opacity">
                        Lesen <ChevronRight className="h-3 w-3" />
                      </Button>
                    </div>
                  </CardContent>
                </Card>
              </motion.div>
            ))}
          </AnimatePresence>
          {!isLoading && filteredArticles.length === 0 && (
            <Card className="col-span-2">
              <CardContent className="p-12 text-center text-muted-foreground space-y-3">
                <BookOpen className="h-12 w-12 mx-auto opacity-30" />
                <p className="font-medium">Keine Artikel gefunden</p>
                <p className="text-sm">Versuchen Sie andere Filter oder Kategorien.</p>
              </CardContent>
            </Card>
          )}
        </div>
      </div>
    </AppShell>
  )
}
