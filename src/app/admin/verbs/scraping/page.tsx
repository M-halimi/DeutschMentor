'use client'

import { useEffect, useState } from 'react'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Globe, Play, Square, RefreshCw, Loader2, Database, CheckCircle2, AlertTriangle, Clock, ExternalLink, ChevronRight } from 'lucide-react'
import Link from 'next/link'
import { VERB_TYPES } from '@/verbs/constants'

interface ScrapingJob {
  id: string
  source: string
  sources: string[]
  source_count: number
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

interface AvailableSource {
  name: string; confidence: number; adapter_available: boolean; active_in_db: boolean
}

const LIMIT_OPTIONS = [10, 20, 50, 100, 500]

function statusBadge(status: string) {
  const map: Record<string, string> = {
    running: 'bg-blue-100 text-blue-800 border-blue-200',
    completed: 'bg-green-100 text-green-800 border-green-200',
    failed: 'bg-red-100 text-red-800 border-red-200',
    cancelled: 'bg-gray-100 text-gray-800 border-gray-200',
    pending: 'bg-yellow-100 text-yellow-800 border-yellow-200',
    paused: 'bg-purple-100 text-purple-800 border-purple-200',
  }
  const icons: Record<string, any> = {
    running: Loader2, completed: CheckCircle2, failed: AlertTriangle, cancelled: Clock, pending: Clock, paused: Clock,
  }
  const Icon = icons[status]
  return (
    <Badge className={`${map[status] || ''} flex items-center gap-1`}>
      {Icon && <Icon className={`h-3 w-3 ${status === 'running' ? 'animate-spin' : ''}`} />}
      {status}
    </Badge>
  )
}

export default function ScrapingCenterPage() {
  const [selectedSources, setSelectedSources] = useState<string[]>([])
  const [availableSources, setAvailableSources] = useState<AvailableSource[]>([])
  const [cefrLevel, setCefrLevel] = useState('all')
  const [verbType, setVerbType] = useState('')
  const [limit, setLimit] = useState(20)
  const [jobs, setJobs] = useState<ScrapingJob[]>([])
  const [stats, setStats] = useState<ScrapedStats | null>(null)
  const [running, setRunning] = useState(false)

  useEffect(() => {
    fetchJobs()
    fetchStats()
    fetchSources()
  }, [])

  useEffect(() => {
    const interval = setInterval(fetchJobs, 5000)
    return () => clearInterval(interval)
  }, [])

  async function fetchSources() {
    try {
      const res = await fetch('/api/admin/verbs/sources')
      if (res.ok) {
        const data = await res.json()
        const sources: AvailableSource[] = (data.available ?? [])
          .filter((s: any) => s.adapter_available !== false && s.active_in_db !== false)
          .map((s: any) => ({ name: s.name, confidence: s.confidence, adapter_available: true, active_in_db: true }))
        setAvailableSources(sources)
        if (selectedSources.length === 0 && sources.length > 0) {
          setSelectedSources([sources[0].name])
        }
      }
    } catch {}
  }

  async function fetchJobs() {
    try {
      const res = await fetch('/api/admin/verbs/scrape?limit=20')
      if (res.ok) setJobs(await res.json())
    } catch {}
  }

  async function fetchStats() {
    try {
      const res = await fetch('/api/admin/verbs/scraped?stats=true')
      if (res.ok) setStats(await res.json())
    } catch {}
  }

  function toggleSource(name: string) {
    setSelectedSources(prev =>
      prev.includes(name) ? prev.filter(s => s !== name) : [...prev, name]
    )
  }

  async function startScraping() {
    if (selectedSources.length === 0) return
    setRunning(true)
    try {
      const body: Record<string, unknown> = {
        sources: selectedSources,
        cefr_level: cefrLevel,
        limit,
      }
      if (verbType) body.verb_type = verbType
      const res = await fetch('/api/admin/verbs/scrape', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body),
      })
      if (res.ok) { await fetchJobs(); await fetchStats() }
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

  const hasActiveJob = jobs.some(j => j.status === 'running' || j.status === 'pending')
  const allSelected = availableSources.length > 0 && selectedSources.length === availableSources.length

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold tracking-tight">Scraping Center</h1>
          <p className="text-sm text-muted-foreground mt-1">Sammle Verbdaten aus mehreren Quellen</p>
        </div>
        <div className="flex items-center gap-2">
          <Link href="/admin/verbs/scraped">
            <Button variant="outline" size="sm"><Database className="h-4 w-4 mr-2" />Scraped Data ({stats?.pending ?? 0})</Button>
          </Link>
        </div>
      </div>

      {stats && (
        <div className="grid grid-cols-5 gap-3">
          {[
            { label: 'Gesamt', value: stats.total, color: '' },
            { label: 'Ausstehend', value: stats.pending, color: 'text-blue-600' },
            { label: 'Importiert', value: stats.imported, color: 'text-green-600' },
            { label: 'Abgelehnt', value: stats.rejected, color: 'text-red-600' },
            { label: 'Duplikate', value: stats.duplicate, color: 'text-orange-600' },
          ].map(s => (
            <Card key={s.label} className="p-4 text-center">
              <p className="text-xs text-muted-foreground">{s.label}</p>
              <p className={`text-2xl font-bold ${s.color}`}>{s.value}</p>
            </Card>
          ))}
        </div>
      )}

      <Card className="p-6">
        <h2 className="text-lg font-semibold mb-4">Neuen Scraping-Job starten</h2>

        <div className="space-y-4">
          <div>
            <Label className="mb-2 block">Quellen auswählen ({selectedSources.length} von {availableSources.length} ausgewählt)</Label>
            <div className="flex flex-wrap gap-2">
              {availableSources.length === 0 ? (
                <p className="text-sm text-muted-foreground">Keine Quellen verfügbar</p>
              ) : (
                <>
                  <Button
                    variant={allSelected ? 'default' : 'outline'}
                    size="sm"
                    onClick={() => setSelectedSources(allSelected ? [] : availableSources.map(s => s.name))}
                  >
                    {allSelected ? 'Alle abwählen' : 'Alle auswählen'}
                  </Button>
                  {availableSources.map(s => (
                    <Button
                      key={s.name}
                      variant={selectedSources.includes(s.name) ? 'default' : 'outline'}
                      size="sm"
                      onClick={() => toggleSource(s.name)}
                    >
                      {s.name}
                      <span className="ml-1.5 text-xs opacity-70">({s.confidence}%)</span>
                    </Button>
                  ))}
                </>
              )}
            </div>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
            <div>
              <Label>CEFR-Level</Label>
              <select className="w-full rounded-lg border px-3 py-2 text-sm bg-background mt-1" value={cefrLevel} onChange={e => setCefrLevel(e.target.value)}>
                <option value="all">Alle Level</option>
                {['A1','A2','B1','B2','C1','C2'].map(l => <option key={l} value={l}>{l}</option>)}
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
              <select className="w-full rounded-lg border px-3 py-2 text-sm bg-background mt-1" value={limit} onChange={e => setLimit(parseInt(e.target.value))}>
                {LIMIT_OPTIONS.map(n => <option key={n} value={n}>{n} Verben</option>)}
              </select>
            </div>
            <div className="flex items-end">
              <Button onClick={startScraping} disabled={running || hasActiveJob || selectedSources.length === 0} className="w-full">
                {running ? <Loader2 className="h-4 w-4 mr-2 animate-spin" /> : <Play className="h-4 w-4 mr-2" />}
                {running ? 'Starte...' : 'Scraping starten'}
              </Button>
            </div>
          </div>

          {hasActiveJob && (
            <p className="text-xs text-amber-600 flex items-center gap-1">
              <AlertTriangle className="h-3 w-3" />Ein Job läuft bereits. Bitte warten oder vorherigen abbrechen.
            </p>
          )}
          {selectedSources.length === 0 && (
            <p className="text-xs text-red-500">Bitte mindestens eine Quelle auswählen</p>
          )}
        </div>
      </Card>

      <Card>
        <div className="p-4 border-b flex items-center justify-between">
          <h2 className="font-semibold">Job-Verlauf</h2>
          <Button variant="ghost" size="sm" onClick={fetchJobs}><RefreshCw className="h-3 w-3 mr-1" />Aktualisieren</Button>
        </div>
        <div className="divide-y">
          {jobs.length === 0 ? (
            <div className="p-12 text-center text-muted-foreground">
              <Globe className="h-8 w-8 mx-auto mb-2 opacity-30" />
              <p>Keine Scraping-Jobs vorhanden</p>
              <p className="text-xs mt-1">Starten Sie oben einen neuen Scraping-Job</p>
            </div>
          ) : jobs.map(job => (
            <div key={job.id} className="flex items-center justify-between px-6 py-4 hover:bg-accent/30 transition-colors">
              <div className="flex items-center gap-4">
                <Globe className="h-5 w-5 text-muted-foreground shrink-0" />
                <div>
                  <p className="font-medium">
                    {job.source_count > 1
                      ? `${job.source_count} Quellen`
                      : job.sources?.[0] || job.source}
                    {job.cefr_level && job.cefr_level !== 'all' ? ` (${job.cefr_level})` : ''}
                    {job.verb_type ? ` · ${job.verb_type}` : ''}
                  </p>
                  <p className="text-xs text-muted-foreground">
                    {new Date(job.started_at).toLocaleString('de-DE')}
                    {job.duration_seconds ? ` · ${job.duration_seconds}s` : ''}
                    {job.sources?.length > 0 && ` · ${job.sources.join(', ')}`}
                  </p>
                </div>
              </div>
              <div className="flex items-center gap-3">
                <div className="text-right min-w-[100px]">
                  <span className="text-sm font-medium">
                    {job.total_fetched} / {job.requested_count}
                  </span>
                  {job.total_errors > 0 && (
                    <span className="text-red-500 text-xs ml-1">({job.total_errors} Fehler)</span>
                  )}
                  {job.status === 'running' && (
                    <div className="w-24 h-1.5 bg-accent rounded-full mt-1">
                      <div className="h-full bg-blue-500 rounded-full transition-all duration-500" style={{ width: `${job.progress}%` }} />
                    </div>
                  )}
                </div>
                {statusBadge(job.status)}
                <Link href={`/admin/verbs/scraping/jobs/${job.id}`}>
                  <Button variant="ghost" size="sm"><ExternalLink className="h-3.5 w-3.5" /></Button>
                </Link>
                {(job.status === 'running' || job.status === 'pending') && (
                  <Button variant="ghost" size="sm" onClick={() => cancelJob(job.id)} title="Job abbrechen">
                    <Square className="h-4 w-4 text-red-500" />
                  </Button>
                )}
              </div>
            </div>
          ))}
        </div>
      </Card>
    </div>
  )
}
