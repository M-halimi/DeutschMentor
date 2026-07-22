'use client'

import { useEffect, useState } from 'react'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Download, PauseCircle, Play, ExternalLink, RefreshCw, CheckCircle2, XCircle, Database, Eye } from 'lucide-react'
import Link from 'next/link'
import { SOURCES } from '@/verbs/constants'

interface ImportJob {
  id: string
  name: string
  status: string
  progress: number
  total_items: number
  total_success: number
  total_errors: number
  total_skipped: number
  started_at: string
}

interface Candidate {
  id: string
  infinitive: string
  translation?: string
  source_name: string
  confidence: number
  cefr_level?: string
  verb_type?: string
  status: string
}

export default function ImportPage() {
  const [jobs, setJobs] = useState<ImportJob[]>([])
  const [candidates, setCandidates] = useState<Candidate[]>([])
  const [scrapedPending, setScrapedPending] = useState(0)
  const [selectedIds, setSelectedIds] = useState<Set<string>>(new Set())
  const [sourceFilter, setSourceFilter] = useState('')
  const [importingSelected, setImportingSelected] = useState(false)

  useEffect(() => { fetchData() }, [sourceFilter])

  async function fetchData() {
    await Promise.all([fetchJobs(), fetchCandidates(), fetchScrapedCount()])
  }

  async function fetchJobs() {
    try {
      const res = await fetch('/api/admin/verbs/import?limit=20')
      if (res.ok) setJobs(await res.json())
    } catch { /* ignore */ }
  }

  async function fetchCandidates() {
    try {
      const params = new URLSearchParams({ candidates: 'true', limit: '100' })
      if (sourceFilter) params.set('source', sourceFilter)
      const res = await fetch(`/api/admin/verbs/import?${params}`)
      if (res.ok) setCandidates(await res.json())
    } catch { /* ignore */ }
  }

  async function fetchScrapedCount() {
    try {
      const res = await fetch('/api/admin/verbs/scraped?stats=true')
      if (res.ok) {
        const data = await res.json()
        setScrapedPending(data.pending || 0)
      }
    } catch { /* ignore */ }
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

  async function pauseJob(id: string) {
    await fetch('/api/admin/verbs/import', {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ id, action: 'pause' }),
    })
    await fetchJobs()
  }

  async function resumeJob(id: string) {
    await fetch('/api/admin/verbs/import', {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ id, action: 'resume' }),
    })
    await fetchJobs()
  }

  function toggle(id: string) {
    setSelectedIds(prev => {
      const next = new Set(prev)
      if (next.has(id)) next.delete(id); else next.add(id)
      return next
    })
  }

  function toggleAll() {
    const pending = candidates.filter(c => c.status === 'PENDING')
    if (selectedIds.size === pending.length) setSelectedIds(new Set())
    else setSelectedIds(new Set(pending.map(c => c.id)))
  }

  function statusBadge(status: string) {
    const variants: Record<string, string> = {
      running: 'bg-blue-100 text-blue-800',
      completed: 'bg-green-100 text-green-800',
      failed: 'bg-red-100 text-red-800',
      paused: 'bg-yellow-100 text-yellow-800',
      pending: 'bg-gray-100 text-gray-800',
    }
    return <Badge className={variants[status] || ''}>{status}</Badge>
  }

  const pendingCandidates = candidates.filter(c => c.status === 'PENDING')

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h1 className="text-2xl font-bold tracking-tight">Import-Queue</h1>
        <div className="flex items-center gap-2">
          <Link href="/admin/verbs/scraped">
            <Button variant="outline" size="sm"><Database className="h-4 w-4 mr-2" />Scraped ({scrapedPending})</Button>
          </Link>
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
              <Download className="h-4 w-4 mr-2" />
              {importingSelected ? 'Importiere...' : `${selectedIds.size > 0 ? selectedIds.size : pendingCandidates.length} importieren`}
            </Button>
          </div>
        </div>
        {pendingCandidates.length === 0 ? (
          <p className="text-center text-muted-foreground py-8">
            Keine ausstehenden Kandidaten.
            <br />
            <Link href="/admin/verbs/scraped" className="text-primary underline mt-2 inline-block">Scraped Data durchsuchen</Link>
          </p>
        ) : (
          <div className="divide-y max-h-80 overflow-y-auto border rounded-lg">
            <div className="flex items-center gap-3 px-4 py-2 text-xs font-medium text-muted-foreground uppercase bg-accent/30">
              <input type="checkbox" checked={selectedIds.size === pendingCandidates.length} onChange={toggleAll} className="rounded" />
              <span className="flex-1">Verb</span>
              <span className="w-24">Quelle</span>
              <span className="w-20">CEFR</span>
              <span className="w-20">Vertrauen</span>
              <span className="w-8" />
            </div>
            {pendingCandidates.map(c => (
              <div key={c.id} className="flex items-center gap-3 px-4 py-3 hover:bg-accent/30">
                <input type="checkbox" checked={selectedIds.has(c.id)} onChange={() => toggle(c.id)} className="rounded" />
                <div className="flex-1 min-w-0">
                  <p className="font-medium text-sm truncate">{c.infinitive}</p>
                  {c.translation && <p className="text-xs text-muted-foreground truncate">{c.translation}</p>}
                </div>
                <div className="w-24">
                  <Badge variant="outline" className="text-xs">{c.source_name}</Badge>
                </div>
                <div className="w-20 text-sm text-muted-foreground">{c.cefr_level || '-'}</div>
                <div className="w-20">
                  <Badge className={
                    c.confidence >= 80 ? 'bg-green-100 text-green-800' :
                    c.confidence >= 50 ? 'bg-yellow-100 text-yellow-800' :
                    'bg-red-100 text-red-800'
                  }>{c.confidence}%</Badge>
                </div>
                <Link href="/admin/verbs/review"><Button variant="ghost" size="sm"><Eye className="h-3 w-3" /></Button></Link>
              </div>
            ))}
          </div>
        )}
      </Card>

      <Card>
        <div className="p-4 border-b"><h2 className="font-semibold">Import-Jobs</h2></div>
        <div className="divide-y">
          {jobs.length === 0 ? (
            <div className="p-8 text-center text-muted-foreground">Keine Import-Jobs</div>
          ) : jobs.map(job => (
            <div key={job.id} className="flex items-center justify-between px-6 py-4">
              <div>
                <p className="font-medium">{job.name}</p>
                <p className="text-sm text-muted-foreground">{new Date(job.started_at).toLocaleString('de-DE')}</p>
                {job.total_items > 0 && (
                  <div className="flex gap-3 mt-1 text-xs text-muted-foreground">
                    <span className="text-green-600">{job.total_success} ✓</span>
                    <span className="text-red-600">{job.total_errors} ✗</span>
                    <span>{job.total_skipped} ⏭</span>
                  </div>
                )}
              </div>
              <div className="flex items-center gap-3">
                <div className="text-right">
                  <div className="w-32 h-1.5 bg-accent rounded-full mt-1">
                    <div className="h-full bg-primary rounded-full" style={{ width: `${job.progress}%` }} />
                  </div>
                  <span className="text-xs text-muted-foreground">{job.progress}%</span>
                </div>
                {statusBadge(job.status)}
                {job.status === 'running' && (
                  <Button variant="ghost" size="sm" onClick={() => pauseJob(job.id)}><PauseCircle className="h-4 w-4" /></Button>
                )}
                {job.status === 'paused' && (
                  <Button variant="ghost" size="sm" onClick={() => resumeJob(job.id)}><Play className="h-4 w-4" /></Button>
                )}
              </div>
            </div>
          ))}
        </div>
      </Card>

      <div className="flex justify-center gap-2">
        <Link href="/admin/verbs/review"><Button variant="outline"><CheckCircle2 className="h-4 w-4 mr-2" />Zum Review</Button></Link>
        <Link href="/admin/verbs/scraped"><Button variant="outline"><Database className="h-4 w-4 mr-2" />Scraped Data</Button></Link>
      </div>
    </div>
  )
}
