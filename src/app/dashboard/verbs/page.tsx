'use client'

import { useState, useEffect, useRef, useMemo, useCallback } from 'react'
import { useQueryClient, useMutation } from '@tanstack/react-query'
import { useSearchParams, useRouter } from 'next/navigation'
import Link from 'next/link'
import { createClient } from '@/lib/supabase/client'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Skeleton } from '@/components/ui/skeleton'
import { Separator } from '@/components/ui/separator'
import { motion, AnimatePresence } from 'framer-motion'
import {
  Search, ChevronLeft, ChevronRight, BookOpen, Filter, X,
  ArrowRight, BookmarkPlus, Sparkles, Bookmark, BookMarked,
  Lightbulb, Languages, Shapes,
} from 'lucide-react'
import { AudioPlayer } from '@/components/audio-player'
import type { GermanVerb } from '@/types'

const LEVELS = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2'] as const
const VERB_TYPES = ['regular', 'irregular', 'mixed', 'separable', 'inseparable', 'reflexive', 'verb_preposition', 'modal', 'auxiliary'] as const
const PAGE_SIZES = [25, 50, 100] as const
const OBJECT_CASES = ['akkusativ', 'dativ', 'genitiv', 'none'] as const
const AUXILIARIES = ['haben', 'sein', 'both'] as const

const levelColors: Record<string, string> = {
  A1: 'bg-emerald-100 text-emerald-700 dark:bg-emerald-900/30 dark:text-emerald-400',
  A2: 'bg-sky-100 text-sky-700 dark:bg-sky-900/30 dark:text-sky-400',
  B1: 'bg-violet-100 text-violet-700 dark:bg-violet-900/30 dark:text-violet-400',
  B2: 'bg-amber-100 text-amber-700 dark:bg-amber-900/30 dark:text-amber-400',
  C1: 'bg-rose-100 text-rose-700 dark:bg-rose-900/30 dark:text-rose-400',
  C2: 'bg-fuchsia-100 text-fuchsia-700 dark:bg-fuchsia-900/30 dark:text-fuchsia-400',
}

const freqColors: Record<string, string> = {
  very_common: 'bg-green-100 text-green-700 dark:bg-green-900/30 dark:text-green-400',
  common: 'bg-blue-100 text-blue-700 dark:bg-blue-900/30 dark:text-blue-400',
  less_common: 'bg-yellow-100 text-yellow-700 dark:bg-yellow-900/30 dark:text-yellow-400',
  rare: 'bg-red-100 text-red-700 dark:bg-red-900/30 dark:text-red-400',
}

function getLevelColor(level: string) { return levelColors[level] ?? '' }
function getFreqColor(freq: string) { return freqColors[freq] ?? '' }

const verbTypeLabels: Record<string, string> = {
  regular: 'Regelmäßig', irregular: 'Unregelmäßig', mixed: 'Gemischt',
  separable: 'Trennbar', inseparable: 'Untrennbar', reflexive: 'Reflexiv',
  verb_preposition: 'Verb + Präposition', modal: 'Modal', auxiliary: 'Hilfsverb',
}

const caseLabels: Record<string, string> = {
  akkusativ: 'Akkusativ', dativ: 'Dativ', genitiv: 'Genitiv', none: 'Kein Objekt',
}

const auxiliaryLabels: Record<string, string> = {
  haben: 'haben', sein: 'sein', both: 'haben/sein',
}

function useBookmarkMutation() {
  const queryClient = useQueryClient()
  return useMutation({
    mutationFn: async ({ verb_id, is_bookmarked }: { verb_id: string; is_bookmarked: boolean }) => {
      const supabase = createClient()
      const { data: { user } } = await supabase.auth.getUser()
      if (!user) throw new Error('Not authenticated')

      const { data: existing } = await supabase
        .from('user_verbs').select('*').eq('user_id', user.id).eq('verb_id', verb_id).maybeSingle()

      if (existing) {
        await supabase.from('user_verbs').update({ is_bookmarked, updated_at: new Date().toISOString(), study_count: existing.study_count + 1, last_studied: new Date().toISOString() }).eq('id', existing.id)
      } else {
        await supabase.from('user_verbs').insert({ user_id: user.id, verb_id, is_bookmarked, study_count: 1, last_studied: new Date().toISOString() })
      }
    },
    onSuccess: () => queryClient.invalidateQueries({ queryKey: ['verbs'] }),
  })
}

