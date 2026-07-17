'use client'

import { useState, useEffect, useRef } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Separator } from '@/components/ui/separator'
import { ScrollArea } from '@/components/ui/scroll-area'
import { Progress, ProgressIndicator, ProgressTrack } from '@/components/ui/progress'
import { motion, AnimatePresence } from 'framer-motion'
import { AudioPlayer } from '@/components/audio-player'
import {
  Layers, BookOpen, Headphones, MessageSquare, FileText,
  PenTool, Hash, Sparkles, ArrowRight, Play, Pause,
  Briefcase, Heart, Plane, Leaf, Monitor, Music,
  TrendingUp, Users, Home, UtensilsCrossed, Clock, CheckCircle,
  XCircle, RotateCcw, ChevronDown, ChevronUp, Star, Lightbulb,
  Quote, BookMarked, ListChecks, Volume2, Target, Languages,
} from 'lucide-react'
import type { LucideIcon } from 'lucide-react'
import type { GermanLevel, ThemeContentType, ThemeLesson, AudioLessonWithExtras, ListeningVocabulary, ListeningPhrase, ListeningGrammarPoint } from '@/types'

const THEMES = [
  { id: 'weather', label: 'Das Wetter', icon: Sparkles, desc: 'Wetterberichte, Klima, Jahreszeiten' },
  { id: 'work', label: 'Die Arbeit', icon: Briefcase, desc: 'Bewerbung, Büro, Meetings, Beruf' },
  { id: 'health', label: 'Die Gesundheit', icon: Heart, desc: 'Beim Arzt, Krankenhaus, Gesundheit' },
  { id: 'travel', label: 'Das Reisen', icon: Plane, desc: 'Reisen, Verkehr, Unterkunft' },
  { id: 'environment', label: 'Die Umwelt', icon: Leaf, desc: 'Umwelt, Klimawandel, Nachhaltigkeit' },
  { id: 'technology', label: 'Die Technologie', icon: Monitor, desc: 'Digitalisierung, KI, Internet' },
  { id: 'culture', label: 'Die Kultur', icon: Music, desc: 'Kunst, Musik, Traditionen, Feste' },
  { id: 'education', label: 'Die Bildung', icon: BookOpen, desc: 'Schule, Studium, Ausbildung' },
  { id: 'business', label: 'Das Geschäftsleben', icon: TrendingUp, desc: 'Wirtschaft, Unternehmen, Finanzen' },
  { id: 'society', label: 'Die Gesellschaft', icon: Users, desc: 'Gesellschaft, Politik, Medien' },
  { id: 'daily', label: 'Der Alltag', icon: Home, desc: 'Alltag, Einkaufen, Freizeit' },
  { id: 'food', label: 'Essen & Trinken', icon: UtensilsCrossed, desc: 'Essen, Restaurant, Kochen' },
]

const LEVELS: (GermanLevel | 'C2')[] = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']

type ViewMode = 'list' | 'detail'

const questionLabels = ['A', 'B', 'C', 'D', 'E', 'F']

interface DetailedLesson {
  lesson: ThemeLesson
  audioLesson: AudioLessonWithExtras | null
}

function formatTime(s: number) {
  const m = Math.floor(s / 60)
  const sec = Math.floor(s % 60)
  return `${m}:${sec.toString().padStart(2, '0')}`
}

