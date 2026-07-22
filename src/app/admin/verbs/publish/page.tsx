'use client'

import { useEffect, useState } from 'react'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { CheckCircle2, Send, RefreshCw, BookOpen, Globe, History, RotateCcw } from 'lucide-react'
import Link from 'next/link'

interface PublishCandidate {
  id: string
  infinitive: string
  source_name: string
  confidence: number
  cefr_level?: string
  verb_type?: string
}

interface PublishLogEntry {
  id: string
  infinitive: string
  operation: string
  status: string
  published_at: string
  version_id?: string
  error_message?: string
}

export default function PublishPage() {
  const [approvedCandidates, setApprovedCandidates] = useState<PublishCandidate[]>([])
  const [selectedIds, setSelectedIds] = useState<Set<string>>(new Set())
  const [publishing, setPublishing] = useState(false)
  const [loading, setLoading] = useState(true)
  const [publishLogs, setPublishLogs] = useState<PublishLogEntry[]>([])

  useEffect(() => { fetchData() }, [])

  async function fetchData() {
    setLoading(true)
    try {
      const [candidatesRes, logsRes] = await Promise.all([
        fetch('/api/admin/verbs/review?approved=true&limit=100'),
        fetch('/api/admin/verbs/publish?limit=20'),
      ])
      if (candidatesRes.ok) setApprovedCandidates(await candidatesRes.json())
      if (logsRes.ok) setPublishLogs(await logsRes.json())
    } finally { setLoading(false) }
  }

  async function publishSelected() {
    if (selectedIds.size === 0) return
    setPublishing(true)
    try {
      await fetch('/api/admin/verbs/publish', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action: 'batch_publish', candidate_ids: Array.from(selectedIds) }),
      })
      setSelectedIds(new Set())
      await fetchData()
    } finally { setPublishing(false) }
  }

  function toggle(id: string) {
    setSelectedIds(prev => {
      const next = new Set(prev)
      if (next.has(id)) next.delete(id); else next.add(id)
      return next
    })
  }

  function toggleAll() {
    if (selectedIds.size === approvedCandidates.length) setSelectedIds(new Set())
    else setSelectedIds(new Set(approvedCandidates.map(c => c.id)))
  }

  function operationBadge(op: string) {
    const variants: Record<string, string> = {
      publish: 'bg-green-100 text-green-800',
      unpublish: 'bg-red-100 text-red-800',
      update: 'bg-blue-100 text-blue-800',
      rollback: 'bg-yellow-100 text-yellow-800',
      version_create: 'bg-purple-100 text-purple-800',
    }
    return <Badge className={variants[op] || ''}>{op}</Badge>
  }

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h1 className="text-2xl font-bold tracking-tight">Publish Center</h1>
        <div className="flex items-center gap-2">
          <Link href="/admin/verbs/versions">
            <Button variant="outline" size="sm"><History className="h-4 w-4 mr-2" />Versionen</Button>
          </Link>
          <Button variant="outline" size="sm" onClick={fetchData}><RefreshCw className="h-4 w-4 mr-2" />Aktualisieren</Button>
        </div>
      </div>

      <Card className="p-6">
        <div className="flex items-center justify-between mb-4">
          <div>
            <h2 className="font-semibold">Freigegebene Kandidaten</h2>
            <p className="text-sm text-muted-foreground">{approvedCandidates.length} bereit zur Veröffentlichung</p>
          </div>
          <Button onClick={publishSelected} disabled={selectedIds.size === 0 || publishing}>
            <Send className="h-4 w-4 mr-2" />{selectedIds.size || 'Alle'} veröffentlichen
          </Button>
        </div>
        {approvedCandidates.length === 0 ? (
          <div className="text-center py-8">
            <BookOpen className="h-8 w-8 mx-auto mb-2 text-muted-foreground" />
            <p className="text-muted-foreground">Keine genehmigten Kandidaten.</p>
            <div className="flex gap-2 justify-center mt-4">
              <Link href="/admin/verbs/review"><Button variant="outline" size="sm"><CheckCircle2 className="h-4 w-4 mr-1" />Zum Review</Button></Link>
              <Link href="/admin/verbs/scraped"><Button variant="outline" size="sm"><Globe className="h-4 w-4 mr-1" />Scraped Data</Button></Link>
            </div>
          </div>
        ) : (
          <div className="divide-y max-h-80 overflow-y-auto border rounded-lg">
            <div className="flex items-center gap-3 px-4 py-2 text-xs font-medium text-muted-foreground uppercase bg-accent/30">
              <input type="checkbox" checked={selectedIds.size === approvedCandidates.length} onChange={toggleAll} className="rounded" />
              <span className="flex-1">Verb</span>
              <span className="w-24">Quelle</span>
              <span className="w-20">CEFR</span>
              <span className="w-20">Vertrauen</span>
            </div>
            {approvedCandidates.map(c => (
              <div key={c.id} className="flex items-center gap-3 px-4 py-3 hover:bg-accent/30">
                <input type="checkbox" checked={selectedIds.has(c.id)} onChange={() => toggle(c.id)} className="rounded" />
                <div className="flex-1 min-w-0">
                  <p className="font-medium truncate">{c.infinitive}</p>
                  {c.verb_type && <p className="text-xs text-muted-foreground">{c.verb_type}</p>}
                </div>
                <div className="w-24"><Badge variant="outline" className="text-xs">{c.source_name}</Badge></div>
                <div className="w-20 text-sm">{c.cefr_level || '-'}</div>
                <div className="w-20 text-sm">{c.confidence}%</div>
              </div>
            ))}
          </div>
        )}
      </Card>

      <Card>
        <div className="p-4 border-b flex items-center justify-between">
          <h2 className="font-semibold">Letzte Veröffentlichungen</h2>
          <Link href="/admin/verbs/versions"><Button variant="ghost" size="sm"><History className="h-3 w-3 mr-1" />Alle Versionen</Button></Link>
        </div>
        <div className="divide-y">
          {publishLogs.length === 0 ? (
            <div className="p-8 text-center text-muted-foreground">Noch keine Veröffentlichungen</div>
          ) : publishLogs.slice(0, 15).map(log => (
            <div key={log.id} className="flex items-center justify-between px-6 py-4">
              <div className="flex items-center gap-3">
                <div>
                  <p className="font-medium">{log.infinitive}</p>
                  <p className="text-xs text-muted-foreground">{new Date(log.published_at).toLocaleString('de-DE')}</p>
                </div>
              </div>
              <div className="flex items-center gap-2">
                {operationBadge(log.operation)}
                <Badge className={log.status === 'success' || log.status === 'completed' ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800'}>
                  {log.status}
                </Badge>
              </div>
            </div>
          ))}
        </div>
      </Card>
    </div>
  )
}
