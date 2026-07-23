'use client'

import { useEffect, useState } from 'react'
import { useParams } from 'next/navigation'
import Link from 'next/link'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { ArrowLeft, Sparkles, AlertTriangle, CheckCircle2, XCircle, RefreshCw, Loader2, Info } from 'lucide-react'

interface Finding {
  id: string
  category: string
  field_name: string
  current_value?: string
  expected_value?: string
  explanation?: string
  example_wrong?: string
  example_correct?: string
  severity: 'error' | 'warning' | 'info'
  status: string
  created_at: string
}

interface Summary {
  quality_score: number
  total_issues: number
  error_count: number
  warning_count: number
  info_count: number
  audit_status: string
  last_audited_at?: string
}

export default function VerbQualityPage() {
  const params = useParams()
  const [verb, setVerb] = useState<any>(null)
  const [findings, setFindings] = useState<Finding[]>([])
  const [summary, setSummary] = useState<Summary | null>(null)
  const [loading, setLoading] = useState(true)
  const [auditing, setAuditing] = useState(false)

  useEffect(() => {
    if (params.id) fetchData()
  }, [params.id])

  async function fetchData() {
    setLoading(true)
    try {
      const [verbRes, issueRes, summaryRes] = await Promise.all([
        fetch(`/api/admin/verbs/${params.id}`),
        fetch(`/api/admin/verbs/quality?verb_id=${params.id}&issues=true`),
        fetch(`/api/admin/verbs/quality?verb_id=${params.id}`),
      ])
      if (verbRes.ok) setVerb(await verbRes.json())
      if (issueRes.ok) setFindings(await issueRes.json())
      if (summaryRes.ok) {
        const data = await summaryRes.json()
        setSummary(data)
      }
    } finally { setLoading(false) }
  }

  async function runAudit() {
    setAuditing(true)
    try {
      await fetch('/api/admin/verbs/quality', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ verb_id: params.id }),
      })
      await fetchData()
    } finally { setAuditing(false) }
  }

  async function updateFindingStatus(findingId: string, status: string) {
    await fetch('/api/admin/verbs/quality/findings', {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ id: findingId, status }),
    })
    await fetchData()
  }

  if (loading) return (
    <div className="p-8 text-center text-muted-foreground">
      <Loader2 className="h-6 w-6 animate-spin mx-auto mb-2" />Lade Qualitätsdaten...
    </div>
  )

  if (!verb) return <div className="p-8 text-center text-muted-foreground">Verb nicht gefunden</div>

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-3">
          <Link href={`/admin/verbs/${params.id}`}>
            <Button variant="ghost" size="sm"><ArrowLeft className="h-4 w-4" /></Button>
          </Link>
          <div>
            <h1 className="text-2xl font-bold">Qualität: {verb.infinitive}</h1>
            <p className="text-muted-foreground">{verb.english_translation}</p>
          </div>
        </div>
        <div className="flex items-center gap-2">
          <Button onClick={runAudit} disabled={auditing} size="sm">
            {auditing ? <Loader2 className="h-4 w-4 mr-2 animate-spin" /> : <RefreshCw className="h-4 w-4 mr-2" />}
            Neu prüfen
          </Button>
        </div>
      </div>

      {summary && (
        <div className="grid grid-cols-2 sm:grid-cols-5 gap-3">
          <Card className="p-4">
            <p className="text-xs text-muted-foreground">Qualität</p>
            <p className={`text-2xl font-bold ${summary.quality_score >= 80 ? 'text-green-600' : summary.quality_score >= 50 ? 'text-yellow-600' : 'text-red-600'}`}>
              {summary.quality_score}%
            </p>
          </Card>
          <Card className="p-4">
            <p className="text-xs text-muted-foreground">Issues</p>
            <p className="text-2xl font-bold">{summary.total_issues}</p>
          </Card>
          <Card className="p-4">
            <p className="text-xs text-muted-foreground">Fehler</p>
            <p className="text-2xl font-bold text-red-600">{summary.error_count}</p>
          </Card>
          <Card className="p-4">
            <p className="text-xs text-muted-foreground">Warnungen</p>
            <p className="text-2xl font-bold text-yellow-600">{summary.warning_count}</p>
          </Card>
          <Card className="p-4">
            <p className="text-xs text-muted-foreground">Status</p>
            <Badge className={`mt-1 ${
              summary.audit_status === 'passed' ? 'bg-green-100 text-green-800' :
              summary.audit_status === 'failed' ? 'bg-red-100 text-red-800' : 'bg-yellow-100 text-yellow-800'
            }`}>{summary.audit_status}</Badge>
          </Card>
        </div>
      )}

      <Card>
        <div className="p-4 border-b">
          <h2 className="font-semibold">Qualitätsprüfungen ({findings.length})</h2>
        </div>
        <div className="divide-y">
          {findings.length === 0 ? (
            <div className="p-8 text-center text-muted-foreground">
              <CheckCircle2 className="h-8 w-8 mx-auto mb-2 text-green-500" />
              <p>Keine Issues gefunden. Das Verb hat bestanden!</p>
            </div>
          ) : findings.map(f => (
            <div key={f.id} className="p-4">
              <div className="flex items-start justify-between mb-2">
                <div className="flex items-center gap-2">
                  {f.severity === 'error' ? <XCircle className="h-4 w-4 text-red-500" /> :
                   f.severity === 'warning' ? <AlertTriangle className="h-4 w-4 text-yellow-500" /> :
                   <Info className="h-4 w-4 text-blue-500" />}
                  <span className="font-medium text-sm">{f.category}</span>
                  <Badge variant="outline" className="text-xs">{f.field_name}</Badge>
                  <Badge className={`text-xs ${
                    f.severity === 'error' ? 'bg-red-100 text-red-800' :
                    f.severity === 'warning' ? 'bg-yellow-100 text-yellow-800' : 'bg-blue-100 text-blue-800'
                  }`}>{f.severity}</Badge>
                </div>
                <Badge className={`text-xs ${
                  f.status === 'open' ? 'bg-yellow-100 text-yellow-800' :
                  f.status === 'approved' ? 'bg-green-100 text-green-800' : 'bg-gray-100 text-gray-800'
                }`}>{f.status}</Badge>
              </div>
              <p className="text-sm text-muted-foreground mb-2">{f.explanation}</p>
              <div className="flex gap-4 text-xs">
                {f.current_value && <span>Aktuell: <code className="bg-accent px-1 rounded">{f.current_value}</code></span>}
                {f.expected_value && <span>Erwartet: <code className="bg-accent px-1 rounded">{f.expected_value}</code></span>}
              </div>
              {f.status === 'open' && (
                <div className="flex gap-1 mt-2">
                  <Button variant="ghost" size="sm" className="h-7 text-xs" onClick={() => updateFindingStatus(f.id, 'approved')}>
                    <CheckCircle2 className="h-3 w-3 mr-1" />Akzeptieren
                  </Button>
                  <Button variant="ghost" size="sm" className="h-7 text-xs text-red-600" onClick={() => updateFindingStatus(f.id, 'rejected')}>
                    <XCircle className="h-3 w-3 mr-1" />Ablehnen
                  </Button>
                </div>
              )}
            </div>
          ))}
        </div>
      </Card>
    </div>
  )
}