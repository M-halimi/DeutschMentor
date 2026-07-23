'use client'

import { useEffect, useState, useCallback } from 'react'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Search, Database, Send, XCircle, RefreshCw, Loader2, ChevronRight, ChevronLeft, Eye, BarChart3 } from 'lucide-react'
import Link from 'next/link'
import { SOURCES, CEFR_LEVELS, CONJUGATION_IMPORT_STATUS_LABELS, CONJUGATION_IMPORT_STATUS_BADGE } from '@/verbs/constants'

interface ConjugationImportRecord {
  id: string; infinitive: string; translation?: string; cefr_level?: string; verb_type?: string
  source_name: string; auxiliary?: string; quality_score: number; status: string
  conjugations: any; created_at: string
}

interface ImportStats {
  total: number; pending: number; in_review: number; approved: number; rejected: number; published: number
}

const STATUS_FILTER_OPTIONS = [
  { value: '', label: 'Alle Status' },
  { value: 'pending_review', label: 'Ausstehend' },
  { value: 'IN_REVIEW', label: 'Im Review' },
  { value: 'APPROVED', label: 'Genehmigt' },
  { value: 'REJECTED', label: 'Abgelehnt' },
  { value: 'PUBLISHED', label: 'Veröffentlicht' },
]

export default function ConjugationImportsPage() {
  const [data, setData] = useState<ConjugationImportRecord[]>([])
  const [stats, setStats] = useState<ImportStats | null>(null)
  const [total, setTotal] = useState(0)
  const [page, setPage] = useState(1)
  const [pageSize] = useState(25)
  const [search, setSearch] = useState('')
  const [statusFilter, setStatusFilter] = useState('')
  const [sourceFilter, setSourceFilter] = useState('')
  const [cefrFilter, setCefrFilter] = useState('')
  const [loading, setLoading] = useState(true)
  const [selectedIds, setSelectedIds] = useState<Set<string>>(new Set())
  const [actionRunning, setActionRunning] = useState(false)
  const [expandedId, setExpandedId] = useState<string | null>(null)
  const [result, setResult] = useState<{ success: number; errors: string[] } | null>(null)

  const fetchData = useCallback(async () => {
    setLoading(true)
    try {
      const params = new URLSearchParams({ page: String(page), pageSize: String(pageSize) })
      if (search) params.set('search', search)
      if (statusFilter) params.set('status', statusFilter)
      if (sourceFilter) params.set('source', sourceFilter)
      if (cefrFilter) params.set('cefr_level', cefrFilter)
      const [dataRes, statsRes] = await Promise.all([
        fetch(`/api/admin/verbs/conjugations?${params}`),
        fetch('/api/admin/verbs/conjugations?stats=true'),
      ])
      if (dataRes.ok) { const d = await dataRes.json(); setData(d.data); setTotal(d.total) }
      if (statsRes.ok) setStats(await statsRes.json())
    } finally { setLoading(false) }
  }, [page, pageSize, search, statusFilter, sourceFilter, cefrFilter])

  useEffect(() => { fetchData() }, [fetchData])

  async function bulkAction(action: 'send_to_review' | 'reject') {
    if (selectedIds.size === 0) return
    setActionRunning(true); setResult(null)
    try {
      const res = await fetch('/api/admin/verbs/conjugations', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action, ids: Array.from(selectedIds) }),
      })
      if (res.ok) {
        setSelectedIds(new Set())
        await fetchData()
      }
    } finally { setActionRunning(false) }
  }

  function toggle(id: string) {
    setSelectedIds(prev => { const next = new Set(prev); if (next.has(id)) next.delete(id); else next.add(id); return next })
  }
  function toggleAll() {
    if (selectedIds.size === data.length) setSelectedIds(new Set())
    else setSelectedIds(new Set(data.map(d => d.id)))
  }

  function countConjugations(conj: any): number {
    if (!conj) return 0; return Object.keys(conj).length
  }

  const totalPages = Math.ceil(total / pageSize)

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold tracking-tight">Konjugationen Import-Queue</h1>
          <p className="text-sm text-muted-foreground mt-1">{total} Einträge insgesamt</p>
        </div>
        <div className="flex items-center gap-2">
          {selectedIds.size > 0 && (
            <>
              <Button variant="default" size="sm" disabled={actionRunning} onClick={() => bulkAction('send_to_review')}>
                {actionRunning ? <Loader2 className="h-4 w-4 mr-2 animate-spin" /> : <Send className="h-4 w-4 mr-2" />}
                {selectedIds.size} zum Review senden
              </Button>
              <Button variant="destructive" size="sm" disabled={actionRunning} onClick={() => bulkAction('reject')}>
                <XCircle className="h-4 w-4 mr-2" />Ablehnen
              </Button>
            </>
          )}
          <Button variant="outline" size="sm" onClick={fetchData}><RefreshCw className="h-4 w-4 mr-2" />Aktualisieren</Button>
          <Link href="/admin/verbs/conjugation-review">
            <Button variant="outline" size="sm"><Eye className="h-4 w-4 mr-2" />Review ({stats?.in_review ?? 0})</Button>
          </Link>
        </div>
      </div>

      {result && (
        <Card className="p-4 bg-green-50 border-green-200">
          <p className="font-medium text-green-800">{result.success} erfolgreich</p>
          {result.errors.length > 0 && (
            <div className="mt-2 text-xs text-red-600 space-y-1">
              {result.errors.slice(0, 3).map((e, i) => <p key={i}>{e}</p>)}
            </div>
          )}
        </Card>
      )}

      {stats && (
        <div className="grid grid-cols-6 gap-3">
          {[
            { label: 'Gesamt', value: stats.total, color: '' },
            { label: 'Ausstehend', value: stats.pending, color: 'text-blue-600' },
            { label: 'Im Review', value: stats.in_review, color: 'text-yellow-600' },
            { label: 'Genehmigt', value: stats.approved, color: 'text-green-600' },
            { label: 'Abgelehnt', value: stats.rejected, color: 'text-red-600' },
            { label: 'Veröffentlicht', value: stats.published, color: 'text-purple-600' },
          ].map(s => (
            <Card key={s.label} className="p-4 text-center">
              <p className="text-xs text-muted-foreground">{s.label}</p>
              <p className={`text-2xl font-bold ${s.color}`}>{s.value}</p>
            </Card>
          ))}
        </div>
      )}

      <div className="flex items-center gap-2 flex-wrap">
        <div className="relative flex-1 max-w-md">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
          <input type="text" placeholder="Verb suchen..." className="w-full rounded-lg border pl-9 pr-4 py-2 text-sm bg-background"
            value={search} onChange={e => { setSearch(e.target.value); setPage(1) }} />
        </div>
        <select className="rounded-lg border px-3 py-2 text-sm bg-background" value={statusFilter} onChange={e => { setStatusFilter(e.target.value); setPage(1) }}>
          {STATUS_FILTER_OPTIONS.map(o => <option key={o.value} value={o.value}>{o.label}</option>)}
        </select>
        <select className="rounded-lg border px-3 py-2 text-sm bg-background" value={sourceFilter} onChange={e => { setSourceFilter(e.target.value); setPage(1) }}>
          <option value="">Alle Quellen</option>
          {SOURCES.map(s => <option key={s.name} value={s.name}>{s.name}</option>)}
        </select>
        <select className="rounded-lg border px-3 py-2 text-sm bg-background" value={cefrFilter} onChange={e => { setCefrFilter(e.target.value); setPage(1) }}>
          <option value="">Alle Level</option>
          {CEFR_LEVELS.map(l => <option key={l} value={l}>{l}</option>)}
        </select>
      </div>

      <Card className="overflow-hidden">
        <div className="overflow-x-auto">
          <table className="w-full text-sm">
            <thead>
              <tr className="border-b bg-accent/30">
                <th className="py-3 px-4 w-8"><input type="checkbox" checked={selectedIds.size === data.length && data.length > 0} onChange={toggleAll} className="rounded" /></th>
                <th className="text-left py-3 px-4 font-medium">Verb</th>
                <th className="text-left py-3 px-4 font-medium">Level</th>
                <th className="text-left py-3 px-4 font-medium">Quelle</th>
                <th className="text-left py-3 px-4 font-medium">Konjugationen</th>
                <th className="text-left py-3 px-4 font-medium">Qualität</th>
                <th className="text-left py-3 px-4 font-medium">Status</th>
                <th className="text-left py-3 px-4 font-medium">Erstellt</th>
                <th className="text-right py-3 px-4 font-medium">Aktionen</th>
              </tr>
            </thead>
            <tbody>
              {loading ? (
                <tr><td colSpan={9} className="py-12 text-center text-muted-foreground">
                  <Loader2 className="h-5 w-5 animate-spin mx-auto mb-2" />Lade Daten...
                </td></tr>
              ) : data.length === 0 ? (
                <tr><td colSpan={9} className="py-12 text-center text-muted-foreground">
                  <Database className="h-8 w-8 mx-auto mb-2 opacity-30" />
                  <p>Keine Konjugationen gefunden</p>
                  <Link href="/admin/verbs/scraped"><Button variant="outline" size="sm" className="mt-2"><Database className="h-3 w-3 mr-1" />Scraped Data</Button></Link>
                </td></tr>
              ) : data.map(record => (
                <>
                  <tr key={record.id} className="border-b hover:bg-accent/30 transition-colors cursor-pointer" onClick={() => setExpandedId(expandedId === record.id ? null : record.id)}>
                    <td className="py-3 px-4" onClick={e => e.stopPropagation()}><input type="checkbox" checked={selectedIds.has(record.id)} onChange={() => toggle(record.id)} className="rounded" /></td>
                    <td className="py-3 px-4">
                      <p className="font-medium">{record.infinitive}</p>
                      {record.translation && <p className="text-xs text-muted-foreground">{record.translation}</p>}
                    </td>
                    <td className="py-3 px-4">{record.cefr_level || '-'}</td>
                    <td className="py-3 px-4"><Badge variant="outline" className="text-xs">{record.source_name}</Badge></td>
                    <td className="py-3 px-4">{countConjugations(record.conjugations)}</td>
                    <td className="py-3 px-4">
                      <Badge className={`text-xs ${record.quality_score >= 80 ? 'bg-green-100 text-green-800' : record.quality_score >= 50 ? 'bg-yellow-100 text-yellow-800' : 'bg-red-100 text-red-800'}`}>
                        {record.quality_score}%
                      </Badge>
                    </td>
                    <td className="py-3 px-4">
                      <Badge className={`text-xs ${CONJUGATION_IMPORT_STATUS_BADGE[record.status] || ''}`}>
                        {CONJUGATION_IMPORT_STATUS_LABELS[record.status] || record.status}
                      </Badge>
                    </td>
                    <td className="py-3 px-4 text-xs text-muted-foreground">{new Date(record.created_at).toLocaleDateString('de-DE')}</td>
                    <td className="py-3 px-4 text-right">
                      {record.status === 'PENDING' && (
                        <div className="flex gap-1 justify-end">
                          <Button variant="ghost" size="sm" onClick={e => { e.stopPropagation(); bulkAction('send_to_review') }}>
                            <Send className="h-3.5 w-3.5" />
                          </Button>
                        </div>
                      )}
                    </td>
                  </tr>
                  {expandedId === record.id && (
                    <tr key={`${record.id}-detail`} className="bg-accent/10">
                      <td colSpan={9} className="p-4">
                        <div className="grid grid-cols-2 sm:grid-cols-4 gap-4 text-sm">
                          {record.auxiliary && <div><span className="text-xs text-muted-foreground">Hilfsverb:</span><p>{record.auxiliary}</p></div>}
                          {record.conjugations && Object.keys(record.conjugations).length > 0 && (
                            <div className="col-span-4">
                              <span className="text-xs text-muted-foreground">Konjugationen: {Object.keys(record.conjugations).join(', ')}</span>
                            </div>
                          )}
                        </div>
                      </td>
                    </tr>
                  )}
                </>
              ))}
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
