'use client'

import { useEffect, useState } from 'react'
import Link from 'next/link'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Search, BarChart3, Globe, BookOpen, ChevronRight, ExternalLink, FileText } from 'lucide-react'
import { CEFR_LEVELS, VERB_TYPES } from '@/verbs/constants'

interface Verb {
  id: string
  infinitive: string
  english_translation: string
  cefr_level: string
  verb_type: string
  auxiliary: string
  partizip_2: string
  slug: string
  verb_quality_summary?: { quality_score: number }[]
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

  useEffect(() => {
    fetchVerbs()
  }, [page, pageSize, search, cefrFilter, typeFilter])

  async function fetchVerbs() {
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
  }

  function getQualityBadge(score?: number) {
    if (score === undefined) return <Badge variant="outline">-</Badge>
    if (score >= 80) return <Badge className="bg-green-100 text-green-800 border-green-200">{score}</Badge>
    if (score >= 50) return <Badge className="bg-yellow-100 text-yellow-800 border-yellow-200">{score}</Badge>
    return <Badge className="bg-red-100 text-red-800 border-red-200">{score}</Badge>
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
          <Link href="/admin/verbs">
            <Button variant="outline" size="sm"><BarChart3 className="h-4 w-4 mr-2" />Verben</Button>
          </Link>
          <Link href="/admin/verbs/scraping">
            <Button variant="outline" size="sm"><Globe className="h-4 w-4 mr-2" />Scraping</Button>
          </Link>
        </div>
      </div>

      <div className="flex items-center gap-2 flex-wrap">
        <div className="relative flex-1 max-w-md">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
          <input
            type="text" placeholder="Verb suchen..."
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

      <Card>
        <div className="divide-y">
          {loading ? (
            <div className="p-8 text-center text-muted-foreground">Lade Verben...</div>
          ) : verbs.length === 0 ? (
            <div className="p-8 text-center text-muted-foreground">Keine Verben gefunden</div>
          ) : verbs.map(verb => {
            const qualityScore = verb.verb_quality_summary?.[0]?.quality_score
            return (
              <Link key={verb.id} href={`/admin/verbs/${verb.id}`} className="flex items-center justify-between px-6 py-4 hover:bg-accent/50 transition-colors">
                <div className="flex items-center gap-4 min-w-0">
                  <BookOpen className="h-5 w-5 text-muted-foreground shrink-0" />
                  <div className="min-w-0">
                    <p className="font-medium truncate">{verb.infinitive}</p>
                    <p className="text-sm text-muted-foreground truncate">{verb.english_translation || '(keine Übersetzung)'}</p>
                  </div>
                  <div className="hidden md:flex items-center gap-2">
                    <Badge variant="outline" className="text-xs">{verb.cefr_level}</Badge>
                    <Badge variant="secondary" className="text-xs">{verb.verb_type}</Badge>
                    {verb.auxiliary && <Badge variant="outline" className="text-xs">{verb.auxiliary}</Badge>}
                    {verb.partizip_2 && <Badge variant="outline" className="text-xs">{verb.partizip_2}</Badge>}
                  </div>
                </div>
                <div className="flex items-center gap-3 shrink-0">
                  {getQualityBadge(qualityScore)}
                  <ChevronRight className="h-4 w-4 text-muted-foreground" />
                </div>
              </Link>
            )
          })}
        </div>
      </Card>

      {totalPages > 1 && (
        <div className="flex items-center justify-center gap-2">
          <Button variant="outline" size="sm" disabled={page <= 1} onClick={() => setPage(p => p - 1)}>Zurück</Button>
          <span className="text-sm text-muted-foreground">Seite {page} von {totalPages}</span>
          <Button variant="outline" size="sm" disabled={page >= totalPages} onClick={() => setPage(p => p + 1)}>Weiter</Button>
        </div>
      )}
    </div>
  )
}
