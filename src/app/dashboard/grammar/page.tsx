'use client'

import { useState, useEffect, useMemo, useCallback } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Skeleton } from '@/components/ui/skeleton'
import { Separator } from '@/components/ui/separator'
import { Progress, ProgressTrack, ProgressIndicator } from '@/components/ui/progress'
import { motion, AnimatePresence } from 'framer-motion'
import {
  Braces, CheckCircle2, XCircle, Lightbulb, ArrowRight, RotateCcw, Award,
  BarChart3, BookOpen, AlertTriangle, Hash, ListChecks, Target, GraduationCap,
  RefreshCw, Sparkles, BookMarked
} from 'lucide-react'
import {
  useGrammarExercises, useSubmitGrammar, useExerciseAttempts,
  useLearningAnalytics
} from '@/hooks/use-progress'
import type { GrammarExercise, GermanLevel } from '@/types'

const LEVELS: { value: string; label: string }[] = [
  { value: '', label: 'Alle Niveaus' },
  { value: 'A1', label: 'A1 - Anfänger' },
  { value: 'A2', label: 'A2 - Grundlagen' },
  { value: 'B1', label: 'B1 - Mittelstufe' },
  { value: 'B2', label: 'B2 - Fortgeschritten' },
  { value: 'C1', label: 'C1 - Kompetent' },
]

const CATEGORIES = [
  { value: '', label: 'Alle Kategorien' },
  { value: 'articles', label: 'Artikel' },
  { value: 'verbs', label: 'Verben' },
  { value: 'nouns', label: 'Nomen' },
  { value: 'adjectives', label: 'Adjektive' },
  { value: 'prepositions', label: 'Präpositionen' },
  { value: 'sentences', label: 'Sätze' },
  { value: 'tenses', label: 'Zeiten' },
  { value: 'cases', label: 'Fälle' },
]

const SUB_CATEGORIES: Record<string, { value: string; label: string }[]> = {
  articles: [
    { value: 'definite', label: 'Bestimmt' },
    { value: 'indefinite', label: 'Unbestimmt' },
    { value: 'negative', label: 'Negativartikel' },
    { value: 'possessive', label: 'Possessivartikel' },
  ],
  verbs: [
    { value: 'present', label: 'Präsens' },
    { value: 'past', label: 'Vergangenheit' },
    { value: 'modal', label: 'Modalverben' },
    { value: 'separable', label: 'Trennbare Verben' },
    { value: 'reflexive', label: 'Reflexive Verben' },
  ],
  nouns: [
    { value: 'gender', label: 'Genus' },
    { value: 'plural', label: 'Pluralbildung' },
    { value: 'compound', label: 'Komposita' },
    { value: 'n-declension', label: 'N-Deklination' },
  ],
  adjectives: [
    { value: 'declension', label: 'Adjektivdeklination' },
    { value: 'comparison', label: 'Steigerung' },
    { value: 'position', label: 'Stellung' },
  ],
  prepositions: [
    { value: 'accusative', label: 'Akkusativ' },
    { value: 'dative', label: 'Dativ' },
    { value: 'genitive', label: 'Genitiv' },
    { value: 'two-way', label: 'Wechselpräpositionen' },
  ],
  sentences: [
    { value: 'word-order', label: 'Satzstellung' },
    { value: 'negation', label: 'Verneinung' },
    { value: 'questions', label: 'Fragen' },
    { value: 'conjunctions', label: 'Konjunktionen' },
    { value: 'relative-clauses', label: 'Relativsätze' },
  ],
  tenses: [
    { value: 'present', label: 'Präsens' },
    { value: 'perfect', label: 'Perfekt' },
    { value: 'preterite', label: 'Präteritum' },
    { value: 'pluperfect', label: 'Plusquamperfekt' },
    { value: 'future', label: 'Futur I / Futur II' },
  ],
  cases: [
    { value: 'nominative', label: 'Nominativ' },
    { value: 'accusative', label: 'Akkusativ' },
    { value: 'dative', label: 'Dativ' },
    { value: 'genitive', label: 'Genitiv' },
  ],
}

const DIFFICULTY_OPTIONS = [
  { value: 0, label: 'Alle Schwierigkeiten' },
  { value: 1, label: '★ Leicht' },
  { value: 2, label: '★★ Mittel' },
  { value: 3, label: '★★★ Schwierig' },
  { value: 4, label: '★★★★ Schwer' },
  { value: 5, label: '★★★★★ Expert' },
]

