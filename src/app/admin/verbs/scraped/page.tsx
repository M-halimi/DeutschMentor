'use client'

import { useEffect, useState, useCallback } from 'react'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Search, Database, Download, XCircle, RefreshCw, Loader2, ChevronRight, Trash2, Globe, CheckCircle2 } from 'lucide-react'
import { SOURCES, CEFR_LEVELS } from '@/verbs/constants'

interface ScrapedRecord {
  id: string
  infinitive: string
  translation?: string
  cefr_level?: string
  source_name: string
  confidence: number
  status: string
  verb_type?: string
  auxiliary?: string
  partizip_2?: string
  created_at: string
}

interface ScrapedStats {
  total: number; pending: number; imported: number; rejected: number; duplicate: number
  by_source: Record<string, number>
  by_cefr: Record<string, number>
}

export default function ScrapedDataPage() {
  const [data, setData] = useState<ScrapedRecord[]>([])
  const [stats, setStats] = useState<ScrapedStats | null>(null)
  const [total, setTotal] = useState(0)
  const [page, setPage] = useState(1)
  const [pageSize] = useState(25)
  const [search, setSearch] = useState('')
  const [statusFilter, setStatusFilter] = useState('')
  const [sourceFilter, setSourceFilter] = useState('')
  const [loading, setLoading] = useState(true)
  const [selectedIds, setSelectedIds] = useState<Set<string>>(new Set())
  const [actionRunning, setActionRunning] = useState(false)

  const fetchData = useCallback(async () => {
    setLoading(true)
    try {
      const params = new URLSearchParams({ page: String(page), pageSize: String(pageSize) })
      if (search) params.set('search', search)
      if (statusFilter) params.set('status', statusFilter)
      if (sourceFilter) params.set('source', sourceFilter)
      const [dataRes, statsRes] = await Promise.all([
        fetch(`/api/admin/verbs/scraped?${params}`),
        fetch('/api/admin/verbs/scraped?stats=true'),
      ])
      if (dataRes.ok) {
        const d = await dataRes.json()
        setData(d.data)
        setTotal(d.total)
      }
      if (statsRes.ok) setStats(await statsRes.json())
    } finally { setLoading(false) }
  }, [page, pageSize, search, statusFilter, sourceFilter])

  useEffect(() => { fetchData() }, [fetchData])

  async function bulkAction(action: 'import' | 'reject') {
    if (selectedIds.size === 0) return
    setActionRunning(true)
    try {
      await fetch('/api/admin/verbs/scraped', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action, ids: Array.from(selectedIds) }),
      })
      setSelectedIds(new Set())
      await fetchData()
    } finally { setActionRunning(false) }
  }

  function toggle(id: string) {
    setSelectedIds(prev => {
      const next = new Set(prev)
      if (next.has(id)) next.delete(id); else next.add(id)
      return next
    })
  }

  function toggleAll() {
    if (selectedIds.size === data.length) setSelectedIds(new Set())
    else setSelectedIds(new Set(data.map(d => d.id)))
  }

  const totalPages = Math.ceil(total / pageSize)

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold tracking-tight">Scraped Data</h1>
          <p className="text-sm text-muted-foreground mt-1">{total} Einträge insgesamt</p>
        </div>
        <div className="flex items-center gap-2">
          {selectedIds.size > 0 && (
            <>
              <Button variant="default" size="sm" disabled={actionRunning} onClick={() => bulkAction('import')}>
                {actionRunning ? <Loader2 className="h-4 w-4 mr-2 animate-spin" /> : <Download className="h-4 w-4 mr-2" />}
                {selectedIds.size} importieren
              </Button>
              <Button variant="destructive" size="sm" disabled={actionRunning} onClick={() => bulkAction('reject')}>
                <XCircle className="h-4 w-4 mr-2" />Ablehnen
              </Button>
            </>
          )}
          <Button variant="outline" size="sm" onClick={fetchData}><RefreshCw className="h-4 w-4 mr-2" />Aktualisieren</Button>
        </div>
      </div>

      {stats && (
        <div className="grid grid-cols-2 sm:grid-cols-5 gap-3">
          <Card className="p-4"><p className="text-xs text-muted-foreground">Gesamt</p><p className="text-xl font-bold">{stats.total}</p></Card>
          <Card className="p-4"><p className="text-xs text-muted-foreground">Ausstehend</p><p className="text-xl font-bold text-blue-600">{stats.pending}</p></Card>
          <Card className="p-4"><p className="text-xs text-muted-foreground">Importiert</p><p className="text-xl font-bold text-green-600">{stats.imported}</p></Card>
          <Card className="p-4"><p className="text-xs text-muted-foreground">Abgelehnt</p><p className="text-xl font-bold text-red-600">{stats.rejected}</p></Card>
          <Card className="p-4"><p className="text-xs text-muted-foreground">Duplikate</p><p className="text-xl font-bold text-orange-600">{stats.duplicate}</p></Card>
        </div>
      )}

      <div className="flex items-center gap-2 flex-wrap">
        <div className="relative flex-1 max-w-md">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
          <input
            type="text" placeholder="Verb suchen..."
            className="w-full rounded-lg border pl-9 pr-4 py-2 text-sm bg-background"
            value={search} onChange={e => { setSearch(e.target.value); setPage(1) }}
          />
        </div>
        <select className="rounded-lg border px-3 py-2 text-sm bg-background" value={statusFilter} onChange={e => { setStatusFilter(e.target.value); setPage(1) }}>
          <option value="">Alle Status</option>
          <option value="PENDING">Ausstehend</option>
          <option value="IMPORTED">Importiert</option>
          <option value="REJECTED">Abgelehnt</option>
          <option value="DUPLICATE">Duplikat</option>
        </select>
        <select className="rounded-lg border px-3 py-2 text-sm bg-background" value={sourceFilter} onChange={e => { setSourceFilter(e.target.value); setPage(1) }}>
          <option value="">Alle Quellen</option>
          {SOURCES.map(s => <option key={s.name} value={s.name}>{s.name}</option>)}
        </select>
      </div>

      <Card>
        <div className="divide-y">
          {loading ? (
            <div className="p-8 text-center text-muted-foreground">Lade Daten...</div>
          ) : data.length === 0 ? (
            <div className="p-8 text-center text-muted-foreground">Keine Daten gefunden</div>
          ) : (
            <>
              <div className="px-6 py-3 flex items-center gap-3 text-xs font-medium text-muted-foreground uppercase border-b">
                <input type="checkbox" checked={selectedIds.size === data.length && data.length > 0} onChange={toggleAll} className="rounded" />
                <span className="flex-1">Verb</span>
                <span className="w-24">Quelle</span>
                <span className="w-20">CEFR</span>
                <span className="w-20">Vertrauen</span>
                <span className="w-24">Status</span>
                <span className="w-8" />
              </div>
              {data.map(record => (
                <div key={record.id} className="flex items-center gap-3 px-6 py-3 hover:bg-accent/50 transition-colors">
                  <input type="checkbox" checked={selectedIds.has(record.id)} onChange={() => toggle(record.id)} className="rounded" />
                  <div className="flex-1 min-w-0">
                    <p className="font-medium truncate">{record.infinitive}</p>
                    {record.translation && <p className="text-xs text-muted-foreground truncate">{record.translation}</p>}
                  </div>
                  <div className="w-24 text-sm">
                    <Badge variant="outline" className="text-xs">{record.source_name}</Badge>
                  </div>
                  <div className="w-20 text-sm">{record.cefr_level || '-'}</div>
                  <div className="w-20 text-sm">{record.confidence}%</div>
                  <div className="w-24">
                    <Badge className={
                      record.status === 'PENDING' ? 'bg-blue-100 text-blue-800' :
                      record.status === 'IMPORTED' ? 'bg-green-100 text-green-800' :
                      record.status === 'REJECTED' ? 'bg-red-100 text-red-800' :
                      'bg-orange-100 text-orange-800'
                    }>{record.status}</Badge>
                  </div>
                  <div className="w-8 text-xs text-muted-foreground">
                    {new Date(record.created_at).toLocaleDateString('de-DE')}
                  </div>
                </div>
              ))}
            </>
          )}
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
