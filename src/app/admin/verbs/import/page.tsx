'use client'

import { useEffect, useState } from 'react'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Download, PauseCircle, Play, RefreshCw, CheckCircle2, Database, Eye, Loader2, ChevronRight, AlertTriangle } from 'lucide-react'
import Link from 'next/link'
import { SOURCES } from '@/verbs/constants'

interface ImportJob {
  id: string; name: string; status: string; progress: number; total_items: number
  total_success: number; total_errors: number; total_skipped: number; started_at: string
}

interface Candidate {
  id: string; infinitive: string; translation?: string; source_name: string
  confidence: number; cefr_level?: string; verb_type?: string; status: string
}

export default function ImportPage() {
  const [jobs, setJobs] = useState<ImportJob[]>([])
  const [candidates, setCandidates] = useState<Candidate[]>([])
  const [scrapedPending, setScrapedPending] = useState(0)
  const [selectedIds, setSelectedIds] = useState<Set<string>>(new Set())
  const [sourceFilter, setSourceFilter] = useState('')
  const [importingSelected, setImportingSelected] = useState(false)
  const [loading, setLoading] = useState(true)

  useEffect(() => { fetchData() }, [sourceFilter])

  async function fetchData() {
    setLoading(true)
    await Promise.all([fetchJobs(), fetchCandidates(), fetchScrapedCount()])
    setLoading(false)
  }

  async function fetchJobs() {
    try { const res = await fetch('/api/admin/verbs/import?limit=20'); if (res.ok) setJobs(await res.json()) } catch {}
  }
  async function fetchCandidates() {
    try {
      const params = new URLSearchParams({ candidates: 'true', limit: '100' })
      if (sourceFilter) params.set('source', sourceFilter)
      const res = await fetch(`/api/admin/verbs/import?${params}`)
      if (res.ok) setCandidates(await res.json())
    } catch {}
  }
  async function fetchScrapedCount() {
    try { const res = await fetch('/api/admin/verbs/scraped?stats=true'); if (res.ok) { const d = await res.json(); setScrapedPending(d.pending || 0) } } catch {}
  }

  async function importCandidates() {
    const ids = selectedIds.size > 0
      ? Array.from(selectedIds)
      : candidates.filter(c => c.status === 'PENDING').map(c => c.id)
    if (ids.length === 0) return
    setImportingSelected(true)
    try {
      await fetch('/api/admin/verbs/import', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ candidate_ids: ids, source: candidates[0]?.source_name || 'bulk', execute: true }),
      })
      setSelectedIds(new Set())
      await fetchData()
    } finally { setImportingSelected(false) }
  }

  function toggle(id: string) {
    setSelectedIds(prev => { const next = new Set(prev); if (next.has(id)) next.delete(id); else next.add(id); return next })
  }
  function toggleAll() {
    const pending = candidates.filter(c => c.status === 'PENDING')
    if (selectedIds.size === pending.length) setSelectedIds(new Set())
    else setSelectedIds(new Set(pending.map(c => c.id)))
  }

  const pendingCandidates = candidates.filter(c => c.status === 'PENDING')

  function statusBadge(status: string) {
    const map: Record<string, string> = {
      running: 'bg-blue-100 text-blue-800', completed: 'bg-green-100 text-green-800',
      failed: 'bg-red-100 text-red-800', paused: 'bg-yellow-100 text-yellow-800', pending: 'bg-gray-100 text-gray-800',
    }
    return <Badge className={map[status] || ''}>{status}</Badge>
  }

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h1 className="text-2xl font-bold tracking-tight">Import-Queue</h1>
        <div className="flex items-center gap-2">
          <Link href="/admin/verbs/scraped"><Button variant="outline" size="sm"><Database className="h-4 w-4 mr-2" />Scraped ({scrapedPending})</Button></Link>
          <Button variant="outline" size="sm" onClick={fetchData}><RefreshCw className="h-4 w-4 mr-2" />Aktualisieren</Button>
        </div>
      </div>

      <Card className="p-6">
        <div className="flex items-center justify-between mb-4">
          <div>
            <h2 className="font-semibold">Ausstehende Kandidaten</h2>
            <p className="text-sm text-muted-foreground">{pendingCandidates.length} warten auf Import</p>
          </div>
          <div className="flex items-center gap-2">
            <select className="rounded-lg border px-3 py-2 text-sm bg-background" value={sourceFilter} onChange={e => setSourceFilter(e.target.value)}>
              <option value="">Alle Quellen</option>
              {SOURCES.map(s => <option key={s.name} value={s.name}>{s.name}</option>)}
            </select>
            <Button onClick={importCandidates} disabled={pendingCandidates.length === 0 || importingSelected}>
              {importingSelected ? <Loader2 className="h-4 w-4 mr-2 animate-spin" /> : <Download className="h-4 w-4 mr-2" />}
              {importingSelected ? 'Importiere...' : `${selectedIds.size > 0 ? selectedIds.size : pendingCandidates.length} importieren`}
            </Button>
          </div>
        </div>
        {loading ? (
          <div className="py-8 text-center text-muted-foreground"><Loader2 className="h-5 w-5 animate-spin mx-auto" /></div>
        ) : pendingCandidates.length === 0 ? (
          <div className="text-center py-8">
            <CheckCircle2 className="h-8 w-8 mx-auto mb-2 text-green-500" />
            <p className="text-muted-foreground">Keine ausstehenden Kandidaten.</p>
            <Link href="/admin/verbs/scraped"><Button variant="outline" size="sm" className="mt-2"><Database className="h-3 w-3 mr-1" />Scraped Data durchsuchen</Button></Link>
          </div>
        ) : (
          <div className="border rounded-lg overflow-hidden">
            <table className="w-full text-sm">
              <thead>
                <tr className="bg-accent/30 border-b">
                  <th className="py-2 px-4 w-8"><input type="checkbox" checked={selectedIds.size === pendingCandidates.length} onChange={toggleAll} className="rounded" /></th>
                  <th className="text-left py-2 px-4 font-medium">Verb</th>
                  <th className="text-left py-2 px-4 font-medium">Quelle</th>
                  <th className="text-left py-2 px-4 font-medium">CEFR</th>
                  <th className="text-left py-2 px-4 font-medium">Typ</th>
                  <th className="text-left py-2 px-4 font-medium">Vertrauen</th>
                </tr>
              </thead>
              <tbody>
                {pendingCandidates.map(c => (
                  <tr key={c.id} className="border-b last:border-0 hover:bg-accent/30">
                    <td className="py-2 px-4"><input type="checkbox" checked={selectedIds.has(c.id)} onChange={() => toggle(c.id)} className="rounded" /></td>
                    <td className="py-2 px-4">
                      <p className="font-medium">{c.infinitive}</p>
                      {c.translation && <p className="text-xs text-muted-foreground">{c.translation}</p>}
                    </td>
                    <td className="py-2 px-4"><Badge variant="outline" className="text-xs">{c.source_name}</Badge></td>
                    <td className="py-2 px-4">{c.cefr_level || '-'}</td>
                    <td className="py-2 px-4">{c.verb_type || '-'}</td>
                    <td className="py-2 px-4">
                      <Badge className={`text-xs ${c.confidence >= 80 ? 'bg-green-100 text-green-800' : c.confidence >= 50 ? 'bg-yellow-100 text-yellow-800' : 'bg-red-100 text-red-800'}`}>
                        {c.confidence}%
                      </Badge>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </Card>

      <Card>
        <div className="p-4 border-b"><h2 className="font-semibold">Import-Jobs</h2></div>
        {jobs.length === 0 ? (
          <div className="p-8 text-center text-muted-foreground">
            <Download className="h-8 w-8 mx-auto mb-2 opacity-30" />
            <p>Keine Import-Jobs</p>
          </div>
        ) : (
          <div className="divide-y">
            {jobs.map(job => (
              <div key={job.id} className="flex items-center justify-between px-6 py-4 hover:bg-accent/30">
                <div>
                  <p className="font-medium">{job.name}</p>
                  <p className="text-sm text-muted-foreground">{new Date(job.started_at).toLocaleString('de-DE')}</p>
                  {job.total_items > 0 && (
                    <div className="flex gap-3 mt-1 text-xs">
                      <span className="text-green-600">{job.total_success} ✓</span>
                      <span className="text-red-600">{job.total_errors} ✗</span>
                      <span className="text-muted-foreground">{job.total_skipped} ⏭</span>
                    </div>
                  )}
                </div>
                <div className="flex items-center gap-3">
                  <div className="text-right">
                    <div className="w-24 h-1.5 bg-accent rounded-full"><div className="h-full bg-primary rounded-full transition-all" style={{ width: `${job.progress}%` }} /></div>
                    <span className="text-xs text-muted-foreground">{job.progress}%</span>
                  </div>
                  {statusBadge(job.status)}
                </div>
              </div>
            ))}
          </div>
        )}
      </Card>

      <div className="flex justify-center gap-2">
        <Link href="/admin/verbs/review"><Button variant="outline"><CheckCircle2 className="h-4 w-4 mr-2" />Zum Review</Button></Link>
        <Link href="/admin/verbs/scraped"><Button variant="outline"><Database className="h-4 w-4 mr-2" />Scraped Data</Button></Link>
      </div>
    </div>
  )
}