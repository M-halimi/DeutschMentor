'use client'

import { useState, useEffect, useRef, useCallback, useMemo } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Textarea } from '@/components/ui/textarea'
import { Badge } from '@/components/ui/badge'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { Skeleton } from '@/components/ui/skeleton'
import { Progress, ProgressTrack, ProgressIndicator } from '@/components/ui/progress'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Separator } from '@/components/ui/separator'
import { motion, AnimatePresence } from 'framer-motion'
import {
  Pen, History, Sparkles, Clock, BarChart3, AlertCircle, CheckCircle2,
  BookOpen, Target, Lightbulb, ChevronDown, ChevronUp, Filter,
  Timer, FileText, Send, RotateCcw, Star, Languages,
  Mail, FileEdit, MessageSquare, Briefcase, Newspaper,
  Quote, Users, Gift, ThumbsUp, Book, Edit3, ArrowLeft,
} from 'lucide-react'
import { AudioPlayer } from '@/components/audio-player'
import { useWritingHistory, useSubmitWriting, useWritingPrompts, useWritingExamples } from '@/hooks/use-progress'
import { format } from 'date-fns'
import type { WritingSubmission, WritingPrompt, WritingExerciseType, GermanLevel, WritingExerciseTypeFull, WritingExample } from '@/types'

const EXERCISE_ICONS: Record<WritingExerciseType, typeof Mail> = {
  email: Mail, formal_letter: FileEdit, informal_letter: MessageSquare, complaint: AlertCircle,
  application: Briefcase, opinion: Quote, forum_post: Users, invitation: Gift,
  review: ThumbsUp, story: Book, description: FileText, argumentative: Edit3,
}

const EXERCISE_LABELS: Record<WritingExerciseType, string> = {
  email: 'E-Mail', formal_letter: 'Formeller Brief', informal_letter: 'Informeller Brief',
  complaint: 'Beschwerde', application: 'Bewerbung', opinion: 'Meinungsäußerung',
  forum_post: 'Forumsbeitrag', invitation: 'Einladung', review: 'Bewertung',
  story: 'Geschichte', description: 'Beschreibung', argumentative: 'Argumentation',
}

const LEVELS: GermanLevel[] = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']

const LEVEL_COLORS: Record<GermanLevel, string> = {
  A1: 'bg-green-100 text-green-800 dark:bg-green-900/30 dark:text-green-400',
  A2: 'bg-emerald-100 text-emerald-800 dark:bg-emerald-900/30 dark:text-emerald-400',
  B1: 'bg-blue-100 text-blue-800 dark:bg-blue-900/30 dark:text-blue-400',
  B2: 'bg-purple-100 text-purple-800 dark:bg-purple-900/30 dark:text-purple-400',
  C1: 'bg-amber-100 text-amber-800 dark:bg-amber-900/30 dark:text-amber-400',
  C2: 'bg-rose-100 text-rose-800 dark:bg-rose-900/30 dark:text-rose-400',
}

const EXAM_SCALE = [
  { min: 95, grade: 'Sehr gut', note: '1.0' }, { min: 85, grade: 'Gut', note: '2.0' },
  { min: 70, grade: 'Befriedigend', note: '3.0' }, { min: 55, grade: 'Ausreichend', note: '4.0' },
  { min: 40, grade: 'Mangelhaft', note: '5.0' }, { min: 0, grade: 'Ungenügend', note: '6.0' },
]

function getExamGrade(score: number) {
  return EXAM_SCALE.find(s => score >= s.min) ?? EXAM_SCALE[EXAM_SCALE.length - 1]
}

function getWordCountClass(count: number, min: number, max: number) {
  if (count < min) return 'text-red-500'
  if (count > max) return 'text-red-500'
  if (count >= max * 0.9) return 'text-amber-500'
  if (count >= min) return 'text-emerald-500'
  return 'text-amber-500'
}

function formatTime(seconds: number) {
  return `${Math.floor(seconds / 60)}:${String(seconds % 60).padStart(2, '0')}`
}

function ScoreBar({ label, value, color }: { label: string; value: number; color?: string }) {
  return (
    <div className="space-y-1">
      <div className="flex items-center justify-between text-sm">
        <span className="text-muted-foreground">{label}</span>
        <span className="font-medium">{value}%</span>
      </div>
      <Progress value={value}>
        <ProgressTrack className="h-2">
          <ProgressIndicator className={color ?? ''} />
        </ProgressTrack>
      </Progress>
    </div>
  )
}