function VerbCard({ verb, isBookmarked }: { verb: GermanVerb; isBookmarked: boolean }) {
  const bookmark = useBookmarkMutation()

  return (
    <motion.div layout initial={{ opacity: 0, y: 12 }} animate={{ opacity: 1, y: 0 }} transition={{ duration: 0.2 }}>
      <Link href={`/dashboard/verbs/${verb.slug}`}>
        <Card className="group cursor-pointer transition-all hover:border-primary/50 hover:shadow-sm">
          <CardContent className="p-4">
            <div className="flex items-start justify-between gap-2">
              <div className="min-w-0 flex-1">
                <div className="flex items-center gap-2 flex-wrap">
                  <span className="text-lg font-bold tracking-tight">{verb.infinitive}</span>
                  <div onClick={e => e.stopPropagation()}>
                    <AudioPlayer text={verb.infinitive} />
                  </div>
                </div>
                <p className="text-sm text-muted-foreground mt-0.5">{verb.english_translation}</p>
                <div className="flex flex-wrap items-center gap-1.5 mt-2">
                  <Badge className={`text-[10px] px-1.5 py-0 ${getLevelColor(verb.cefr_level)}`}>{verb.cefr_level}</Badge>
                  <Badge variant="secondary" className="text-[10px] px-1.5 py-0">{verbTypeLabels[verb.verb_type] ?? verb.verb_type}</Badge>
                  <Badge className={`text-[10px] px-1.5 py-0 ${getFreqColor(verb.frequency)}`}>{verb.frequency.replace('_', ' ')}</Badge>
                  {verb.separable_prefix && <Badge variant="outline" className="text-[10px] px-1.5 py-0">ab-</Badge>}
                  {verb.object_case !== 'none' && verb.object_case !== 'both' && (
                    <Badge variant="outline" className="text-[10px] px-1.5 py-0">{caseLabels[verb.object_case] ?? verb.object_case}</Badge>
                  )}
                  {verb.preposition && (
                    <Badge variant="outline" className="text-[10px] px-1.5 py-0">{verb.preposition}</Badge>
                  )}
                  {verb.is_reflexive && <Badge variant="outline" className="text-[10px] px-1.5 py-0">sich</Badge>}
                </div>
              </div>
              <Button variant="ghost" size="icon" className={`h-7 w-7 shrink-0 ${isBookmarked ? 'text-amber-500' : 'opacity-0 group-hover:opacity-100'}`}
                onClick={e => { e.preventDefault(); bookmark.mutate({ verb_id: verb.id, is_bookmarked: !isBookmarked }) }}>
                <Bookmark className={`h-4 w-4 ${isBookmarked ? 'fill-amber-500' : ''}`} />
              </Button>
            </div>
          </CardContent>
        </Card>
      </Link>
    </motion.div>
  )
}

