'use client'

import { useEffect, useState, useCallback } from 'react'
import Link from 'next/link'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Search, BookOpen, ChevronRight, ChevronLeft, ArrowUpDown, Loader2, Eye, History, Sparkles, CheckCircle2 } from 'lucide-react'
import { CEFR_LEVELS, VERB_TYPES } from '@/verbs/constants'

interface Verb {
  id: string; infinitive: string; english_translation: string
  cefr_level: string; verb_type: string; auxiliary: string; partizip_2: string
  slug: string; verb_quality_summary?: { quality_score: number }[]
}

export default function PublishedVerbsPage() {
  const [verbs, setVerbs] = useState<Verb[]>([])
  const [totalItems, setTotalItems] = useState(0)
  const [page, setPage] = useState(1)
  const [pageSize] = useState(25)
  const [search, setSearch] = useState('')
  const [cefrFilter, setCefrFilter] = useState('')
  const [typeFilter, setTypeFilter] = useState('')
  const [loading, setLoading] = useState(true)

  const fetchVerbs = useCallback(async () => {
    setLoading(true)
    try {
      const params = new URLSearchParams({
        page: String(page), pageSize: String(pageSize),
        sort_by: 'infinitive', sort_order: 'asc',
      })
      if (search) params.set('search', search)
      if (cefrFilter) params.set('cefr_level', cefrFilter)
      if (typeFilter) params.set('verb_type', typeFilter)
      const res = await fetch(`/api/admin/verbs/published?${params}`)
      if (res.ok) {
        const data = await res.json()
        setVerbs(data.data)
        setTotalItems(data.totalItems)
      }
    } finally { setLoading(false) }
  }, [page, pageSize, search, cefrFilter, typeFilter])

  useEffect(() => { fetchVerbs() }, [fetchVerbs])

  function QualityBadge({ score }: { score?: number }) {
    if (score === undefined) return <Badge variant="outline" className="text-xs">-</Badge>
    if (score >= 80) return <Badge className="bg-green-100 text-green-800 border-green-200 text-xs">{score}</Badge>
    if (score >= 50) return <Badge className="bg-yellow-100 text-yellow-800 border-yellow-200 text-xs">{score}</Badge>
    return <Badge className="bg-red-100 text-red-800 border-red-200 text-xs">{score}</Badge>
  }

  const totalPages = Math.ceil(totalItems / pageSize)

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold tracking-tight">Veröffentlichte Verben</h1>
          <p className="text-sm text-muted-foreground mt-1">{totalItems} Verben in Production</p>
        </div>
        <div className="flex items-center gap-2">
          <Link href="/admin/verbs"><Button variant="outline" size="sm"><BookOpen className="h-4 w-4 mr-2" />Alle Verben</Button></Link>
        </div>
      </div>

      <div className="flex items-center gap-2 flex-wrap">
        <div className="relative flex-1 max-w-md">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
          <input type="text" placeholder="Verb suchen..." className="w-full rounded-lg border pl-9 pr-4 py-2 text-sm bg-background"
            value={search} onChange={e => { setSearch(e.target.value); setPage(1) }} />
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
                <th className="text-left py-3 px-4 font-medium">Verb</th>
                <th className="text-left py-3 px-4 font-medium">Übersetzung</th>
                <th className="text-left py-3 px-4 font-medium">CEFR</th>
                <th className="text-left py-3 px-4 font-medium">Typ</th>
                <th className="text-left py-3 px-4 font-medium">Hilfsverb</th>
                <th className="text-left py-3 px-4 font-medium">Partizip II</th>
                <th className="text-left py-3 px-4 font-medium">Qualität</th>
                <th className="text-right py-3 px-4 font-medium">Aktionen</th>
              </tr>
            </thead>
            <tbody>
              {loading ? (
                <tr><td colSpan={8} className="py-12 text-center text-muted-foreground">
                  <Loader2 className="h-5 w-5 animate-spin mx-auto mb-2" />Lade Verben...
                </td></tr>
              ) : verbs.length === 0 ? (
                <tr><td colSpan={8} className="py-12 text-center text-muted-foreground">
                  <CheckCircle2 className="h-8 w-8 mx-auto mb-2 opacity-30" />
                  <p>Keine veröffentlichten Verben</p>
                </td></tr>
              ) : verbs.map(verb => {
                const qualityScore = verb.verb_quality_summary?.[0]?.quality_score
                return (
                  <tr key={verb.id} className="border-b last:border-0 hover:bg-accent/30 transition-colors">
                    <td className="py-3 px-4">
                      <Link href={`/admin/verbs/${verb.id}`} className="font-medium text-primary hover:underline">{verb.infinitive}</Link>
                    </td>
                    <td className="py-3 px-4 text-muted-foreground max-w-[200px] truncate">{verb.english_translation || '-'}</td>
                    <td className="py-3 px-4">{verb.cefr_level ? <Badge variant="outline" className="text-xs">{verb.cefr_level}</Badge> : '-'}</td>
                    <td className="py-3 px-4"><Badge variant="secondary" className="text-xs">{verb.verb_type}</Badge></td>
                    <td className="py-3 px-4">{verb.auxiliary || '-'}</td>
                    <td className="py-3 px-4 font-mono text-xs">{verb.partizip_2 || '-'}</td>
                    <td className="py-3 px-4"><QualityBadge score={qualityScore} /></td>
                    <td className="py-3 px-4">
                      <div className="flex items-center justify-end gap-1">
                        <Link href={`/admin/verbs/${verb.id}`}><Button variant="ghost" size="icon" className="h-8 w-8"><Eye className="h-3.5 w-3.5" /></Button></Link>
                        <Link href={`/admin/verbs/versions?verb_id=${verb.id}`}><Button variant="ghost" size="icon" className="h-8 w-8"><History className="h-3.5 w-3.5" /></Button></Link>
                        <Link href={`/admin/verbs/${verb.id}/quality`}><Button variant="ghost" size="icon" className="h-8 w-8"><Sparkles className="h-3.5 w-3.5" /></Button></Link>
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
          <Button variant="outline" size="sm" disabled={page <= 1} onClick={() => setPage(p => p - 1)}><ChevronLeft className="h-4 w-4 mr-1" />Zurück</Button>
          <span className="text-sm text-muted-foreground">Seite {page} von {totalPages}</span>
          <Button variant="outline" size="sm" disabled={page >= totalPages} onClick={() => setPage(p => p + 1)}>Weiter<ChevronRight className="h-4 w-4 ml-1" /></Button>
        </div>
      )}
    </div>
  )
}