const LEVEL_COLORS: Record<string, string> = {
  A1: 'bg-emerald-100 text-emerald-700 dark:bg-emerald-900/30 dark:text-emerald-400',
  A2: 'bg-sky-100 text-sky-700 dark:bg-sky-900/30 dark:text-sky-400',
  B1: 'bg-violet-100 text-violet-700 dark:bg-violet-900/30 dark:text-violet-400',
  B2: 'bg-amber-100 text-amber-700 dark:bg-amber-900/30 dark:text-amber-400',
  C1: 'bg-rose-100 text-rose-700 dark:bg-rose-900/30 dark:text-rose-400',
}

const CATEGORY_COLORS: Record<string, string> = {
  articles: 'bg-blue-100 text-blue-700 dark:bg-blue-900/30 dark:text-blue-400',
  verbs: 'bg-green-100 text-green-700 dark:bg-green-900/30 dark:text-green-400',
  nouns: 'bg-purple-100 text-purple-700 dark:bg-purple-900/30 dark:text-purple-400',
  adjectives: 'bg-orange-100 text-orange-700 dark:bg-orange-900/30 dark:text-orange-400',
  prepositions: 'bg-pink-100 text-pink-700 dark:bg-pink-900/30 dark:text-pink-400',
  sentences: 'bg-cyan-100 text-cyan-700 dark:bg-cyan-900/30 dark:text-cyan-400',
  tenses: 'bg-rose-100 text-rose-700 dark:bg-rose-900/30 dark:text-rose-400',
  cases: 'bg-indigo-100 text-indigo-700 dark:bg-indigo-900/30 dark:text-indigo-400',
}

function DifficultyDots({ rating }: { rating: number }) {
  return (
    <div className="flex items-center gap-0.5">
      {[1, 2, 3, 4, 5].map(d => (
        <div key={d} className={`h-1.5 w-1.5 rounded-full ${d <= rating ? 'bg-primary' : 'bg-muted-foreground/20'}`} />
      ))}
    </div>
  )
}

function AnimatedScore({ score, total }: { score: number; total: number }) {
  const [displayScore, setDisplayScore] = useState(0)
  const pct = total > 0 ? Math.round((score / total) * 100) : 0

  useEffect(() => {
    let frame = 0
    const totalFrames = 30
    const increment = score / totalFrames
    const timer = setInterval(() => {
      frame++
      setDisplayScore(Math.min(Math.round(increment * frame), score))
      if (frame >= totalFrames) clearInterval(timer)
    }, 25)
    return () => clearInterval(timer)
  }, [score])

  return (
    <div className="text-center">
      <motion.div initial={{ scale: 0 }} animate={{ scale: 1 }} transition={{ type: 'spring', stiffness: 200, damping: 15, delay: 0.2 }}>
        <div className={`mx-auto flex h-20 w-20 items-center justify-center rounded-full bg-gradient-to-br shadow-lg ${
          pct >= 80 ? 'from-emerald-400 to-emerald-600' : pct >= 60 ? 'from-amber-400 to-orange-500' : 'from-rose-400 to-red-500'
        }`}>
          <Award className="h-10 w-10 text-white" />
        </div>
      </motion.div>
      <h2 className="text-2xl font-bold mt-4 mb-1">
        {pct >= 90 ? 'Ausgezeichnet!' : pct >= 80 ? 'Sehr gut!' : pct >= 60 ? 'Gut gemacht!' : 'Weiter üben!'}
      </h2>
      <div className="flex items-baseline justify-center gap-2 mt-2">
        <span className={`text-5xl font-bold tabular-nums ${pct >= 80 ? 'text-emerald-500' : pct >= 60 ? 'text-amber-500' : 'text-rose-500'}`}>
          {displayScore}
        </span>
        <span className="text-2xl text-muted-foreground">/ {total}</span>
      </div>
      <p className={`text-sm font-medium mt-1 ${pct >= 80 ? 'text-emerald-500' : pct >= 60 ? 'text-amber-500' : 'text-rose-500'}`}>
        {pct}% accuracy
      </p>
    </div>
  )
}