function CorrectionBlock({ corrections, suggestions }: { corrections: { original: string; corrected: string; explanation: string }[]; suggestions: string[] }) {
  return (
    <>
      {corrections.length > 0 && (
        <>
          <Separator />
          <div>
            <h3 className="mb-3 text-sm font-semibold text-muted-foreground">KORREKTUREN</h3>
            <div className="space-y-2">
              {corrections.map((c, i) => (
                <div key={i} className="rounded-lg border p-4">
                  <div className="flex items-start gap-3">
                    <AlertCircle className="mt-0.5 h-4 w-4 shrink-0 text-amber-500" />
                    <div className="min-w-0 space-y-1">
                      <p className="text-sm text-muted-foreground line-through">{c.original}</p>
                      <p className="font-medium text-emerald-600 dark:text-emerald-400">{c.corrected}</p>
                      <p className="text-sm text-muted-foreground">{c.explanation}</p>
                    </div>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </>
      )}
      {suggestions.length > 0 && (
        <>
          <Separator />
          <div>
            <h3 className="mb-3 text-sm font-semibold text-muted-foreground">VERBESSERUNGSVORSCHLÄGE</h3>
            <div className="space-y-2">
              {suggestions.map((s, i) => (
                <div key={i} className="flex items-start gap-3 rounded-lg border p-3">
                  <CheckCircle2 className="mt-0.5 h-4 w-4 shrink-0 text-emerald-500" />
                  <span className="text-sm">{s}</span>
                </div>
              ))}
            </div>
          </div>
        </>
      )}
    </>
  )
}

function EmailTrainingContent() {
  const { data: examples, isLoading } = useWritingExamples()
  const ALL_LEVELS: (GermanLevel | 'C2')[] = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']
  const EMAIL_TYPES: WritingExerciseTypeFull[] = ['email_formal', 'email_informal', 'email_complaint', 'email_request', 'email_application', 'email_information']
  const EMAIL_TYPE_LABELS: Record<string, string> = {
    email_formal: 'Formelle E-Mail',
    email_informal: 'Informelle E-Mail',
    email_complaint: 'Beschwerde-E-Mail',
    email_request: 'Anfrage-E-Mail',
    email_application: 'Bewerbungs-E-Mail',
    email_information: 'Informations-E-Mail',
  }

  const [selectedExample, setSelectedExample] = useState<WritingExample | null>(null)
  const [emailLevelFilter, setEmailLevelFilter] = useState<string>('all')
  const [emailTypeFilter, setEmailTypeFilter] = useState<string>('all')

  const emailExamples = useMemo(() => {
    let list = (examples ?? []).filter(e => EMAIL_TYPES.includes(e.exercise_type))
    if (emailLevelFilter !== 'all') list = list.filter(e => e.level === emailLevelFilter)
    if (emailTypeFilter !== 'all') list = list.filter(e => e.exercise_type === emailTypeFilter)
    return list
  }, [examples, emailLevelFilter, emailTypeFilter])

  if (selectedExample) {
    return (
      <div className="space-y-6">
        <Button variant="ghost" size="sm" onClick={() => setSelectedExample(null)}>
          <ArrowLeft className="mr-2 h-4 w-4" /> Zurück zur Übersicht
        </Button>

        <div className="flex items-center gap-2">
          <Badge className={LEVEL_COLORS[selectedExample.level as GermanLevel] ?? ''}>{selectedExample.level}</Badge>
          <Badge variant="secondary">{EMAIL_TYPE_LABELS[selectedExample.exercise_type] ?? selectedExample.exercise_type}</Badge>
          {selectedExample.word_count != null && (
            <span className="ml-auto text-sm text-muted-foreground">{selectedExample.word_count} Wörter</span>
          )}
        </div>

        <h2 className="text-xl font-bold">{selectedExample.title}</h2>

        <Card>
          <CardHeader>
            <CardTitle className="flex items-center gap-2 text-base"><FileText className="h-4 w-4" /> Aufgabenstellung</CardTitle>
          </CardHeader>
          <CardContent>
            <p className="whitespace-pre-wrap text-sm leading-relaxed">{selectedExample.task_description}</p>
          </CardContent>
        </Card>

        <Card className="border-emerald-200 dark:border-emerald-800">
          <CardHeader>
            <CardTitle className="flex items-center gap-2 text-base text-emerald-600 dark:text-emerald-400">
              <CheckCircle2 className="h-4 w-4" /> Musterantwort
              <AudioPlayer text={selectedExample.example_answer} showSlow />
            </CardTitle>
          </CardHeader>
          <CardContent>
            <div className="rounded-lg border border-emerald-200 bg-emerald-50/50 p-4 text-sm leading-relaxed dark:border-emerald-900/50 dark:bg-emerald-950/20">
              <p className="whitespace-pre-wrap">{selectedExample.example_answer}</p>
            </div>
          </CardContent>
        </Card>

        {selectedExample.useful_vocabulary?.length > 0 && (
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="flex items-center gap-2 text-sm"><BookOpen className="h-4 w-4" /> Nützlicher Wortschatz</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="flex flex-wrap gap-2">
                {selectedExample.useful_vocabulary.map((v, i) => (
                  <Badge key={i} variant="secondary" className="text-xs">{v}</Badge>
                ))}
              </div>
            </CardContent>
          </Card>
        )}

        {selectedExample.useful_phrases?.length > 0 && (
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="flex items-center gap-2 text-sm"><Quote className="h-4 w-4" /> Nützliche Redemittel</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="flex flex-wrap gap-2">
                {selectedExample.useful_phrases.map((p, i) => (
                  <Badge key={i} variant="outline" className="text-xs italic">{p}</Badge>
                ))}
              </div>
            </CardContent>
          </Card>
        )}

        {selectedExample.grammar_structures?.length > 0 && (
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="flex items-center gap-2 text-sm"><Target className="h-4 w-4" /> Grammatische Strukturen</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="flex flex-wrap gap-2">
                {selectedExample.grammar_structures.map((g, i) => (
                  <Badge key={i} variant="default" className="border-violet-200 bg-violet-500/10 text-xs text-violet-600 dark:border-violet-800 dark:text-violet-400">{g}</Badge>
                ))}
              </div>
            </CardContent>
          </Card>
        )}

        <Card>
          <CardHeader className="pb-2">
            <CardTitle className="flex items-center gap-2 text-sm"><Lightbulb className="h-4 w-4" /> Erklärung</CardTitle>
          </CardHeader>
          <CardContent>
            <p className="whitespace-pre-wrap text-sm">{selectedExample.explanation}</p>
            {selectedExample.why_good && (
              <div className="mt-3 rounded-lg border border-amber-200 bg-amber-50/50 p-3 dark:border-amber-900/50 dark:bg-amber-950/20">
                <p className="mb-1 flex items-center gap-1 text-xs font-medium text-amber-600 dark:text-amber-400">
                  <Star className="h-3 w-3" /> Warum diese Antwort gut ist
                </p>
                <p className="text-sm text-amber-700 dark:text-amber-300">{selectedExample.why_good}</p>
              </div>
            )}
          </CardContent>
        </Card>
      </div>
    )
  }

  return (
    <div className="space-y-6">
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center gap-2"><Mail className="h-5 w-5 text-primary" /> E-Mail-Training für Prüfungen</CardTitle>
          <CardDescription>
            Lerne, wie du formelle und informelle E-Mails für Goethe, TELC und andere Prüfungen schreibst.
            Enthält Musterantworten, nützliche Redemittel und Grammatikhinweise.
          </CardDescription>
        </CardHeader>
        <CardContent>
          <div className="flex flex-wrap gap-3">
            <div className="flex items-center gap-2">
              <Filter className="h-4 w-4 text-muted-foreground" />
              <Select value={emailLevelFilter} onValueChange={v => { if (v !== null) setEmailLevelFilter(v); }}>
                <SelectTrigger className="w-28"><SelectValue /></SelectTrigger>
                <SelectContent>
                  <SelectItem value="all">Alle Niveaus</SelectItem>
                  {ALL_LEVELS.map(l => <SelectItem key={l} value={l}>{l}</SelectItem>)}
                </SelectContent>
              </Select>
            </div>
            <Select value={emailTypeFilter} onValueChange={v => { if (v !== null) setEmailTypeFilter(v); }}>
              <SelectTrigger className="w-48"><SelectValue /></SelectTrigger>
              <SelectContent>
                <SelectItem value="all">Alle E-Mail-Typen</SelectItem>
                {EMAIL_TYPES.map(t => (
                  <SelectItem key={t} value={t}>{EMAIL_TYPE_LABELS[t]}</SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>
        </CardContent>
      </Card>

      {isLoading ? (
        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {[1, 2, 3, 4, 5, 6].map(i => <Skeleton key={i} className="h-44 rounded-xl" />)}
        </div>
      ) : emailExamples.length > 0 ? (
        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {emailExamples.map((example) => (
            <motion.div key={example.id} initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} layout>
              <Card className="cursor-pointer transition-all hover:border-primary/50 hover:shadow-md" onClick={() => setSelectedExample(example)}>
                <CardContent className="p-5">
                  <div className="mb-3 flex items-start justify-between">
                    <div className="flex h-9 w-9 items-center justify-center rounded-lg bg-primary/10 text-primary">
                      <Mail className="h-4 w-4" />
                    </div>
                    <Badge className={LEVEL_COLORS[example.level as GermanLevel] ?? ''}>{example.level}</Badge>
                  </div>
                  <h3 className="mb-1 font-semibold leading-snug line-clamp-2">{example.title}</h3>
                  <Badge variant="outline" className="mb-3">{EMAIL_TYPE_LABELS[example.exercise_type] ?? example.exercise_type}</Badge>
                  <div className="flex items-center gap-3 text-sm text-muted-foreground">
                    <span className="flex items-center gap-1"><FileText className="h-3.5 w-3.5" />{example.word_count ?? '?'} Wörter</span>
                  </div>
                </CardContent>
              </Card>
            </motion.div>
          ))}
        </div>
      ) : (
        <Card>
          <CardContent className="flex flex-col items-center gap-3 p-8 text-center text-muted-foreground">
            <Mail className="h-10 w-10" />
            <p>Keine E-Mail-Beispiele gefunden. Versuche andere Filter.</p>
          </CardContent>
        </Card>
      )}
    </div>
  )
}

export default function SchreibenPage() {
  const [activeTab, setActiveTab] = useState('uebungen')
  const { data: history, isLoading: historyLoading } = useWritingHistory()
  const submitWriting = useSubmitWriting()

  const [levelFilter, setLevelFilter] = useState<string>('all')
  const [typeFilter, setTypeFilter] = useState<string>('all')
  const { data: prompts, isLoading: promptsLoading } = useWritingPrompts(
    levelFilter !== 'all' ? levelFilter : undefined,
    typeFilter !== 'all' ? typeFilter : undefined,
  )
  const [selectedPrompt, setSelectedPrompt] = useState<WritingPrompt | null>(null)
  const [exerciseText, setExerciseText] = useState('')
  const [showHints, setShowHints] = useState(false)
  const [showStructure, setShowStructure] = useState(false)
  const [timerActive, setTimerActive] = useState(false)
  const [submittedData, setSubmittedData] = useState<WritingSubmission | null>(null)
  const [elapsedSeconds, setElapsedSeconds] = useState(0)
  const timerRef = useRef<ReturnType<typeof setInterval> | null>(null)

  const [freeTitle, setFreeTitle] = useState('')
  const [freeText, setFreeText] = useState('')
  const [freeResult, setFreeResult] = useState<WritingSubmission | null>(null)

  const [expandedHistory, setExpandedHistory] = useState<string | null>(null)

  const handleTimerExpire = useCallback(() => setTimerActive(false), [])

  const [remaining, setRemaining] = useState<number | null>(null)
  const [prevTimerKey, setPrevTimerKey] = useState('')
  const timerKey = `${timerActive}-${selectedPrompt?.timer_minutes}`
  if (timerKey !== prevTimerKey) {
    setPrevTimerKey(timerKey)
    if (timerActive && selectedPrompt?.timer_minutes) {
      setRemaining(selectedPrompt.timer_minutes * 60)
    }
  }
  useEffect(() => {
    if (!timerActive || !selectedPrompt?.timer_minutes) return
    const end = Date.now() + selectedPrompt.timer_minutes * 60 * 1000
    const interval = setInterval(() => {
      const left = Math.max(0, Math.round((end - Date.now()) / 1000))
      setRemaining(left)
      if (left <= 0) { clearInterval(interval); handleTimerExpire() }
    }, 1000)
    return () => clearInterval(interval)
  }, [timerActive, selectedPrompt?.timer_minutes, handleTimerExpire])

  useEffect(() => {
    if (timerActive) {
      timerRef.current = setInterval(() => setElapsedSeconds(p => p + 1), 1000)
    } else if (timerRef.current) {
      clearInterval(timerRef.current)
    }
    return () => { if (timerRef.current) clearInterval(timerRef.current) }
  }, [timerActive])

  function handleSelectPrompt(prompt: WritingPrompt) {
    setSelectedPrompt(prompt)
    setExerciseText('')
    setSubmittedData(null)
    setTimerActive(false)
    setElapsedSeconds(0)
    setShowHints(false)
    setShowStructure(false)
  }

  function handleSubmitExercise() {
    if (!exerciseText.trim() || !selectedPrompt) return
    submitWriting.mutate(
      { text: exerciseText, title: selectedPrompt.title, prompt_id: selectedPrompt.id, time_spent_minutes: Math.round(elapsedSeconds / 60) },
      { onSuccess: (data) => { setSubmittedData(data); setTimerActive(false) } },
    )
  }

  function handleAnalyzeFreeWrite() {
    if (!freeText.trim()) return
    submitWriting.mutate(
      { text: freeText, title: freeTitle || undefined },
      { onSuccess: (data) => setFreeResult(data) },
    )
  }

  const exerciseWords = exerciseText.split(/\s+/).filter(Boolean).length
  const freeWords = freeText.split(/\s+/).filter(Boolean).length

  const getCorrections = (data: WritingSubmission | null) =>
    (data?.feedback as { corrections?: { original: string; corrected: string; explanation: string }[] } | null)?.corrections ?? []
  const getSuggestions = (data: WritingSubmission | null) =>
    (data?.feedback as { suggestions?: string[] } | null)?.suggestions ?? data?.suggestions ?? []

  const promptCorrections = getCorrections(submittedData)
  const promptSuggestions = getSuggestions(submittedData)
  const freeCorrections = getCorrections(freeResult)
  const freeSuggestions = getSuggestions(freeResult)

  return (
    <AppShell>
      <div className="space-y-8">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-purple-500 to-purple-600 text-white shadow-sm">
            <Pen className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Schreiben</h1>
            <p className="text-muted-foreground">Trainiere deine Schreibfertigkeiten mit KI-gestütztem Feedback</p>
          </div>
        </div>

        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-4">
          {[
            { label: 'Gesamt', value: history?.length ?? 0, icon: FileText, color: 'from-purple-500 to-purple-600' },
            { label: 'Ø Punktzahl', value: history?.length ? Math.round(history.reduce((a: number, s: WritingSubmission) => a + (s.score ?? 0), 0) / history.length) : '—', icon: BarChart3, color: 'from-blue-500 to-blue-600' },
            { label: 'Beste', value: history?.length ? Math.max(...history.map((s: WritingSubmission) => s.score ?? 0)) : '—', icon: Star, color: 'from-amber-500 to-amber-600' },
            { label: 'Niveau', value: history?.length ? (() => { const levels = history.map((s: WritingSubmission) => s.level_estimate).filter(Boolean); const counts: Record<string, number> = {}; let best = '', bestCount = 0; for (const l of levels) { counts[l!] = (counts[l!] ?? 0) + 1; if (counts[l!] > bestCount) { bestCount = counts[l!]; best = l! } }; return best || '—' })() : '—', icon: Languages, color: 'from-emerald-500 to-emerald-600' },
          ].map((stat) => (
            <Card key={stat.label}>
              <CardContent className="flex items-center gap-3 p-4">
                <div className={`flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-gradient-to-br ${stat.color} text-white`}>
                  <stat.icon className="h-5 w-5" />
                </div>
                <div className="min-w-0">
                  <p className="text-sm text-muted-foreground">{stat.label}</p>
                  <p className="text-xl font-bold tracking-tight">{stat.value}</p>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>

        <Tabs value={activeTab} onValueChange={setActiveTab}>
          <TabsList className="w-full sm:w-auto">
            <TabsTrigger value="uebungen" className="gap-2"><BookOpen className="h-4 w-4" /> Übungen</TabsTrigger>
            <TabsTrigger value="schreiben" className="gap-2"><Pen className="h-4 w-4" /> Schreiben</TabsTrigger>
            <TabsTrigger value="verlauf" className="gap-2"><History className="h-4 w-4" /> Verlauf</TabsTrigger>
            <TabsTrigger value="email_training" className="gap-2"><Mail className="h-4 w-4" /> E-Mail-Training</TabsTrigger>
          </TabsList>

          <TabsContent value="uebungen" className="space-y-6">
            {!selectedPrompt ? (
              <>
                <div className="flex flex-wrap gap-3">
                  <div className="flex items-center gap-2">
                    <Filter className="h-4 w-4 text-muted-foreground" />
                    <Select value={levelFilter} onValueChange={v => { if (v !== null) setLevelFilter(v); }}>
                      <SelectTrigger className="w-28"><SelectValue /></SelectTrigger>
                      <SelectContent>
                        <SelectItem value="all">Alle Niveaus</SelectItem>
                        {LEVELS.map(l => <SelectItem key={l} value={l}>{l}</SelectItem>)}
                      </SelectContent>
                    </Select>
                  </div>
                  <Select value={typeFilter} onValueChange={v => { if (v !== null) setTypeFilter(v); }}>
                    <SelectTrigger className="w-44"><SelectValue /></SelectTrigger>
                    <SelectContent>
                      <SelectItem value="all">Alle Typen</SelectItem>
                      {(Object.entries(EXERCISE_LABELS) as [WritingExerciseType, string][]).map(([k, v]) => (
                        <SelectItem key={k} value={k}>{v}</SelectItem>
                      ))}
                    </SelectContent>
                  </Select>
                </div>

                {promptsLoading ? (
                  <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
                    {[1, 2, 3, 4, 5, 6].map(i => <Skeleton key={i} className="h-44 rounded-xl" />)}
                  </div>
                ) : prompts && prompts.length > 0 ? (
                  <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
                    {prompts.map((prompt) => {
                      const Icon = EXERCISE_ICONS[prompt.exercise_type]
                      return (
                        <motion.div key={prompt.id} initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} layout>
                          <Card className="cursor-pointer transition-all hover:border-primary/50 hover:shadow-md" onClick={() => handleSelectPrompt(prompt)}>
                            <CardContent className="p-5">
                              <div className="mb-3 flex items-start justify-between">
                                <div className="flex h-9 w-9 items-center justify-center rounded-lg bg-primary/10 text-primary">
                                  <Icon className="h-4 w-4" />
                                </div>
                                <Badge className={LEVEL_COLORS[prompt.level]}>{prompt.level}</Badge>
                              </div>
                              <h3 className="mb-1 font-semibold leading-snug">{prompt.title}</h3>
                              <Badge variant="outline" className="mb-3">{EXERCISE_LABELS[prompt.exercise_type]}</Badge>
                              <div className="flex items-center gap-3 text-sm text-muted-foreground">
                                <span className="flex items-center gap-1"><Target className="h-3.5 w-3.5" />{'★'.repeat(prompt.difficulty)}{'☆'.repeat(5 - prompt.difficulty)}</span>
                                <span className="flex items-center gap-1"><FileText className="h-3.5 w-3.5" />{prompt.word_limit_min}–{prompt.word_limit_max}</span>
                                {prompt.timer_minutes && <span className="flex items-center gap-1"><Clock className="h-3.5 w-3.5" />{prompt.timer_minutes}min</span>}
                              </div>
                            </CardContent>
                          </Card>
                        </motion.div>
                      )
                    })}
                  </div>
                ) : (
                  <Card>
                    <CardContent className="flex flex-col items-center gap-3 p-8 text-center text-muted-foreground">
                      <FileText className="h-10 w-10" />
                      <p>Keine Übungen gefunden. Versuche andere Filter.</p>
                    </CardContent>
                  </Card>
                )}
              </>
            ) : (
              <AnimatePresence mode="wait">
                {!submittedData ? (
                  <motion.div key="exercise" initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -12 }} className="space-y-6">
                    <div className="flex items-center justify-between">
                      <div className="flex items-center gap-3">
                        <Button variant="ghost" size="sm" onClick={() => setSelectedPrompt(null)}>← Zurück</Button>
                        <div>
                          <h2 className="text-xl font-bold">{selectedPrompt.title}</h2>
                          <div className="flex items-center gap-2 text-sm text-muted-foreground">
                            <Badge className={LEVEL_COLORS[selectedPrompt.level]}>{selectedPrompt.level}</Badge>
                            <Badge variant="outline">{EXERCISE_LABELS[selectedPrompt.exercise_type]}</Badge>
                            <span className="flex items-center gap-1"><FileText className="h-3.5 w-3.5" />{selectedPrompt.word_limit_min}–{selectedPrompt.word_limit_max} Wörter</span>
                          </div>
                        </div>
                      </div>
                      <div className="flex items-center gap-2">
                        {selectedPrompt.timer_minutes && !timerActive && (
                          <Button size="sm" variant="outline" onClick={() => setTimerActive(true)} className="gap-2">
                            <Timer className="h-4 w-4" /> Timer ({selectedPrompt.timer_minutes}min)
                          </Button>
                        )}
                        {timerActive && remaining != null && (
                          <div className={`flex items-center gap-2 rounded-lg border px-3 py-1.5 text-sm font-medium ${remaining <= 300 ? 'border-red-300 bg-red-50 text-red-700 dark:border-red-800 dark:bg-red-950 dark:text-red-400' : ''}`}>
                            <Timer className={`h-4 w-4 ${remaining <= 300 ? 'animate-pulse' : ''}`} />
                            {formatTime(remaining)}
                          </div>
                        )}
                      </div>
                    </div>

                    <Card>
                      <CardContent className="space-y-4 p-5">
                        <div className="rounded-lg bg-muted/50 p-4">
                          <h3 className="mb-2 text-sm font-semibold text-muted-foreground">AUFGABE</h3>
                          <p className="whitespace-pre-line leading-relaxed">{selectedPrompt.instructions}</p>
                        </div>

                        <div>
                          <button onClick={() => setShowHints(!showHints)} className="flex items-center gap-2 text-sm font-medium text-muted-foreground hover:text-foreground">
                            <Lightbulb className="h-4 w-4" /> Hinweise ({selectedPrompt.hints.length})
                            {showHints ? <ChevronUp className="h-3.5 w-3.5" /> : <ChevronDown className="h-3.5 w-3.5" />}
                          </button>
                          <AnimatePresence>
                            {showHints && (
                              <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }} exit={{ height: 0, opacity: 0 }} className="overflow-hidden">
                                <ul className="mt-2 space-y-1 rounded-lg bg-muted/30 p-3 text-sm">
                                  {selectedPrompt.hints.map((hint, i) => (
                                    <li key={i} className="flex items-start gap-2"><Lightbulb className="mt-0.5 h-3.5 w-3.5 shrink-0 text-amber-500" /><span>{hint}</span></li>
                                  ))}
                                </ul>
                              </motion.div>
                            )}
                          </AnimatePresence>
                        </div>

                        {(selectedPrompt.target_grammar.length > 0 || selectedPrompt.target_vocabulary.length > 0) && (
                          <div className="flex flex-wrap items-center gap-2">
                            {selectedPrompt.target_grammar.length > 0 && (
                              <>{selectedPrompt.target_grammar.map(g => <Badge key={g} variant="secondary" className="text-xs">{g}</Badge>)}</>
                            )}
                            {selectedPrompt.target_vocabulary.length > 0 && (
                              <>{selectedPrompt.target_vocabulary.map(v => <Badge key={v} variant="outline" className="text-xs">{v}</Badge>)}</>
                            )}
                          </div>
                        )}

                        {selectedPrompt.example_structure && (
                          <div>
                            <button onClick={() => setShowStructure(!showStructure)} className="flex items-center gap-2 text-sm font-medium text-muted-foreground hover:text-foreground">
                              <BookOpen className="h-4 w-4" /> Beispielstruktur
                              {showStructure ? <ChevronUp className="h-3.5 w-3.5" /> : <ChevronDown className="h-3.5 w-3.5" />}
                            </button>
                            <AnimatePresence>
                              {showStructure && (
                                <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }} exit={{ height: 0, opacity: 0 }} className="overflow-hidden">
                                  <div className="mt-2 rounded-lg bg-muted/30 p-3 text-sm whitespace-pre-line">{selectedPrompt.example_structure}</div>
                                </motion.div>
                              )}
                            </AnimatePresence>
                          </div>
                        )}
                      </CardContent>
                    </Card>

                    <Card>
                      <CardContent className="space-y-4 p-5">
                        <Textarea placeholder="Schreibe deinen Text hier..." className="min-h-[280px] resize-y" value={exerciseText} onChange={(e) => setExerciseText(e.target.value)} />
                        <div className="flex items-center justify-between">
                          <div className="flex items-center gap-2">
                            <span className={`text-sm font-medium ${getWordCountClass(exerciseWords, selectedPrompt.word_limit_min, selectedPrompt.word_limit_max)}`}>
                              {exerciseWords} Wörter
                            </span>
                            <span className="text-sm text-muted-foreground">(min. {selectedPrompt.word_limit_min}, max. {selectedPrompt.word_limit_max})</span>
                          </div>
                          <div className="flex items-center gap-2">
                            {timerActive && <span className="text-sm text-muted-foreground">{Math.floor(elapsedSeconds / 60)}:{String(elapsedSeconds % 60).padStart(2, '0')}</span>}
                            <Button onClick={handleSubmitExercise} disabled={!exerciseText.trim() || submitWriting.isPending}>
                              {submitWriting.isPending ? <><Sparkles className="mr-2 h-4 w-4 animate-spin" /> Analysiere...</> : <><Send className="mr-2 h-4 w-4" /> Einreichen</>}
                            </Button>
                          </div>
                        </div>
                      </CardContent>
                    </Card>
                  </motion.div>
                ) : (
                  <motion.div key="result" initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} className="space-y-6">
                    <div className="flex items-center justify-between">
                      <div className="flex items-center gap-3">
                        <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-emerald-100 text-emerald-600 dark:bg-emerald-900/30 dark:text-emerald-400">
                          <Sparkles className="h-5 w-5" />
                        </div>
                        <div>
                          <h2 className="text-xl font-bold">Ergebnis</h2>
                          <p className="text-sm text-muted-foreground">{selectedPrompt.title}</p>
                        </div>
                      </div>
                      <Button variant="outline" size="sm" onClick={() => handleSelectPrompt(selectedPrompt)} className="gap-2">
                        <RotateCcw className="h-4 w-4" /> Erneut versuchen
                      </Button>
                    </div>

                    <Card>
                      <CardContent className="space-y-6 p-6">
                        <div className="flex flex-wrap items-center gap-6">
                          <div className="flex flex-col items-center">
                            <div className="flex h-20 w-20 items-center justify-center rounded-full bg-primary/10 text-3xl font-bold text-primary">
                              {submittedData.score ?? '—'}
                            </div>
                            <span className="mt-1 text-sm text-muted-foreground">Gesamtpunktzahl</span>
                          </div>
                          {submittedData.exam_score_estimate != null && (
                            <div className="flex flex-col items-center">
                              <div className="flex h-20 w-20 items-center justify-center rounded-full bg-amber-100 text-2xl font-bold text-amber-700 dark:bg-amber-900/30 dark:text-amber-400">
                                {getExamGrade(submittedData.exam_score_estimate).note}
                              </div>
                              <span className="mt-1 text-sm text-muted-foreground">{getExamGrade(submittedData.exam_score_estimate).grade}</span>
                            </div>
                          )}
                          <div className="space-y-1 text-sm">
                            {submittedData.level_estimate && (
                              <div className="flex items-center gap-2">
                                <Languages className="h-4 w-4 text-muted-foreground" />
                                <span>Niveau: <Badge className={LEVEL_COLORS[submittedData.level_estimate]}>{submittedData.level_estimate}</Badge></span>
                              </div>
                            )}
                            {submittedData.word_count != null && (
                              <div className="flex items-center gap-2"><FileText className="h-4 w-4 text-muted-foreground" /><span>{submittedData.word_count} Wörter</span></div>
                            )}
                            {submittedData.time_spent_minutes != null && (
                              <div className="flex items-center gap-2"><Clock className="h-4 w-4 text-muted-foreground" /><span>{submittedData.time_spent_minutes} Minuten</span></div>
                            )}
                          </div>
                        </div>

                        <Separator />

                        <div className="grid gap-4 sm:grid-cols-2">
                          <ScoreBar label="Grammatik" value={submittedData.grammar_score ?? 0} color="bg-blue-500" />
                          <ScoreBar label="Wortschatz" value={submittedData.vocabulary_score ?? 0} color="bg-emerald-500" />
                          <ScoreBar label="Kohärenz" value={submittedData.coherence_score ?? 0} color="bg-purple-500" />
                          <ScoreBar label="Natürlichkeit" value={submittedData.naturalness_score ?? 0} color="bg-amber-500" />
                        </div>

                        {submittedData.exam_score_estimate != null && (
                          <>
                            <Separator />
                            <div>
                              <h3 className="mb-3 text-sm font-semibold text-muted-foreground">PRÜFUNGSNOTE (Goethe/TELC)</h3>
                              <div className="flex items-center gap-4">
                                <div className="flex h-14 w-14 items-center justify-center rounded-xl border-2 border-amber-400 bg-amber-50 text-xl font-bold text-amber-700 dark:bg-amber-950 dark:text-amber-400">
                                  {getExamGrade(submittedData.exam_score_estimate).note}
                                </div>
                                <div>
                                  <p className="font-semibold">{getExamGrade(submittedData.exam_score_estimate).grade}</p>
                                  <p className="text-sm text-muted-foreground">Punktzahl: {submittedData.exam_score_estimate}%</p>
                                </div>
                              </div>
                            </div>
                          </>
                        )}

                        {submittedData.corrected_version && (
                          <>
                            <Separator />
                            <div>
                              <h3 className="mb-2 text-sm font-semibold text-muted-foreground">KORRIGIERTE VERSION</h3>
                              <div className="rounded-lg border border-emerald-200 bg-emerald-50/50 p-4 text-sm leading-relaxed dark:border-emerald-900/50 dark:bg-emerald-950/20">
                                {submittedData.corrected_version}
                              </div>
                            </div>
                          </>
                        )}

                        <CorrectionBlock corrections={promptCorrections} suggestions={promptSuggestions} />
                      </CardContent>
                    </Card>
                  </motion.div>
                )}
              </AnimatePresence>
            )}
          </TabsContent>

          <TabsContent value="schreiben" className="space-y-6">
            <Card>
              <CardHeader>
                <CardTitle className="flex items-center gap-2"><Edit3 className="h-5 w-5 text-primary" /> Freies Schreiben</CardTitle>
                <CardDescription>Schreibe einen freien Text auf Deutsch. Die KI analysiert Grammatik, Wortschatz und Stil.</CardDescription>
              </CardHeader>
              <CardContent className="space-y-4">
                <input type="text" placeholder="Titel (optional)" className="flex h-10 w-full rounded-lg border border-input bg-background px-3 py-2 text-sm ring-offset-background placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2" value={freeTitle} onChange={(e) => setFreeTitle(e.target.value)} />
                <Textarea placeholder="Beginne mit dem Schreiben..." className="min-h-[300px] resize-y" value={freeText} onChange={(e) => setFreeText(e.target.value)} />
                <div className="flex items-center justify-between">
                  <span className="text-sm text-muted-foreground">{freeWords} Wörter</span>
                  <Button onClick={handleAnalyzeFreeWrite} disabled={!freeText.trim() || submitWriting.isPending}>
                    {submitWriting.isPending ? <><Sparkles className="mr-2 h-4 w-4 animate-spin" /> Analysiere...</> : <><Sparkles className="mr-2 h-4 w-4" /> Analysieren</>}
                  </Button>
                </div>
              </CardContent>
            </Card>

            <AnimatePresence>
              {freeResult && (
                <motion.div initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }} className="space-y-4">
                  <Card>
                    <CardHeader>
                      <CardTitle className="flex items-center gap-2"><Sparkles className="h-5 w-5 text-primary" /> Analyseergebnis</CardTitle>
                    </CardHeader>
                    <CardContent className="space-y-6">
                      <div className="flex items-center gap-4">
                        <div className="flex h-16 w-16 items-center justify-center rounded-full bg-primary/10 text-2xl font-bold text-primary">
                          {freeResult.score ?? '—'}%
                        </div>
                        <div className="space-y-1">
                          {freeResult.level_estimate && (
                            <p className="flex items-center gap-2 text-sm">
                              <Languages className="h-4 w-4 text-muted-foreground" />
                              Niveau: <Badge className={LEVEL_COLORS[freeResult.level_estimate]}>{freeResult.level_estimate}</Badge>
                            </p>
                          )}
                          {freeResult.naturalness_score != null && (
                            <p className="text-sm text-muted-foreground">Natürlichkeit: {freeResult.naturalness_score}%</p>
                          )}
                        </div>
                      </div>
                      <div className="grid gap-3 sm:grid-cols-2">
                        <ScoreBar label="Grammatik" value={freeResult.grammar_score ?? 0} color="bg-blue-500" />
                        <ScoreBar label="Wortschatz" value={freeResult.vocabulary_score ?? 0} color="bg-emerald-500" />
                      </div>
                      <CorrectionBlock corrections={freeCorrections} suggestions={freeSuggestions} />
                    </CardContent>
                  </Card>
                </motion.div>
              )}
            </AnimatePresence>
          </TabsContent>

          <TabsContent value="verlauf">
            {historyLoading ? (
              <div className="space-y-3">
                {[1, 2, 3, 4].map(i => <Skeleton key={i} className="h-28 rounded-xl" />)}
              </div>
            ) : history && history.length > 0 ? (
              <div className="space-y-3">
                {history.map((item: WritingSubmission) => {
                  const expanded = expandedHistory === item.id
                  const hc = getCorrections(item)
                  const hs = getSuggestions(item)
                  return (
                    <motion.div key={item.id} initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }} layout>
                      <Card className="cursor-pointer transition-all hover:border-primary/30" onClick={() => setExpandedHistory(expanded ? null : item.id)}>
                        <CardContent className="p-5">
                          <div className="flex items-start justify-between">
                            <div className="min-w-0 flex-1">
                              <div className="flex items-center gap-2">
                                <h3 className="truncate font-semibold">{item.title || 'Unbenannt'}</h3>
                                {item.score != null && <Badge variant={item.score >= 70 ? 'default' : 'secondary'}>{item.score}%</Badge>}
                              </div>
                              <div className="mt-1 flex flex-wrap items-center gap-3 text-sm text-muted-foreground">
                                <span className="flex items-center gap-1"><Clock className="h-3.5 w-3.5" />{format(new Date(item.created_at), 'dd.MM.yyyy HH:mm')}</span>
                                {item.level_estimate && <Badge className={LEVEL_COLORS[item.level_estimate]}>{item.level_estimate}</Badge>}
                                {item.word_count != null && <span className="flex items-center gap-1"><FileText className="h-3.5 w-3.5" />{item.word_count} Wörter</span>}
                                {item.exam_score_estimate != null && (
                                  <span className="flex items-center gap-1 font-medium text-amber-600 dark:text-amber-400">
                                    <Star className="h-3.5 w-3.5" /> Note: {getExamGrade(item.exam_score_estimate).note}
                                  </span>
                                )}
                              </div>
                            </div>
                            {expanded ? <ChevronUp className="h-4 w-4 shrink-0 text-muted-foreground" /> : <ChevronDown className="h-4 w-4 shrink-0 text-muted-foreground" />}
                          </div>

                          <AnimatePresence>
                            {expanded && (
                              <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }} exit={{ height: 0, opacity: 0 }} className="overflow-hidden">
                                <Separator className="my-4" />
                                <div className="space-y-4">
                                  <div>
                                    <h4 className="mb-1 text-xs font-semibold text-muted-foreground">DEIN TEXT</h4>
                                    <div className="rounded-lg bg-muted/30 p-3 text-sm whitespace-pre-line line-clamp-6">{item.original_text}</div>
                                  </div>
                                  {item.corrected_version && (
                                    <div>
                                      <h4 className="mb-1 text-xs font-semibold text-muted-foreground">KORRIGIERTE VERSION</h4>
                                      <div className="rounded-lg border border-emerald-200 bg-emerald-50/50 p-3 text-sm whitespace-pre-line dark:border-emerald-900/50 dark:bg-emerald-950/20">{item.corrected_version}</div>
                                    </div>
                                  )}
                                  {item.grammar_score != null && (
                                    <div className="grid grid-cols-2 gap-3 sm:grid-cols-4">
                                      <div className="rounded-lg bg-muted/30 p-3 text-center"><p className="text-lg font-bold text-blue-500">{item.grammar_score}%</p><p className="text-xs text-muted-foreground">Grammatik</p></div>
                                      <div className="rounded-lg bg-muted/30 p-3 text-center"><p className="text-lg font-bold text-emerald-500">{item.vocabulary_score}%</p><p className="text-xs text-muted-foreground">Wortschatz</p></div>
                                      <div className="rounded-lg bg-muted/30 p-3 text-center"><p className="text-lg font-bold text-purple-500">{item.coherence_score}%</p><p className="text-xs text-muted-foreground">Kohärenz</p></div>
                                      <div className="rounded-lg bg-muted/30 p-3 text-center"><p className="text-lg font-bold text-amber-500">{item.naturalness_score}%</p><p className="text-xs text-muted-foreground">Natürlichkeit</p></div>
                                    </div>
                                  )}
                                  {hc.length > 0 && (
                                    <div>
                                      <h4 className="mb-2 text-xs font-semibold text-muted-foreground">KORREKTUREN</h4>
                                      <div className="space-y-1.5">
                                        {hc.slice(0, 5).map((c, i) => (
                                          <div key={i} className="flex items-start gap-2 rounded-lg border p-2.5 text-sm">
                                            <AlertCircle className="mt-0.5 h-3.5 w-3.5 shrink-0 text-amber-500" />
                                            <div className="min-w-0"><p className="text-muted-foreground line-through">{c.original}</p><p className="font-medium text-emerald-600 dark:text-emerald-400">{c.corrected}</p></div>
                                          </div>
                                        ))}
                                        {hc.length > 5 && <p className="text-xs text-muted-foreground">+{hc.length - 5} weitere</p>}
                                      </div>
                                    </div>
                                  )}
                                  {hs.length > 0 && (
                                    <div>
                                      <h4 className="mb-2 text-xs font-semibold text-muted-foreground">VORSCHLÄGE</h4>
                                      <div className="space-y-1.5">
                                        {hs.slice(0, 3).map((s, i) => (
                                          <div key={i} className="flex items-start gap-2 text-sm"><CheckCircle2 className="mt-0.5 h-3.5 w-3.5 shrink-0 text-emerald-500" /><span>{s}</span></div>
                                        ))}
                                        {hs.length > 3 && <p className="text-xs text-muted-foreground">+{hs.length - 3} weitere</p>}
                                      </div>
                                    </div>
                                  )}
                                </div>
                              </motion.div>
                            )}
                          </AnimatePresence>
                        </CardContent>
                      </Card>
                    </motion.div>
                  )
                })}
              </div>
            ) : (
              <Card>
                <CardContent className="flex flex-col items-center gap-3 p-8 text-center text-muted-foreground">
                  <History className="h-10 w-10" />
                  <p>Noch keine Schreibeinträge. Starte eine Übung oder schreibe einen freien Text!</p>
                </CardContent>
              </Card>
            )}
          </TabsContent>
          <TabsContent value="email_training" className="space-y-6">
            <EmailTrainingContent />
          </TabsContent>
        </Tabs>
      </div>
    </AppShell>
  )
}
