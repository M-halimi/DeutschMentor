'use client'

import { useEffect, useState } from 'react'
import Link from 'next/link'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { History, RotateCcw, RefreshCw, ExternalLink, ArrowUpDown, Search } from 'lucide-react'

interface Version {
  id: string
  verb_id: string
  version: number
  status: string
  verb_snapshot: any
  published_by?: string
  published_at: string
  reason?: string
  source_ids?: string[]
}

export default function VersionsPage() {
  const [versions, setVersions] = useState<Version[]>([])
  const [loading, setLoading] = useState(true)
  const [search, setSearch] = useState('')

  useEffect(() => { fetchVersions() }, [])

  async function fetchVersions() {
    setLoading(true)
    try {
      const res = await fetch('/api/admin/verbs/versions?limit=100')
      if (res.ok) setVersions(await res.json())
    } finally { setLoading(false) }
  }

  async function rollback(versionId: string) {
    if (!confirm('Rollback dieser Version durchführen? Diese Aktion kann nicht rückgängig gemacht werden.')) return
    await fetch('/api/admin/verbs/publish', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ action: 'rollback', version_id: versionId }),
    })
    await fetchVersions()
  }

  async function archiveVersion(versionId: string) {
    await fetch('/api/admin/verbs/versions', {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ id: versionId, status: 'archived' }),
    })
    await fetchVersions()
  }

  function statusBadge(status: string) {
    const variants: Record<string, string> = {
      active: 'bg-green-100 text-green-800',
      archived: 'bg-gray-100 text-gray-800',
      rolled_back: 'bg-yellow-100 text-yellow-800',
    }
    return <Badge className={variants[status] || ''}>{status}</Badge>
  }

  const filtered = versions.filter(v =>
    !search || (v.verb_snapshot?.infinitive || '').toLowerCase().includes(search.toLowerCase())
  )

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h1 className="text-2xl font-bold tracking-tight">Version History</h1>
        <div className="flex items-center gap-2">
          <Link href="/admin/verbs/publish">
            <Button variant="outline" size="sm"><ArrowUpDown className="h-4 w-4 mr-2" />Publish</Button>
          </Link>
          <Button variant="outline" size="sm" onClick={fetchVersions}><RefreshCw className="h-4 w-4 mr-2" />Aktualisieren</Button>
        </div>
      </div>

      <div className="flex items-center gap-2">
        <div className="relative flex-1 max-w-md">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
          <input
            type="text" placeholder="Verb suchen..."
            className="w-full rounded-lg border pl-9 pr-4 py-2 text-sm bg-background"
            value={search} onChange={e => setSearch(e.target.value)}
          />
        </div>
      </div>

      <Card>
        <div className="divide-y">
          {loading ? (
            <div className="p-8 text-center text-muted-foreground">Lade Versionen...</div>
          ) : filtered.length === 0 ? (
            <div className="p-8 text-center text-muted-foreground">
              {search ? 'Keine Versionen gefunden' : 'Keine Versionen vorhanden'}
            </div>
          ) : filtered.map(v => (
            <div key={v.id} className="flex items-center justify-between px-6 py-4">
              <div className="flex items-center gap-4">
                <History className="h-5 w-5 text-muted-foreground" />
                <div>
                  <p className="font-medium">
                    v{v.version} - <Link href={`/admin/verbs/${v.verb_id}`} className="text-primary hover:underline">
                      {v.verb_snapshot?.infinitive || '(unbekannt)'}
                    </Link>
                  </p>
                  <p className="text-sm text-muted-foreground">
                    {new Date(v.published_at).toLocaleString('de-DE')}
                    {v.reason ? ` · ${v.reason}` : ''}
                    {v.published_by ? ` · von ${v.published_by}` : ''}
                  </p>
                  {v.source_ids && v.source_ids.length > 0 && (
                    <p className="text-xs text-muted-foreground">{v.source_ids.length} Quellen</p>
                  )}
                </div>
              </div>
              <div className="flex items-center gap-2">
                {statusBadge(v.status)}
                {v.status === 'active' && (
                  <>
                    <Button variant="ghost" size="sm" onClick={() => rollback(v.id)} title="Rollback">
                      <RotateCcw className="h-4 w-4 text-yellow-600" />
                    </Button>
                    <Button variant="ghost" size="sm" onClick={() => archiveVersion(v.id)} title="Archivieren">
                      <ExternalLink className="h-4 w-4 text-muted-foreground" />
                    </Button>
                  </>
                )}
              </div>
            </div>
          ))}
        </div>
      </Card>
    </div>
  )
}
