'use client'

import { useState, useMemo, useCallback, useRef, useEffect } from 'react'
import { useQueryClient, useMutation } from '@tanstack/react-query'
import { createClient } from '@/lib/supabase/client'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { Skeleton } from '@/components/ui/skeleton'
import { Separator } from '@/components/ui/separator'
import { motion, AnimatePresence } from 'framer-motion'
import {
  BookmarkPlus, Search, ChevronLeft, ChevronRight, Star, RotateCcw, Sparkles,
  CheckCircle2, Heart, Shuffle, BookOpen, Filter, X, RefreshCw, Award, Brain,
  ArrowRight, ThumbsUp, ThumbsDown, Languages, VolumeX, ListX, GraduationCap
} from 'lucide-react'
import { useVocabulary, useUserVocabulary, useSaveVocabulary, useLearningAnalytics } from '@/hooks/use-progress'
import { AudioPlayer } from '@/components/audio-player'
import type { Vocabulary } from '@/types'

const LEVELS = ['A1', 'A2', 'B1', 'B2', 'C1'] as const
const THEMES = ['Food', 'Travel', 'Health', 'Work', 'School', 'Politics', 'Environment', 'Technology', 'Business', 'Culture', 'Shopping', 'Transportation', 'Family', 'Housing', 'Sports', 'Daily Life', 'Finance', 'Media', 'Nature', 'Government']

const articleColors: Record<string, string> = { der: 'text-blue-500', die: 'text-rose-500', das: 'text-emerald-500' }

function getFrequencyVariant(freq: string) {
  const map: Record<string, string> = { very_common: 'default', common: 'secondary', rare: 'outline', very_rare: 'ghost' }
  return map[freq] ?? 'outline'
}

function getLevelColor(level: string) {
  const colors: Record<string, string> = { A1: 'bg-emerald-100 text-emerald-700 dark:bg-emerald-900/30 dark:text-emerald-400', A2: 'bg-sky-100 text-sky-700 dark:bg-sky-900/30 dark:text-sky-400', B1: 'bg-violet-100 text-violet-700 dark:bg-violet-900/30 dark:text-violet-400', B2: 'bg-amber-100 text-amber-700 dark:bg-amber-900/30 dark:text-amber-400', C1: 'bg-rose-100 text-rose-700 dark:bg-rose-900/30 dark:text-rose-400' }
  return colors[level] ?? ''
}

function typeIcon(type: string | null) {
  const icons: Record<string, string> = { noun: 'n.', verb: 'v.', adjective: 'adj.', adverb: 'adv.', preposition: 'prep.', conjunction: 'conj.', expression: 'expr.' }
  return icons[type ?? ''] ?? ''
}

function DifficultyDots({ score }: { score: number }) {
  return (
    <div className="flex items-center gap-0.5">
      {[1, 2, 3, 4, 5].map(d => (
        <div key={d} className={`h-1.5 w-1.5 rounded-full ${d <= Math.round(score) ? 'bg-amber-400' : 'bg-muted'}`} />
      ))}
    </div>
  )
}