export default function ThemesPage() {
  const [selectedTheme, setSelectedTheme] = useState<string | null>(null)
  const [lessons, setLessons] = useState<ThemeLesson[]>([])
  const [selectedLevel, setSelectedLevel] = useState<string>('')
  const [availableThemes, setAvailableThemes] = useState<string[]>([])
  const [view, setView] = useState<ViewMode>('list')
  const [selectedLesson, setSelectedLesson] = useState<DetailedLesson | null>(null)
  const [isPlaying, setIsPlaying] = useState(false)
  const [currentExerciseIdx, setCurrentExerciseIdx] = useState(0)
  const [selectedAnswer, setSelectedAnswer] = useState<string | null>(null)
  const [showResult, setShowResult] = useState(false)
  const [completed, setCompleted] = useState(false)
  const [results, setResults] = useState<{ exerciseId: string; correct: boolean }[]>([])
  const [showTranscript, setShowTranscript] = useState(false)
  const [contentTab, setContentTab] = useState<'vocabulary' | 'phrases' | 'grammar'>('vocabulary')
  const [fillBlankAnswer, setFillBlankAnswer] = useState('')
  const [currentTime, setCurrentTime] = useState(0)
  const [duration, setDuration] = useState(0)
  const [playbackRate, setPlaybackRate] = useState(1)
  const [loop, setLoop] = useState(false)

  const audioRef = useRef<HTMLAudioElement | null>(null)

  useEffect(() => {
    fetch('/api/themes').then(r => r.ok && r.json()).then(d => {
      if (d?.themes) setAvailableThemes(d.themes)
    }).catch(() => {})
  }, [])

  useEffect(() => {
    if (!selectedTheme) return
    const params = new URLSearchParams({ theme: selectedTheme })
    if (selectedLevel) params.set('level', selectedLevel)
    fetch(`/api/themes?${params}`).then(r => r.ok && r.json()).then(d => setLessons(d ?? [])).catch(() => {})
  }, [selectedTheme, selectedLevel])

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

  useEffect(() => {
    if (audioRef.current) audioRef.current.playbackRate = playbackRate
  }, [playbackRate])

  async function loadLessonDetail(lesson: ThemeLesson) {
    setView('detail')
    const params = new URLSearchParams({ id: lesson.reference_id || '', extras: 'true' })
    const res = await fetch(`/api/listening?${params}`)
    const audioLesson: AudioLessonWithExtras | null = res.ok ? await res.json() : null
    setSelectedLesson({ lesson, audioLesson })
    setCurrentExerciseIdx(0)
    setSelectedAnswer(null)
    setShowResult(false)
    setCompleted(false)
    setResults([])
    setFillBlankAnswer('')
    setShowTranscript(false)
    setCurrentTime(0)

    if (audioLesson?.audio_url && audioRef.current) {
      audioRef.current.src = audioLesson.audio_url
      audioRef.current.load()
    } else if (audioLesson?.transcript && audioRef.current) {
      fetch('/api/tts', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ lesson_id: lesson.reference_id, transcript: audioLesson.transcript, level: audioLesson.level || 'A2' })
      }).then(r => r.json()).then(data => {
        if (data.audio_url && audioRef.current) {
          audioRef.current.src = data.audio_url
          audioRef.current.load()
        }
      }).catch(() => {})
    }
  }

  function togglePlay() {
    if (!audioRef.current) return
    if (isPlaying) audioRef.current.pause()
    else audioRef.current.play().catch(() => {})
  }

  function seek(time: number) {
    if (audioRef.current) { audioRef.current.currentTime = time; setCurrentTime(time) }
  }

  function handleSubmitAnswer() {
    if (!selectedLesson?.audioLesson) return
    const exercises = selectedLesson.audioLesson.exercises || []
    const currentEx = exercises[currentExerciseIdx]
    if (!currentEx) return
    const answer = currentEx.question_type === 'fill_blank' ? fillBlankAnswer : selectedAnswer
    if (!answer) return
    setShowResult(true)
    const isCorrect = String(answer).trim().toLowerCase() === String(currentEx.correct_answer).trim().toLowerCase()
    setResults(prev => [...prev, { exerciseId: currentEx.id, correct: isCorrect }])
  }

  function nextExercise() {
    if (!selectedLesson?.audioLesson) return
    const exercises = selectedLesson.audioLesson.exercises || []
    if (currentExerciseIdx < exercises.length - 1) {
      setCurrentExerciseIdx(prev => prev + 1)
      setSelectedAnswer(null)
      setShowResult(false)
      setFillBlankAnswer('')
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
  }

  function goBack() {
    setView('list')
    setSelectedLesson(null)
    if (audioRef.current) audioRef.current.pause()
  }

  const audioLesson = selectedLesson?.audioLesson
  const exercises = audioLesson?.exercises || []
  const currentExercise = exercises[currentExerciseIdx]
  const themeVocab = audioLesson?.vocabulary || []
  const themePhrases = audioLesson?.phrases || []
  const themeGrammar = audioLesson?.grammar_points || []

  // Detail View
  if (view === 'detail' && selectedLesson) {
    const totalCorrect = results.filter(r => r.correct).length

    if (completed && audioLesson) {
      return (
        <AppShell>
          <div className="space-y-6 max-w-3xl mx-auto">
            <Button variant="outline" size="sm" onClick={goBack}>
              <ArrowRight className="h-4 w-4 mr-1 rotate-180" /> Zurück zu {selectedLesson.lesson.theme}
            </Button>
            <Card className="text-center py-10">
              <CardContent>
                <div className="inline-flex h-20 w-20 items-center justify-center rounded-full bg-emerald-100 dark:bg-emerald-900/30 mb-4">
                  <Sparkles className="h-10 w-10 text-emerald-500" />
                </div>
                <h2 className="text-2xl font-bold mb-1">Thema abgeschlossen!</h2>
                <p className="text-muted-foreground mb-2">{audioLesson.title}</p>
                <div className="text-5xl font-bold text-violet-600 dark:text-violet-400 mb-1">
                  {totalCorrect}<span className="text-2xl text-muted-foreground">/{exercises.length}</span>
                </div>
                <p className="text-sm text-muted-foreground mb-6">
                  {Math.round((totalCorrect / Math.max(exercises.length, 1)) * 100)}% Genauigkeit
                </p>
                <div className="flex items-center justify-center gap-3">
                  <Button onClick={goBack} variant="outline">
                    <ArrowRight className="h-4 w-4 mr-1 rotate-180" /> Themen
                  </Button>
                  <Button onClick={resetLesson}>
                    <RotateCcw className="h-4 w-4 mr-1" /> Nochmal versuchen
                  </Button>
                </div>
              </CardContent>
            </Card>

            {audioLesson.transcript && (
              <Card>
                <CardHeader className="pb-2">
                  <button onClick={() => setShowTranscript(!showTranscript)} className="flex items-center justify-between w-full text-left">
                    <div className="flex items-center gap-2">
                      <FileText className="h-4 w-4 text-muted-foreground" />
<CardTitle className="text-sm font-medium">Transkript</CardTitle>
                    </div>
                    {showTranscript ? <ChevronUp className="h-4 w-4" /> : <ChevronDown className="h-4 w-4" />}
                  </button>
                </CardHeader>
                <AnimatePresence>
                  {showTranscript && (
                    <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }} exit={{ height: 0, opacity: 0 }}>
                      <CardContent>
                        <ScrollArea className="max-h-80">
                          <p className="text-sm leading-relaxed whitespace-pre-wrap">{audioLesson.transcript}</p>
                        </ScrollArea>
                      </CardContent>
                    </motion.div>
                  )}
                </AnimatePresence>
              </Card>
            )}

            {(themeVocab.length > 0 || themePhrases.length > 0 || themeGrammar.length > 0) && (
              <Card>
                <CardHeader className="pb-2">
                  <div className="flex gap-1">
                    {[
                      { id: 'vocabulary' as const, label: 'Wortschatz', icon: BookMarked, count: themeVocab.length },
                      { id: 'phrases' as const, label: 'Ausdrücke', icon: Quote, count: themePhrases.length },
                      { id: 'grammar' as const, label: 'Grammatik', icon: Hash, count: themeGrammar.length },
                    ].map(({ id, label, icon: Icon, count }) => (
                      <button key={id} onClick={() => setContentTab(id)}
                        className={`flex items-center gap-1.5 px-3 py-1.5 rounded-lg text-xs font-medium transition-all ${contentTab === id ? 'bg-violet-100 dark:bg-violet-900/30 text-violet-700' : 'text-muted-foreground hover:bg-muted'}`}>
                        <Icon className="h-3.5 w-3.5" /> {label}
                        <Badge variant="outline" className="text-[10px] px-1 py-0 ml-0.5">{count}</Badge>
                      </button>
                    ))}
                  </div>
                </CardHeader>
                <CardContent>
                  {contentTab === 'vocabulary' && themeVocab.map((v: ListeningVocabulary) => (
                    <div key={v.id} className="flex items-start gap-3 p-2.5 rounded-lg hover:bg-muted/50 transition-colors">
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-1.5">
                          {v.article && <Badge variant="secondary" className="text-[10px] px-1 py-0 font-mono">{v.article}</Badge>}
                          <span className="font-medium text-sm">{v.german_word}</span>
                          <AudioPlayer text={v.german_word} showSlow={true} showReplay={true} />
                        </div>
                        <p className="text-xs text-muted-foreground mt-0.5">{v.english_translation}</p>
                        {v.context_sentence && <p className="text-xs text-muted-foreground/60 mt-1 italic">"{v.context_sentence}"</p>}
                      </div>
                    </div>
                  ))}
                  {contentTab === 'phrases' && themePhrases.map((p: ListeningPhrase) => (
                    <div key={p.id} className="flex items-start gap-3 p-2.5 rounded-lg hover:bg-muted/50 transition-colors">
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-1.5">
                          <span className="font-medium text-sm">{p.german_phrase}</span>
                          <AudioPlayer text={p.german_phrase} showSlow={true} showReplay={true} />
                        </div>
                        <p className="text-xs text-muted-foreground mt-0.5">{p.english_translation}</p>
                      </div>
                    </div>
                  ))}
                  {contentTab === 'grammar' && themeGrammar.map((g: ListeningGrammarPoint) => (
                    <div key={g.id} className="p-3 rounded-lg border mb-2">
                      <Badge className="text-[10px] mb-1 bg-violet-500/10 text-violet-600">{g.grammar_topic}</Badge>
                      <p className="text-sm text-muted-foreground mb-2">{g.explanation}</p>
                      <div className="p-2 rounded bg-muted/50 text-xs font-mono">
                        <p className="text-foreground">{g.example_from_audio}</p>
                        {g.english_translation && <p className="text-muted-foreground mt-0.5">{g.english_translation}</p>}
                      </div>
                      {g.rule_summary && <p className="text-xs text-muted-foreground/70 mt-1.5 italic">{g.rule_summary}</p>}
                    </div>
                  ))}
                </CardContent>
              </Card>
            )}
          </div>
        </AppShell>
      )
    }

    return (
      <AppShell>
        <div className="space-y-6 max-w-3xl mx-auto">
          <div className="flex items-center justify-between">
            <Button variant="outline" size="sm" onClick={goBack}>
              <ArrowRight className="h-4 w-4 mr-1 rotate-180" /> Zurück
            </Button>
            <Badge className="bg-violet-500/10 text-violet-600">{selectedLesson.lesson.theme}</Badge>
          </div>

          {/* Lesson Header */}
          <Card>
            <CardContent className="p-6">
              <div className="flex items-center gap-3 mb-4">
                <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-violet-500 to-indigo-600 text-white">
                  <Headphones className="h-5 w-5" />
                </div>
                <div>
                  <h2 className="text-xl font-bold">{audioLesson?.title || selectedLesson.lesson.title}</h2>
                  <p className="text-sm text-muted-foreground">{audioLesson?.description || selectedLesson.lesson.description}</p>
                </div>
                {audioLesson?.level && <Badge variant="outline">{audioLesson.level}</Badge>}
              </div>

              {/* Audio Player */}
              <div className="flex items-center justify-center gap-4 mb-4">
                <Button size="icon" variant="ghost" className="h-9 w-9" onClick={() => seek(Math.max(0, currentTime - 10))}>
                  <ArrowRight className="h-5 w-5 rotate-180" />
                </Button>
                <button onClick={togglePlay} className="flex h-16 w-16 items-center justify-center rounded-full bg-gradient-to-br from-violet-500 to-indigo-600 text-white shadow-lg hover:shadow-xl transition-shadow">
                  {isPlaying ? <Pause className="h-7 w-7" /> : <Play className="h-7 w-7 ml-0.5" />}
                </button>
                <Button size="icon" variant="ghost" className="h-9 w-9" onClick={() => seek(Math.min(duration, currentTime + 10))}>
                  <ArrowRight className="h-5 w-5" />
                </Button>
              </div>

              <div className="flex items-center gap-3 mb-4">
                <span className="text-xs text-muted-foreground tabular-nums w-10 text-right">{formatTime(currentTime)}</span>
                <div className="flex-1 h-2 bg-muted rounded-full cursor-pointer relative overflow-hidden" onClick={(e) => {
                  const rect = e.currentTarget.getBoundingClientRect()
                  seek(((e.clientX - rect.left) / rect.width) * duration)
                }}>
                  <div className="h-full bg-gradient-to-r from-violet-500 to-indigo-500 rounded-full transition-all" style={{ width: `${duration ? (currentTime / duration) * 100 : 0}%` }} />
                </div>
                <span className="text-xs text-muted-foreground tabular-nums w-10">{formatTime(duration)}</span>
              </div>

              <div className="flex items-center justify-center gap-2">
                {[0.5, 0.75, 1, 1.25, 1.5].map(speed => (
                  <Button key={speed} variant={playbackRate === speed ? 'default' : 'outline'} size="sm"
                    className={`h-7 text-xs px-2.5 ${playbackRate === speed ? 'bg-violet-600 hover:bg-violet-700' : ''}`}
                    onClick={() => setPlaybackRate(speed)}>
                    {speed}x
                  </Button>
                ))}
              </div>

              {audioLesson && (
                <div className="grid grid-cols-2 md:grid-cols-4 gap-4 text-sm mt-4 pt-4 border-t">
                  <div>
                    <p className="text-xs text-muted-foreground mb-1">Niveau</p>
                    <Badge>{audioLesson.cefr_level || audioLesson.level}</Badge>
                  </div>
                  <div>
                    <p className="text-xs text-muted-foreground mb-1">Dauer</p>
                    <p className="font-medium flex items-center gap-1"><Clock className="h-3.5 w-3.5 text-muted-foreground" /> {audioLesson.estimated_duration || formatTime(audioLesson.duration_seconds)}</p>
                  </div>
                  <div>
                    <p className="text-xs text-muted-foreground mb-1">Schwierigkeit</p>
                    <div className="flex gap-0.5">{Array.from({ length: 5 }, (_, i) => <Star key={i} className={`h-3.5 w-3.5 ${i < audioLesson.difficulty_rating ? 'fill-amber-400 text-amber-400' : 'text-muted-foreground/30'}`} />)}</div>
                  </div>
                  <div>
                    <p className="text-xs text-muted-foreground mb-1">Übungen</p>
                    <p className="font-medium">{exercises.length} Fragen</p>
                  </div>
                </div>
              )}
            </CardContent>
          </Card>

          {/* Listening Exercises */}
          {exercises.length > 0 && currentExercise && (
            <Card>
              <CardHeader className="pb-3">
                <div className="flex items-center justify-between mb-1">
                  <div className="flex items-center gap-2">
                    <span className="text-sm font-medium text-muted-foreground">Frage {currentExerciseIdx + 1} von {exercises.length}</span>
                    <Badge variant="secondary" className="text-xs">{currentExercise.question_type.replace('_', ' ')}</Badge>
                  </div>
                  {showResult && (
                    <span className={`flex items-center gap-1 text-sm font-medium ${results[results.length - 1]?.correct ? 'text-emerald-500' : 'text-red-400'}`}>
                      {results[results.length - 1]?.correct ? <><CheckCircle className="h-4 w-4" /> Richtig</> : <><XCircle className="h-4 w-4" /> Falsch</>}
                    </span>
                  )}
                </div>
                <Progress value={((currentExerciseIdx + (showResult ? 0.5 : 0)) / exercises.length) * 100}>
                  <ProgressTrack><ProgressIndicator /></ProgressTrack>
                </Progress>
              </CardHeader>
              <CardContent className="space-y-4">
                <p className="font-medium">{currentExercise.question}</p>

                {currentExercise.question_type === 'multiple_choice' && (
                  <div className="grid gap-2.5">
                    {(currentExercise.options || []).map((option: string, idx: number) => {
                      let cls = 'justify-start h-auto py-3 px-4 border-2 '
                      if (showResult) {
                        if (option === currentExercise.correct_answer) cls += 'border-emerald-500 bg-emerald-50 dark:bg-emerald-950/30 text-emerald-700'
                        else if (option === selectedAnswer) cls += 'border-red-400 bg-red-50 dark:bg-red-950/30 text-red-600'
                        else cls += 'border-muted opacity-50'
                      } else {
                        cls += option === selectedAnswer ? 'border-primary bg-primary/5' : 'border-muted hover:border-primary/40'
                      }
                      return (
                        <Button key={option} variant="ghost" className={cls} disabled={showResult} onClick={() => setSelectedAnswer(option)}>
                          <span className="flex items-center gap-3 w-full">
                            <span className={`flex h-7 w-7 shrink-0 items-center justify-center rounded-full text-xs font-bold ${showResult && option === currentExercise.correct_answer ? 'bg-emerald-500 text-white' : showResult && option === selectedAnswer ? 'bg-red-500 text-white' : 'bg-muted-foreground/10 text-muted-foreground'}`}>
                              {questionLabels[idx]}
                            </span>
                            <span className="text-left">{option}</span>
                            {showResult && option === currentExercise.correct_answer && <CheckCircle className="ml-auto h-5 w-5 text-emerald-500 shrink-0" />}
                          </span>
                        </Button>
                      )
                    })}
                  </div>
                )}

                {currentExercise.question_type === 'true_false' && (
                  <div className="grid grid-cols-2 gap-4">
                    {['Wahr', 'Falsch'].map(option => {
                      const isSelected = selectedAnswer === option
                      let cls = 'h-24 flex-col gap-2 text-lg font-semibold border-2 '
                      if (showResult) {
                        if (option === currentExercise.correct_answer) cls += 'border-emerald-500 bg-emerald-50 dark:bg-emerald-950/30 text-emerald-600'
                        else if (isSelected) cls += 'border-red-400 bg-red-50 dark:bg-red-950/30 text-red-600'
                        else cls += 'border-muted opacity-40'
                      } else {
                        cls += isSelected ? 'border-primary bg-primary/5' : 'border-muted hover:border-primary/40'
                      }
                      return (
                        <Button key={option} variant="ghost" className={cls} disabled={showResult} onClick={() => setSelectedAnswer(option)}>
                          {showResult && option === currentExercise.correct_answer ? <CheckCircle className="h-8 w-8" /> : null}
                          {option}
                        </Button>
                      )
                    })}
                  </div>
                )}

                {currentExercise.question_type === 'fill_blank' && (
                  <div className="space-y-3">
                    <Input placeholder="Tippe deine Antwort..." value={fillBlankAnswer} onChange={(e) => setFillBlankAnswer(e.target.value)} disabled={showResult} className="h-10 text-base" />
                    {showResult && <p className="text-sm"><span className="text-muted-foreground">Richtig: </span><span className="font-semibold text-emerald-600">{currentExercise.correct_answer}</span></p>}
                  </div>
                )}

                {showResult && currentExercise.explanation && (
                  <div className="p-3 rounded-lg bg-muted/50 border text-sm">
                    <p className="text-xs font-medium text-muted-foreground mb-1"><Lightbulb className="h-3 w-3 inline mr-1" />Erklärung</p>
                    <p>{currentExercise.explanation}</p>
                  </div>
                )}

                <div className="flex items-center justify-between pt-2">
                  <Button variant="ghost" size="sm" onClick={() => { if (currentExerciseIdx > 0) { setCurrentExerciseIdx(p => p - 1); setSelectedAnswer(null); setShowResult(false); setFillBlankAnswer('') } }} disabled={currentExerciseIdx === 0}>
                    Zurück
                  </Button>
                  {!showResult ? (
                    <Button size="sm" onClick={handleSubmitAnswer} disabled={currentExercise.question_type === 'fill_blank' ? !fillBlankAnswer : !selectedAnswer} className="bg-violet-600 hover:bg-violet-700">
                      Antwort prüfen
                    </Button>
                  ) : (
                    <Button size="sm" onClick={nextExercise} className="bg-violet-600 hover:bg-violet-700">
                      {currentExerciseIdx < exercises.length - 1 ? 'Nächste Frage' : 'Ergebnisse ansehen'}
                    </Button>
                  )}
                </div>
              </CardContent>
            </Card>
          )}

          {/* Transcript */}
          {audioLesson?.transcript && (
            <Card>
              <CardHeader className="pb-2">
                <button onClick={() => setShowTranscript(!showTranscript)} className="flex items-center justify-between w-full text-left">
                  <div className="flex items-center gap-2">
                    <FileText className="h-4 w-4 text-muted-foreground" />
                    <CardTitle className="text-sm font-medium">Transkript</CardTitle>
                    <Badge variant="outline" className="text-[10px]">Nach dem Hören lesen</Badge>
                  </div>
                  {showTranscript ? <ChevronUp className="h-4 w-4" /> : <ChevronDown className="h-4 w-4" />}
                </button>
              </CardHeader>
              <AnimatePresence>
                {showTranscript && (
                  <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }} exit={{ height: 0, opacity: 0 }}>
                    <CardContent>
                      <ScrollArea className="max-h-80">
                        <p className="text-sm leading-relaxed whitespace-pre-wrap">{audioLesson.transcript}</p>
                      </ScrollArea>
                    </CardContent>
                  </motion.div>
                )}
              </AnimatePresence>
            </Card>
          )}

          {/* Listening Vocabulary */}
          {themeVocab.length > 0 && (
            <Card>
              <CardHeader>
                <CardTitle className="text-sm flex items-center gap-2"><BookMarked className="h-4 w-4" /> Wortschatz aus diesem Audio</CardTitle>
                <CardDescription>Wichtige Vokabeln mit Aussprache</CardDescription>
              </CardHeader>
              <CardContent>
                <div className="space-y-2">
                  {themeVocab.map((v: ListeningVocabulary) => (
                    <div key={v.id} className="flex items-center justify-between p-2.5 rounded-lg hover:bg-muted/50 transition-colors">
                      <div>
                        <div className="flex items-center gap-1.5">
                          {v.article && <span className="text-xs font-medium text-muted-foreground">{v.article}</span>}
                          <span className="font-medium text-sm">{v.german_word}</span>
                          <span className="text-xs text-muted-foreground">— {v.english_translation}</span>
                        </div>
                        {v.context_sentence && <p className="text-xs text-muted-foreground/60 mt-0.5 italic">"{v.context_sentence}"</p>}
                      </div>
                      <AudioPlayer text={v.german_word} showSlow={true} showReplay={true} />
                    </div>
                  ))}
                </div>
              </CardContent>
            </Card>
          )}

          {/* Grammar Explanation */}
          {themeGrammar.length > 0 && (
            <Card>
              <CardHeader>
                <CardTitle className="text-sm flex items-center gap-2"><Hash className="h-4 w-4" /> Grammatik aus diesem Audio</CardTitle>
                <CardDescription>Grammatikstrukturen aus dem Hörtext</CardDescription>
              </CardHeader>
              <CardContent className="space-y-3">
                {themeGrammar.map((g: ListeningGrammarPoint) => (
                  <div key={g.id} className="p-3 rounded-lg border">
                    <Badge className="text-[10px] mb-1 bg-violet-500/10 text-violet-600">{g.grammar_topic}</Badge>
                    <p className="text-sm text-muted-foreground mb-2">{g.explanation}</p>
                    <div className="p-2 rounded bg-muted/50 text-sm">
                      <p className="font-medium">{g.example_from_audio}</p>
                      {g.english_translation && <p className="text-muted-foreground text-xs mt-0.5">{g.english_translation}</p>}
                    </div>
                    {g.rule_summary && <p className="text-xs text-muted-foreground/70 mt-1.5 italic">{g.rule_summary}</p>}
                  </div>
                ))}
              </CardContent>
            </Card>
          )}
        </div>
      </AppShell>
    )
  }

  if (selectedTheme) {
    return (
      <AppShell>
        <div className="space-y-6">
          <Button variant="outline" size="sm" onClick={() => { setSelectedTheme(null); setLessons([]) }}>
            <ArrowRight className="h-4 w-4 mr-1 rotate-180" /> Alle Themen
          </Button>
          <div className="flex items-center gap-3">
            <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-violet-500 to-indigo-600 text-white shadow-sm">
              <Layers className="h-5 w-5" />
            </div>
            <div>
              <h1 className="text-2xl font-bold capitalize">{selectedTheme}</h1>
              <p className="text-muted-foreground text-sm">{THEMES.find(t => t.id === selectedTheme)?.desc}</p>
            </div>
          </div>

          <div className="flex gap-2 flex-wrap">
            <button onClick={() => setSelectedLevel('')} className={`px-3 py-1.5 rounded-lg text-xs font-medium transition-all ${!selectedLevel ? 'bg-violet-100 dark:bg-violet-900/30 text-violet-700' : 'text-muted-foreground hover:bg-muted'}`}>
              Alle Niveaus
            </button>
            {LEVELS.map(l => (
              <button key={l} onClick={() => setSelectedLevel(l)} className={`px-3 py-1.5 rounded-lg text-xs font-medium transition-all ${selectedLevel === l ? 'bg-violet-100 dark:bg-violet-900/30 text-violet-700' : 'text-muted-foreground hover:bg-muted'}`}>
                {l}
              </button>
            ))}
          </div>

          <div className="grid gap-3">
            {lessons.map((lesson: ThemeLesson, i: number) => {
              const isListening = lesson.content_type === 'listening'
              const hasReference = !!lesson.reference_id
              return (
                <motion.div key={lesson.id || i} initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.03 }}>
                  <Card
                    className={`hover:border-violet-400/50 transition-all cursor-pointer ${isListening && hasReference ? 'border-l-4 border-l-violet-500' : ''}`}
                    onClick={() => isListening && hasReference ? loadLessonDetail(lesson) : null}
                  >
                    <CardContent className="p-4 flex items-center gap-4">
                      <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-violet-100 dark:bg-violet-900/30 text-violet-600">
                        {isListening ? <Headphones className="h-5 w-5" /> : <BookOpen className="h-5 w-5" />}
                      </div>
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-2 mb-0.5">
                          <h3 className="font-medium text-sm">{lesson.title}</h3>
                          <Badge variant="secondary" className="text-[10px]">{lesson.content_type}</Badge>
                          <Badge variant="outline" className="text-[10px]">{lesson.level}</Badge>
                          {isListening && hasReference && <Badge className="text-[10px] bg-violet-500/10 text-violet-600">Audio + Übungen</Badge>}
                        </div>
                        {lesson.description && <p className="text-xs text-muted-foreground">{lesson.description}</p>}
                        {isListening && hasReference && (
                          <div className="flex items-center gap-2 mt-1.5 text-[10px] text-violet-600">
                            <Headphones className="h-3 w-3" />
                            <span>Hören, Fragen beantworten, Wortschatz & Grammatik lernen</span>
                          </div>
                        )}
                      </div>
                      {isListening && hasReference ? (
                        <div className="flex items-center gap-1 text-violet-600 text-xs font-medium shrink-0">
                          <span>Starten</span>
                          <ArrowRight className="h-4 w-4" />
                        </div>
                      ) : (
                        <ArrowRight className="h-4 w-4 text-muted-foreground shrink-0" />
                      )}
                    </CardContent>
                  </Card>
                </motion.div>
              )
            })}
            {lessons.length === 0 && (
              <Card>
                <CardContent className="p-8 text-center text-muted-foreground">
                  <Layers className="h-8 w-8 mx-auto mb-2 opacity-50" />
                  <p className="text-sm">Noch keine Lektionen zu diesem Thema verfügbar.</p>
                </CardContent>
              </Card>
            )}
          </div>
        </div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-8">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-violet-500 to-indigo-600 text-white shadow-sm">
            <Layers className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Themenlernen</h1>
            <p className="text-muted-foreground">Komplette Lerneinheiten nach Themen mit Wortschatz, Hörverstehen, Übungen, Transkript und Grammatik</p>
          </div>
        </div>

        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {THEMES.map(({ id, label, icon: Icon, desc }, i) => (
            <motion.div key={id} initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.03 }}>
              <Card className="group cursor-pointer hover:border-violet-400/50 transition-all hover:shadow-lg overflow-hidden" onClick={() => setSelectedTheme(id)}>
                <CardContent className="p-5">
                  <div className="flex items-center gap-3 mb-3">
                    <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-violet-100 dark:bg-violet-900/30 text-violet-600 group-hover:bg-violet-200 dark:group-hover:bg-violet-800/40 transition-colors">
                      <Icon className="h-5 w-5" />
                    </div>
                    <div>
                      <h3 className="font-semibold">{label}</h3>
                      <p className="text-xs text-muted-foreground">{desc}</p>
                    </div>
                  </div>
                  <div className="flex items-center gap-2 mt-2">
                    {availableThemes.includes(id) && <Badge variant="secondary" className="text-[10px]">Inhalt verfügbar</Badge>}
                    <Badge variant="outline" className="text-[10px]">Hören + Übungen</Badge>
                  </div>
                </CardContent>
              </Card>
            </motion.div>
          ))}
        </div>
      </div>
    </AppShell>
  )
}
