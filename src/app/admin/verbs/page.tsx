'use client'

import { useEffect, useState, useCallback } from 'react'
import Link from 'next/link'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Search, ChevronRight, ChevronLeft, Edit3, Eye, History, Sparkles, RefreshCw, Loader2, SlidersHorizontal, ArrowUpDown } from 'lucide-react'
import { CEFR_LEVELS, VERB_TYPES } from '@/verbs/constants'

interface VerbRow {
  id: string
  infinitive: string
  english_translation: string
  arabic_translation: string | null
  cefr_level: string
  verb_type: string
  is_reflexive: boolean
  separable_prefix: string | null
  auxiliary: string
  partizip_2: string
  slug: string
  verb_quality_summary?: { quality_score: number }[]
}

const typeBadgeColors: Record<string, string> = {
  regular: 'bg-slate-100 text-slate-800 dark:bg-slate-800 dark:text-slate-200',
  irregular: 'bg-rose-100 text-rose-800 dark:bg-rose-900/30 dark:text-rose-300',
  strong: 'bg-orange-100 text-orange-800 dark:bg-orange-900/30 dark:text-orange-300',
  weak: 'bg-gray-100 text-gray-800 dark:bg-gray-800 dark:text-gray-200',
  mixed: 'bg-amber-100 text-amber-800 dark:bg-amber-900/30 dark:text-amber-300',
  modal: 'bg-purple-100 text-purple-800 dark:bg-purple-900/30 dark:text-purple-300',
  auxiliary: 'bg-indigo-100 text-indigo-800 dark:bg-indigo-900/30 dark:text-indigo-300',
  reflexive: 'bg-teal-100 text-teal-800 dark:bg-teal-900/30 dark:text-teal-300',
  separable: 'bg-cyan-100 text-cyan-800 dark:bg-cyan-900/30 dark:text-cyan-300',
  inseparable: 'bg-blue-100 text-blue-800 dark:bg-blue-900/30 dark:text-blue-300',
}

function getTypeBadge(type: string) {
  return typeBadgeColors[type] || 'bg-accent text-foreground'
}