function WordCard({ word, mastered, isFav, onToggleFav, onMastered, expanded, onToggleExpand }: {
  word: Vocabulary; mastered: boolean; isFav: boolean
  onToggleFav: () => void; onMastered: () => void
  expanded: boolean; onToggleExpand: () => void
}) {
  const isVerb = word.word_type === 'verb'

  return (
    <motion.div layout initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} transition={{ duration: 0.2 }}>
      <Card className={`group cursor-pointer transition-all hover:border-primary/50 ${expanded ? 'border-primary/60 shadow-md' : ''}`} onClick={() => onToggleExpand()}>
        <CardContent className="p-4">
          <div className="flex items-start justify-between gap-2">
            <div className="min-w-0 flex-1">
              <div className="flex items-center gap-2 flex-wrap">
                {word.article && (
                  <span className={`text-sm font-medium ${articleColors[word.article] ?? ''}`}>{word.article}</span>
                )}
                <span className="text-lg font-bold tracking-tight">{word.german_word}</span>
                <div className="ml-auto sm:ml-0" onClick={e => e.stopPropagation()}>
                  <AudioPlayer text={word.german_word} existingUrl={word.pronunciation_url} slowUrl={word.slow_pronunciation_url} />
                </div>
              </div>
              {word.ipa && <p className="text-xs text-muted-foreground/60 font-mono mt-0.5">/{word.ipa}/</p>}
              <div className="mt-1.5 space-y-0.5">
                <p className="text-sm font-medium">{word.english_translation}</p>
                {word.french_translation && <p className="text-xs text-muted-foreground">fr: {word.french_translation}</p>}
                {word.arabic_translation && <p className="text-xs text-muted-foreground" dir="rtl">ar: {word.arabic_translation}</p>}
              </div>
            </div>
            <div className="flex flex-col items-center gap-1.5 shrink-0">
              <Button variant="ghost" size="icon" className={`h-7 w-7 ${isFav ? 'text-rose-500' : ''}`} onClick={e => { e.stopPropagation(); onToggleFav() }}>
                <Heart className={`h-4 w-4 ${isFav ? 'fill-rose-500' : ''}`} />
              </Button>
              <Button variant="ghost" size="icon" className={`h-7 w-7 ${mastered ? 'text-amber-500' : ''}`} onClick={e => { e.stopPropagation(); onMastered() }}>
                <Star className={`h-4 w-4 ${mastered ? 'fill-amber-500' : ''}`} />
              </Button>
            </div>
          </div>
          <div className="mt-2 flex flex-wrap items-center gap-1.5">
            <Badge className={`text-[10px] px-1.5 py-0 ${getLevelColor(word.level)}`}>{word.level}</Badge>
            {word.word_type && <Badge variant="secondary" className="text-[10px] px-1.5 py-0">{typeIcon(word.word_type)}</Badge>}
            <Badge variant={getFrequencyVariant(word.frequency) as 'default' | 'secondary' | 'destructive' | 'outline'} className="text-[10px] px-1.5 py-0">{word.frequency.replace('_', ' ')}</Badge>
            {word.theme && <Badge variant="outline" className="text-[10px] px-1.5 py-0">{word.theme}</Badge>}
            <div className="ml-auto"><DifficultyDots score={word.difficulty_score} /></div>
          </div>

          <AnimatePresence>
            {expanded && (
              <motion.div initial={{ height: 0, opacity: 0 }} animate={{ height: 'auto', opacity: 1 }} exit={{ height: 0, opacity: 0 }} className="overflow-hidden">
                <Separator className="my-3" />
                {word.example_sentence && (
                  <div className="mb-2">
                    <p className="text-sm italic">{word.example_sentence}</p>
                    <p className="text-xs text-muted-foreground mt-0.5">{word.english_translation}</p>
                  </div>
                )}
                <div className="grid grid-cols-2 gap-2 text-xs">
                  {word.synonyms?.length > 0 && (
                    <div><span className="text-muted-foreground">Synonyms:</span> <span className="font-medium">{word.synonyms.join(', ')}</span></div>
                  )}
                  {word.antonyms?.length > 0 && (
                    <div><span className="text-muted-foreground">Antonyms:</span> <span className="font-medium">{word.antonyms.join(', ')}</span></div>
                  )}
                  {word.word_family?.length > 0 && (
                    <div className="col-span-2"><span className="text-muted-foreground">Word Family:</span> <span className="font-medium">{word.word_family.join(', ')}</span></div>
                  )}
                  {isVerb && word.verb_forms && Object.keys(word.verb_forms).length > 0 && (
                    <div className="col-span-2">
                      <span className="text-muted-foreground">Verb Forms:</span>
                      <div className="grid grid-cols-2 gap-x-4 gap-y-0.5 mt-1">
                        {Object.entries(word.verb_forms).map(([tense, form]) => (
                          <div key={tense} className="flex gap-1"><span className="text-muted-foreground capitalize">{tense}:</span><span className="font-medium">{form as string}</span></div>
                        ))}
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
}

function FlashcardFront({ word }: { word: Vocabulary }) {
  return (
    <div className="flex flex-col items-center justify-center p-8 text-center min-h-[320px]">
      <Badge variant="outline" className="mb-4 text-xs">{word.level}</Badge>
      <div className="flex items-center gap-3 mb-2">
        {word.article && <span className={`text-xl font-medium ${articleColors[word.article] ?? ''}`}>{word.article}</span>}
        <span className="text-4xl font-bold tracking-tight">{word.german_word}</span>
      </div>
      {word.ipa && <p className="text-sm text-muted-foreground/60 font-mono mb-4">/{word.ipa}/</p>}
      {word.word_type && <Badge variant="secondary" className="mb-3 text-xs">{typeIcon(word.word_type)}</Badge>}
      <div className="flex items-center gap-2 mt-2" onClick={e => e.stopPropagation()}>
        <AudioPlayer text={word.german_word} existingUrl={word.pronunciation_url} slowUrl={word.slow_pronunciation_url} />
      </div>
      <p className="text-xs text-muted-foreground mt-auto pt-4">Zum Umdrehen tippen</p>
    </div>
  )
}

function FlashcardBack({ word }: { word: Vocabulary }) {
  return (
    <div className="flex flex-col items-center justify-center p-8 text-center min-h-[320px]">
      <Badge variant="outline" className="mb-4 text-xs">Übersetzung</Badge>
      <p className="text-3xl font-bold mb-3">{word.english_translation}</p>
      {(word.french_translation || word.arabic_translation) && (
        <div className="space-y-1 mb-4">
          {word.french_translation && <p className="text-sm text-muted-foreground">Français: {word.french_translation}</p>}
          {word.arabic_translation && <p className="text-sm text-muted-foreground" dir="rtl">العربية: {word.arabic_translation}</p>}
        </div>
      )}
      {word.example_sentence && (
        <div className="mt-2 max-w-sm">
          <p className="text-sm italic text-muted-foreground">{word.example_sentence}</p>
        </div>
      )}
      <div className="flex items-center gap-1.5 mt-3">
        {word.synonyms?.length > 0 && <p className="text-xs text-muted-foreground">Syn: {word.synonyms.slice(0, 2).join(', ')}</p>}
      </div>
      <p className="text-xs text-muted-foreground mt-auto pt-4">Zum Umdrehen tippen</p>
    </div>
  )
}

export default function VocabularyPage() {
  const [search, setSearch] = useState('')
  const [selectedLevel, setSelectedLevel] = useState('')
  const [selectedTheme, setSelectedTheme] = useState('')
  const [activeTab, setActiveTab] = useState('browse')
  const [currentCard, setCurrentCard] = useState(0)
  const [flipped, setFlipped] = useState(false)
  const [shuffleMode, setShuffleMode] = useState(false)
  const [expandedCardId, setExpandedCardId] = useState<string | null>(null)
  const [flashcardSource, setFlashcardSource] = useState<'all' | 'due'>('all')
  const [practiceActive, setPracticeActive] = useState(false)
  const [practiceWords, setPracticeWords] = useState<Vocabulary[]>([])
  const [practiceIndex, setPracticeIndex] = useState(0)
  const [practiceScore, setPracticeScore] = useState(0)
  const [practiceAnswered, setPracticeAnswered] = useState(false)
  const [practiceSelected, setPracticeSelected] = useState(-1)
  const [practiceConfigOpen, setPracticeConfigOpen] = useState(true)
  const [practiceConfig, setPracticeConfig] = useState({ count: '10', level: '', theme: '' })
  const [now, setNow] = useState(() => Date.now())
  useEffect(() => {
    const interval = setInterval(() => setNow(Date.now()), 60000)
    return () => clearInterval(interval)
  }, [])
  const queryClient = useQueryClient()
  const { data: vocab, isLoading } = useVocabulary()
  const { data: userVocab } = useUserVocabulary()
  const { data: analytics } = useLearningAnalytics()
  const saveVocab = useSaveVocabulary()

  const userVocMap = useMemo(() => {
    const map = new Map<string, { mastered: boolean; is_favorite: boolean; next_review: string }>()
    userVocab?.forEach(uv => map.set(uv.vocabulary_id, { mastered: uv.mastered, is_favorite: uv.is_favorite, next_review: uv.next_review }))
    return map
  }, [userVocab])

  const filteredWords = useMemo(() => {
    if (!vocab) return []
    return vocab.filter(w => {
      if (selectedLevel && w.level !== selectedLevel) return false
      if (selectedTheme && w.theme !== selectedTheme) return false
      if (search) {
        const q = search.toLowerCase()
        if (!w.german_word.toLowerCase().includes(q) && !w.english_translation.toLowerCase().includes(q) &&
            !(w.french_translation?.toLowerCase().includes(q)) && !(w.arabic_translation?.toLowerCase().includes(q))) return false
      }
      return true
    })
  }, [vocab, selectedLevel, selectedTheme, search])

  const dueForReview = useMemo(() =>
    (userVocab ?? []).filter(uv => !uv.mastered && new Date(uv.next_review) <= new Date()),
  [userVocab])

  const favorites = useMemo(() => {
    const favIds = new Set((userVocab ?? []).filter(uv => uv.is_favorite).map(uv => uv.vocabulary_id))
    return (vocab ?? []).filter(w => favIds.has(w.id))
  }, [vocab, userVocab])

  const shuffledCards = useMemo(() => {
    const source = flashcardSource === 'due' ? dueForReview.map(uv => uv.vocabulary).filter(Boolean) as Vocabulary[] : filteredWords
    if (shuffleMode && source.length > 0) {
      const seed = source.length + (filteredWords.length * 31)
      const indices = [...Array(source.length).keys()]
      for (let i = indices.length - 1; i > 0; i--) {
        const j = ((seed * 1103515245 + 12345) >> 16) % (i + 1)
        ;[indices[i], indices[j]] = [indices[j], indices[i]]
      }
      return { cards: indices.map(i => source[i]), order: indices }
    }
    return { cards: source, order: [...Array(source.length).keys()] }
  }, [filteredWords, dueForReview, flashcardSource, shuffleMode])

  const flashcardKey = `${shuffleMode}-${flashcardSource}`
  const [prevFlashcardKey, setPrevFlashcardKey] = useState(flashcardKey)
  if (flashcardKey !== prevFlashcardKey) {
    setPrevFlashcardKey(flashcardKey)
    setCurrentCard(0)
    setFlipped(false)
  }

  const toggleFavorite = useMutation({
    mutationFn: async (vocabularyId: string) => {
      const supabase = createClient()
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) throw new Error('Not authenticated')
      const { data: existing } = await supabase.from('user_vocabulary').select('*').eq('user_id', user.id).eq('vocabulary_id', vocabularyId).maybeSingle()
      if (existing) {
        await supabase.from('user_vocabulary').update({ is_favorite: !existing.is_favorite }).eq('id', existing.id)
      } else {
        await supabase.from('user_vocabulary').insert({ user_id: user.id, vocabulary_id: vocabularyId, is_favorite: true })
      }
    },
    onSuccess: () => queryClient.invalidateQueries({ queryKey: ['user-vocabulary'] }),
  })

  const handleMastered = useCallback((wordId: string) => {
    const isMastered = userVocMap.get(wordId)?.mastered ?? false
    saveVocab.mutate({ vocabularyId: wordId, mastered: !isMastered })
  }, [saveVocab, userVocMap])

  const startPractice = useCallback(() => {
    let pool = [...(vocab ?? [])]
    if (practiceConfig.level) pool = pool.filter(w => w.level === practiceConfig.level)
    if (practiceConfig.theme) pool = pool.filter(w => w.theme === practiceConfig.theme)
    const count = Math.min(parseInt(practiceConfig.count) || 10, pool.length)
    const shuffled = [...pool]
    for (let i = shuffled.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1))
      ;[shuffled[i], shuffled[j]] = [shuffled[j], shuffled[i]]
    }
    shuffled.length = count
    setPracticeWords(shuffled)
    setPracticeIndex(0)
    setPracticeScore(0)
    setPracticeAnswered(false)
    setPracticeSelected(-1)
    setPracticeConfigOpen(false)
    setPracticeActive(true)
  }, [vocab, practiceConfig])

  const currentPracticeWord = useMemo(() => practiceWords[practiceIndex] ?? null, [practiceWords, practiceIndex])

  const currentPracticeOptions = useMemo(() => {
    if (!currentPracticeWord || !vocab) return []
    const others = vocab.filter(w => w.id !== currentPracticeWord.id && w.english_translation !== currentPracticeWord.english_translation)
    const idxA = (currentPracticeWord.id.length + vocab.length) % others.length
    const opts = [currentPracticeWord,
      others[(idxA * 17 + 31) % others.length],
      others[(idxA * 19 + 53) % others.length],
      others[(idxA * 23 + 79) % others.length],
    ]
    const sorted = [opts[0]]
    const remaining = opts.slice(1).sort((a, b) => (a?.id ?? '').localeCompare(b?.id ?? ''))
    return [...sorted, ...remaining]
  }, [currentPracticeWord, vocab])

  const [prevPracticeIdx, setPrevPracticeIdx] = useState(practiceIndex)
  if (practiceIndex !== prevPracticeIdx) {
    setPrevPracticeIdx(practiceIndex)
    setPracticeAnswered(false)
    setPracticeSelected(-1)
  }

  function handlePracticeAnswer(index: number) {
    if (practiceAnswered) return
    setPracticeSelected(index)
    setPracticeAnswered(true)
    if (currentPracticeOptions[index]?.id === currentPracticeWord?.id) setPracticeScore(s => s + 1)
  }

  function nextPractice() {
    if (practiceIndex < practiceWords.length - 1) {
      setPracticeIndex(i => i + 1)
    } else {
      setPracticeActive(false)
      setPracticeConfigOpen(true)
    }
  }

  const masteredCount = useMemo(() => (userVocab ?? []).filter(uv => uv.mastered).length, [userVocab])
  const learningCount = useMemo(() => (userVocab ?? []).filter(uv => !uv.mastered).length, [userVocab])

  function goToFlashcardsDue() {
    setFlashcardSource('due')
    setActiveTab('flashcards')
  }

  const labelMap: Record<string, string> = { browse: 'Durchsuchen', flashcards: 'Karteikarten', due: 'Wiederholung', favorites: 'Favoriten', practice: 'Üben' }

  if (isLoading) {
    return (
      <AppShell>
        <div className="space-y-6">
          <Skeleton className="h-10 w-64" />
          <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-5">
            {[1, 2, 3, 4, 5].map(i => <Skeleton key={i} className="h-20 rounded-xl" />)}
          </div>
          <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
            {[1, 2, 3, 4, 5, 6].map(i => <Skeleton key={i} className="h-40 rounded-xl" />)}
          </div>
        </div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-6">
        {/* Header */}
        <div className="flex items-center gap-3">
          <div className="flex h-11 w-11 items-center justify-center rounded-xl bg-gradient-to-br from-indigo-500 to-indigo-600 text-white shadow-sm">
            <BookmarkPlus className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Wortschatz</h1>
            <p className="text-sm text-muted-foreground">Baue deinen deutschen Wortschatz mit Karteikarten auf</p>
          </div>
        </div>

        {/* Stats */}
        <div className="grid grid-cols-2 gap-3 sm:grid-cols-3 lg:grid-cols-5">
          {[
            { label: 'Gesamtzahl', value: vocab?.length ?? 0, icon: BookOpen, color: 'text-indigo-500' },
            { label: 'Gelernt', value: masteredCount, icon: Award, color: 'text-amber-500' },
            { label: 'Lernend', value: learningCount, icon: Brain, color: 'text-violet-500' },
            { label: 'Wiederholung', value: dueForReview.length, icon: RotateCcw, color: dueForReview.length > 0 ? 'text-rose-500' : 'text-muted-foreground' },
            { label: 'Serie', value: analytics?.current_streak ?? 0, icon: Star, color: 'text-orange-500' },
          ].map(stat => (
            <Card key={stat.label} className="overflow-hidden">
              <CardContent className="p-4">
                <div className="flex items-center justify-between">
                  <div>
                    <p className="text-2xl font-bold">{stat.value}</p>
                    <p className="text-xs text-muted-foreground">{stat.label}</p>
                  </div>
                  <stat.icon className={`h-5 w-5 ${stat.color}`} />
                </div>
              </CardContent>
            </Card>
          ))}
        </div>

        {/* Search + Filters */}
        <div className="flex flex-col gap-3 sm:flex-row sm:items-center">
          <div className="relative flex-1">
            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
            <Input placeholder="Suche auf Deutsch, Englisch, Französisch oder Arabisch..." className="pl-9 h-10" value={search} onChange={e => setSearch(e.target.value)} />
            {search && (
              <Button variant="ghost" size="icon" className="absolute right-1 top-1/2 h-7 w-7 -translate-y-1/2" onClick={() => setSearch('')}>
                <X className="h-4 w-4" />
              </Button>
            )}
          </div>
          <div className="flex gap-2">
            <div className="flex rounded-lg border p-0.5 bg-muted/40">
              {[{ label: 'Alle', value: '' }, ...LEVELS.map(l => ({ label: l, value: l }))].map(opt => (
                <button key={opt.value} onClick={() => setSelectedLevel(opt.value)}
                  className={`px-3 py-1.5 text-xs font-medium rounded-md transition-all ${selectedLevel === opt.value ? 'bg-background text-foreground shadow-sm' : 'text-muted-foreground hover:text-foreground'}`}>
                  {opt.label}
                </button>
              ))}
            </div>
            <Select value={selectedTheme} onValueChange={v => { if (v !== null) setSelectedTheme(v); }}>
              <SelectTrigger className="w-36 h-10">
                <div className="flex items-center gap-2"><Filter className="h-3.5 w-3.5" /><SelectValue placeholder="Thema" /></div>
              </SelectTrigger>
              <SelectContent>
                <SelectItem value="All Themes">Alle Themen</SelectItem>
                {THEMES.map(t => <SelectItem key={t} value={t}>{t}</SelectItem>)}
              </SelectContent>
            </Select>
          </div>
        </div>

        {/* Tabs */}
        <Tabs value={activeTab} onValueChange={setActiveTab}>
          <TabsList className="w-full sm:w-auto flex-nowrap overflow-x-auto">
            <TabsTrigger value="browse">Durchsuchen</TabsTrigger>
            <TabsTrigger value="flashcards">Karteikarten</TabsTrigger>
            <TabsTrigger value="due">Fällig <span className="ml-1 rounded-full bg-rose-100 dark:bg-rose-900/40 text-rose-600 dark:text-rose-400 px-1.5 py-0 text-[10px] font-bold">{dueForReview.length}</span></TabsTrigger>
            <TabsTrigger value="favorites"><Heart className="h-3.5 w-3.5 mr-1" />Favoriten</TabsTrigger>
            <TabsTrigger value="practice"><Brain className="h-3.5 w-3.5 mr-1" />Üben</TabsTrigger>
          </TabsList>

          {/* Browse Tab */}
          <TabsContent value="browse" className="mt-6">
            {filteredWords.length === 0 ? (
              <Card><CardContent className="p-12 text-center">
                <BookOpen className="h-12 w-12 text-muted-foreground/40 mx-auto mb-4" />
                <p className="text-muted-foreground">{search || selectedTheme ? 'Keine Wörter entsprechen deinen Filtern.' : 'Noch keine Vokabeln vorhanden.'}</p>
              </CardContent></Card>
            ) : (
              <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
                {filteredWords.map(word => (
                  <WordCard key={word.id} word={word}
                    mastered={userVocMap.get(word.id)?.mastered ?? false}
                    isFav={userVocMap.get(word.id)?.is_favorite ?? false}
                    onToggleFav={() => toggleFavorite.mutate(word.id)}
                    onMastered={() => handleMastered(word.id)}
                    expanded={expandedCardId === word.id}
                    onToggleExpand={() => setExpandedCardId(expandedCardId === word.id ? null : word.id)}
                  />
                ))}
              </div>
            )}
          </TabsContent>

          {/* Flashcards Tab */}
          <TabsContent value="flashcards" className="mt-6">
            <div className="mx-auto max-w-lg">
              <div className="flex items-center justify-between mb-4">
                <p className="text-sm text-muted-foreground">{shuffledCards.cards.length} Karten</p>
                <div className="flex items-center gap-2">
                  <Button variant={shuffleMode ? 'default' : 'outline'} size="sm" className="h-8 text-xs" onClick={() => setShuffleMode(s => !s)}>
                    <Shuffle className={`h-3.5 w-3.5 mr-1 ${shuffleMode ? '' : ''}`} /> Mischen
                  </Button>
                  {flashcardSource === 'due' && (
                    <Button variant="ghost" size="sm" className="h-8 text-xs" onClick={() => setFlashcardSource('all')}>
                      <X className="h-3.5 w-3.5 mr-1" /> Filter zurücksetzen
                    </Button>
                  )}
                </div>
              </div>

              {shuffledCards.cards.length === 0 ? (
                <Card><CardContent className="p-12 text-center">
                  {flashcardSource === 'due' ? (
                    <><CheckCircle2 className="h-12 w-12 text-green-500 mx-auto mb-4" /><p className="text-muted-foreground">Keine Wörter zur Wiederholung fällig. Gut gemacht!</p></>
                  ) : (
                    <><BookOpen className="h-12 w-12 text-muted-foreground/40 mx-auto mb-4" /><p className="text-muted-foreground">Noch keine Vokabeln vorhanden.</p></>
                  )}
                </CardContent></Card>
              ) : (
                <>
                  <AnimatePresence mode="wait">
                    <motion.div key={currentCard} initial={{ opacity: 0, x: 60, rotateY: 10 }} animate={{ opacity: 1, x: 0, rotateY: 0 }} exit={{ opacity: 0, x: -60, rotateY: -10 }} transition={{ duration: 0.25 }}
                      className="cursor-pointer perspective-[800px]" onClick={() => setFlipped(f => !f)}>
                      <div className="relative">
                        <motion.div animate={{ rotateY: flipped ? 180 : 0 }} transition={{ duration: 0.4 }} className="preserve-3d" style={{ transformStyle: 'preserve-3d' }}>
                          <div style={{ backfaceVisibility: 'hidden' }}>
                            <Card className="border-2 hover:border-primary/40 transition-colors">
                              <CardContent className="p-0">
                                {flipped ? (
                                  <div style={{ transform: 'rotateY(180deg)' }}>
                                    <FlashcardBack word={shuffledCards.cards[currentCard]} />
                                  </div>
                                ) : (
                                  <FlashcardFront word={shuffledCards.cards[currentCard]} />
                                )}
                              </CardContent>
                            </Card>
                          </div>
                        </motion.div>
                      </div>
                    </motion.div>
                  </AnimatePresence>

                  <div className="mt-4 flex items-center justify-between">
                    <Button variant="outline" size="icon" onClick={() => { setCurrentCard(Math.max(0, currentCard - 1)); setFlipped(false) }} disabled={currentCard === 0}>
                      <ChevronLeft className="h-4 w-4" />
                    </Button>
                    <span className="text-sm text-muted-foreground tabular-nums">{currentCard + 1} / {shuffledCards.cards.length}</span>
                    <Button variant="outline" size="icon" onClick={() => { setCurrentCard(Math.min(shuffledCards.cards.length - 1, currentCard + 1)); setFlipped(false) }} disabled={currentCard === shuffledCards.cards.length - 1}>
                      <ChevronRight className="h-4 w-4" />
                    </Button>
                  </div>

                  <Separator className="my-4" />

                  <div className="flex gap-3">
                    <Button variant="destructive" size="lg" className="flex-1 text-base" onClick={() => { setFlipped(false); if (currentCard < shuffledCards.cards.length - 1) setCurrentCard(c => c + 1) }}>
                      <ThumbsDown className="mr-2 h-5 w-5" /> Nicht gewusst
                    </Button>
                    <Button variant="default" size="lg" className="flex-1 text-base bg-green-600 hover:bg-green-700" onClick={() => {
                      saveVocab.mutate({ vocabularyId: shuffledCards.cards[currentCard].id, mastered: true })
                      setFlipped(false)
                      if (currentCard < shuffledCards.cards.length - 1) setCurrentCard(c => c + 1)
                    }}>
                      <ThumbsUp className="mr-2 h-5 w-5" /> Gewusst
                    </Button>
                  </div>
                </>
              )}
            </div>
          </TabsContent>

          {/* Due for Review Tab */}
          <TabsContent value="due" className="mt-6">
            {dueForReview.length === 0 ? (
              <Card><CardContent className="p-12 text-center">
                <CheckCircle2 className="h-12 w-12 text-green-500 mx-auto mb-4" />
                <p className="text-lg font-medium mb-1">Alles erledigt!</p>
                <p className="text-sm text-muted-foreground">Keine Wörter zur Wiederholung fällig. Weiter so!</p>
              </CardContent></Card>
            ) : (
              <>
                <div className="flex items-center justify-between mb-4">
                  <p className="text-sm text-muted-foreground">{dueForReview.length} Wörter zur Wiederholung</p>
                  <Button onClick={goToFlashcardsDue}><RotateCcw className="mr-2 h-4 w-4" /> Jetzt wiederholen</Button>
                </div>
                <div className="space-y-2">
                  {dueForReview.map(uv => {
                    const nextReview = new Date(uv.next_review).getTime()
                    const daysOverdue = Math.floor((now - nextReview) / 86400000)
                    return (
                      <motion.div key={uv.id} initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }}>
                        <Card className="hover:border-primary/40 transition-colors">
                          <CardContent className="p-4 flex items-center justify-between gap-4">
                            <div className="flex items-center gap-3 min-w-0">
                              <div className={`h-8 w-8 rounded-full flex items-center justify-center text-xs font-bold ${daysOverdue > 2 ? 'bg-rose-100 text-rose-600 dark:bg-rose-900/30 dark:text-rose-400' : daysOverdue > 0 ? 'bg-amber-100 text-amber-600 dark:bg-amber-900/30 dark:text-amber-400' : 'bg-muted text-muted-foreground'}`}>
                                {daysOverdue > 0 ? `${daysOverdue}d` : '0d'}
                              </div>
                              <div className="min-w-0">
                                <div className="flex items-center gap-2">
                                  {uv.vocabulary.article && <span className={`text-xs font-medium ${articleColors[uv.vocabulary.article] ?? ''}`}>{uv.vocabulary.article}</span>}
                                  <span className="font-semibold">{uv.vocabulary.german_word}</span>
                                  <Badge className={`text-[10px] ${getLevelColor(uv.vocabulary.level)}`}>{uv.vocabulary.level}</Badge>
                                </div>
                                <p className="text-xs text-muted-foreground truncate">{uv.vocabulary.english_translation}</p>
                              </div>
                            </div>
                            <div className="flex items-center gap-2 shrink-0">
                              <div onClick={e => e.stopPropagation()}>
                                <AudioPlayer text={uv.vocabulary.german_word} existingUrl={uv.vocabulary.pronunciation_url} slowUrl={uv.vocabulary.slow_pronunciation_url} showSlow={false} />
                              </div>
                              <Button size="sm" className="h-8 text-xs" onClick={() => saveVocab.mutate({ vocabularyId: uv.vocabulary_id, mastered: true })}>
                                <CheckCircle2 className="h-3.5 w-3.5 mr-1" /> Gelernt
                              </Button>
                            </div>
                          </CardContent>
                        </Card>
                      </motion.div>
                    )
                  })}
                </div>
              </>
            )}
          </TabsContent>

          {/* Favorites Tab */}
          <TabsContent value="favorites" className="mt-6">
            {favorites.length === 0 ? (
              <Card><CardContent className="p-12 text-center">
                <Heart className="h-12 w-12 text-rose-300 mx-auto mb-4" />
                <p className="text-lg font-medium mb-1">Keine Favoriten</p>
                <p className="text-sm text-muted-foreground">Klicke auf das Herz-Symbol bei einem Wort, um es zu deinen Favoriten hinzuzufügen.</p>
              </CardContent></Card>
            ) : (
              <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
                {favorites.map(word => (
                  <WordCard key={word.id} word={word}
                    mastered={userVocMap.get(word.id)?.mastered ?? false}
                    isFav={true}
                    onToggleFav={() => toggleFavorite.mutate(word.id)}
                    onMastered={() => handleMastered(word.id)}
                    expanded={expandedCardId === word.id}
                    onToggleExpand={() => setExpandedCardId(expandedCardId === word.id ? null : word.id)}
                  />
                ))}
              </div>
            )}
          </TabsContent>

          {/* Practice Tab */}
          <TabsContent value="practice" className="mt-6">
            <div className="mx-auto max-w-xl">
              {practiceConfigOpen ? (
                <Card>
                  <CardContent className="p-6 space-y-5">
                    <div className="flex items-center gap-3">
                      <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-indigo-500 to-purple-600 text-white">
                        <Brain className="h-5 w-5" />
                      </div>
                      <div>
                        <h3 className="text-lg font-semibold">Übungsmodus</h3>
                        <p className="text-sm text-muted-foreground">Teste dein Wissen mit Multiple-Choice-Fragen</p>
                      </div>
                    </div>
                    <Separator />
                    <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
                      <div className="space-y-1.5">
                        <label className="text-xs font-medium text-muted-foreground">Anzahl Wörter</label>
                        <Select value={practiceConfig.count} onValueChange={v => { if (v !== null) setPracticeConfig(p => ({ ...p, count: v })); }}>
                          <SelectTrigger><SelectValue /></SelectTrigger>
                          <SelectContent>
                            {[5, 10, 15, 20, 30, 50].map(n => <SelectItem key={n} value={String(n)}>{n} Wörter</SelectItem>)}
                          </SelectContent>
                        </Select>
                      </div>
                      <div className="space-y-1.5">
                        <label className="text-xs font-medium text-muted-foreground">Level</label>
                        <Select value={practiceConfig.level} onValueChange={v => { if (v !== null) setPracticeConfig(p => ({ ...p, level: v })); }}>
                          <SelectTrigger><SelectValue placeholder="Alle" /></SelectTrigger>
                          <SelectContent>
                            <SelectItem value="">Alle Niveaus</SelectItem>
                            {LEVELS.map(l => <SelectItem key={l} value={l}>{l}</SelectItem>)}
                          </SelectContent>
                        </Select>
                      </div>
                      <div className="space-y-1.5">
                        <label className="text-xs font-medium text-muted-foreground">Theme</label>
                        <Select value={practiceConfig.theme} onValueChange={v => { if (v !== null) setPracticeConfig(p => ({ ...p, theme: v })); }}>
                          <SelectTrigger><SelectValue placeholder="Alle" /></SelectTrigger>
                          <SelectContent>
                            <SelectItem value="">Alle Themen</SelectItem>
                            {THEMES.map(t => <SelectItem key={t} value={t}>{t}</SelectItem>)}
                          </SelectContent>
                        </Select>
                      </div>
                    </div>
                    <Button className="w-full h-12 text-base" onClick={startPractice} disabled={(vocab?.length ?? 0) < 4}>
                      <Sparkles className="mr-2 h-5 w-5" /> Üben starten
                    </Button>
                    {(vocab?.length ?? 0) < 4 && <p className="text-xs text-muted-foreground text-center">Mindestens 4 Wörter im Wortschatz erforderlich.</p>}
                  </CardContent>
                </Card>
              ) : practiceActive && currentPracticeWord ? (
                <AnimatePresence mode="wait">
                  <motion.div key={practiceIndex} initial={{ opacity: 0, x: 40 }} animate={{ opacity: 1, x: 0 }} exit={{ opacity: 0, x: -40 }} transition={{ duration: 0.2 }}>
                    <div className="space-y-4">
                      <div className="flex items-center justify-between">
                        <div className="flex items-center gap-2">
                          <Award className={`h-5 w-5 ${practiceScore > 0 ? 'text-amber-500' : 'text-muted-foreground'}`} />
                          <span className="text-sm font-medium">{practiceScore}/{practiceIndex + (practiceAnswered ? 1 : 0)}</span>
                        </div>
                        <span className="text-sm text-muted-foreground">Frage {practiceIndex + 1} von {practiceWords.length}</span>
                      </div>

                      <Card className="border-2 border-primary/20">
                        <CardContent className="p-8 text-center">
                          <Badge variant="outline" className="mb-4">{currentPracticeWord.level}</Badge>
                          <div className="flex items-center justify-center gap-3 mb-2">
                            {currentPracticeWord.article && <span className={`text-lg font-medium ${articleColors[currentPracticeWord.article] ?? ''}`}>{currentPracticeWord.article}</span>}
                            <span className="text-3xl font-bold">{currentPracticeWord.german_word}</span>
                          </div>
                          {currentPracticeWord.ipa && <p className="text-sm text-muted-foreground/60 font-mono mb-3">/{currentPracticeWord.ipa}/</p>}
                          <AudioPlayer text={currentPracticeWord.german_word} existingUrl={currentPracticeWord.pronunciation_url} slowUrl={currentPracticeWord.slow_pronunciation_url} />
                        </CardContent>
                      </Card>

                      <p className="text-sm font-medium text-center text-muted-foreground">Was bedeutet dieses Wort?</p>

                      <div className="grid grid-cols-1 sm:grid-cols-2 gap-2">
                        {currentPracticeOptions.map((opt, idx) => {
                          const isCorrect = opt.id === currentPracticeWord.id
                          let variant: 'default' | 'outline' | 'secondary' = 'outline'
                          if (practiceAnswered) {
                            if (isCorrect) variant = 'default'
                            else if (practiceSelected === idx) variant = 'secondary'
                          }
                          return (
                            <Button key={opt.id} disabled={practiceAnswered} variant={variant}
                              className={`h-auto py-4 px-4 text-sm justify-start ${practiceAnswered && isCorrect ? 'bg-green-600 hover:bg-green-600' : ''} ${practiceAnswered && practiceSelected === idx && !isCorrect ? 'bg-rose-100 text-rose-700 dark:bg-rose-900/30 dark:text-rose-400 border-rose-300' : ''}`}
                              onClick={() => handlePracticeAnswer(idx)}>
                              <span className="mr-2 text-muted-foreground text-xs">{String.fromCharCode(65 + idx)}.</span>
                              <span className="text-left">{opt.english_translation}</span>
                              {practiceAnswered && isCorrect && <CheckCircle2 className="ml-auto h-4 w-4 shrink-0" />}
                              {practiceAnswered && practiceSelected === idx && !isCorrect && <X className="ml-auto h-4 w-4 shrink-0" />}
                            </Button>
                          )
                        })}
                      </div>

                      {practiceAnswered && (
                        <motion.div initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} className="space-y-3">
                          <Card className={`${practiceSelected !== -1 && currentPracticeOptions[practiceSelected]?.id === currentPracticeWord.id ? 'border-green-500/50 bg-green-50/30 dark:bg-green-950/20' : 'border-rose-500/50 bg-rose-50/30 dark:bg-rose-950/20'}`}>
                            <CardContent className="p-4">
                              <div className="flex items-start gap-3">
                                {practiceSelected !== -1 && currentPracticeOptions[practiceSelected]?.id === currentPracticeWord.id ? (
                                  <CheckCircle2 className="h-5 w-5 text-green-500 shrink-0 mt-0.5" />
                                ) : (
                                  <X className="h-5 w-5 text-rose-500 shrink-0 mt-0.5" />
                                )}
                                <div>
                                  <p className="text-sm font-medium">{practiceSelected !== -1 && currentPracticeOptions[practiceSelected]?.id === currentPracticeWord.id ? 'Richtig!' : 'Falsch'}</p>
                                  {currentPracticeWord.example_sentence && (
                                    <p className="text-xs text-muted-foreground mt-1 italic">{currentPracticeWord.example_sentence}</p>
                                  )}
                                </div>
                              </div>
                            </CardContent>
                          </Card>
                          <Button className="w-full h-12 text-base" onClick={nextPractice}>
                            {practiceIndex < practiceWords.length - 1 ? (
                              <><ArrowRight className="mr-2 h-5 w-5" /> Nächstes Wort</>
                            ) : (
                              <><Award className="mr-2 h-5 w-5" /> Ergebnisse ansehen</>
                            )}
                          </Button>
                        </motion.div>
                      )}
                    </div>
                  </motion.div>
                </AnimatePresence>
              ) : practiceWords.length > 0 ? (
                <Card>
                  <CardContent className="p-8 text-center space-y-4">
                    <div className="flex justify-center">
                      <div className="h-16 w-16 rounded-full bg-gradient-to-br from-amber-400 to-orange-500 flex items-center justify-center">
                        <Award className="h-8 w-8 text-white" />
                      </div>
                    </div>
                    <h3 className="text-2xl font-bold">Übung abgeschlossen!</h3>
                    <p className="text-muted-foreground">Du hast <span className="font-bold text-foreground">{practiceScore}</span> von <span className="font-bold text-foreground">{practiceWords.length}</span> richtig</p>
                    <div className="flex justify-center">
                      <div className="h-2 w-64 rounded-full bg-muted overflow-hidden">
                        <div className="h-full rounded-full bg-gradient-to-r from-amber-400 to-green-500 transition-all" style={{ width: `${(practiceScore / practiceWords.length) * 100}%` }} />
                      </div>
                    </div>
                    <p className="text-lg font-semibold">
                      {practiceScore === practiceWords.length ? 'Perfekt! Ausgezeichnet!' :
                       practiceScore >= practiceWords.length * 0.8 ? 'Gut gemacht! Fast perfekt!' :
                       practiceScore >= practiceWords.length * 0.6 ? 'Gute Arbeit! Übe weiter!' :
                       'Weiter lernen und nochmal versuchen!'}
                    </p>
                    <div className="flex gap-3 pt-2">
                      <Button variant="outline" className="flex-1" onClick={() => { setPracticeActive(false); setPracticeConfigOpen(true) }}>
                        <RefreshCw className="mr-2 h-4 w-4" /> Neue Übung
                      </Button>
                      <Button className="flex-1" onClick={() => { setPracticeActive(false); setPracticeConfigOpen(true); startPractice() }}>
                        <RotateCcw className="mr-2 h-4 w-4" /> Wiederholen
                      </Button>
                    </div>
                  </CardContent>
                </Card>
              ) : null}
            </div>
          </TabsContent>
        </Tabs>
      </div>
    </AppShell>
  )
}
