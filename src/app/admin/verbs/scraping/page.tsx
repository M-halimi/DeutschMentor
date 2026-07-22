'use client'

import { useEffect, useState } from 'react'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Globe, Play, Square, RefreshCw, Loader2, Database, Info } from 'lucide-react'
import Link from 'next/link'
import { SOURCES, VERB_TYPES, MISSING_DATA_OPTIONS } from '@/verbs/constants'

interface ScrapingJob {
  id: string
  source: string
  cefr_level?: string
  verb_type?: string
  requested_count: number
  status: string
  total_fetched: number
  total_errors: number
  progress: number
  error_message?: string
  started_at: string
  completed_at?: string
  duration_seconds?: number
}

interface ScrapedStats {
  total: number; pending: number; imported: number; rejected: number; duplicate: number
}

export default function ScrapingCenterPage() {
  const [source, setSource] = useState('Verbformen')
  const [cefrLevel, setCefrLevel] = useState('all')
  const [verbType, setVerbType] = useState('')
  const [missingDataMode, setMissingDataMode] = useState('')
  const [limit, setLimit] = useState(20)
  const [jobs, setJobs] = useState<ScrapingJob[]>([])
  const [stats, setStats] = useState<ScrapedStats | null>(null)
  const [running, setRunning] = useState(false)

  useEffect(() => { fetchJobs(); fetchStats() }, [])
  useEffect(() => {
    const interval = setInterval(fetchJobs, 5000)
    return () => clearInterval(interval)
  }, [])

  async function fetchJobs() {
    try {
      const res = await fetch('/api/admin/verbs/scrape?limit=20')
      if (res.ok) setJobs(await res.json())
    } catch { /* ignore */ }
  }

  async function fetchStats() {
    try {
      const res = await fetch('/api/admin/verbs/scraped?stats=true')
      if (res.ok) setStats(await res.json())
    } catch { /* ignore */ }
  }

  async function startScraping() {
    setRunning(true)
    try {
      const body: Record<string, unknown> = { source, cefr_level: cefrLevel, limit }
      if (verbType) body.verb_type = verbType
      if (missingDataMode) body.missing_data_mode = missingDataMode
      const res = await fetch('/api/admin/verbs/scrape', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body),
      })
      if (res.ok) {
        await fetchJobs()
        await fetchStats()
      }
    } finally { setRunning(false) }
  }

  async function cancelJob(id: string) {
    await fetch('/api/admin/verbs/scrape', {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ id, action: 'cancel' }),
    })
    await fetchJobs()
  }

  function statusBadge(status: string) {
    const variants: Record<string, string> = {
      running: 'bg-blue-100 text-blue-800',
      completed: 'bg-green-100 text-green-800',
      failed: 'bg-red-100 text-red-800',
      cancelled: 'bg-gray-100 text-gray-800',
      pending: 'bg-yellow-100 text-yellow-800',
    }
    return <Badge className={variants[status] || ''}>{status}</Badge>
  }

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h1 className="text-2xl font-bold tracking-tight">Scraping Center</h1>
        <div className="flex items-center gap-2">
          <Link href="/admin/verbs/scraped">
            <Button variant="outline" size="sm"><Database className="h-4 w-4 mr-2" />Scraped Data ({stats?.pending ?? 0})</Button>
          </Link>
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

      <Card className="p-6">
        <h2 className="text-lg font-semibold mb-4">Neuen Scraping-Job starten</h2>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-5 gap-4 mb-4">
          <div>
            <Label>Quelle</Label>
            <select className="w-full rounded-lg border px-3 py-2 text-sm bg-background mt-1" value={source} onChange={e => setSource(e.target.value)}>
              {SOURCES.map(s => <option key={s.name} value={s.name}>{s.name}</option>)}
            </select>
          </div>
          <div>
            <Label>CEFR-Level</Label>
            <select className="w-full rounded-lg border px-3 py-2 text-sm bg-background mt-1" value={cefrLevel} onChange={e => setCefrLevel(e.target.value)}>
              <option value="all">Alle</option>
              <option value="A1">A1</option>
              <option value="A2">A2</option>
              <option value="B1">B1</option>
              <option value="B2">B2</option>
              <option value="C1">C1</option>
              <option value="C2">C2</option>
            </select>
          </div>
          <div>
            <Label>Verb-Typ</Label>
            <select className="w-full rounded-lg border px-3 py-2 text-sm bg-background mt-1" value={verbType} onChange={e => setVerbType(e.target.value)}>
              <option value="">Alle Typen</option>
              {VERB_TYPES.map(t => <option key={t} value={t}>{t}</option>)}
            </select>
          </div>
          <div>
            <Label>Anzahl</Label>
            <Input type="number" min={1} max={500} value={limit} onChange={e => setLimit(parseInt(e.target.value) || 20)} className="mt-1" />
          </div>
          <div className="flex items-end">
            <Button onClick={startScraping} disabled={running} className="w-full">
              {running ? <Loader2 className="h-4 w-4 mr-2 animate-spin" /> : <Play className="h-4 w-4 mr-2" />}
              {running ? 'Starte...' : 'Scraping starten'}
            </Button>
          </div>
        </div>
      </Card>

      <Card>
        <div className="p-4 border-b flex items-center justify-between">
          <h2 className="font-semibold">Job-Verlauf</h2>
          <Button variant="ghost" size="sm" onClick={fetchJobs}><RefreshCw className="h-3 w-3 mr-1" />Aktualisieren</Button>
        </div>
        <div className="divide-y">
          {jobs.length === 0 ? (
            <div className="p-8 text-center text-muted-foreground">Keine Scraping-Jobs vorhanden</div>
          ) : jobs.map(job => (
            <div key={job.id} className="flex items-center justify-between px-6 py-4">
              <div className="flex items-center gap-4">
                <Globe className="h-5 w-5 text-muted-foreground" />
                <div>
                  <p className="font-medium">
                    {job.source}
                    {job.cefr_level && job.cefr_level !== 'all' ? ` (${job.cefr_level})` : ''}
                    {job.verb_type ? ` · ${job.verb_type}` : ''}
                  </p>
                  <p className="text-sm text-muted-foreground">
                    {new Date(job.started_at).toLocaleString('de-DE')}
                    {job.duration_seconds ? ` · ${job.duration_seconds}s` : ''}
                  </p>
                </div>
              </div>
              <div className="flex items-center gap-3">
                <div className="text-right">
                  <span className="text-sm">
                    {job.total_fetched} / {job.requested_count}
                    {job.total_errors > 0 && <span className="text-red-500 ml-1">({job.total_errors} Fehler)</span>}
                  </span>
                  {job.status === 'running' && (
                    <div className="w-24 h-1.5 bg-accent rounded-full mt-1">
                      <div className="h-full bg-blue-500 rounded-full transition-all" style={{ width: `${job.progress}%` }} />
                    </div>
                  )}
                </div>
                {statusBadge(job.status)}
                {(job.status === 'running' || job.status === 'pending') && (
                  <Button variant="ghost" size="sm" onClick={() => cancelJob(job.id)}><Square className="h-4 w-4 text-red-500" /></Button>
                )}
              </div>
            </div>
          ))}
        </div>
      </Card>
    </div>
  )
}
