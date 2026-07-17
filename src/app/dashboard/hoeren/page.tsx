'use client'

import { useState, useRef, useEffect, useMemo } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Skeleton } from '@/components/ui/skeleton'
import { Progress, ProgressIndicator, ProgressTrack } from '@/components/ui/progress'
import { Separator } from '@/components/ui/separator'
import { Input } from '@/components/ui/input'
import { ScrollArea } from '@/components/ui/scroll-area'
import { motion, AnimatePresence } from 'framer-motion'
import {
  Headphones, Clock, Play, Pause, SkipBack, SkipForward, CheckCircle, XCircle,
  RotateCcw, ChevronDown, ChevronUp, Search, Star, ArrowLeft,
  ListChecks, BarChart3, Lightbulb, Target,
  Repeat, FileText, Languages, Sparkles, GripVertical, Eye, EyeOff,
  BookOpen, MessageSquare, BookMarked, Hash, Quote, Upload
} from 'lucide-react'
import {
  useAudioLessons, useAudioLesson, useAudioLessonWithExtras, useSubmitListeningAnswer, useListeningAnalytics
} from '@/hooks/use-progress'
import type { GermanLevel, ListeningQuestionType, ListeningVocabulary, ListeningPhrase, ListeningGrammarPoint } from '@/types'

const SPEEDS = [0.5, 0.75, 1, 1.25, 1.5] as const
const LABELS: Record<string, string> = { restaurant: 'Restaurant', hospital: 'Hospital', hotel: 'Hotel', airport: 'Airport', university: 'University', office: 'Office', job_interview: 'Job Interview', shopping: 'Shopping', phone: 'Phone Call', government: 'Government', daily: 'Daily Life' }
const LEVELS: GermanLevel[] = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']

function formatTime(s: number) {
  const m = Math.floor(s / 60)
  const sec = Math.floor(s % 60)
  return `${m}:${sec.toString().padStart(2, '0')}`
}

function Stars({ rating }: { rating: number }) {
  return (
    <span className="inline-flex gap-0.5">
      {Array.from({ length: 5 }, (_, i) => {
        const filled = i + 1 <= rating
        const half = !filled && i < rating
        return (
          <Star
            key={i}
            className={`h-3.5 w-3.5 ${filled ? 'fill-amber-400 text-amber-400' : half ? 'fill-amber-400/50 text-amber-400/50' : 'text-muted-foreground/30'}`}
          />
        )
      })}
    </span>
  )
}

function ScenarioIcon({ scenario }: { scenario: string | null }) {
  const icons: Record<string, string> = {
    restaurant: '🍽️', hospital: '🏥', hotel: '🏨', airport: '✈️',
    university: '🎓', office: '💼', job_interview: '📋', shopping: '🛍️',
    phone: '📞', government: '🏛️', daily: '🏠'
  }
  return <span className="text-lg">{scenario ? icons[scenario] ?? '🎧' : '🎧'}</span>
}

const questionTypeLabels: Record<ListeningQuestionType, string> = {
  multiple_choice: 'Multiple Choice',
  true_false: 'Richtig / Falsch',
  matching: 'Zuordnung',
  fill_blank: 'Lückentext',
  order_events: 'Reihenfolge',
  short_answer: 'Kurze Antwort',
}

