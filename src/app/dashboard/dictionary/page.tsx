'use client'

import { useState, useEffect, useRef, useCallback } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Badge } from '@/components/ui/badge'
import { Skeleton } from '@/components/ui/skeleton'
import { motion } from 'framer-motion'
import {
  Search, BookMarked, ArrowLeft, ChevronLeft, ChevronRight,
  BookOpen, Hash, Quote, Sparkles, Layers,
  Languages, AlertCircle, Star, Tags,
} from 'lucide-react'
import { AudioPlayer } from '@/components/audio-player'
import type { DictionaryEntry, DictionarySearchResult } from '@/types'

const WORD_TYPES = [
  'noun', 'verb', 'adjective', 'adverb', 'preposition', 'conjunction',
  'expression', 'pronoun', 'article', 'numeral', 'interjection', 'prefix', 'suffix', 'phrase'
] as const

const LEVELS = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2'] as const
const ARTICLES = ['der', 'die', 'das'] as const

const articleColors: Record<string, string> = {
  der: 'text-blue-500', die: 'text-rose-500', das: 'text-emerald-500',
}

const articleBgColors: Record<string, string> = {
  der: 'bg-blue-100 text-blue-700 dark:bg-blue-900/30 dark:text-blue-400',
  die: 'bg-rose-100 text-rose-700 dark:bg-rose-900/30 dark:text-rose-400',
  das: 'bg-emerald-100 text-emerald-700 dark:bg-emerald-900/30 dark:text-emerald-400',
}

const cefrColors: Record<string, string> = {
  A1: 'bg-emerald-100 text-emerald-700 dark:bg-emerald-900/30 dark:text-emerald-400',
  A2: 'bg-sky-100 text-sky-700 dark:bg-sky-900/30 dark:text-sky-400',
  B1: 'bg-violet-100 text-violet-700 dark:bg-violet-900/30 dark:text-violet-400',
  B2: 'bg-amber-100 text-amber-700 dark:bg-amber-900/30 dark:text-amber-400',
  C1: 'bg-rose-100 text-rose-700 dark:bg-rose-900/30 dark:text-rose-400',
  C2: 'bg-fuchsia-100 text-fuchsia-700 dark:bg-fuchsia-900/30 dark:text-fuchsia-400',
}

const typeLabels: Record<string, string> = {
  noun: 'n.', verb: 'v.', adjective: 'adj.', adverb: 'adv.',
  preposition: 'prep.', conjunction: 'conj.', expression: 'expr.',
  pronoun: 'pron.', article: 'art.', numeral: 'num.',
  interjection: 'interj.', prefix: 'pref.', suffix: 'suff.', phrase: 'phr.',
}

function SectionHeading({ icon: Icon, title }: { icon: React.ElementType; title: string }) {
  return (
    <div className="flex items-center gap-2 mb-3">
      <div className="flex h-7 w-7 items-center justify-center rounded-lg bg-primary/10">
        <Icon className="h-3.5 w-3.5 text-primary" />
      </div>
      <h3 className="text-sm font-semibold">{title}</h3>
    </div>
  )
}

