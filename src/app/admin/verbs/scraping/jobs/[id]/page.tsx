'use client'

import { useEffect, useState } from 'react'
import { useParams } from 'next/navigation'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Globe, Loader2, CheckCircle2, AlertTriangle, Clock, XCircle, ArrowLeft, ChevronDown, ChevronRight, ExternalLink, Database } from 'lucide-react'
import Link from 'next/link'

interface SourceResult {
  source_name: string
  status: string
  confidence: number
  error_message?: string
  duration_ms?: number
}

interface VerbSummary {
  infinitive: string
  sourceCount: number
  completedCount: number
  failedCount: number
  skippedCount: number
  avgConfidence: number
  sources: SourceResult[]
}

interface JobDetail {
  id: string
  source: string
  sources: string[]
  cefr_level?: string
  verb_type?: string
  requested_count: number
  status: string
  total_fetched: number
  total_errors: number
  total: number
  progress: number
  error_message?: string
  started_at: string
  completed_at?: string
  duration_seconds?: number
}

function statusBadge(status: string) {
  const map: Record<string, string> = {
    running: 'bg-blue-100 text-blue-800', completed: 'bg-green-100 text-green-800',
    failed: 'bg-red-100 text-red-800', cancelled: 'bg-gray-100 text-gray-800',
    pending: 'bg-yellow-100 text-yellow-800', skipped: 'bg-orange-100 text-orange-800',
  }
  const icons: Record<string, any> = {
    running: Loader2, completed: CheckCircle2, failed: XCircle, cancelled: Clock, pending: Clock, skipped: AlertTriangle,
  }
  const Icon = icons[status]
  return (
    <Badge className={`${map[status] || ''} flex items-center gap-1`}>
      {Icon && <Icon className={`h-3 w-3 ${status === 'running' ? 'animate-spin' : ''}`} />}
      {status}
    </Badge>
  )
}

