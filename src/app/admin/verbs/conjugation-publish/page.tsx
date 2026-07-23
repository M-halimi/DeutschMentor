'use client'

import { useEffect, useState } from 'react'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { CheckCircle2, Send, RefreshCw, BookOpen, Globe, History, Loader2, ChevronRight } from 'lucide-react'
import Link from 'next/link'

interface PublishItem {
  id: string; infinitive: string; source_name?: string; verb_type?: string
  cefr_level?: string; auxiliary?: string; separable_prefix?: string
  conjugations: any; created_at: string
}

interface PublishLog {
  id: string; infinitive: string; published_at: string
}

export default function ConjugationPublishPage() {
  const [items, setItems] = useState<PublishItem[]>([])
  const [total, setTotal] = useState(0)
  const [selectedIds, setSelectedIds] = useState<Set<string>>(new Set())
  const [publishing, setPublishing] = useState(false)
  const [loading, setLoading] = useState(true)
  const [logs, setLogs] = useState<PublishLog[]>([])
  const [result, setResult] = useState<{ success: number; failed: number; errors: string[] } | null>(null)

  useEffect(() => { fetchData() }, [])

  async function fetchData() {
    setLoading(true)
    try {
      const [queueRes, logsRes] = await Promise.all([
        fetch('/api/admin/verbs/conjugations/publish?pageSize=100'),
        fetch('/api/admin/verbs/conjugations/publish?logs=true&limit=20'),
      ])
      if (queueRes.ok) { const d = await queueRes.json(); setItems(d.data); setTotal(d.total) }
      if (logsRes.ok) setLogs(await logsRes.json())
    } finally { setLoading(false) }
  }

  async function publishSelected() {
    if (selectedIds.size === 0) return
    setPublishing(true); setResult(null)
    try {
      const res = await fetch('/api/admin/verbs/conjugations/publish', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ ids: Array.from(selectedIds) }),
      })
      if (res.ok) {
        const data = await res.json()
        setResult(data)
        setSelectedIds(new Set())
        await fetchData()
      }
    } finally { setPublishing(false) }
  }

  function toggle(id: string) {
    setSelectedIds(prev => { const next = new Set(prev); if (next.has(id)) next.delete(id); else next.add(id); return next })
  }
  function toggleAll() {
    if (selectedIds.size === items.length) setSelectedIds(new Set())
    else setSelectedIds(new Set(items.map(i => i.id)))
  }

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold tracking-tight">Konjugationen Publish</h1>
          <p className="text-sm text-muted-foreground mt-1">{total} Einträge bereit zur Veröffentlichung</p>
        </div>
        <div className="flex items-center gap-2">
          <Button variant="outline" size="sm" onClick={fetchData}><RefreshCw className="h-4 w-4 mr-2" />Aktualisieren</Button>
        </div>
      </div>

      {result && (
        <Card className={`p-4 ${result.failed > 0 ? 'bg-yellow-50 border-yellow-200' : 'bg-green-50 border-green-200'}`}>
          <div className="flex items-center gap-2">
            <CheckCircle2 className={`h-5 w-5 ${result.failed > 0 ? 'text-yellow-500' : 'text-green-500'}`} />
            <span className="font-medium">{result.success} erfolgreich veröffentlicht</span>
            {result.failed > 0 && <span className="text-red-600">, {result.failed} fehlgeschlagen</span>}
          </div>
          {result.errors.length > 0 && (
            <div className="mt-2 text-xs text-red-600 space-y-1">
              {result.errors.slice(0, 5).map((e, i) => <p key={i}>{e}</p>)}
              {result.errors.length > 5 && <p>...und {result.errors.length - 5} weitere</p>}
            </div>
          )}
        </Card>
      )}

      <Card className="p-6">
        <div className="flex items-center justify-between mb-4">
          <div>
            <h2 className="font-semibold">Freigegebene Konjugationen</h2>
            <p className="text-sm text-muted-foreground">{items.length} bereit zur Veröffentlichung</p>
          </div>
          <Button onClick={publishSelected} disabled={selectedIds.size === 0 || publishing}>
            {publishing ? <Loader2 className="h-4 w-4 mr-2 animate-spin" /> : <Send className="h-4 w-4 mr-2" />}
            {selectedIds.size || 'Alle'} in Produktion übernehmen
          </Button>
        </div>
        {items.length === 0 ? (
          <div className="text-center py-8">
            <BookOpen className="h-8 w-8 mx-auto mb-2 text-muted-foreground" />
            <p className="text-muted-foreground">Keine freigegebenen Konjugationen.</p>
            <div className="flex gap-2 justify-center mt-4">
              <Link href="/admin/verbs/conjugation-review"><Button variant="outline" size="sm"><CheckCircle2 className="h-4 w-4 mr-1" />Zum Review</Button></Link>
              <Link href="/admin/verbs/conjugation-imports"><Button variant="outline" size="sm"><Globe className="h-4 w-4 mr-1" />Import-Queue</Button></Link>
            </div>
          </div>
        ) : (
          <div className="border rounded-lg overflow-hidden">
            <table className="w-full text-sm">
              <thead>
                <tr className="bg-accent/30 border-b">
                  <th className="py-2 px-4 w-8"><input type="checkbox" checked={selectedIds.size === items.length} onChange={toggleAll} className="rounded" /></th>
                  <th className="text-left py-2 px-4 font-medium">Verb</th>
                  <th className="text-left py-2 px-4 font-medium">Level</th>
                  <th className="text-left py-2 px-4 font-medium">Typ</th>
                  <th className="text-left py-2 px-4 font-medium">Hilfsverb</th>
                  <th className="text-left py-2 px-4 font-medium">Präfix</th>
                  <th className="text-left py-2 px-4 font-medium">Erstellt</th>
                </tr>
              </thead>
              <tbody>
                {items.map(i => (
                  <tr key={i.id} className="border-b last:border-0 hover:bg-accent/30">
                    <td className="py-2 px-4"><input type="checkbox" checked={selectedIds.has(i.id)} onChange={() => toggle(i.id)} className="rounded" /></td>
                    <td className="py-2 px-4 font-medium">{i.infinitive}</td>
                    <td className="py-2 px-4">{i.cefr_level || '-'}</td>
                    <td className="py-2 px-4">{i.verb_type || '-'}</td>
                    <td className="py-2 px-4">{i.auxiliary || '-'}</td>
                    <td className="py-2 px-4">{i.separable_prefix || '-'}</td>
                    <td className="py-2 px-4 text-xs text-muted-foreground">{new Date(i.created_at).toLocaleDateString('de-DE')}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </Card>

      <Card>
        <div className="p-4 border-b flex items-center justify-between">
          <h2 className="font-semibold">Letzte Veröffentlichungen</h2>
          <Link href="/admin/verbs/versions"><Button variant="ghost" size="sm"><History className="h-3 w-3 mr-1" />Alle Versionen</Button></Link>
        </div>
        {logs.length === 0 ? (
          <div className="p-8 text-center text-muted-foreground">Noch keine Veröffentlichungen</div>
        ) : (
          <div className="divide-y">
            {logs.slice(0, 15).map(log => (
              <div key={log.id} className="flex items-center justify-between px-6 py-4 hover:bg-accent/30">
                <div>
                  <p className="font-medium">{log.infinitive}</p>
                  <p className="text-xs text-muted-foreground">{new Date(log.published_at).toLocaleString('de-DE')}</p>
                </div>
                <Badge className="bg-green-100 text-green-800 text-xs">veröffentlicht</Badge>
              </div>
            ))}
          </div>
        )}
      </Card>
    </div>
  )
}