export default function AdminVerbsPage() {
  const [verbs, setVerbs] = useState<VerbRow[]>([])
  const [totalItems, setTotalItems] = useState(0)
  const [page, setPage] = useState(1)
  const [pageSize] = useState(25)
  const [search, setSearch] = useState('')
  const [cefrFilter, setCefrFilter] = useState('')
  const [typeFilter, setTypeFilter] = useState('')
  const [sortBy, setSortBy] = useState('infinitive')
  const [sortOrder, setSortOrder] = useState<'asc' | 'desc'>('asc')
  const [loading, setLoading] = useState(true)

  const fetchVerbs = useCallback(async () => {
    setLoading(true)
    try {
      const params = new URLSearchParams({
        page: String(page), pageSize: String(pageSize),
        sort_by: sortBy, sort_order: sortOrder,
      })
      if (search) params.set('search', search)
      if (cefrFilter) params.set('cefr_level', cefrFilter)
      if (typeFilter) params.set('verb_type', typeFilter)
      const res = await fetch(`/api/admin/verbs?${params}`)
      if (res.ok) {
        const data = await res.json()
        setVerbs(data.data)
        setTotalItems(data.totalItems)
      }
    } finally { setLoading(false) }
  }, [page, pageSize, search, cefrFilter, typeFilter, sortBy, sortOrder])

  useEffect(() => { fetchVerbs() }, [fetchVerbs])

  function toggleSort(field: string) {
    if (sortBy === field) setSortOrder(o => o === 'asc' ? 'desc' : 'asc')
    else { setSortBy(field); setSortOrder('asc') }
  }

  function SortIcon({ field }: { field: string }) {
    if (sortBy !== field) return <ArrowUpDown className="h-3 w-3 ml-1 opacity-30" />
    return <ArrowUpDown className={`h-3 w-3 ml-1 ${sortOrder === 'asc' ? 'rotate-0' : 'rotate-180'}`} />
  }

  function QualityBadge({ score }: { score?: number }) {
    if (score === undefined) return <span className="text-xs text-muted-foreground">—</span>
    if (score >= 80) return <Badge className="bg-green-100 text-green-800 border-green-200 text-xs">{score}</Badge>
    if (score >= 50) return <Badge className="bg-yellow-100 text-yellow-800 border-yellow-200 text-xs">{score}</Badge>
    return <Badge className="bg-red-100 text-red-800 border-red-200 text-xs">{score}</Badge>
  }

  const totalPages = Math.ceil(totalItems / pageSize)

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold tracking-tight">Alle Verben</h1>
          <p className="text-sm text-muted-foreground mt-1">{totalItems} Verben insgesamt</p>
        </div>
        <div className="flex items-center gap-2">
          <Button variant="outline" size="sm" onClick={fetchVerbs}><RefreshCw className="h-4 w-4 mr-2" />Aktualisieren</Button>
        </div>
      </div>

      <div className="flex items-center gap-2 flex-wrap">
        <div className="relative flex-1 max-w-md">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
          <input
            type="text" placeholder="Verb oder Übersetzung suchen..."
            className="w-full rounded-lg border pl-9 pr-4 py-2 text-sm bg-background"
            value={search} onChange={e => { setSearch(e.target.value); setPage(1) }}
          />
        </div>
        <select className="rounded-lg border px-3 py-2 text-sm bg-background" value={cefrFilter} onChange={e => { setCefrFilter(e.target.value); setPage(1) }}>
          <option value="">Alle CEFR</option>
          {CEFR_LEVELS.map(l => <option key={l} value={l}>{l}</option>)}
        </select>
        <select className="rounded-lg border px-3 py-2 text-sm bg-background" value={typeFilter} onChange={e => { setTypeFilter(e.target.value); setPage(1) }}>
          <option value="">Alle Typen</option>
          {VERB_TYPES.map(t => <option key={t} value={t}>{t}</option>)}
        </select>
      </div>

      <Card className="overflow-hidden">
        <div className="overflow-x-auto">
          <table className="w-full text-sm">
            <thead>
              <tr className="border-b bg-accent/30">
                <th className="text-left py-3 px-4 font-medium cursor-pointer select-none" onClick={() => toggleSort('infinitive')}>
                  Verb <SortIcon field="infinitive" />
                </th>
                <th className="text-left py-3 px-4 font-medium">Artikel</th>
                <th className="text-left py-3 px-4 font-medium cursor-pointer select-none" onClick={() => toggleSort('cefr_level')}>
                  Level <SortIcon field="cefr_level" />
                </th>
                <th className="text-left py-3 px-4 font-medium">Typ</th>
                <th className="text-left py-3 px-4 font-medium">Reflexiv</th>
                <th className="text-left py-3 px-4 font-medium">Trennbar</th>
                <th className="text-left py-3 px-4 font-medium">Übersetzung (AR)</th>
                <th className="text-left py-3 px-4 font-medium cursor-pointer select-none" onClick={() => toggleSort('quality_score')}>
                  Qualität <SortIcon field="quality_score" />
                </th>
                <th className="text-left py-3 px-4 font-medium">Status</th>
                <th className="text-right py-3 px-4 font-medium">Aktionen</th>
              </tr>
            </thead>
            <tbody>
              {loading ? (
                <tr><td colSpan={10} className="py-12 text-center text-muted-foreground">
                  <Loader2 className="h-5 w-5 animate-spin mx-auto mb-2" />Lade Verben...
                </td></tr>
              ) : verbs.length === 0 ? (
                <tr><td colSpan={10} className="py-12 text-center text-muted-foreground">
                  <div className="flex flex-col items-center gap-2">
                    <Search className="h-8 w-8 opacity-30" />
                    <p>Keine Verben gefunden</p>
                    {(search || cefrFilter || typeFilter) && (
                      <Button variant="outline" size="sm" onClick={() => { setSearch(''); setCefrFilter(''); setTypeFilter(''); setPage(1) }}>
                        Filter zurücksetzen
                      </Button>
                    )}
                  </div>
                </td></tr>
              ) : verbs.map(verb => {
                const qualityScore = verb.verb_quality_summary?.[0]?.quality_score
                const hasArabic = verb.arabic_translation && verb.arabic_translation.trim() !== ''
                return (
                  <tr key={verb.id} className="border-b last:border-0 hover:bg-accent/30 transition-colors">
                    <td className="py-3 px-4">
                      <Link href={`/admin/verbs/${verb.id}`} className="font-medium text-primary hover:underline">
                        {verb.infinitive}
                      </Link>
                    </td>
                    <td className="py-3 px-4 text-muted-foreground text-xs">—</td>
                    <td className="py-3 px-4">
                      {verb.cefr_level ? <Badge variant="outline" className="text-xs">{verb.cefr_level}</Badge> : <span className="text-xs text-muted-foreground">—</span>}
                    </td>
                    <td className="py-3 px-4">
                      <Badge className={`text-xs ${getTypeBadge(verb.verb_type)}`}>{verb.verb_type}</Badge>
                    </td>
                    <td className="py-3 px-4">
                      {verb.is_reflexive ? <Badge className="bg-teal-100 text-teal-800 dark:bg-teal-900/30 dark:text-teal-300 text-xs">sich</Badge> : <span className="text-xs text-muted-foreground">—</span>}
                    </td>
                    <td className="py-3 px-4">
                      {verb.separable_prefix ? <Badge variant="outline" className="text-xs">{verb.separable_prefix}-</Badge> : <span className="text-xs text-muted-foreground">—</span>}
                    </td>
                    <td className="py-3 px-4 max-w-[160px] truncate text-xs">
                      {hasArabic ? <span dir="rtl">{verb.arabic_translation}</span> : <span className="text-muted-foreground">—</span>}
                    </td>
                    <td className="py-3 px-4"><QualityBadge score={qualityScore} /></td>
                    <td className="py-3 px-4">
                      {verb.auxiliary && verb.partizip_2 ? (
                        <Badge className="bg-green-100 text-green-800 dark:bg-green-900/30 dark:text-green-300 text-xs">Aktiv</Badge>
                      ) : (
                        <Badge variant="outline" className="text-xs text-muted-foreground">Unvollständig</Badge>
                      )}
                    </td>
                    <td className="py-3 px-4">
                      <div className="flex items-center justify-end gap-1">
                        <Link href={`/admin/verbs/${verb.id}`}>
                          <Button variant="ghost" size="icon" className="h-8 w-8" title="Details anzeigen"><Eye className="h-3.5 w-3.5" /></Button>
                        </Link>
                        <Link href={`/admin/verbs/versions?verb_id=${verb.id}`}>
                          <Button variant="ghost" size="icon" className="h-8 w-8" title="Versionen"><History className="h-3.5 w-3.5" /></Button>
                        </Link>
                        <Link href={`/admin/verbs/quality?verb_id=${verb.id}`}>
                          <Button variant="ghost" size="icon" className="h-8 w-8" title="Qualität"><Sparkles className="h-3.5 w-3.5" /></Button>
                        </Link>
                      </div>
                    </td>
                  </tr>
                )
              })}
            </tbody>
          </table>
        </div>
      </Card>

      {totalPages > 1 && (
        <div className="flex items-center justify-center gap-2">
          <Button variant="outline" size="sm" disabled={page <= 1} onClick={() => setPage(p => p - 1)}>
            <ChevronLeft className="h-4 w-4 mr-1" />Zurück
          </Button>
          <div className="flex items-center gap-1">
            {Array.from({ length: Math.min(totalPages, 7) }, (_, i) => {
              let pageNum: number
              if (totalPages <= 7) pageNum = i + 1
              else if (page <= 4) pageNum = i + 1
              else if (page >= totalPages - 3) pageNum = totalPages - 6 + i
              else pageNum = page - 3 + i
              return (
                <Button key={pageNum} variant={pageNum === page ? 'default' : 'outline'} size="sm" className="w-8 h-8 p-0" onClick={() => setPage(pageNum)}>
                  {pageNum}
                </Button>
              )
            })}
          </div>
          <Button variant="outline" size="sm" disabled={page >= totalPages} onClick={() => setPage(p => p + 1)}>
            Weiter<ChevronRight className="h-4 w-4 ml-1" />
          </Button>
          <span className="text-xs text-muted-foreground ml-2">Seite {page} von {totalPages}</span>
        </div>
      )}
    </div>
  )
}