export default function GrammarPage() {
  const [level, setLevel] = useState('')
  const [category, setCategory] = useState('')
  const [subCategory, setSubCategory] = useState('')
  const [difficulty, setDifficulty] = useState(0)
  const [started, setStarted] = useState(false)
  const [currentIdx, setCurrentIdx] = useState(0)
  const [selectedAnswer, setSelectedAnswer] = useState<string | null>(null)
  const [inputValue, setInputValue] = useState('')
  const [showResult, setShowResult] = useState(false)
  const [results, setResults] = useState<{ correct: number; total: number }>({ correct: 0, total: 0 })
  const [userAnswers, setUserAnswers] = useState<Record<string, { answer: string; correct: boolean }>>({})
  const [showReview, setShowReview] = useState(false)

  const filters = useMemo(() => {
    const f: { sub_category?: string; difficulty_rating?: number } = {}
    if (subCategory) f.sub_category = subCategory
    if (difficulty > 0) f.difficulty_rating = difficulty
    return f
  }, [subCategory, difficulty])

  const { data: exercises, isLoading } = useGrammarExercises(level || undefined, category || undefined, filters)
  const submitGrammar = useSubmitGrammar()
  const { data: attempts } = useExerciseAttempts({ exercise_type: 'grammar' })
  const { data: analytics } = useLearningAnalytics()

  const grammarAttempts = useMemo(() => attempts ?? [], [attempts])
  const exercisesCompleted = useMemo(() => {
    const unique = new Set(grammarAttempts.map(a => a.exercise_id))
    return unique.size
  }, [grammarAttempts])
  const accuracyRate = useMemo(() => {
    if (grammarAttempts.length === 0) return 0
    const correct = grammarAttempts.filter(a => a.correct).length
    return Math.round((correct / grammarAttempts.length) * 100)
  }, [grammarAttempts])
  const grammarMastery = analytics?.grammar_mastery ?? 0

  const currentExercise: GrammarExercise | undefined = exercises?.[currentIdx]
  const isComplete = exercises && currentIdx >= exercises.length
  const isFillBlank = useCallback((ex: GrammarExercise) => {
    return ex.options.length === 0 || ex.question.includes('___')
  }, [])

  const subCategoryOptions = useMemo(() => {
    if (!category || !SUB_CATEGORIES[category]) return []
    return SUB_CATEGORIES[category]
  }, [category])

  const handleSelectAnswer = useCallback((answer: string) => {
    if (showResult || !currentExercise) return
    setSelectedAnswer(answer)
    submitGrammar.mutate(
      { exerciseId: currentExercise.id, answer },
      {
        onSuccess: (data) => {
          setShowResult(true)
          const correct = data.correct ?? (answer === currentExercise.correct_answer)
          if (correct) setResults(prev => ({ ...prev, correct: prev.correct + 1 }))
          setUserAnswers(prev => ({ ...prev, [currentExercise.id]: { answer, correct } }))
        },
      }
    )
  }, [showResult, currentExercise, submitGrammar])

  const handleInputSubmit = useCallback(() => {
    if (!inputValue.trim() || showResult || !currentExercise) return
    handleSelectAnswer(inputValue.trim())
  }, [inputValue, showResult, currentExercise, handleSelectAnswer])

  const nextExercise = useCallback(() => {
    if (currentIdx < (exercises?.length ?? 0) - 1) {
      setCurrentIdx(prev => prev + 1)
      setSelectedAnswer(null)
      setInputValue('')
      setShowResult(false)
    } else {
      setCurrentIdx(prev => prev + 1)
    }
  }, [currentIdx, exercises?.length])

  const restart = useCallback(() => {
    setCurrentIdx(0)
    setSelectedAnswer(null)
    setInputValue('')
    setShowResult(false)
    setResults({ correct: 0, total: 0 })
    setUserAnswers({})
    setShowReview(false)
    setStarted(false)
  }, [])

  const startPractice = useCallback(() => {
    setStarted(true)
    setCurrentIdx(0)
    setResults({ correct: 0, total: 0 })
    setUserAnswers({})
    setShowReview(false)
  }, [])

  useEffect(() => {
    if (!showResult || !currentExercise || isFillBlank(currentExercise)) return
    const handler = (e: KeyboardEvent) => {
      const key = parseInt(e.key)
      if (key >= 1 && key <= currentExercise.options.length) {
        handleSelectAnswer(currentExercise.options[key - 1])
      }
      if (e.key === 'Enter' && showResult) nextExercise()
    }
    window.addEventListener('keydown', handler)
    return () => window.removeEventListener('keydown', handler)
  }, [showResult, currentExercise, handleSelectAnswer, nextExercise, isFillBlank])

  useEffect(() => {
    if (!showResult || !currentExercise || !isFillBlank(currentExercise)) return
    const handler = (e: KeyboardEvent) => {
      if (e.key === 'Enter' && showResult) nextExercise()
    }
    window.addEventListener('keydown', handler)
    return () => window.removeEventListener('keydown', handler)
  }, [showResult, currentExercise, nextExercise, isFillBlank])

  useEffect(() => {
    if (!currentExercise || !isFillBlank(currentExercise)) return
    const handler = (e: KeyboardEvent) => {
      if (e.key === 'Enter' && inputValue.trim() && !showResult) handleInputSubmit()
    }
    window.addEventListener('keydown', handler)
    return () => window.removeEventListener('keydown', handler)
  }, [currentExercise, inputValue, showResult, handleInputSubmit, isFillBlank])

  const renderFillBlank = useCallback((ex: GrammarExercise) => {
    const parts = ex.question.split('___')
    return (
      <div className="text-lg font-medium leading-relaxed">
        {parts.map((part, i) => (
          <span key={i}>
            {part}
            {i < parts.length - 1 && (
              <Input
                value={i === 0 ? inputValue : ''}
                onChange={e => setInputValue(e.target.value)}
                disabled={showResult}
                className={`inline-flex w-36 mx-1 h-9 text-base text-center ${
                  showResult
                    ? inputValue.toLowerCase() === ex.correct_answer.toLowerCase()
                      ? 'border-green-500 ring-green-500/30'
                      : 'border-rose-500 ring-rose-500/30'
                    : ''
                }`}
                placeholder="..."
                autoFocus
              />
            )}
          </span>
        ))}
        {parts.length === 1 && (
          <div className="mt-3">
            <Input
              value={inputValue}
              onChange={e => setInputValue(e.target.value)}
              disabled={showResult}
              className={`text-base ${showResult ? (inputValue.toLowerCase() === ex.correct_answer.toLowerCase() ? 'border-green-500' : 'border-rose-500') : ''}`}
              placeholder="Type your answer..."
              autoFocus
            />
          </div>
        )}
        {!showResult && inputValue.trim() && (
          <div className="mt-3">
            <Button onClick={handleInputSubmit} size="sm">
              <CheckCircle2 className="h-4 w-4 mr-1.5" /> Check Answer
            </Button>
          </div>
        )}
      </div>
    )
  }, [inputValue, showResult, handleInputSubmit])

  const isCorrectAnswer = useCallback((ex: GrammarExercise, answer: string) => {
    if (submitGrammar.data?.correct !== undefined) return submitGrammar.data.correct
    return answer === ex.correct_answer
  }, [submitGrammar.data])

  if (isLoading) {
    return (
      <AppShell>
        <div className="space-y-6">
          <Skeleton className="h-10 w-64" />
          <div className="grid gap-4 sm:grid-cols-3">
            {[1, 2, 3].map(i => <Skeleton key={i} className="h-24 rounded-xl" />)}
          </div>
          <Skeleton className="h-12" />
          <Skeleton className="h-64 rounded-xl" />
        </div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <div className="flex h-11 w-11 items-center justify-center rounded-xl bg-gradient-to-br from-orange-500 to-orange-600 text-white shadow-sm">
            <Braces className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Grammatik</h1>
            <p className="text-sm text-muted-foreground">Beherrsche die deutsche Grammatik mit strukturierten Übungen</p>
          </div>
        </div>

        <div className="grid grid-cols-1 gap-3 sm:grid-cols-3">
          {[
            { label: 'Übungen erledigt', value: exercisesCompleted, icon: ListChecks, color: 'text-orange-500', bg: 'from-orange-500/5 to-orange-500/10', border: 'border-orange-500/20' },
            { label: 'Genauigkeit', value: `${accuracyRate}%`, icon: Target, color: accuracyRate >= 80 ? 'text-emerald-500' : accuracyRate >= 60 ? 'text-amber-500' : 'text-rose-500', bg: 'from-emerald-500/5 to-emerald-500/10', border: 'border-emerald-500/20' },
            { label: 'Grammatik-Level', value: `${grammarMastery}%`, icon: GraduationCap, color: 'text-violet-500', bg: 'from-violet-500/5 to-violet-500/10', border: 'border-violet-500/20' },
          ].map(stat => (
            <Card key={stat.label} className={`bg-gradient-to-br ${stat.bg} ${stat.border}`}>
              <CardContent className="flex items-center gap-4 p-4">
                <div className="flex h-10 w-10 items-center justify-center rounded-full bg-background">
                  <stat.icon className={`h-5 w-5 ${stat.color}`} />
                </div>
                <div>
                  <p className="text-2xl font-bold">{stat.value}</p>
                  <p className="text-xs text-muted-foreground">{stat.label}</p>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>

        <div className="flex flex-wrap items-center gap-2">
          <Select value={level} onValueChange={v => { if (v !== null) { setLevel(v); setStarted(false); setCurrentIdx(0); setResults({ correct: 0, total: 0 }) } }}>
            <SelectTrigger className="w-36 h-9 text-sm"><SelectValue placeholder="Niveau" /></SelectTrigger>
            <SelectContent>
              {LEVELS.map(l => <SelectItem key={l.value} value={l.value}>{l.label}</SelectItem>)}
            </SelectContent>
          </Select>
          <Select value={category} onValueChange={v => { if (v !== null) { setCategory(v); setSubCategory(''); setStarted(false); setCurrentIdx(0); setResults({ correct: 0, total: 0 }) } }}>
            <SelectTrigger className="w-36 h-9 text-sm"><SelectValue placeholder="Kategorie" /></SelectTrigger>
            <SelectContent>
              {CATEGORIES.map(c => <SelectItem key={c.value} value={c.value}>{c.label}</SelectItem>)}
            </SelectContent>
          </Select>
          {subCategoryOptions.length > 0 && (
            <Select value={subCategory} onValueChange={v => { if (v !== null) { setSubCategory(v); setStarted(false); setCurrentIdx(0); setResults({ correct: 0, total: 0 }) } }}>
              <SelectTrigger className="w-40 h-9 text-sm"><SelectValue placeholder="Unterkategorie" /></SelectTrigger>
              <SelectContent>
                <SelectItem value="">Alle Unterkategorien</SelectItem>
                {subCategoryOptions.map(s => <SelectItem key={s.value} value={s.value}>{s.label}</SelectItem>)}
              </SelectContent>
            </Select>
          )}
          <Select value={String(difficulty)} onValueChange={v => { if (v !== null) setDifficulty(Number(v)); setStarted(false); setCurrentIdx(0); setResults({ correct: 0, total: 0 }) }}>
            <SelectTrigger className="w-36 h-9 text-sm"><SelectValue placeholder="Schwierigkeit" /></SelectTrigger>
            <SelectContent>
              {DIFFICULTY_OPTIONS.map(d => <SelectItem key={d.value} value={String(d.value)}>{d.label}</SelectItem>)}
            </SelectContent>
          </Select>
          {exercises && exercises.length > 0 && (
            <span className="text-sm text-muted-foreground ml-auto tabular-nums">
              {exercises.length} Übung{exercises.length !== 1 ? 'en' : ''} gefunden
            </span>
          )}
        </div>

        <Separator />

        {!exercises || exercises.length === 0 ? (
          <Card>
            <CardContent className="p-12 text-center">
              <BookOpen className="h-12 w-12 text-muted-foreground/40 mx-auto mb-4" />
              <p className="text-muted-foreground">Keine Grammatikübungen gefunden. Versuche andere Filter.</p>
            </CardContent>
          </Card>
        ) : showReview ? (
          <div className="space-y-4">
            <div className="flex items-center justify-between">
              <h2 className="text-lg font-semibold flex items-center gap-2">
                <BarChart3 className="h-5 w-5 text-primary" /> Alle Antworten überprüfen
              </h2>
              <Button variant="outline" size="sm" onClick={() => setShowReview(false)}>
                <ArrowRight className="h-4 w-4 mr-1.5" /> Zurück zu den Ergebnissen
              </Button>
            </div>
            {exercises.map((ex, i) => {
              const ua = userAnswers[ex.id]
              const isCorrect = ua?.correct ?? false
              return (
                <motion.div key={ex.id} initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.04 }}>
                  <Card className={`border-l-4 ${isCorrect ? 'border-l-emerald-500' : 'border-l-rose-500'}`}>
                    <CardContent className="p-4 space-y-2">
                      <div className="flex items-start justify-between gap-2">
                        <div className="flex-1 min-w-0">
                          <p className="font-medium text-sm mb-1">{ex.title}</p>
                          <p className="text-sm text-muted-foreground">{ex.question}</p>
                        </div>
                        <Badge className={`shrink-0 text-[10px] ${CATEGORY_COLORS[ex.category] ?? ''}`}>
                          {ex.category}
                        </Badge>
                      </div>
                      <div className="flex flex-wrap items-center gap-x-4 gap-y-1 text-sm">
                        <span className="text-muted-foreground">
                          Deine Antwort:{' '}
                          <span className={isCorrect ? 'text-emerald-500 font-medium' : 'text-rose-500 font-medium'}>
                            {ua?.answer ?? '—'}
                          </span>
                        </span>
                        {!isCorrect && (
                          <span className="text-muted-foreground">
                            Richtig:{' '}
                            <span className="text-emerald-500 font-medium">{ex.correct_answer}</span>
                          </span>
                        )}
                        <span className="flex items-center gap-1">
                          {isCorrect ? (
                            <CheckCircle2 className="h-4 w-4 text-emerald-500" />
                          ) : (
                            <XCircle className="h-4 w-4 text-rose-500" />
                          )}
                          <span className={isCorrect ? 'text-emerald-500' : 'text-rose-500'}>
                            {isCorrect ? 'Richtig' : 'Falsch'}
                          </span>
                        </span>
                      </div>
                      {ex.explanation && (
                        <div className="flex items-start gap-2 p-2 bg-muted/50 rounded text-xs text-muted-foreground">
                          <Lightbulb className="h-3.5 w-3.5 text-amber-500 mt-0.5 shrink-0" />
                          <span>{ex.explanation}</span>
                        </div>
                      )}
                    </CardContent>
                  </Card>
                </motion.div>
              )
            })}
          </div>
        ) : isComplete ? (
          <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} className="space-y-6">
            <Card className="py-8">
              <CardContent className="space-y-6">
                <AnimatedScore score={results.correct} total={results.total} />
                <Progress value={(results.correct / Math.max(results.total, 1)) * 100} className="max-w-xs mx-auto">
                  <ProgressTrack className="h-2 rounded-full" />
                  <ProgressIndicator className="rounded-full" />
                </Progress>
                {results.total > 1 && (
                  <div className="grid grid-cols-2 sm:grid-cols-3 gap-3 max-w-md mx-auto pt-2">
                    {['articles', 'verbs', 'nouns', 'adjectives', 'prepositions', 'tenses'].filter(cat => exercises.some(e => e.category === cat)).map(cat => {
                      const catExercises = exercises.filter(e => e.category === cat)
                      const catCorrect = catExercises.filter(e => userAnswers[e.id]?.correct).length
                      const pct = catExercises.length > 0 ? Math.round((catCorrect / catExercises.length) * 100) : 0
                      return (
                        <div key={cat} className="text-center p-2 rounded-lg bg-muted/30">
                          <p className={`text-lg font-bold ${pct >= 80 ? 'text-emerald-500' : pct >= 60 ? 'text-amber-500' : 'text-rose-500'}`}>
                            {catCorrect}/{catExercises.length}
                          </p>
                          <p className="text-[10px] text-muted-foreground capitalize">{cat}</p>
                        </div>
                      )
                    })}
                  </div>
                )}
                <div className="flex justify-center gap-3 pt-4">
                  <Button variant="outline" onClick={() => setShowReview(true)} disabled={Object.keys(userAnswers).length === 0}>
                    <BarChart3 className="h-4 w-4 mr-1.5" /> Review Answers
                  </Button>
                  <Button onClick={restart}>
                    <RotateCcw className="h-4 w-4 mr-1.5" /> Try Again
                  </Button>
                </div>
              </CardContent>
            </Card>
          </motion.div>
        ) : currentExercise ? (
          <AnimatePresence mode="wait">
            <motion.div
              key={currentExercise.id}
              initial={{ opacity: 0, x: 30 }}
              animate={{ opacity: 1, x: 0 }}
              exit={{ opacity: 0, x: -30 }}
              transition={{ duration: 0.2 }}
            >
              {!started && currentIdx === 0 && (
                <motion.div initial={{ opacity: 0, y: -10 }} animate={{ opacity: 1, y: 0 }}>
                  <Card className="mb-6 border-primary/20 bg-primary/[0.02]">
                    <CardHeader className="pb-3">
                      <div className="flex items-center gap-2">
                        <Sparkles className="h-5 w-5 text-primary" />
                        <CardTitle className="text-base">
                          {currentExercise.title}
                        </CardTitle>
                      </div>
                      <CardDescription>{currentExercise.description}</CardDescription>
                    </CardHeader>
                    <CardContent className="space-y-4 pb-5">
                      {currentExercise.examples && currentExercise.examples.length > 0 && (
                        <div>
                          <p className="text-xs font-medium text-muted-foreground mb-1.5 flex items-center gap-1.5">
                            <Hash className="h-3 w-3" /> Beispiele
                          </p>
                          <ul className="space-y-1">
                            {currentExercise.examples.map((ex, i) => (
                              <li key={i} className="text-sm italic text-muted-foreground bg-muted/40 rounded px-3 py-1.5">
                                {ex}
                              </li>
                            ))}
                          </ul>
                        </div>
                      )}
                      {currentExercise.exceptions && currentExercise.exceptions.length > 0 && (
                        <div className="flex items-start gap-2 p-3 bg-amber-500/10 border border-amber-500/20 rounded-lg">
                          <AlertTriangle className="h-4 w-4 text-amber-500 mt-0.5 shrink-0" />
                          <div>
                            <p className="text-xs font-semibold text-amber-600 dark:text-amber-400 mb-0.5">Ausnahmen</p>
                            <ul className="text-xs text-muted-foreground space-y-0.5">
                              {currentExercise.exceptions.map((ex, i) => (
                                <li key={i}>{ex}</li>
                              ))}
                            </ul>
                          </div>
                        </div>
                      )}
                      {currentExercise.related_rules && currentExercise.related_rules.length > 0 && (
                        <div>
                          <p className="text-xs font-medium text-muted-foreground mb-1.5">Verwandte Regeln</p>
                          <div className="flex flex-wrap gap-1.5">
                            {currentExercise.related_rules.map((rule, i) => (
                              <Badge key={i} variant="secondary" className="text-[10px] cursor-default">
                                <BookMarked className="h-3 w-3 mr-1" /> {rule}
                              </Badge>
                            ))}
                          </div>
                        </div>
                      )}
                      <Button onClick={startPractice} className="w-full h-11 text-base mt-2">
                        <Sparkles className="mr-2 h-4 w-4" /> Üben starten
                      </Button>
                    </CardContent>
                  </Card>
                </motion.div>
              )}

              <Card>
                <CardHeader className="pb-3">
                  <div className="flex items-center justify-between gap-2">
                    <div className="flex items-center gap-2 min-w-0">
                      <CardTitle className="text-base truncate">{currentExercise.title}</CardTitle>
                      <Badge className={`text-[10px] shrink-0 ${CATEGORY_COLORS[currentExercise.category] ?? ''}`}>
                        {currentExercise.category}
                      </Badge>
                      <DifficultyDots rating={currentExercise.difficulty_rating} />
                    </div>
                    <span className="text-xs text-muted-foreground shrink-0 tabular-nums">
                      {currentIdx + 1}/{exercises.length}
                    </span>
                  </div>
                  <CardDescription className="text-xs">{currentExercise.description}</CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <Progress value={((currentIdx + 1) / exercises.length) * 100}>
                    <ProgressTrack className="h-1.5 rounded-full" />
                    <ProgressIndicator className="rounded-full" />
                  </Progress>

                  {isFillBlank(currentExercise) ? (
                    renderFillBlank(currentExercise)
                  ) : (
                    <div className="text-base font-medium p-4 bg-muted/40 rounded-lg leading-relaxed">
                      {currentExercise.question}
                    </div>
                  )}

                  {!isFillBlank(currentExercise) && currentExercise.options.length > 0 && (
                    <div className="grid gap-2">
                      {currentExercise.options.map((option, idx) => {
                        const isCorrect = isCorrectAnswer(currentExercise, option)
                        const isSelected = option === selectedAnswer
                        const showCorrect = showResult && isCorrect
                        const showWrong = showResult && isSelected && !isCorrect
                        let variant: 'outline' | 'default' | 'secondary' = 'outline'
                        if (showCorrect) variant = 'default'
                        else if (showWrong) variant = 'secondary'
                        else if (isSelected && !showResult) variant = 'default'
                        return (
                          <Button
                            key={option}
                            variant={variant}
                            disabled={showResult}
                            onClick={() => handleSelectAnswer(option)}
                            className={`justify-start h-auto py-3 px-4 text-left transition-all ${
                              showCorrect ? 'bg-emerald-600 hover:bg-emerald-600 border-emerald-500 ring-2 ring-emerald-500/30' : ''
                            } ${showWrong ? 'bg-rose-100 dark:bg-rose-900/30 text-rose-700 dark:text-rose-400 border-rose-300 dark:border-rose-700 ring-2 ring-rose-500/30' : ''}`}
                          >
                            <div className="flex items-center gap-3 w-full">
                              <div className={`flex h-6 w-6 shrink-0 items-center justify-center rounded-full border text-xs font-medium ${
                                showCorrect ? 'border-emerald-500 bg-emerald-500 text-white' : ''
                              } ${showWrong ? 'border-rose-500 bg-rose-500 text-white' : ''} ${
                                isSelected && !showResult ? 'border-primary bg-primary text-primary-foreground' : ''
                              } ${!isSelected && !showCorrect && !showWrong ? 'border-muted-foreground/30 text-muted-foreground' : ''}`}>
                                {idx + 1}
                              </div>
                              <span className="flex-1 text-sm">{option}</span>
                              {showCorrect && <CheckCircle2 className="h-5 w-5 shrink-0 text-emerald-500" />}
                              {showWrong && <XCircle className="h-5 w-5 shrink-0 text-rose-500" />}
                            </div>
                          </Button>
                        )
                      })}
                    </div>
                  )}

                  {showResult && (
                    <motion.div initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} className="space-y-3 pt-1">
                      <div className={`rounded-lg p-4 border ${
                        isCorrectAnswer(currentExercise, selectedAnswer ?? '')
                          ? 'bg-emerald-500/5 border-emerald-500/20'
                          : 'bg-rose-500/5 border-rose-500/20'
                      }`}>
                        <div className="flex items-start gap-3">
                          {isCorrectAnswer(currentExercise, selectedAnswer ?? '') ? (
                            <CheckCircle2 className="h-5 w-5 text-emerald-500 shrink-0 mt-0.5" />
                          ) : (
                            <XCircle className="h-5 w-5 text-rose-500 shrink-0 mt-0.5" />
                          )}
                          <div className="space-y-1.5 min-w-0">
                            <p className={`text-sm font-semibold ${
                              isCorrectAnswer(currentExercise, selectedAnswer ?? '')
                                ? 'text-emerald-600 dark:text-emerald-400'
                                : 'text-rose-600 dark:text-rose-400'
                            }`}>
                              {isCorrectAnswer(currentExercise, selectedAnswer ?? '') ? 'Correct!' : 'Incorrect'}
                              {!isCorrectAnswer(currentExercise, selectedAnswer ?? '') && (
                                <> — Correct: <span className="font-bold">{currentExercise.correct_answer}</span></>
                              )}
                            </p>
                            {currentExercise.explanation && (
                              <div className="flex items-start gap-2 text-xs text-muted-foreground">
                                <Lightbulb className="h-3.5 w-3.5 text-amber-500 mt-0.5 shrink-0" />
                                <span>{currentExercise.explanation}</span>
                              </div>
                            )}
                            {currentExercise.exceptions && currentExercise.exceptions.length > 0 && (
                              <div className="flex items-start gap-2 p-2 bg-amber-500/10 border border-amber-500/20 rounded text-xs">
                                <AlertTriangle className="h-3.5 w-3.5 text-amber-500 mt-0.5 shrink-0" />
                                <div>
                                  <span className="font-semibold text-amber-600 dark:text-amber-400">Exception: </span>
                                  <span className="text-muted-foreground">{currentExercise.exceptions.join('; ')}</span>
                                </div>
                              </div>
                            )}
                            {currentExercise.related_rules && currentExercise.related_rules.length > 0 && (
                              <div className="flex flex-wrap gap-1 pt-0.5">
                                {currentExercise.related_rules.map((rule, i) => (
                                  <Badge key={i} variant="outline" className="text-[10px] font-normal cursor-default">
                                    <BookMarked className="h-3 w-3 mr-1" /> {rule}
                                  </Badge>
                                ))}
                              </div>
                            )}
                          </div>
                        </div>
                      </div>
                      <div className="flex items-center justify-between">
                          <span className="text-xs text-muted-foreground tabular-nums">
                            Punkte: {results.correct}/{results.total + (selectedAnswer ? 1 : 0) - 1 + (showResult ? 1 : 0)}
                          </span>
                        <Button onClick={nextExercise} size="sm">
                          {currentIdx < exercises.length - 1 ? (
                            <><ArrowRight className="h-4 w-4 mr-1.5" /> Weiter</>
                          ) : (
                            <><Award className="h-4 w-4 mr-1.5" /> Ergebnisse anzeigen</>
                          )}
                        </Button>
                      </div>
                    </motion.div>
                  )}

                  {!showResult && isFillBlank(currentExercise) && inputValue.trim() && (
                    <div className="text-xs text-center text-muted-foreground">
                      Drücke <kbd className="px-1.5 py-0.5 rounded border bg-muted text-[10px] font-mono">Enter</kbd> zum Bestätigen
                    </div>
                  )}

                  {!showResult && !isFillBlank(currentExercise) && (
                    <div className="text-xs text-center text-muted-foreground">
                      Press <kbd className="px-1.5 py-0.5 rounded border bg-muted text-[10px] font-mono">1</kbd>
                      <kbd className="px-1.5 py-0.5 rounded border bg-muted text-[10px] font-mono ml-1">2</kbd>
                      <kbd className="px-1.5 py-0.5 rounded border bg-muted text-[10px] font-mono ml-1">3</kbd>
                      <kbd className="px-1.5 py-0.5 rounded border bg-muted text-[10px] font-mono ml-1">4</kbd>
                      {' '} zur Auswahl
                    </div>
                  )}
                </CardContent>
              </Card>
            </motion.div>
          </AnimatePresence>
        ) : (
          <Card>
            <CardContent className="p-12 text-center text-muted-foreground">
              <BookOpen className="h-12 w-12 mx-auto mb-4 opacity-40" />
              <p>Keine Übungen gefunden. Versuche andere Filter.</p>
            </CardContent>
          </Card>
        )}
      </div>
    </AppShell>
  )
}