export default function JobDetailPage() {
  const params = useParams()
  const jobId = params.id as string
  const [job, setJob] = useState<JobDetail | null>(null)
  const [verbs, setVerbs] = useState<VerbSummary[]>([])
  const [loading, setLoading] = useState(true)
  const [expandedVerb, setExpandedVerb] = useState<string | null>(null)

  useEffect(() => {
    fetchJob()
  }, [jobId])

  useEffect(() => {
    const interval = setInterval(fetchJob, 5000)
    return () => clearInterval(interval)
  }, [jobId])

  async function fetchJob() {
    try {
      const res = await fetch(`/api/admin/verbs/scraping/jobs/${jobId}`)
      if (res.ok) {
        const data = await res.json()
        setJob(data.job)
        setVerbs(data.verbSummary || [])
      }
    } catch {} finally { setLoading(false) }
  }

  if (loading) {
    return (
      <div className="flex items-center justify-center min-h-[400px]">
        <Loader2 className="h-6 w-6 animate-spin" />
      </div>
    )
  }

  if (!job) {
    return (
      <div className="text-center py-12">
        <p className="text-muted-foreground">Job nicht gefunden</p>
        <Link href="/admin/verbs/scraping"><Button variant="outline" className="mt-4">Zurück</Button></Link>
      </div>
    )
  }

  const totalSources = job.sources?.length || 1

  return (
    <div className="space-y-6">
      <div className="flex items-center gap-4">
        <Link href="/admin/verbs/scraping">
          <Button variant="ghost" size="sm"><ArrowLeft className="h-4 w-4 mr-1" />Zurück</Button>
        </Link>
        <div>
          <h1 className="text-2xl font-bold tracking-tight">Job #{jobId.slice(0, 8)}</h1>
          <p className="text-sm text-muted-foreground">{job.started_at ? new Date(job.started_at).toLocaleString('de-DE') : ''}</p>
        </div>
        <div className="ml-auto">{statusBadge(job.status)}</div>
      </div>

      <div className="grid grid-cols-2 sm:grid-cols-4 lg:grid-cols-6 gap-3">
        <Card className="p-4 text-center">
          <p className="text-xs text-muted-foreground">Quellen</p>
          <p className="text-xl font-bold">{totalSources}</p>
        </Card>
        <Card className="p-4 text-center">
          <p className="text-xs text-muted-foreground">Angefordert</p>
          <p className="text-xl font-bold">{job.requested_count}</p>
        </Card>
        <Card className="p-4 text-center">
          <p className="text-xs text-muted-foreground">Erfolgreich</p>
          <p className="text-xl font-bold text-green-600">{job.total_fetched}</p>
        </Card>
        <Card className="p-4 text-center">
          <p className="text-xs text-muted-foreground">Fehlgeschlagen</p>
          <p className="text-xl font-bold text-red-600">{job.total_errors}</p>
        </Card>
        <Card className="p-4 text-center">
          <p className="text-xs text-muted-foreground">CEFR</p>
          <p className="text-xl font-bold">{job.cefr_level || 'Alle'}</p>
        </Card>
        <Card className="p-4 text-center">
          <p className="text-xs text-muted-foreground">Dauer</p>
          <p className="text-xl font-bold">{job.duration_seconds ? `${job.duration_seconds}s` : '-'}</p>
        </Card>
      </div>

      {job.sources && job.sources.length > 0 && (
        <Card className="p-4">
          <p className="text-sm font-medium mb-2">Quellen</p>
          <div className="flex flex-wrap gap-2">
            {job.sources.map(s => <Badge key={s} variant="outline">{s}</Badge>)}
          </div>
        </Card>
      )}

      {job.error_message && (
        <Card className="p-4 border-red-200 bg-red-50">
          <p className="text-sm font-medium text-red-800">Fehler</p>
          <p className="text-sm text-red-600 mt-1">{job.error_message}</p>
        </Card>
      )}

      <Card>
        <div className="p-4 border-b flex items-center justify-between">
          <h2 className="font-semibold">Ergebnisse ({verbs.length} Verben)</h2>
          <div className="flex items-center gap-2 text-xs text-muted-foreground">
            <span className="text-green-600">{verbs.reduce((s, v) => s + v.completedCount, 0)} erfolgreich</span>
            <span>·</span>
            <span className="text-red-600">{verbs.reduce((s, v) => s + v.failedCount, 0)} fehlgeschlagen</span>
            <span>·</span>
            <span className="text-orange-600">{verbs.reduce((s, v) => s + v.skippedCount, 0)} übersprungen</span>
          </div>
        </div>
        <div className="overflow-x-auto">
          <table className="w-full text-sm">
            <thead>
              <tr className="border-b bg-accent/30">
                <th className="text-left py-3 px-4 font-medium">Verb</th>
                <th className="text-center py-3 px-4 font-medium">Quellen</th>
                <th className="text-center py-3 px-4 font-medium">Qualität</th>
                <th className="text-center py-3 px-4 font-medium">Vertrauen</th>
                <th className="text-center py-3 px-4 font-medium">Status</th>
                <th className="text-right py-3 px-4 font-medium">Aktion</th>
              </tr>
            </thead>
            <tbody>
              {verbs.length === 0 ? (
                <tr>
                  <td colSpan={6} className="py-12 text-center text-muted-foreground">
                    <Globe className="h-8 w-8 mx-auto mb-2 opacity-30" />
                    <p>Keine Ergebnisse</p>
                  </td>
                </tr>
              ) : verbs.map(v => (
                <>
                  <tr key={v.infinitive} className="border-b hover:bg-accent/30 transition-colors">
                    <td className="py-3 px-4 font-medium">{v.infinitive}</td>
                    <td className="py-3 px-4 text-center">
                      <span className="text-green-600 font-medium">{v.completedCount}</span>
                      <span className="text-muted-foreground">/{v.sourceCount}</span>
                      {v.failedCount > 0 && <span className="text-red-500 ml-1">({v.failedCount} ×)</span>}
                    </td>
                    <td className="py-3 px-4 text-center">
                      <div className="flex items-center justify-center gap-1">
                        <div className="w-16 h-1.5 bg-accent rounded-full">
                          <div className={`h-full rounded-full ${v.avgConfidence >= 80 ? 'bg-green-500' : v.avgConfidence >= 50 ? 'bg-yellow-500' : 'bg-red-500'}`}
                            style={{ width: `${v.avgConfidence}%` }} />
                        </div>
                      </div>
                    </td>
                    <td className="py-3 px-4 text-center">
                      <Badge className={`text-xs ${v.avgConfidence >= 80 ? 'bg-green-100 text-green-800' : v.avgConfidence >= 50 ? 'bg-yellow-100 text-yellow-800' : 'bg-red-100 text-red-800'}`}>
                        {v.avgConfidence}%
                      </Badge>
                    </td>
                    <td className="py-3 px-4 text-center">
                      {v.failedCount > 0 ? statusBadge('failed') : statusBadge('completed')}
                    </td>
                    <td className="py-3 px-4 text-right">
                      <Button variant="ghost" size="sm" onClick={() => setExpandedVerb(expandedVerb === v.infinitive ? null : v.infinitive)}>
                        {expandedVerb === v.infinitive ? <ChevronDown className="h-4 w-4" /> : <ChevronRight className="h-4 w-4" />}
                      </Button>
                    </td>
                  </tr>
                  {expandedVerb === v.infinitive && (
                    <tr key={`${v.infinitive}-detail`} className="bg-accent/5">
                      <td colSpan={6} className="p-4">
                        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-3">
                          {v.sources.map(s => (
                            <Card key={s.source_name} className={`p-3 ${s.status === 'completed' ? '' : 'border-red-200'}`}>
                              <div className="flex items-center justify-between mb-2">
                                <p className="font-medium text-sm">{s.source_name}</p>
                                {s.status === 'completed'
                                  ? <CheckCircle2 className="h-4 w-4 text-green-500" />
                                  : <XCircle className="h-4 w-4 text-red-500" />
                                }
                              </div>
                              <div className="text-xs text-muted-foreground space-y-1">
                                <p>Status: {s.status}</p>
                                <p>Vertrauen: {s.confidence}%</p>
                                {s.duration_ms != null && <p>Dauer: {s.duration_ms}ms</p>}
                                {s.error_message && <p className="text-red-500">Fehler: {s.error_message}</p>}
                              </div>
                            </Card>
                          ))}
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
    </div>
  )
}