export default function HoerenPage() {
  const [selectedId, setSelectedId] = useState<string | null>(null)
  const [currentExerciseIdx, setCurrentExerciseIdx] = useState(0)
  const [selectedAnswer, setSelectedAnswer] = useState<string | null>(null)
  const [showResult, setShowResult] = useState(false)
  const [isPlaying, setIsPlaying] = useState(false)
  const [currentTime, setCurrentTime] = useState(0)
  const [duration, setDuration] = useState(0)
  const [playbackRate, setPlaybackRate] = useState(1)
  const [loop, setLoop] = useState(false)
  const [showTranscript, setShowTranscript] = useState(false)
  const [showTranslation, setShowTranslation] = useState(false)
  const [completed, setCompleted] = useState(false)
  const [results, setResults] = useState<{ exerciseId: string; correct: boolean; userAnswer: string }[]>([])
  const [searchQuery, setSearchQuery] = useState('')
  const [levelFilter, setLevelFilter] = useState<GermanLevel | ''>('')
  const [scenarioFilter, setScenarioFilter] = useState<string>('')
  const [sortBy, setSortBy] = useState<'difficulty' | 'date' | 'level'>('difficulty')
  const [fillBlankAnswer, setFillBlankAnswer] = useState('')
  const [shortAnswer, setShortAnswer] = useState('')
  const [contentTab, setContentTab] = useState<'vocabulary' | 'phrases' | 'grammar'>('vocabulary')
  const [autoShowTranscript, setAutoShowTranscript] = useState(false)
  const [readingAloud, setReadingAloud] = useState(false)
  const [isReadingLoading, setIsReadingLoading] = useState(false)

  const audioRef = useRef<HTMLAudioElement | null>(null)

  const { data: lessons, isLoading } = useAudioLessons()
  const { data: lessonDetail, isLoading: detailLoading } = useAudioLessonWithExtras(selectedId ?? undefined)
  const submitAnswer = useSubmitListeningAnswer()
  const { data: analytics } = useListeningAnalytics()

  const exercises = lessonDetail?.exercises ?? []
  const currentExercise = exercises[currentExerciseIdx]
  const lessonVocabulary = lessonDetail?.vocabulary ?? []
  const lessonPhrases = lessonDetail?.phrases ?? []
  const lessonGrammar = lessonDetail?.grammar_points ?? []
  const hasExtractedContent = lessonVocabulary.length > 0 || lessonPhrases.length > 0 || lessonGrammar.length > 0

  const filteredLessons = useMemo(() => {
    if (!lessons) return []
    let list = [...lessons]
    if (searchQuery) {
      const q = searchQuery.toLowerCase()
      list = list.filter(l => l.title.toLowerCase().includes(q) || l.description.toLowerCase().includes(q))
    }
    if (levelFilter) list = list.filter(l => l.level === levelFilter)
    if (scenarioFilter) list = list.filter(l => l.scenario === scenarioFilter)
    if (sortBy === 'difficulty') list.sort((a, b) => b.difficulty_rating - a.difficulty_rating)
    else if (sortBy === 'date') list.sort((a, b) => new Date(b.created_at).getTime() - new Date(a.created_at).getTime())
    else if (sortBy === 'level') list.sort((a, b) => LEVELS.indexOf(a.level) - LEVELS.indexOf(b.level))
    return list
  }, [lessons, searchQuery, levelFilter, scenarioFilter, sortBy])

  const stats = useMemo(() => {
    if (!analytics || !analytics.length) return { total: 0, completed: 0, avgAccuracy: 0, weakTopics: [] as string[] }
    return {
      total: analytics.length,
      completed: analytics.filter(a => a.completed).length,
      avgAccuracy: Math.round(analytics.reduce((s, a) => s + a.accuracy, 0) / analytics.length),
      weakTopics: [...new Set(analytics.flatMap(a => a.weak_topics))].slice(0, 5),
    }
  }, [analytics])

  useEffect(() => {
    if (!audioRef.current) {
      audioRef.current = new Audio()
    }
    const audio = audioRef.current
    const onTimeUpdate = () => setCurrentTime(audio.currentTime)
    const onLoadedMetadata = () => setDuration(audio.duration)
    const onEnded = () => { if (!loop) setIsPlaying(false); else { audio.currentTime = 0; audio.play() } }
    const onPlay = () => setIsPlaying(true)
    const onPause = () => setIsPlaying(false)
    audio.addEventListener('timeupdate', onTimeUpdate)
    audio.addEventListener('loadedmetadata', onLoadedMetadata)
    audio.addEventListener('ended', onEnded)
    audio.addEventListener('play', onPlay)
    audio.addEventListener('pause', onPause)
    return () => {
      audio.removeEventListener('timeupdate', onTimeUpdate)
      audio.removeEventListener('loadedmetadata', onLoadedMetadata)
      audio.removeEventListener('ended', onEnded)
      audio.removeEventListener('play', onPlay)
      audio.removeEventListener('pause', onPause)
    }
  }, [loop])

  const generatingAudioRef = useRef(false)

  const isPlaceholderAudio = (url: string) =>
    url.includes('soundhelix') || url.includes('placeholder') || url.includes('example.com')

  useEffect(() => {
    if (!selectedId || !audioRef.current) return
    if (lessonDetail?.audio_url && !isPlaceholderAudio(lessonDetail.audio_url)) {
      audioRef.current.src = lessonDetail.audio_url
      audioRef.current.load()
    } else if (lessonDetail?.transcript && !generatingAudioRef.current) {
      generatingAudioRef.current = true
      fetch('/api/tts', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ lesson_id: selectedId, transcript: lessonDetail.transcript, level: lessonDetail.level || 'A2' })
      }).then(res => res.json()).then(data => {
        if (data.audio_url && audioRef.current) {
          audioRef.current.src = data.audio_url
          audioRef.current.load()
        }
      }).catch(() => {}).finally(() => { generatingAudioRef.current = false })
    }
    setCurrentTime(0)
    setCurrentExerciseIdx(0)
    setSelectedAnswer(null)
    setShowResult(false)
    setCompleted(false)
    setResults([])
    setFillBlankAnswer('')
    setShortAnswer('')
    setAutoShowTranscript(false)
  }, [selectedId, lessonDetail?.audio_url, lessonDetail?.transcript, lessonDetail?.level])

  const prevCompleted = useRef(completed)
  useEffect(() => {
    if (completed && !prevCompleted.current) {
      setShowTranscript(true)
      setAutoShowTranscript(true)
    }
    prevCompleted.current = completed
  }, [completed])

  useEffect(() => {
    if (audioRef.current) audioRef.current.playbackRate = playbackRate
  }, [playbackRate])

  function togglePlay() {
    if (!audioRef.current) return
    if (isPlaying) audioRef.current.pause()
    else audioRef.current.play().catch(() => { })
  }

  function seek(time: number) {
    if (audioRef.current) { audioRef.current.currentTime = time; setCurrentTime(time) }
  }

  function handleSubmitAnswer() {
    if (!selectedId || !currentExercise) return
    const answer = currentExercise.question_type === 'fill_blank' ? fillBlankAnswer
      : currentExercise.question_type === 'short_answer' ? shortAnswer
        : selectedAnswer
    if (!answer) return
    setShowResult(true)
    submitAnswer.mutate({ audioLessonId: selectedId, exerciseId: currentExercise.id, answer }, {
      onSuccess: (data) => {
        setResults(prev => [...prev, { exerciseId: currentExercise.id, correct: data.correct, userAnswer: answer ?? '' }])
      }
    })
  }

  function nextExercise() {
    if (currentExerciseIdx < exercises.length - 1) {
      setCurrentExerciseIdx(prev => prev + 1)
      setSelectedAnswer(null)
      setShowResult(false)
      setFillBlankAnswer('')
      setShortAnswer('')
    } else {
      setCompleted(true)
    }
  }

  function resetLesson() {
    setCurrentExerciseIdx(0)
    setSelectedAnswer(null)
    setShowResult(false)
    setCompleted(false)
    setResults([])
    setFillBlankAnswer('')
    setShortAnswer('')
  }

  const isCorrect = submitAnswer.data?.correct

  const genderIcon = lessonDetail?.speaker_gender === 'male' ? '♂️'
    : lessonDetail?.speaker_gender === 'female' ? '♀️'
      : lessonDetail?.speaker_gender === 'mixed' ? '👥' : ''

  const ageLabel = lessonDetail?.speaker_age_group === 'young' ? 'Young'
    : lessonDetail?.speaker_age_group === 'adult' ? 'Adult'
      : lessonDetail?.speaker_age_group === 'elderly' ? 'Elderly'
        : lessonDetail?.speaker_age_group === 'mixed' ? 'Mixed' : ''

  function renderQuestionContent() {
    if (!currentExercise) return null
    const type = currentExercise.question_type as ListeningQuestionType

    if (type === 'multiple_choice') {
      const labels = ['A', 'B', 'C', 'D', 'E', 'F']
      return (
        <div className="grid gap-2.5">
          {currentExercise.options.map((option: string, idx: number) => {
            let cls = 'justify-start h-auto py-3 px-4 border-2 '
            if (showResult) {
              if (option === currentExercise.correct_answer) cls += 'border-emerald-500 bg-emerald-50 dark:bg-emerald-950/30 text-emerald-700 dark:text-emerald-300'
              else if (option === selectedAnswer) cls += 'border-red-400 bg-red-50 dark:bg-red-950/30 text-red-600 dark:text-red-300'
              else cls += 'border-muted opacity-50'
            } else {
              cls += option === selectedAnswer ? 'border-primary bg-primary/5' : 'border-muted hover:border-primary/40'
            }
            return (
              <Button key={option} variant="ghost" className={cls} disabled={showResult} onClick={() => setSelectedAnswer(option)}>
                <span className="flex items-center gap-3 w-full">
                  <span className={`flex h-7 w-7 shrink-0 items-center justify-center rounded-full text-xs font-bold ${showResult && option === currentExercise.correct_answer ? 'bg-emerald-500 text-white' : showResult && option === selectedAnswer ? 'bg-red-500 text-white' : 'bg-muted-foreground/10 text-muted-foreground'}`}>
                    {labels[idx]}
                  </span>
                  <span className="text-left">{option}</span>
                  {showResult && option === currentExercise.correct_answer && <CheckCircle className="ml-auto h-5 w-5 text-emerald-500 shrink-0" />}
                  {showResult && option === selectedAnswer && option !== currentExercise.correct_answer && <XCircle className="ml-auto h-5 w-5 text-red-500 shrink-0" />}
                </span>
              </Button>
            )
          })}
        </div>
      )
    }

    if (type === 'true_false') {
      return (
        <div className="grid grid-cols-2 gap-4">
          {['Wahr', 'Falsch'].map(option => {
            const isSelected = selectedAnswer === option
            let cls = 'h-32 flex-col gap-3 text-lg font-semibold border-2 '
            if (showResult) {
              if (option === currentExercise.correct_answer) cls += 'border-emerald-500 bg-emerald-50 dark:bg-emerald-950/30 text-emerald-600'
              else if (isSelected) cls += 'border-red-400 bg-red-50 dark:bg-red-950/30 text-red-600'
              else cls += 'border-muted opacity-40'
            } else {
              cls += isSelected ? 'border-primary bg-primary/5' : 'border-muted hover:border-primary/40'
            }
            return (
              <Button key={option} variant="ghost" className={cls} disabled={showResult} onClick={() => setSelectedAnswer(option)}>
                {option === 'Wahr' ? (showResult && option === currentExercise.correct_answer ? <CheckCircle className="h-8 w-8" /> : <Eye className="h-8 w-8" />)
                  : (showResult && option === currentExercise.correct_answer ? <CheckCircle className="h-8 w-8" /> : <EyeOff className="h-8 w-8" />)}
                {option}
              </Button>
            )
          })}
        </div>
      )
    }

    if (type === 'fill_blank') {
      return (
        <div className="space-y-3">
          <p className="text-sm text-muted-foreground italic">{currentExercise.question}</p>
          <Input
            placeholder="Tippe deine Antwort..."
            value={fillBlankAnswer}
            onChange={(e) => setFillBlankAnswer(e.target.value)}
            disabled={showResult}
            className="h-10 text-base"
          />
          {showResult && (
            <p className="text-sm">
              <span className="text-muted-foreground">Richtige Antwort: </span>
              <span className="font-semibold text-emerald-600 dark:text-emerald-400">{currentExercise.correct_answer}</span>
            </p>
          )}
        </div>
      )
    }

    if (type === 'short_answer') {
      return (
        <div className="space-y-3">
          <p className="text-sm text-muted-foreground italic">{currentExercise.question}</p>
          <textarea
            placeholder="Schreibe deine Antwort..."
            value={shortAnswer}
            onChange={(e) => setShortAnswer(e.target.value)}
            disabled={showResult}
            className="w-full min-h-[100px] rounded-lg border border-input bg-transparent px-3 py-2 text-sm resize-y focus-visible:border-ring focus-visible:ring-3 focus-visible:ring-ring/50 outline-none"
          />
          {showResult && (
            <p className="text-sm">
              <span className="text-muted-foreground">Beispielantwort: </span>
              <span className="font-semibold text-emerald-600 dark:text-emerald-400">{currentExercise.correct_answer}</span>
            </p>
          )}
        </div>
      )
    }

    if (type === 'matching') {
      const pairs = currentExercise.options.map((o: string) => {
        const [left, right] = o.split('|').map(s => s.trim())
        return { left: left ?? o, right: right ?? '' }
      })
      return (
        <div className="space-y-3">
          <p className="text-sm text-muted-foreground italic">{currentExercise.question}</p>
          <div className="grid gap-2">
            {pairs.map((p, i) => {
              const isSel = selectedAnswer === p.left
              let cls = 'justify-start h-auto py-2.5 px-4 border'
              if (showResult) {
                if (p.left === currentExercise.correct_answer || p.right === currentExercise.correct_answer) cls += ' border-emerald-500 bg-emerald-50 dark:bg-emerald-950/30'
                else if (isSel) cls += ' border-red-400 bg-red-50 dark:bg-red-950/30'
                else cls += ' border-muted opacity-50'
              } else {
                cls += isSel ? ' border-primary bg-primary/5' : ' border-muted hover:border-primary/40'
              }
              return (
                <Button key={i} variant="ghost" className={cls} disabled={showResult} onClick={() => setSelectedAnswer(p.left)}>
                  <span className="flex items-center gap-3 w-full">
                    <span className="font-medium">{p.left}</span>
                    <span className="text-muted-foreground">→</span>
                    <span className="text-muted-foreground">{p.right || '(auswählen)'}</span>
                  </span>
                </Button>
              )
            })}
          </div>
        </div>
      )
    }

    if (type === 'order_events') {
      const items = currentExercise.options
      return (
        <div className="space-y-3">
          <p className="text-sm text-muted-foreground italic">{currentExercise.question}</p>
          <div className="grid gap-2">
            {items.map((item: string, idx: number) => {
              const isSel = selectedAnswer === item
              let cls = 'justify-start h-auto py-2.5 px-4 border'
              if (showResult) {
                if (item === currentExercise.correct_answer) cls += ' border-emerald-500 bg-emerald-50 dark:bg-emerald-950/30'
                else if (isSel) cls += ' border-red-400 bg-red-50 dark:bg-red-950/30'
                else cls += ' border-muted opacity-50'
              } else {
                cls += isSel ? ' border-primary bg-primary/5' : ' border-muted hover:border-primary/40'
              }
              return (
                <Button key={idx} variant="ghost" className={cls} disabled={showResult} onClick={() => setSelectedAnswer(item)}>
                  <span className="flex items-center gap-3 w-full">
                    <GripVertical className="h-4 w-4 text-muted-foreground shrink-0" />
                    <span className="flex h-6 w-6 items-center justify-center rounded-full bg-muted text-xs font-medium shrink-0">{idx + 1}</span>
                    <span>{item}</span>
                  </span>
                </Button>
              )
            })}
          </div>
          {!showResult && <p className="text-xs text-muted-foreground">Klicken, um das Element auszuwählen</p>}
        </div>
      )
    }

    return <p className="text-muted-foreground">Question type not supported yet.</p>
  }

  if (isLoading) {
    return (
      <AppShell>
        <div className="space-y-6">
          <Skeleton className="h-10 w-64" />
          <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
            {[1, 2, 3].map(i => <Skeleton key={i} className="h-44" />)}
          </div>
        </div>
      </AppShell>
    )
  }

  if (!selectedId) {
    return (
      <AppShell>
        <div className="space-y-8">
          <div className="flex items-center gap-3">
            <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-violet-500 to-indigo-600 text-white shadow-sm">
              <Headphones className="h-5 w-5" />
            </div>
            <div>
              <h1 className="text-3xl font-bold tracking-tight">Hören</h1>
              <p className="text-muted-foreground">Prüfungsorientiertes Hörverstehenstraining</p>
            </div>
            <Button variant="outline" size="sm" onClick={() => window.location.href = '/dashboard/add-content'} className="shrink-0">
              <Upload className="h-4 w-4 mr-1" /> Inhalt hinzufügen
            </Button>
          </div>

          <div className="grid gap-4 grid-cols-2 lg:grid-cols-4">
            <Card>
              <CardContent className="p-4 flex items-center gap-3">
                <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-violet-100 dark:bg-violet-900/30 text-violet-600">
                  <Headphones className="h-5 w-5" />
                </div>
                <div>
                  <p className="text-2xl font-bold">{stats.total}</p>
                  <p className="text-xs text-muted-foreground">Lektionen insgesamt</p>
                </div>
              </CardContent>
            </Card>
            <Card>
              <CardContent className="p-4 flex items-center gap-3">
                <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-emerald-100 dark:bg-emerald-900/30 text-emerald-600">
                  <CheckCircle className="h-5 w-5" />
                </div>
                <div>
                  <p className="text-2xl font-bold">{stats.completed}</p>
                  <p className="text-xs text-muted-foreground">Abgeschlossen</p>
                </div>
              </CardContent>
            </Card>
            <Card>
              <CardContent className="p-4 flex items-center gap-3">
                <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-amber-100 dark:bg-amber-900/30 text-amber-600">
                  <BarChart3 className="h-5 w-5" />
                </div>
                <div>
                  <p className="text-2xl font-bold">{stats.avgAccuracy}%</p>
                  <p className="text-xs text-muted-foreground">Durchschn. Genauigkeit</p>
                </div>
              </CardContent>
            </Card>
            <Card>
              <CardContent className="p-4 flex items-center gap-3">
                <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-rose-100 dark:bg-rose-900/30 text-rose-600">
                  <Target className="h-5 w-5" />
                </div>
                <div className="min-w-0">
                  <p className="text-xs font-medium text-muted-foreground">Schwache Themen</p>
                  <p className="text-sm truncate">{stats.weakTopics.length ? stats.weakTopics.slice(0, 2).join(', ') : 'Keine erkannt'}</p>
                </div>
              </CardContent>
            </Card>
          </div>

          <Card>
            <CardContent className="p-4">
              <div className="flex flex-wrap items-center gap-3">
                <div className="relative flex-1 min-w-[200px]">
                  <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
                  <Input
                    placeholder="Lektionen durchsuchen…"
                    value={searchQuery}
                    onChange={(e) => setSearchQuery(e.target.value)}
                    className="pl-9 h-9"
                  />
                </div>
                <select
                  value={levelFilter}
                  onChange={(e) => setLevelFilter(e.target.value as GermanLevel | '')}
                  className="h-9 rounded-lg border border-input bg-transparent px-3 text-sm outline-none focus-visible:border-ring"
                >
                  <option value="">Alle Niveaus</option>
                  {LEVELS.map(l => <option key={l} value={l}>{l}</option>)}
                </select>
                <select
                  value={scenarioFilter}
                  onChange={(e) => setScenarioFilter(e.target.value)}
                  className="h-9 rounded-lg border border-input bg-transparent px-3 text-sm outline-none focus-visible:border-ring"
                >
                  <option value="">Alle Szenarien</option>
                  {Object.entries(LABELS).map(([k, v]) => <option key={k} value={k}>{v}</option>)}
                </select>
                <select
                  value={sortBy}
                  onChange={(e) => setSortBy(e.target.value as 'difficulty' | 'date' | 'level')}
                  className="h-9 rounded-lg border border-input bg-transparent px-3 text-sm outline-none focus-visible:border-ring"
                >
                  <option value="difficulty">Sortieren: Schwierigkeit</option>
                  <option value="date">Sortieren: Neueste</option>
                  <option value="level">Sortieren: Niveau</option>
                </select>
              </div>
            </CardContent>
          </Card>

          <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            <AnimatePresence>
              {filteredLessons.map((lesson, i) => (
                <motion.div
                  key={lesson.id}
                  initial={{ opacity: 0, y: 20 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ delay: i * 0.04 }}
                  layout
                >
                  <Card
                    className="group cursor-pointer hover:border-violet-400/50 transition-all hover:shadow-lg overflow-hidden"
                    onClick={() => setSelectedId(lesson.id)}
                  >
                    <div className="h-2 bg-gradient-to-r from-violet-500 to-indigo-500" />
                    <CardContent className="p-5">
                      <div className="flex items-start justify-between mb-3">
                        <div className="flex items-center gap-2">
                          <ScenarioIcon scenario={lesson.scenario} />
                          <Badge variant="outline" className="text-xs font-semibold">{lesson.level}</Badge>
                        </div>
                        <Stars rating={lesson.difficulty_rating} />
                      </div>
                      <h3 className="font-semibold mb-1 group-hover:text-violet-600 dark:group-hover:text-violet-400 transition-colors line-clamp-1">{lesson.title}</h3>
                      <p className="text-sm text-muted-foreground line-clamp-2 mb-3">{lesson.description}</p>
                      <div className="flex flex-wrap items-center gap-x-3 gap-y-1.5 text-xs text-muted-foreground">
                        <span className="flex items-center gap-1"><Clock className="h-3 w-3" /> {formatTime(lesson.duration_seconds)}</span>
                        {lesson.scenario && <Badge variant="secondary" className="text-[10px] px-1.5 py-0">{LABELS[lesson.scenario] ?? lesson.scenario}</Badge>}
                        {lesson.accent && <Badge variant="outline" className="text-[10px] px-1.5 py-0">{lesson.accent}</Badge>}
                      </div>
                      {(lesson.grammar_involved?.length > 0 || lesson.vocabulary_involved?.length > 0) && (
                        <div className="flex flex-wrap gap-1 mt-2">
                          {lesson.grammar_involved?.slice(0, 2).map(g => <Badge key={g} variant="secondary" className="text-[10px] px-1.5 py-0">{g}</Badge>)}
                          {lesson.vocabulary_involved?.slice(0, 2).map(v => <Badge key={v} variant="outline" className="text-[10px] px-1.5 py-0">{v}</Badge>)}
                        </div>
                      )}
                    </CardContent>
                  </Card>
                </motion.div>
              ))}
            </AnimatePresence>
            {filteredLessons.length === 0 && (
              <Card className="col-span-full">
                <CardContent className="p-12 text-center">
                  <Headphones className="h-12 w-12 text-muted-foreground/40 mx-auto mb-4" />
                  <p className="text-muted-foreground">Keine Hörlektionen entsprechen deinen Filtern.</p>
                </CardContent>
              </Card>
            )}
          </div>
        </div>
      </AppShell>
    )
  }

  if (detailLoading) {
    return (
      <AppShell>
        <div className="space-y-6">
          <Skeleton className="h-10 w-32" />
          <Skeleton className="h-64" />
          <Skeleton className="h-48" />
        </div>
      </AppShell>
    )
  }

  if (!lessonDetail) {
    return (
      <AppShell>
        <Card>
          <CardContent className="p-8 text-center text-muted-foreground">Lektion nicht gefunden.</CardContent>
        </Card>
      </AppShell>
    )
  }

  const totalCorrect = results.filter(r => r.correct).length

  if (completed) {
    return (
      <AppShell>
        <motion.div className="space-y-6" initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }}>
          <Card className="text-center py-10">
            <CardContent>
              <motion.div initial={{ scale: 0 }} animate={{ scale: 1 }} transition={{ type: 'spring', stiffness: 200, damping: 15 }}>
                <div className="inline-flex h-20 w-20 items-center justify-center rounded-full bg-emerald-100 dark:bg-emerald-900/30 mb-4">
                  {totalCorrect >= exercises.length * 0.8 ? <Sparkles className="h-10 w-10 text-emerald-500" /> : <ListChecks className="h-10 w-10 text-emerald-500" />}
                </div>
              </motion.div>
              <h2 className="text-2xl font-bold mb-1">Übung abgeschlossen!</h2>
              <p className="text-muted-foreground mb-2">{lessonDetail.title}</p>
              <div className="text-5xl font-bold text-violet-600 dark:text-violet-400 mb-1">
                {totalCorrect}<span className="text-2xl text-muted-foreground">/{exercises.length}</span>
              </div>
              <p className="text-sm text-muted-foreground mb-6">
                {Math.round((totalCorrect / exercises.length) * 100)}% accuracy
              </p>
              <div className="flex items-center justify-center gap-3 flex-wrap">
                <Button onClick={() => { setSelectedId(null); if (audioRef.current) audioRef.current.pause() }} variant="outline">
                  <ArrowLeft className="h-4 w-4 mr-1" /> Zurück zu den Lektionen
                </Button>
                <Button onClick={resetLesson}>
                  <RotateCcw className="h-4 w-4 mr-1" /> Nochmal versuchen
                </Button>
              </div>
              {results.length > 0 && (
                <div className="mt-6 max-w-md mx-auto">
                  <Separator className="mb-4" />
                  <p className="text-sm font-medium text-muted-foreground mb-2">Ergebnisse nach Fragetyp:</p>
                  <div className="space-y-1.5">
                    {exercises.map((ex, idx) => {
                      const res = results.find(r => r.exerciseId === ex.id)
                      return (
                        <div key={ex.id} className="flex items-center justify-between text-sm">
                          <span className="text-muted-foreground truncate mr-2">{idx + 1}. {questionTypeLabels[ex.question_type as ListeningQuestionType]}</span>
                          <span className={res?.correct ? 'text-emerald-500 font-medium' : 'text-red-400 font-medium'}>
                            {res?.correct ? '✓ Richtig' : '✗ Falsch'}
                          </span>
                        </div>
                      )
                    })}
                  </div>
                </div>
              )}
            </CardContent>
          </Card>

          {lessonDetail.transcript && (
            <Card>
              <CardHeader className="pb-2">
                <button
                  onClick={() => setShowTranscript(!showTranscript)}
                  className="flex items-center justify-between w-full text-left"
                >
                  <div className="flex items-center gap-2">
                    <FileText className="h-4 w-4 text-muted-foreground" />
                    <CardTitle className="text-sm font-medium">Transkript</CardTitle>
                    <Badge variant="outline" className="text-[10px]">Nach dem Hören</Badge>
                  </div>
                  {showTranscript ? <ChevronUp className="h-4 w-4" /> : <ChevronDown className="h-4 w-4" />}
                </button>
              </CardHeader>
              <AnimatePresence>
                {showTranscript && (
                  <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }} exit={{ height: 0, opacity: 0 }}>
                    <CardContent>
                      <ScrollArea className="max-h-80">
                        <p className="text-sm leading-relaxed whitespace-pre-wrap">{lessonDetail.transcript}</p>
                      </ScrollArea>
                    </CardContent>
                  </motion.div>
                )}
              </AnimatePresence>
            </Card>
          )}

          {hasExtractedContent && (
            <Card>
              <CardHeader className="pb-2">
                <div className="flex items-center gap-2 mb-3">
                  <BookOpen className="h-4 w-4 text-muted-foreground" />
                  <CardTitle className="text-sm font-medium">Lerninhalt</CardTitle>
                </div>
                <div className="flex gap-1">
                  {[
                    { id: 'vocabulary' as const, label: 'Wortschatz', icon: BookMarked, count: lessonVocabulary.length },
                    { id: 'phrases' as const, label: 'Ausdrücke', icon: Quote, count: lessonPhrases.length },
                    { id: 'grammar' as const, label: 'Grammatik', icon: Hash, count: lessonGrammar.length },
                  ].map(({ id, label, icon: Icon, count }) => (
                    <button
                      key={id}
                      onClick={() => setContentTab(id)}
                      className={`flex items-center gap-1.5 px-3 py-1.5 rounded-lg text-xs font-medium transition-all ${
                        contentTab === id
                          ? 'bg-violet-100 dark:bg-violet-900/30 text-violet-700 dark:text-violet-300'
                          : 'text-muted-foreground hover:bg-muted'
                      }`}
                    >
                      <Icon className="h-3.5 w-3.5" />
                      {label}
                      <Badge variant="outline" className="text-[10px] px-1 py-0 ml-0.5">{count}</Badge>
                    </button>
                  ))}
                </div>
              </CardHeader>
              <CardContent>
                <AnimatePresence mode="wait">
                  {contentTab === 'vocabulary' && lessonVocabulary.length > 0 && (
                    <motion.div key="vocab" initial={{ opacity: 0 }} animate={{ opacity: 1 }} className="space-y-1">
                      {lessonVocabulary.map((v: ListeningVocabulary) => (
                        <div key={v.id} className="flex items-start gap-3 p-2.5 rounded-lg hover:bg-muted/50 transition-colors">
                          <div className="flex-1 min-w-0">
                            <div className="flex items-center gap-1.5">
                              {v.article && <Badge variant="secondary" className="text-[10px] px-1 py-0 font-mono">{v.article}</Badge>}
                              <span className="font-medium text-sm">{v.german_word}</span>
                              {v.part_of_speech && <span className="text-[10px] text-muted-foreground italic">({v.part_of_speech})</span>}
                            </div>
                            <p className="text-xs text-muted-foreground mt-0.5">{v.english_translation}</p>
                            {v.context_sentence && (
                              <p className="text-xs text-muted-foreground/60 mt-1 italic line-clamp-1">&ldquo;{v.context_sentence}&rdquo;</p>
                            )}
                          </div>
                          {v.frequency && <Badge variant="outline" className="text-[10px] px-1.5 py-0 shrink-0 mt-0.5">{v.frequency}</Badge>}
                        </div>
                      ))}
                    </motion.div>
                  )}
                  {contentTab === 'phrases' && lessonPhrases.length > 0 && (
                    <motion.div key="phrases" initial={{ opacity: 0 }} animate={{ opacity: 1 }} className="space-y-1">
                      {lessonPhrases.map((p: ListeningPhrase) => (
                        <div key={p.id} className="flex items-start gap-3 p-2.5 rounded-lg hover:bg-muted/50 transition-colors">
                          <div className="flex-1 min-w-0">
                            <div className="flex items-center gap-1.5">
                              <span className="font-medium text-sm">{p.german_phrase}</span>
                              {p.is_idiom && <Badge variant="secondary" className="text-[10px] px-1 py-0">idiom</Badge>}
                              {p.is_colloquial && <Badge variant="outline" className="text-[10px] px-1 py-0">colloquial</Badge>}
                              <Badge className={`text-[10px] px-1 py-0 ${
                                p.formality_level === 'formal' ? 'bg-blue-100 text-blue-700 dark:bg-blue-900/30 dark:text-blue-300' :
                                p.formality_level === 'informal' ? 'bg-amber-100 text-amber-700 dark:bg-amber-900/30 dark:text-amber-300' :
                                p.formality_level === 'slang' ? 'bg-rose-100 text-rose-700 dark:bg-rose-900/30 dark:text-rose-300' :
                                'bg-muted text-muted-foreground'
                              }`}>{p.formality_level}</Badge>
                            </div>
                            <p className="text-xs text-muted-foreground mt-0.5">{p.english_translation}</p>
                            {p.usage_context && <p className="text-xs text-muted-foreground/60 mt-0.5">{p.usage_context}</p>}
                          </div>
                        </div>
                      ))}
                    </motion.div>
                  )}
                  {contentTab === 'grammar' && lessonGrammar.length > 0 && (
                    <motion.div key="grammar" initial={{ opacity: 0 }} animate={{ opacity: 1 }} className="space-y-2">
                      {lessonGrammar.map((g: ListeningGrammarPoint) => (
                        <div key={g.id} className="p-3 rounded-lg border hover:bg-muted/30 transition-colors">
                          <div className="flex items-center gap-2 mb-1">
                            <Badge variant="default" className="text-[10px] px-1.5 py-0 bg-violet-500/10 text-violet-600 dark:text-violet-400 border-violet-200 dark:border-violet-800">{g.grammar_topic}</Badge>
                            {g.cefr_level && <Badge variant="outline" className="text-[10px] px-1 py-0">{g.cefr_level}</Badge>}
                          </div>
                          <p className="text-sm text-muted-foreground mb-2">{g.explanation}</p>
                          <div className="p-2 rounded bg-muted/50 text-xs font-mono">
                            <p className="text-foreground">{g.example_from_audio}</p>
                            {g.english_translation && <p className="text-muted-foreground mt-0.5">{g.english_translation}</p>}
                          </div>
                          {g.rule_summary && <p className="text-xs text-muted-foreground/70 mt-1.5 italic">{g.rule_summary}</p>}
                        </div>
                      ))}
                    </motion.div>
                  )}
                </AnimatePresence>
              </CardContent>
            </Card>
          )}
        </motion.div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center justify-between">
          <Button variant="outline" onClick={() => { setSelectedId(null); if (audioRef.current) audioRef.current.pause() }}>
            <ArrowLeft className="h-4 w-4 mr-1" /> Lektionen
          </Button>
          <Badge className="bg-violet-500/10 text-violet-600 dark:text-violet-400 border-violet-200 dark:border-violet-800">
            <Headphones className="h-3 w-3 mr-1" /> Hören
          </Badge>
        </div>

        <Card className="overflow-hidden">
          <div className="h-2 bg-gradient-to-r from-violet-500 via-indigo-500 to-violet-400" />
          <CardContent className="p-0">
            <div className="p-6 pb-4">
              <div className="flex items-start justify-between gap-4 mb-4">
                <div className="space-y-1 min-w-0">
                  <div className="flex items-center gap-2">
                    <ScenarioIcon scenario={lessonDetail.scenario} />
                    <CardTitle className="text-xl">{lessonDetail.title}</CardTitle>
                  </div>
                  <CardDescription className="line-clamp-2">{lessonDetail.description}</CardDescription>
                </div>
              </div>

              <div className="flex items-center justify-center gap-4 mb-4">
                <Button size="icon" variant="ghost" className="h-9 w-9" onClick={() => seek(Math.max(0, currentTime - 10))}>
                  <SkipBack className="h-5 w-5" />
                </Button>
                <motion.button
                  whileTap={{ scale: 0.9 }}
                  onClick={togglePlay}
                  className="flex h-16 w-16 items-center justify-center rounded-full bg-gradient-to-br from-violet-500 to-indigo-600 text-white shadow-lg hover:shadow-xl transition-shadow"
                >
                  {isPlaying ? <Pause className="h-7 w-7" /> : <Play className="h-7 w-7 ml-0.5" />}
                </motion.button>
                <Button size="icon" variant="ghost" className="h-9 w-9" onClick={() => seek(Math.min(duration, currentTime + 10))}>
                  <SkipForward className="h-5 w-5" />
                </Button>
              </div>

              {lessonDetail.transcript && (
                <div className="flex justify-center mb-2">
                  <Button
                    variant="outline"
                    size="sm"
                    className="text-xs"
                    onClick={() => {
                      if (readingAloud) {
                        window.speechSynthesis?.cancel()
                        setReadingAloud(false)
                      } else {
                        const voices = window.speechSynthesis?.getVoices() ?? []
                        const germanVoices = voices.filter(v => v.lang.startsWith('de'))
                        const preferred = germanVoices.find(v => /neural|natural|premium|katja|hedda|seraphina|conrad|amala|louisa|killian/i.test(v.name))
                          ?? germanVoices.find(v => v.lang === 'de-DE')
                          ?? germanVoices[0]
                        const utterance = new SpeechSynthesisUtterance(lessonDetail.transcript as string)
                        utterance.lang = 'de-DE'
                        if (preferred) utterance.voice = preferred
                        utterance.rate = 0.9
                        utterance.onend = () => setReadingAloud(false)
                        utterance.onerror = () => setReadingAloud(false)
                        window.speechSynthesis?.speak(utterance)
                        setReadingAloud(true)
                      }
                    }}
                  >
                    {readingAloud ? <Pause className="h-3.5 w-3.5 mr-1" /> : <Play className="h-3.5 w-3.5 mr-1" />}
                    {readingAloud ? 'Stop' : 'Audio'}
                  </Button>
                </div>
              )}

              <div className="flex items-center gap-3 mb-4">
                <span className="text-xs text-muted-foreground tabular-nums w-10 text-right">{formatTime(currentTime)}</span>
                <div
                  className="flex-1 h-2 bg-muted rounded-full cursor-pointer relative overflow-hidden"
                  onClick={(e) => {
                    const rect = e.currentTarget.getBoundingClientRect()
                    seek(((e.clientX - rect.left) / rect.width) * duration)
                  }}
                >
                  <div className="h-full bg-gradient-to-r from-violet-500 to-indigo-500 rounded-full transition-all" style={{ width: `${duration ? (currentTime / duration) * 100 : 0}%` }} />
                </div>
                <span className="text-xs text-muted-foreground tabular-nums w-10">{formatTime(duration)}</span>
              </div>

              <div className="flex items-center justify-center gap-2 flex-wrap">
                {SPEEDS.map(speed => (
                  <Button
                    key={speed}
                    variant={playbackRate === speed ? 'default' : 'outline'}
                    size="sm"
                    className={`h-7 text-xs px-2.5 ${playbackRate === speed ? 'bg-violet-600 hover:bg-violet-700' : ''}`}
                    onClick={() => setPlaybackRate(speed)}
                  >
                    {speed}x
                  </Button>
                ))}
                <Separator orientation="vertical" className="h-6 mx-1" />
                <Button
                  size="sm"
                  variant={loop ? 'default' : 'outline'}
                  className={`h-7 text-xs px-2.5 ${loop ? 'bg-violet-600' : ''}`}
                  onClick={() => setLoop(!loop)}
                >
                  <Repeat className={`h-3.5 w-3.5 ${loop ? 'text-white' : ''}`} />
                </Button>
                <Button
                  size="sm"
                  variant="outline"
                  className="h-7 text-xs px-2.5"
                  onClick={() => { if (audioRef.current) { audioRef.current.currentTime = 0; setCurrentTime(0) } }}
                >
                  <RotateCcw className="h-3.5 w-3.5" />
                </Button>
              </div>
            </div>

            <Separator />

            <div className="p-6">
              <div className="grid grid-cols-2 md:grid-cols-4 gap-4 text-sm">
                <div>
                  <p className="text-xs text-muted-foreground mb-1">CEFR Level</p>
                  <Badge className="bg-violet-500/10 text-violet-600 dark:text-violet-400">{lessonDetail.cefr_level ?? lessonDetail.level}</Badge>
                </div>
                <div>
                  <p className="text-xs text-muted-foreground mb-1">Duration</p>
                  <p className="font-medium flex items-center gap-1"><Clock className="h-3.5 w-3.5 text-muted-foreground" /> {lessonDetail.estimated_duration ?? formatTime(lessonDetail.duration_seconds)}</p>
                </div>
                <div>
                  <p className="text-xs text-muted-foreground mb-1">Difficulty</p>
                  <Stars rating={lessonDetail.difficulty_rating} />
                </div>
                <div>
                  <p className="text-xs text-muted-foreground mb-1">Speaker</p>
                  <p className="font-medium flex items-center gap-1">
                    <span>{genderIcon}</span>
                    <span>{ageLabel}</span>
                    {lessonDetail.accent && <Badge variant="outline" className="text-[10px] ml-1">{lessonDetail.accent}</Badge>}
                  </p>
                </div>
              </div>

              {(lessonDetail.grammar_involved?.length > 0 || lessonDetail.vocabulary_involved?.length > 0) && (
                <div className="flex flex-wrap gap-2 mt-4">
                  {lessonDetail.grammar_involved.map(g => <Badge key={g} variant="secondary" className="text-xs">{g}</Badge>)}
                  {lessonDetail.vocabulary_involved.map(v => <Badge key={v} variant="outline" className="text-xs">{v}</Badge>)}
                </div>
              )}
            </div>
          </CardContent>
        </Card>

        {exercises.length > 0 && currentExercise && (
          <Card>
            <CardHeader className="pb-3">
              <div className="flex items-center justify-between mb-1">
                <div className="flex items-center gap-2">
                  <span className="text-sm font-medium text-muted-foreground">Frage {currentExerciseIdx + 1} von {exercises.length}</span>
                  <Badge variant="secondary" className="text-xs">
                    {questionTypeLabels[currentExercise.question_type as ListeningQuestionType] ?? currentExercise.question_type}
                  </Badge>
                </div>
                {showResult && (
                  <motion.div initial={{ scale: 0 }} animate={{ scale: 1 }} className="flex items-center gap-1">
                    {isCorrect
                      ? <span className="flex items-center gap-1 text-emerald-500 text-sm font-medium"><CheckCircle className="h-4 w-4" /> Richtig</span>
                      : <span className="flex items-center gap-1 text-red-400 text-sm font-medium"><XCircle className="h-4 w-4" /> Falsch</span>
                    }
                  </motion.div>
                )}
              </div>
              <Progress value={((currentExerciseIdx + (showResult ? 0.5 : 0)) / exercises.length) * 100}>
                <ProgressTrack>
                  <ProgressIndicator />
                </ProgressTrack>
              </Progress>
            </CardHeader>
            <CardContent className="space-y-4">
              <p className="font-medium">{currentExercise.question}</p>

              <AnimatePresence mode="wait">
                <motion.div key={currentExercise.id + (showResult ? '-result' : '-input')} initial={{ opacity: 0, x: 20 }} animate={{ opacity: 1, x: 0 }} exit={{ opacity: 0, x: -20 }} transition={{ duration: 0.2 }}>
                  {renderQuestionContent()}
                </motion.div>
              </AnimatePresence>

              {showResult && currentExercise.explanation && (
                <motion.div initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }} className="p-3 rounded-lg bg-muted/50 border text-sm">
                  <p className="text-xs font-medium text-muted-foreground mb-1 flex items-center gap-1"><Lightbulb className="h-3 w-3" /> Erklärung</p>
                  <p>{currentExercise.explanation}</p>
                </motion.div>
              )}

              {showResult && currentExercise.hint && (
                <motion.div initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }} className="p-3 rounded-lg bg-amber-50 dark:bg-amber-950/20 border border-amber-200 dark:border-amber-800 text-sm">
                  <p className="text-xs font-medium text-amber-600 dark:text-amber-400 mb-1 flex items-center gap-1"><Lightbulb className="h-3 w-3" /> Tipp</p>
                  <p className="text-amber-700 dark:text-amber-300">{currentExercise.hint}</p>
                </motion.div>
              )}

              <div className="flex items-center justify-between pt-2">
                <Button variant="ghost" size="sm" onClick={() => {
                  if (currentExerciseIdx > 0) {
                    setCurrentExerciseIdx(prev => prev - 1)
                    setSelectedAnswer(null)
                    setShowResult(false)
                    setFillBlankAnswer('')
                    setShortAnswer('')
                  }
                }} disabled={currentExerciseIdx === 0}>
                  ← Zurück
                </Button>
                {!showResult ? (
                  <Button size="sm" onClick={handleSubmitAnswer} disabled={
                    currentExercise.question_type === 'fill_blank' ? !fillBlankAnswer
                      : currentExercise.question_type === 'short_answer' ? !shortAnswer
                        : !selectedAnswer
                  } className="bg-violet-600 hover:bg-violet-700">
                    Antwort prüfen
                  </Button>
                ) : (
                  <Button size="sm" onClick={nextExercise} className="bg-violet-600 hover:bg-violet-700">
                    {currentExerciseIdx < exercises.length - 1 ? 'Nächste Frage →' : 'Ergebnisse ansehen'}
                  </Button>
                )}
              </div>
            </CardContent>
          </Card>
        )}

        {lessonDetail.transcript && (
          <Card>
            <CardHeader className="pb-2">
              <button
                onClick={() => setShowTranscript(!showTranscript)}
                className="flex items-center justify-between w-full text-left"
              >
                <div className="flex items-center gap-2">
                  <FileText className="h-4 w-4 text-muted-foreground" />
                  <CardTitle className="text-sm font-medium">Transkript</CardTitle>
                  <Badge variant="outline" className="text-[10px]">Nach dem Hören</Badge>
                </div>
                {showTranscript ? <ChevronUp className="h-4 w-4" /> : <ChevronDown className="h-4 w-4" />}
              </button>
            </CardHeader>
            <AnimatePresence>
              {showTranscript && (
                <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }} exit={{ height: 0, opacity: 0 }} transition={{ duration: 0.2 }}>
                  <CardContent>
                    <ScrollArea className="max-h-64">
                      <div className="space-y-2">
                        <p className="text-sm leading-relaxed whitespace-pre-wrap">{lessonDetail.transcript}</p>
                      </div>
                    </ScrollArea>
                    <Button
                      variant="ghost"
                      size="sm"
                      className="mt-2 text-xs"
                      onClick={() => setShowTranslation(!showTranslation)}
                    >
                      <Languages className="h-3.5 w-3.5 mr-1" />
                      {showTranslation ? 'Übersetzung ausblenden' : 'Übersetzung einblenden'}
                    </Button>
                    {showTranslation && (
                      <motion.div initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }} className="mt-2 p-3 rounded-lg bg-blue-50 dark:bg-blue-950/20 border text-sm text-muted-foreground">
                        <p>Schlüsselwortschatz mit Übersetzungen findest du im Tab <strong>Wortschatz</strong> oben.</p>
                        {lessonVocabulary?.slice(0, 5).map(v => (
                          <div key={v.id} className="flex items-center justify-between mt-2 text-xs">
                            <span className="font-medium">{v.german_word}</span>
                            <span className="text-muted-foreground">{v.english_translation}</span>
                          </div>
                        ))}
                      </motion.div>
                    )}
                  </CardContent>
                </motion.div>
              )}
            </AnimatePresence>
          </Card>
        )}

        {hasExtractedContent && (
          <Card>
            <CardHeader className="pb-2">
              <div className="flex items-center gap-2 mb-3">
                <BookOpen className="h-4 w-4 text-muted-foreground" />
                <CardTitle className="text-sm font-medium">Lerninhalt</CardTitle>
              </div>
              <div className="flex gap-1">
                {[
                  { id: 'vocabulary' as const, label: 'Wortschatz', icon: BookMarked, count: lessonVocabulary.length },
                  { id: 'phrases' as const, label: 'Ausdrücke', icon: Quote, count: lessonPhrases.length },
                  { id: 'grammar' as const, label: 'Grammatik', icon: Hash, count: lessonGrammar.length },
                ].map(({ id, label, icon: Icon, count }) => (
                  <button
                    key={id}
                    onClick={() => setContentTab(id)}
                    className={`flex items-center gap-1.5 px-3 py-1.5 rounded-lg text-xs font-medium transition-all ${
                      contentTab === id
                        ? 'bg-violet-100 dark:bg-violet-900/30 text-violet-700 dark:text-violet-300'
                        : 'text-muted-foreground hover:bg-muted'
                    }`}
                  >
                    <Icon className="h-3.5 w-3.5" />
                    {label}
                    <Badge variant="outline" className="text-[10px] px-1 py-0 ml-0.5">{count}</Badge>
                  </button>
                ))}
              </div>
            </CardHeader>
            <CardContent>
              <AnimatePresence mode="wait">
                {contentTab === 'vocabulary' && lessonVocabulary.length > 0 && (
                  <motion.div key="vocab" initial={{ opacity: 0 }} animate={{ opacity: 1 }} className="space-y-1">
                    {lessonVocabulary.map((v: ListeningVocabulary) => (
                      <div key={v.id} className="flex items-start gap-3 p-2.5 rounded-lg hover:bg-muted/50 transition-colors">
                        <div className="flex-1 min-w-0">
                          <div className="flex items-center gap-1.5">
                            {v.article && (
                              <Badge variant="secondary" className="text-[10px] px-1 py-0 font-mono">{v.article}</Badge>
                            )}
                            <span className="font-medium text-sm">{v.german_word}</span>
                            {v.part_of_speech && (
                              <span className="text-[10px] text-muted-foreground italic">({v.part_of_speech})</span>
                            )}
                          </div>
                          <p className="text-xs text-muted-foreground mt-0.5">{v.english_translation}</p>
                          {v.context_sentence && (
                            <p className="text-xs text-muted-foreground/60 mt-1 italic line-clamp-1">
                              &ldquo;{v.context_sentence}&rdquo;
                            </p>
                          )}
                        </div>
                        {v.frequency && (
                          <Badge variant="outline" className="text-[10px] px-1.5 py-0 shrink-0 mt-0.5">{v.frequency}</Badge>
                        )}
                      </div>
                    ))}
                  </motion.div>
                )}
                {contentTab === 'phrases' && lessonPhrases.length > 0 && (
                  <motion.div key="phrases" initial={{ opacity: 0 }} animate={{ opacity: 1 }} className="space-y-1">
                    {lessonPhrases.map((p: ListeningPhrase) => (
                      <div key={p.id} className="flex items-start gap-3 p-2.5 rounded-lg hover:bg-muted/50 transition-colors">
                        <div className="flex-1 min-w-0">
                          <div className="flex items-center gap-1.5">
                            <span className="font-medium text-sm">{p.german_phrase}</span>
                            {p.is_idiom && <Badge variant="secondary" className="text-[10px] px-1 py-0">idiom</Badge>}
                            {p.is_colloquial && <Badge variant="outline" className="text-[10px] px-1 py-0">colloquial</Badge>}
                            <Badge className={`text-[10px] px-1 py-0 ${
                              p.formality_level === 'formal' ? 'bg-blue-100 text-blue-700 dark:bg-blue-900/30 dark:text-blue-300' :
                              p.formality_level === 'informal' ? 'bg-amber-100 text-amber-700 dark:bg-amber-900/30 dark:text-amber-300' :
                              p.formality_level === 'slang' ? 'bg-rose-100 text-rose-700 dark:bg-rose-900/30 dark:text-rose-300' :
                              'bg-muted text-muted-foreground'
                            }`}>{p.formality_level}</Badge>
                          </div>
                          <p className="text-xs text-muted-foreground mt-0.5">{p.english_translation}</p>
                          {p.usage_context && (
                            <p className="text-xs text-muted-foreground/60 mt-0.5">{p.usage_context}</p>
                          )}
                        </div>
                      </div>
                    ))}
                  </motion.div>
                )}
                {contentTab === 'grammar' && lessonGrammar.length > 0 && (
                  <motion.div key="grammar" initial={{ opacity: 0 }} animate={{ opacity: 1 }} className="space-y-2">
                    {lessonGrammar.map((g: ListeningGrammarPoint) => (
                      <div key={g.id} className="p-3 rounded-lg border hover:bg-muted/30 transition-colors">
                        <div className="flex items-center gap-2 mb-1">
                          <Badge variant="default" className="text-[10px] px-1.5 py-0 bg-violet-500/10 text-violet-600 dark:text-violet-400 border-violet-200 dark:border-violet-800">
                            {g.grammar_topic}
                          </Badge>
                          {g.cefr_level && <Badge variant="outline" className="text-[10px] px-1 py-0">{g.cefr_level}</Badge>}
                        </div>
                        <p className="text-sm text-muted-foreground mb-2">{g.explanation}</p>
                        <div className="p-2 rounded bg-muted/50 text-xs font-mono">
                          <p className="text-foreground">{g.example_from_audio}</p>
                          {g.english_translation && (
                            <p className="text-muted-foreground mt-0.5">{g.english_translation}</p>
                          )}
                        </div>
                        {g.rule_summary && (
                          <p className="text-xs text-muted-foreground/70 mt-1.5 italic">{g.rule_summary}</p>
                        )}
                      </div>
                    ))}
                  </motion.div>
                )}
              </AnimatePresence>
            </CardContent>
          </Card>
        )}
      </div>
    </AppShell>
  )
}