function DetailView({
  entry,
  onBack,
}: {
  entry: DictionaryEntry
  onBack: () => void
}) {
  const isNoun = entry.word_type === 'noun'
  const isVerb = entry.word_type === 'verb'

  return (
    <motion.div
      initial={{ opacity: 0, y: 12 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.25 }}
      className="space-y-6"
    >
      <Button variant="ghost" size="sm" className="gap-2 -ml-2 text-muted-foreground" onClick={onBack}>
        <ArrowLeft className="h-4 w-4" />
        Zurück zur Suche
      </Button>

      <div className="rounded-xl border bg-card p-6 shadow-sm">
        <div className="flex items-start justify-between gap-4">
          <div className="min-w-0 flex-1">
            <div className="flex items-center gap-3 flex-wrap mb-2">
              {entry.article && (
                <span className={`text-2xl font-bold ${articleColors[entry.article]}`}>{entry.article}</span>
              )}
              <h1 className="text-3xl font-bold tracking-tight">{entry.german_word}</h1>
              <AudioPlayer text={entry.german_word} existingUrl={entry.pronunciation_url} />
              {entry.ipa && (
                <span className="text-sm text-muted-foreground font-mono">/{entry.ipa}/</span>
              )}
            </div>
            <div className="flex items-center gap-2 flex-wrap">
              <Badge variant="secondary" className="text-xs">{typeLabels[entry.word_type] ?? entry.word_type}</Badge>
              <Badge className={`text-xs ${cefrColors[entry.cefr_level] ?? ''}`}>{entry.cefr_level}</Badge>
              {entry.frequency_rank && (
                <Badge variant="outline" className="text-xs">
                  <Star className="h-3 w-3 mr-1" />
                  Rank #{entry.frequency_rank}
                </Badge>
              )}
            </div>
          </div>
        </div>
      </div>

      <div className="rounded-xl border bg-card p-6 shadow-sm">
        <SectionHeading icon={Languages} title="Übersetzungen" />
        <div className="grid gap-3 sm:grid-cols-3">
          <div className="rounded-lg bg-muted/50 p-3">
              <p className="text-xs text-muted-foreground mb-1">Englisch</p>
            <p className="text-base font-medium">{entry.english_translation}</p>
          </div>
          {entry.french_translation && (
            <div className="rounded-lg bg-muted/50 p-3">
              <p className="text-xs text-muted-foreground mb-1">Französisch</p>
              <p className="text-base font-medium">{entry.french_translation}</p>
            </div>
          )}
          {entry.arabic_translation && (
            <div className="rounded-lg bg-muted/50 p-3">
              <p className="text-xs text-muted-foreground mb-1">Arabisch</p>
              <p className="text-base font-medium" dir="rtl">{entry.arabic_translation}</p>
            </div>
          )}
        </div>
      </div>

      <div className="rounded-xl border bg-card p-6 shadow-sm">
        <SectionHeading icon={BookOpen} title="Grammatik" />
        <div className="grid gap-4 sm:grid-cols-2">
          <div className="space-y-2">
            <p className="text-xs text-muted-foreground uppercase tracking-wider">Wortart</p>
            <p className="text-sm font-medium capitalize">{entry.word_type.replace('_', ' ')}</p>
          </div>
          {isNoun && (
            <>
              <div className="space-y-2">
                <p className="text-xs text-muted-foreground uppercase tracking-wider">Artikel</p>
                <span className={`text-sm font-bold ${entry.article ? articleColors[entry.article] : ''}`}>
                  {entry.article ?? '—'}
                </span>
              </div>
              <div className="space-y-2">
                <p className="text-xs text-muted-foreground uppercase tracking-wider">Singular</p>
                <p className="text-sm font-medium">{entry.singular ?? entry.german_word}</p>
              </div>
              <div className="space-y-2">
                <p className="text-xs text-muted-foreground uppercase tracking-wider">Plural</p>
                <p className="text-sm font-medium">{entry.plural ?? '—'}</p>
              </div>
            </>
          )}
          {isVerb && (
            <>
              <div className="space-y-2">
                <p className="text-xs text-muted-foreground uppercase tracking-wider">Infinitiv</p>
                <p className="text-sm font-medium">{entry.infinitive ?? entry.german_word}</p>
              </div>
            </>
          )}
        </div>
        {isVerb && entry.verb_conjugation && Object.keys(entry.verb_conjugation).length > 0 && (
          <div className="mt-4">
            <p className="text-xs text-muted-foreground uppercase tracking-wider mb-2">Konjugation</p>
            <div className="grid grid-cols-2 sm:grid-cols-3 gap-2">
              {Object.entries(entry.verb_conjugation).map(([tense, form]) => (
                <div key={tense} className="rounded-lg bg-muted/50 p-2">
                  <p className="text-[10px] text-muted-foreground capitalize">{tense.replace(/_/g, ' ')}</p>
                  <p className="text-sm font-medium">{form as string}</p>
                </div>
              ))}
            </div>
          </div>
        )}
      </div>

      {entry.example_sentences && entry.example_sentences.length > 0 && (
        <div className="rounded-xl border bg-card p-6 shadow-sm">
          <SectionHeading icon={Quote} title="Beispielsätze" />
          <div className="space-y-3">
            {entry.example_sentences.map((sentence, i) => (
              <div key={i} className="flex items-start gap-3 rounded-lg bg-muted/50 p-3">
                <Quote className="h-4 w-4 text-muted-foreground shrink-0 mt-0.5" />
                <div className="min-w-0 flex-1">
                  <p className="text-sm italic">{sentence}</p>
                </div>
                <AudioPlayer text={sentence} />
              </div>
            ))}
          </div>
        </div>
      )}

      {(entry.synonyms.length > 0 || entry.antonyms.length > 0) && (
        <div className="rounded-xl border bg-card p-6 shadow-sm">
          <SectionHeading icon={Sparkles} title="Synonyme & Antonyme" />
          <div className="flex flex-wrap gap-6">
            {entry.synonyms.length > 0 && (
              <div>
                <p className="text-xs text-muted-foreground mb-2">Synonyme</p>
                <div className="flex flex-wrap gap-1.5">
                  {entry.synonyms.map((s, i) => (
                    <Badge key={i} variant="secondary" className="text-xs">{s}</Badge>
                  ))}
                </div>
              </div>
            )}
            {entry.antonyms.length > 0 && (
              <div>
                <p className="text-xs text-muted-foreground mb-2">Antonyme</p>
                <div className="flex flex-wrap gap-1.5">
                  {entry.antonyms.map((a, i) => (
                    <Badge key={i} variant="outline" className="text-xs">{a}</Badge>
                  ))}
                </div>
              </div>
            )}
          </div>
        </div>
      )}

      {entry.word_family.length > 0 && (
        <div className="rounded-xl border bg-card p-6 shadow-sm">
          <SectionHeading icon={Layers} title="Wortfamilie" />
          <div className="flex flex-wrap gap-1.5">
            {entry.word_family.map((w, i) => (
              <Badge key={i} className="text-xs">{w}</Badge>
            ))}
          </div>
        </div>
      )}

      {entry.collocations.length > 0 && (
        <div className="rounded-xl border bg-card p-6 shadow-sm">
          <SectionHeading icon={Hash} title="Kollokationen" />
          <div className="flex flex-wrap gap-1.5">
            {entry.collocations.map((c, i) => (
              <Badge key={i} variant="outline" className="text-xs">{c}</Badge>
            ))}
          </div>
        </div>
      )}

      {entry.grammar_notes && (
        <div className="rounded-xl border bg-card p-6 shadow-sm">
          <SectionHeading icon={AlertCircle} title="Grammatikhinweise" />
          <p className="text-sm text-muted-foreground">{entry.grammar_notes}</p>
        </div>
      )}

      {entry.common_mistakes.length > 0 && (
        <div className="rounded-xl border bg-card p-6 shadow-sm">
          <SectionHeading icon={AlertCircle} title="Häufige Fehler" />
          <ul className="space-y-1.5">
            {entry.common_mistakes.map((m, i) => (
              <li key={i} className="flex items-start gap-2 text-sm">
                <span className="text-rose-500 mt-1 shrink-0">•</span>
                <span className="text-muted-foreground">{m}</span>
              </li>
            ))}
          </ul>
        </div>
      )}

      {(entry.tags.length > 0 || entry.topic) && (
        <div className="rounded-xl border bg-card p-6 shadow-sm">
          <SectionHeading icon={Tags} title="Tags & Thema" />
          <div className="flex flex-wrap items-center gap-2">
            {entry.topic && (
              <Badge variant="secondary" className="text-xs">{entry.topic}</Badge>
            )}
            {entry.tags.map((t, i) => (
              <Badge key={i} variant="outline" className="text-xs">{t}</Badge>
            ))}
          </div>
        </div>
      )}
    </motion.div>
  )
}