export default function VerbsPage() {
  const searchParams = useSearchParams()
  const router = useRouter()
  const [search, setSearch] = useState('')
  const [selectedLevel, setSelectedLevel] = useState('')
  const [selectedType, setSelectedType] = useState('')
  const [selectedCase, setSelectedCase] = useState('')
  const [selectedAux, setSelectedAux] = useState('')
  const [selectedFreq, setSelectedFreq] = useState('')
  const [pageSize, setPageSize] = useState(50)

  const page = parseInt(searchParams.get('page') || '1')
  const setPage = (p: number) => {
    const params = new URLSearchParams(searchParams.toString())
    if (p <= 1) params.delete('page')
    else params.set('page', String(p))
    router.replace(`/dashboard/verbs?${params}`, { scroll: false })
  }

  const [data, setData] = useState<{ data: GermanVerb[]; totalItems: number; totalPages: number; page: number } | null>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    setLoading(true)
    const params = new URLSearchParams()
    if (selectedLevel) params.set('cefr_level', selectedLevel)
    if (selectedType) params.set('verb_type', selectedType)
    if (selectedCase) params.set('object_case', selectedCase)
    if (selectedAux) params.set('auxiliary', selectedAux)
    if (selectedFreq) params.set('frequency', selectedFreq)
    if (search) params.set('search', search)
    params.set('page', String(page))
    params.set('pageSize', String(pageSize))

    fetch(`/api/verbs?${params}`)
      .then(r => r.json())
      .then(d => setData(d))
      .finally(() => setLoading(false))
  }, [selectedLevel, selectedType, selectedCase, selectedAux, selectedFreq, search, page, pageSize])

  // Reset page on filter change
  const prevFilters = useRef({ selectedLevel: '', selectedType: '', selectedCase: '', selectedAux: '', selectedFreq: '', search: '', pageSize: 50 })
  useEffect(() => {
    const prev = prevFilters.current
    if (selectedLevel !== prev.selectedLevel || selectedType !== prev.selectedType || selectedCase !== prev.selectedCase || selectedAux !== prev.selectedAux || selectedFreq !== prev.selectedFreq || search !== prev.search || pageSize !== prev.pageSize) {
      prevFilters.current = { selectedLevel, selectedType, selectedCase, selectedAux, selectedFreq, search, pageSize }
      if (page !== 1) {
        const params = new URLSearchParams(searchParams.toString())
        params.delete('page')
        router.replace(`/dashboard/verbs?${params}`, { scroll: false })
      }
    }
  }, [selectedLevel, selectedType, selectedCase, selectedAux, selectedFreq, search, pageSize, page])

  const verbs = data?.data ?? []
  const totalItems = data?.totalItems ?? 0
  const totalPages = data?.totalPages ?? 0

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <div className="flex h-11 w-11 items-center justify-center rounded-xl bg-gradient-to-br from-violet-500 to-violet-600 text-white shadow-sm">
            <Sparkles className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Verben</h1>
            <p className="text-sm text-muted-foreground">Deutsche Verben mit Konjugation, Beispielen und Übungen</p>
          </div>
        </div>

        {/* Stats */}
        <div className="grid grid-cols-2 gap-3 sm:grid-cols-4">
          {[
            { label: 'Verben insgesamt', value: totalItems || (loading ? '...' : '0'), icon: BookOpen },
            { label: 'Unregelmäßige', value: !loading ? verbs.filter(v => v.verb_type === 'irregular').length : '...', icon: Shapes },
            { label: 'Trennbar', value: !loading ? verbs.filter(v => v.verb_type === 'separable').length : '...', icon: ArrowRight },
            { label: 'Reflexiv', value: !loading ? verbs.filter(v => v.is_reflexive).length : '...', icon: Languages },
          ].map(stat => (
            <Card key={stat.label}>
              <CardContent className="p-4">
                <div className="flex items-center justify-between">
                  <div>
                    <p className="text-2xl font-bold">{stat.value}</p>
                    <p className="text-xs text-muted-foreground">{stat.label}</p>
                  </div>
                  <stat.icon className="h-5 w-5 text-muted-foreground/40" />
                </div>
              </CardContent>
            </Card>
          ))}
        </div>

        {/* Search + Filters */}
        <div className="flex flex-col gap-3 sm:flex-row sm:items-start">
          <div className="relative flex-1">
            <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
            <Input placeholder="Suche auf Deutsch, Englisch, Französisch oder Arabisch..." className="pl-9 h-10" value={search} onChange={e => setSearch(e.target.value)} />
            {search && (
              <Button variant="ghost" size="icon" className="absolute right-1 top-1/2 h-7 w-7 -translate-y-1/2" onClick={() => setSearch('')}>
                <X className="h-4 w-4" />
              </Button>
            )}
          </div>
          <div className="flex flex-wrap gap-2">
            <Select value={selectedLevel || 'all'} onValueChange={(v: string | null) => setSelectedLevel(v === 'all' || !v ? '' : v)}>
              <SelectTrigger className="w-24 h-10"><SelectValue placeholder="Level" /></SelectTrigger>
              <SelectContent>
                <SelectItem value="all">Alle Level</SelectItem>
                {LEVELS.map(l => <SelectItem key={l} value={l}>{l}</SelectItem>)}
              </SelectContent>
            </Select>
            <Select value={selectedType || 'all'} onValueChange={(v: string | null) => setSelectedType(v === 'all' || !v ? '' : v)}>
              <SelectTrigger className="w-40 h-10"><SelectValue placeholder="Typ" /></SelectTrigger>
              <SelectContent>
                <SelectItem value="all">Alle Typen</SelectItem>
                {VERB_TYPES.map(t => <SelectItem key={t} value={t}>{verbTypeLabels[t] ?? t}</SelectItem>)}
              </SelectContent>
            </Select>
            <Select value={selectedCase || 'all'} onValueChange={(v: string | null) => setSelectedCase(v === 'all' || !v ? '' : v)}>
              <SelectTrigger className="w-32 h-10"><SelectValue placeholder="Kasus" /></SelectTrigger>
              <SelectContent>
                <SelectItem value="all">Alle Kasus</SelectItem>
                {OBJECT_CASES.map(c => <SelectItem key={c} value={c}>{caseLabels[c] ?? c}</SelectItem>)}
              </SelectContent>
            </Select>
            <Select value={selectedAux || 'all'} onValueChange={(v: string | null) => setSelectedAux(v === 'all' || !v ? '' : v)}>
              <SelectTrigger className="w-28 h-10"><SelectValue placeholder="Hilfsverb" /></SelectTrigger>
              <SelectContent>
                <SelectItem value="all">Alle</SelectItem>
                {AUXILIARIES.map(a => <SelectItem key={a} value={a}>{auxiliaryLabels[a] ?? a}</SelectItem>)}
              </SelectContent>
            </Select>
            <Select value={selectedFreq || 'all'} onValueChange={(v: string | null) => setSelectedFreq(v === 'all' || !v ? '' : v)}>
              <SelectTrigger className="w-32 h-10"><SelectValue placeholder="Frequenz" /></SelectTrigger>
              <SelectContent>
                <SelectItem value="all">Alle</SelectItem>
                {['very_common', 'common', 'less_common', 'rare'].map(f => <SelectItem key={f} value={f}>{f.replace('_', ' ')}</SelectItem>)}
              </SelectContent>
            </Select>
            {(selectedLevel || selectedType || selectedCase || selectedAux || selectedFreq) && (
              <Button variant="ghost" size="icon" className="h-10 w-10" onClick={() => { setSelectedLevel(''); setSelectedType(''); setSelectedCase(''); setSelectedAux(''); setSelectedFreq('') }}>
                <X className="h-4 w-4" />
              </Button>
            )}
          </div>
        </div>

        {/* Results */}
        {loading ? (
          <div className="grid gap-3 md:grid-cols-2">
            {[1, 2, 3, 4, 5, 6].map(i => <Skeleton key={i} className="h-28 rounded-xl" />)}
          </div>
        ) : verbs.length === 0 ? (
          <Card><CardContent className="p-12 text-center">
            <BookOpen className="h-12 w-12 text-muted-foreground/40 mx-auto mb-4" />
            <p className="text-muted-foreground">{search ? 'Keine Verben gefunden.' : 'Noch keine Verben im System. Die Datenbank wird befüllt.'}</p>
          </CardContent></Card>
        ) : (
          <>
            <div className="grid gap-3 md:grid-cols-2">
              {verbs.map(verb => (
                <VerbCard key={verb.id} verb={verb} isBookmarked={false} />
              ))}
            </div>

            {/* Pagination */}
            {totalPages > 1 && (
              <div className="mt-8 space-y-3">
                <div className="flex items-center justify-center gap-1 flex-wrap">
                  <Button variant="outline" size="sm" disabled={page <= 1} onClick={() => setPage(page - 1)}>
                    <ChevronLeft className="h-4 w-4 mr-1" /> Vorherige
                  </Button>
                  {(() => {
                    const p = page, tp = totalPages
                    const pages: (number | string)[] = []
                    const start = Math.max(1, p - 2), end = Math.min(tp, p + 2)
                    if (start > 1) { pages.push(1); if (start > 2) pages.push('...') }
                    for (let i = start; i <= end; i++) pages.push(i)
                    if (end < tp) { if (end < tp - 1) pages.push('...'); pages.push(tp) }
                    return pages.map((pg, idx) =>
                      typeof pg === 'string'
                        ? <span key={`e${idx}`} className="px-2 text-muted-foreground text-sm">...</span>
                        : <Button key={pg} variant={pg === p ? 'default' : 'outline'} size="sm" className="min-w-[36px]" onClick={() => setPage(pg)}>{pg}</Button>
                    )
                  })()}
                  <Button variant="outline" size="sm" disabled={page >= totalPages} onClick={() => setPage(page + 1)}>
                    Nächste <ChevronRight className="h-4 w-4 ml-1" />
                  </Button>
                </div>
                <div className="flex items-center justify-center gap-4 text-sm text-muted-foreground">
                  <span>Zeige {Math.min((page - 1) * pageSize + 1, totalItems)}–{Math.min(page * pageSize, totalItems)} von {totalItems.toLocaleString()} Verben</span>
                  <span>Seite {page} von {totalPages}</span>
                  <div className="flex items-center gap-1">
                    <span className="text-xs">Pro Seite:</span>
                    {PAGE_SIZES.map(ps => (
                      <button key={ps} onClick={() => { setPageSize(ps); setPage(1) }}
                        className={`px-2 py-0.5 text-xs rounded ${ps === pageSize ? 'bg-primary text-primary-foreground' : 'bg-muted hover:bg-muted/80'}`}>
                        {ps}
                      </button>
                    ))}
                  </div>
                </div>
              </div>
            )}
          </>
        )}
      </div>
    </AppShell>
  )
}
