'use client'

import { useEffect, useState } from 'react'
import Link from 'next/link'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Sparkles, AlertTriangle, CheckCircle2, XCircle, RefreshCw, Loader2, Search, ChevronRight } from 'lucide-react'

interface QualitySummary {
  verb_id: string
  quality_score: number
  total_issues: number
  error_count: number
  warning_count: number
  info_count: number
  audit_status: string
  last_audited_at?: string
}

export default function QualityPage() {
  const [summaries, setSummaries] = useState<QualitySummary[]>([])
  const [verbs, setVerbs] = useState<Record<string, string>>({})
  const [loading, setLoading] = useState(true)
  const [auditing, setAuditing] = useState(false)
  const [score, setScore] = useState(0)
  const [search, setSearch] = useState('')
  const [filterStatus, setFilterStatus] = useState('')

  useEffect(() => { fetchData() }, [])

  async function fetchData() {
    setLoading(true)
    try {
      const [sumRes, scoreRes] = await Promise.all([
        fetch('/api/admin/verbs/quality'),
        fetch('/api/admin/verbs/quality?score=true'),
      ])
      if (sumRes.ok) {
        const data = await sumRes.json()
        setSummaries(data)
        await fetchVerbNames(data.map((s: QualitySummary) => s.verb_id))
      }
      if (scoreRes.ok) setScore((await scoreRes.json()).score)
    } finally { setLoading(false) }
  }

  async function fetchVerbNames(ids: string[]) {
    if (ids.length === 0) return
    try {
      const params = new URLSearchParams({ pageSize: String(ids.length) })
      const res = await fetch(`/api/admin/verbs?${params}`)
      if (res.ok) {
        const data = await res.json()
        const map: Record<string, string> = {}
        for (const v of data.data) map[v.id] = v.infinitive
        setVerbs(map)
      }
    } catch { /* ignore */ }
  }

  async function runAudit() {
    setAuditing(true)
    try {
      await fetch('/api/admin/verbs/quality', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({}),
      })
      await fetchData()
    } finally { setAuditing(false) }
  }

  function getScoreBadge(s: number) {
    if (s >= 80) return <Badge className="bg-green-100 text-green-800">{s}</Badge>
    if (s >= 50) return <Badge className="bg-yellow-100 text-yellow-800">{s}</Badge>
    return <Badge className="bg-red-100 text-red-800">{s}</Badge>
  }

  const filtered = summaries
    .filter(s => !filterStatus || s.audit_status === filterStatus)
    .sort((a, b) => a.quality_score - b.quality_score)
    .slice(0, 200)

  const searched = search
    ? filtered.filter(s => (verbs[s.verb_id] || '').toLowerCase().includes(search.toLowerCase()))
    : filtered

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h1 className="text-2xl font-bold tracking-tight">Qualitätsaudit</h1>
        <div className="flex items-center gap-2">
          <Badge variant="outline" className="text-lg px-3 py-1">
            <Sparkles className="h-4 w-4 mr-1" />Ø {score}%
          </Badge>
          <Button onClick={runAudit} disabled={auditing}>
            {auditing ? <Loader2 className="h-4 w-4 mr-2 animate-spin" /> : <RefreshCw className="h-4 w-4 mr-2" />}
            Audit ausführen
          </Button>
        </div>
      </div>

      <Card>
        <div className="p-4 border-b flex items-center justify-between">
          <h2 className="font-semibold">Qualitätsübersicht</h2>
          <div className="flex items-center gap-2">
            <div className="relative">
              <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-3 w-3 text-muted-foreground" />
              <input
                type="text" placeholder="Verb suchen..." className="rounded-lg border pl-8 pr-3 py-1.5 text-xs bg-background w-48"
                value={search} onChange={e => setSearch(e.target.value)}
              />
            </div>
            <select className="rounded-lg border px-2 py-1.5 text-xs bg-background" value={filterStatus} onChange={e => setFilterStatus(e.target.value)}>
              <option value="">Alle</option>
              <option value="passed">Bestanden</option>
              <option value="failed">Fehlgeschlagen</option>
              <option value="pending">Ausstehend</option>
            </select>
            <span className="text-sm text-muted-foreground">{summaries.length} auditiert</span>
          </div>
        </div>
        <div className="divide-y">
          {loading ? (
            <div className="p-8 text-center text-muted-foreground">Lade Qualitätsdaten...</div>
          ) : searched.length === 0 ? (
            <div className="p-8 text-center text-muted-foreground">
              Keine Qualitätsdaten vorhanden. Führen Sie zuerst ein Audit durch.
            </div>
          ) : searched.map(s => (
            <Link key={s.verb_id} href={`/admin/verbs/${s.verb_id}/quality`} className="flex items-center justify-between px-6 py-4 hover:bg-accent/50 transition-colors">
              <div className="flex items-center gap-3">
                {getScoreBadge(s.quality_score)}
                <div>
                  <p className="font-medium text-sm">
                    {verbs[s.verb_id] || s.verb_id.slice(0, 8)}
                  </p>
                  <p className="text-xs text-muted-foreground">
                    {s.error_count > 0 && <span className="text-red-500 mr-1">{s.error_count} Fehler</span>}
                    {s.warning_count > 0 && <span className="text-yellow-500 mr-1">{s.warning_count} Warnungen</span>}
                    {s.total_issues} Issues
                  </p>
                  {s.last_audited_at && (
                    <p className="text-xs text-muted-foreground">Zuletzt: {new Date(s.last_audited_at).toLocaleString('de-DE')}</p>
                  )}
                </div>
              </div>
              <div className="flex items-center gap-2">
                <Badge className={
                  s.audit_status === 'passed' ? 'bg-green-100 text-green-800' :
                  s.audit_status === 'failed' ? 'bg-red-100 text-red-800' : 'bg-yellow-100 text-yellow-800'
                }>{s.audit_status}</Badge>
                <ChevronRight className="h-4 w-4 text-muted-foreground" />
              </div>
            </Link>
          ))}
        </div>
      </Card>
    </div>
  )
}