function WordResultCard({
  entry,
  onClick,
}: {
  entry: DictionaryEntry
  onClick: () => void
}) {
  return (
    <motion.div
      layout
      initial={{ opacity: 0, y: 8 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.2 }}
    >
      <Card
        className="group cursor-pointer transition-all hover:border-primary/50 hover:shadow-sm"
        onClick={onClick}
      >
        <CardContent className="p-4">
          <div className="flex items-start justify-between gap-3">
            <div className="min-w-0 flex-1">
              <div className="flex items-center gap-2 flex-wrap">
                {entry.article && (
                  <span className={`text-base font-bold ${articleColors[entry.article]}`}>{entry.article}</span>
                )}
                <span className="text-lg font-bold tracking-tight">{entry.german_word}</span>
                <AudioPlayer text={entry.german_word} existingUrl={entry.pronunciation_url} />
              </div>
              <p className="text-sm font-medium text-muted-foreground mt-1">{entry.english_translation}</p>
              {entry.ipa && (
                <p className="text-xs text-muted-foreground/50 font-mono mt-0.5">/{entry.ipa}/</p>
              )}
            </div>
          </div>
          <div className="mt-2 flex items-center gap-1.5 flex-wrap">
            <Badge className={`text-[10px] px-1.5 py-0 ${cefrColors[entry.cefr_level] ?? ''}`}>{entry.cefr_level}</Badge>
            <Badge variant="secondary" className="text-[10px] px-1.5 py-0">{typeLabels[entry.word_type] ?? entry.word_type}</Badge>
            {entry.topic && (
              <Badge variant="outline" className="text-[10px] px-1.5 py-0">{entry.topic}</Badge>
            )}
            {entry.article && (
              <Badge variant="outline" className={`text-[10px] px-1.5 py-0 ${articleBgColors[entry.article] ?? ''}`}>{entry.article}</Badge>
            )}
          </div>
        </CardContent>
      </Card>
    </motion.div>
  )
}

export default function DictionaryPage() {
  const [search, setSearch] = useState('')
  const [debouncedSearch, setDebouncedSearch] = useState('')
  const [selectedLevel, setSelectedLevel] = useState('')
  const [selectedWordType, setSelectedWordType] = useState('')
  const [selectedTopic, setSelectedTopic] = useState('')
  const [selectedArticle, setSelectedArticle] = useState('')
  const [page, setPage] = useState(1)
  const [results, setResults] = useState<DictionarySearchResult | null>(null)
  const [selectedEntry, setSelectedEntry] = useState<DictionaryEntry | null>(null)
  const [detailLoading, setDetailLoading] = useState(false)
  const searchInputRef = useRef<HTMLInputElement>(null)
  const fetchIdRef = useRef(0)

  useEffect(() => {
    const timer = setTimeout(() => setDebouncedSearch(search), 300)
    return () => clearTimeout(timer)
  }, [search])

  useEffect(() => {
    if (selectedEntry) return
    const fetchId = ++fetchIdRef.current
    ;(async () => {
      try {
        const params = new URLSearchParams()
        if (debouncedSearch) params.set('search', debouncedSearch)
        if (selectedLevel) params.set('level', selectedLevel)
        if (selectedWordType) params.set('word_type', selectedWordType)
        if (selectedTopic) params.set('topic', selectedTopic)
        if (selectedArticle) params.set('article', selectedArticle)
        params.set('page', String(page))
        params.set('limit', '20')

        const res = await fetch(`/api/dictionary?${params.toString()}`)
        if (!res.ok) throw new Error('Failed to fetch')
        const data = await res.json()
        if (fetchIdRef.current === fetchId) setResults(data)
      } catch {
        if (fetchIdRef.current === fetchId) setResults(null)
      }
    })()
  }, [debouncedSearch, selectedLevel, selectedWordType, selectedTopic, selectedArticle, page, selectedEntry])

  const handleLevelChange = useCallback((level: string) => {
    setSelectedLevel(level)
    setPage(1)
  }, [])

  const handleWordTypeChange = useCallback((wt: string) => {
    setSelectedWordType(wt)
    setPage(1)
  }, [])

  const handleArticleChange = useCallback((a: string) => {
    setSelectedArticle(a)
    setPage(1)
  }, [])

  const handleTopicChange = useCallback((topic: string) => {
    setSelectedTopic(topic)
    setPage(1)
  }, [])

  const handleSelectEntry = useCallback(async (id: string) => {
    setDetailLoading(true)
    try {
      const res = await fetch(`/api/dictionary?id=${id}`)
      if (!res.ok) throw new Error('Failed to fetch')
      const data = await res.json()
      setSelectedEntry(data)
    } catch {
      setSelectedEntry(null)
    } finally {
      setDetailLoading(false)
    }
  }, [])

  const handleBack = useCallback(() => {
    setSelectedEntry(null)
  }, [])

  const clearFilters = useCallback(() => {
    setSearch('')
    setDebouncedSearch('')
    setSelectedLevel('')
    setSelectedWordType('')
    setSelectedTopic('')
    setSelectedArticle('')
    setPage(1)
  }, [])

  const totalPages = results?.totalPages ?? 0

  const hasActiveFilters = debouncedSearch || selectedLevel || selectedWordType || selectedTopic || selectedArticle

  if (selectedEntry) {
    return (
      <AppShell>
        <div className="mx-auto max-w-3xl">
          <DetailView entry={selectedEntry} onBack={handleBack} />
        </div>
      </AppShell>
    )
  }

  if (detailLoading) {
    return (
      <AppShell>
        <div className="mx-auto max-w-3xl space-y-6">
          <Skeleton className="h-10 w-32" />
          <Skeleton className="h-40 rounded-xl" />
          <Skeleton className="h-32 rounded-xl" />
          <Skeleton className="h-48 rounded-xl" />
        </div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <div className="flex h-11 w-11 items-center justify-center rounded-xl bg-gradient-to-br from-sky-500 to-indigo-600 text-white shadow-sm">
            <BookMarked className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Wörterbuch</h1>
            <p className="text-sm text-muted-foreground">Umfassendes deutsches Wörterbuch mit Grammatik, Beispielen und mehr</p>
          </div>
        </div>

        <div className="flex flex-col gap-3 sm:flex-row sm:items-center">
          <div className="relative flex-1">
            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
            <Input
              ref={searchInputRef}
              placeholder="Suche auf Deutsch, Englisch, Französisch oder Arabisch..."
              className="pl-9 h-10"
              value={search}
              onChange={e => setSearch(e.target.value)}
            />
          </div>
        </div>

        <div className="flex flex-wrap gap-2">
          <div className="flex rounded-lg border p-0.5 bg-muted/40">
            {[{ label: 'Alle', value: '' }, ...LEVELS.map(l => ({ label: l, value: l }))].map(opt => (
              <button
                key={opt.value}
                onClick={() => handleLevelChange(opt.value)}
                className={`px-2.5 py-1 text-xs font-medium rounded-md transition-all ${
                  selectedLevel === opt.value
                    ? 'bg-background text-foreground shadow-sm'
                    : 'text-muted-foreground hover:text-foreground'
                }`}
              >
                {opt.label}
              </button>
            ))}
          </div>

          <select
            value={selectedWordType}
            onChange={e => handleWordTypeChange(e.target.value)}
            className="h-8 rounded-lg border bg-background px-2.5 py-1 text-xs font-medium text-muted-foreground"
          >
            <option value="">Alle Typen</option>
            {WORD_TYPES.map(wt => (
              <option key={wt} value={wt}>{typeLabels[wt] ?? wt}</option>
            ))}
          </select>

          <select
            value={selectedArticle}
            onChange={e => handleArticleChange(e.target.value)}
            className="h-8 rounded-lg border bg-background px-2.5 py-1 text-xs font-medium text-muted-foreground"
          >
            <option value="">Alle Artikel</option>
            {ARTICLES.map(a => (
              <option key={a} value={a}>{a}</option>
            ))}
          </select>

          <div className="relative">
            <Input
              placeholder="Nach Thema filtern..."
              className="h-8 w-36 text-xs px-2.5"
              value={selectedTopic}
              onChange={e => handleTopicChange(e.target.value)}
            />
          </div>
        </div>

        <div className="flex items-center justify-between">
          <p className="text-sm text-muted-foreground">
            {results ? `${results.total} ${results.total === 1 ? 'Ergebnis' : 'Ergebnisse'}` : ''}
          </p>
          {hasActiveFilters && (
            <Button
              variant="ghost"
              size="sm"
              className="h-7 text-xs text-muted-foreground"
              onClick={clearFilters}
            >
              Filter zurücksetzen
            </Button>
          )}
        </div>

        {results && results.entries.length > 0 ? (
          <>
            <div className="space-y-2">
              {results.entries.map(entry => (
                <WordResultCard
                  key={entry.id}
                  entry={entry}
                  onClick={() => handleSelectEntry(entry.id)}
                />
              ))}
            </div>

            {totalPages > 1 && (
              <div className="flex items-center justify-center gap-2 pt-2">
                <Button
                  variant="outline"
                  size="icon"
                  className="h-8 w-8"
                  disabled={page <= 1}
                  onClick={() => setPage(p => Math.max(1, p - 1))}
                >
                  <ChevronLeft className="h-4 w-4" />
                </Button>
                {Array.from({ length: Math.min(totalPages, 7) }, (_, i) => {
                  let pageNum: number
                  if (totalPages <= 7) {
                    pageNum = i + 1
                  } else if (page <= 4) {
                    pageNum = i + 1
                  } else if (page >= totalPages - 3) {
                    pageNum = totalPages - 6 + i
                  } else {
                    pageNum = page - 3 + i
                  }
                  return (
                    <Button
                      key={pageNum}
                      variant={page === pageNum ? 'default' : 'outline'}
                      size="sm"
                      className="h-8 w-8 p-0 text-xs"
                      onClick={() => setPage(pageNum)}
                    >
                      {pageNum}
                    </Button>
                  )
                })}
                <Button
                  variant="outline"
                  size="icon"
                  className="h-8 w-8"
                  disabled={page >= totalPages}
                  onClick={() => setPage(p => Math.min(totalPages, p + 1))}
                >
                  <ChevronRight className="h-4 w-4" />
                </Button>
              </div>
            )}
          </>
        ) : (
          <Card>
            <CardContent className="p-12 text-center">
              <div className="flex justify-center mb-4">
                <div className="flex h-14 w-14 items-center justify-center rounded-full bg-muted">
                  <BookOpen className="h-7 w-7 text-muted-foreground/60" />
                </div>
              </div>
              <p className="text-lg font-medium mb-1">
                {hasActiveFilters ? 'Keine Einträge gefunden' : 'Willkommen im Wörterbuch'}
              </p>
              <p className="text-sm text-muted-foreground max-w-sm mx-auto">
                {hasActiveFilters
                  ? 'Versuche, deine Suche oder Filter anzupassen.'
                  : 'Gib oben im Suchfeld ein, um deutsche Wörter nachzuschlagen.'}
              </p>
            </CardContent>
          </Card>
        )}
      </div>
    </AppShell>
  )
}
