'use client'

import { useEffect, useState } from 'react'
import Link from 'next/link'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { History, RotateCcw, RefreshCw, Search, ArrowUpDown, Eye, Loader2 } from 'lucide-react'

interface Version {
  id: string; verb_id: string; version: number; status: string
  verb_snapshot: any; published_by?: string; published_at: string
  reason?: string; source_ids?: string[]
}

export default function VersionsPage() {
  const [versions, setVersions] = useState<Version[]>([])
  const [loading, setLoading] = useState(true)
  const [search, setSearch] = useState('')
  const [actionLoading, setActionLoading] = useState<string | null>(null)
  const [groupByVerb, setGroupByVerb] = useState(false)

  useEffect(() => { fetchVersions() }, [])

  async function fetchVersions() {
    setLoading(true)
    try {
      const res = await fetch('/api/admin/verbs/versions?limit=200')
      if (res.ok) setVersions(await res.json())
    } finally { setLoading(false) }
  }

  async function rollback(versionId: string) {
    if (!confirm('Rollback dieser Version durchführen? Diese Aktion kann nicht rückgängig gemacht werden.')) return
    setActionLoading(versionId)
    try {
      await fetch('/api/admin/verbs/publish', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ action: 'rollback', version_id: versionId }),
      })
      await fetchVersions()
    } finally { setActionLoading(null) }
  }

  async function archiveVersion(versionId: string) {
    setActionLoading(versionId)
    try {
      await fetch('/api/admin/verbs/versions', {
        method: 'PATCH', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ id: versionId, status: 'archived' }),
      })
      await fetchVersions()
    } finally { setActionLoading(null) }
  }

  const filtered = versions.filter(v =>
    !search || (v.verb_snapshot?.infinitive || '').toLowerCase().includes(search.toLowerCase())
  )

  const grouped = groupByVerb ? filtered.reduce((acc, v) => {
    const key = v.verb_snapshot?.infinitive || v.verb_id
    if (!acc[key]) acc[key] = []
    acc[key].push(v)
    return acc
  }, {} as Record<string, Version[]>) : null

  function StatusBadge({ status }: { status: string }) {
    const map: Record<string, string> = {
      active: 'bg-green-100 text-green-800', archived: 'bg-gray-100 text-gray-800',
      rolled_back: 'bg-yellow-100 text-yellow-800',
    }
    return <Badge className={map[status] || ''}>{status}</Badge>
  }

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h1 className="text-2xl font-bold tracking-tight">Version History</h1>
        <div className="flex items-center gap-2">
          <Button variant={groupByVerb ? 'default' : 'outline'} size="sm" onClick={() => setGroupByVerb(!groupByVerb)}>
            <History className="h-4 w-4 mr-2" />{groupByVerb ? 'Alle anzeigen' : 'Nach Verb gruppieren'}
          </Button>
          <Link href="/admin/verbs/publish"><Button variant="outline" size="sm"><ArrowUpDown className="h-4 w-4 mr-2" />Publish</Button></Link>
          <Button variant="outline" size="sm" onClick={fetchVersions}><RefreshCw className="h-4 w-4 mr-2" />Aktualisieren</Button>
        </div>
      </div>

      <div className="relative max-w-md">
        <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
        <input type="text" placeholder="Verb suchen..." className="w-full rounded-lg border pl-9 pr-4 py-2 text-sm bg-background"
          value={search} onChange={e => setSearch(e.target.value)} />
      </div>

      {loading ? (
        <div className="py-12 text-center text-muted-foreground"><Loader2 className="h-6 w-6 animate-spin mx-auto mb-2" />Lade Versionen...</div>
      ) : filtered.length === 0 ? (
        <Card className="p-8 text-center text-muted-foreground">
          <History className="h-8 w-8 mx-auto mb-2 opacity-30" />
          <p>{search ? 'Keine Versionen gefunden' : 'Keine Versionen vorhanden'}</p>
        </Card>
      ) : grouped ? (
        <div className="space-y-4">
          {Object.entries(grouped).map(([infinitive, vers]) => (
            <Card key={infinitive}>
              <div className="p-4 border-b bg-accent/20">
                <h3 className="font-semibold">{infinitive}</h3>
                <p className="text-xs text-muted-foreground">{vers.length} Versionen</p>
              </div>
              <div className="divide-y">
                {vers.map(v => (
                  <div key={v.id} className="flex items-center justify-between px-6 py-3 hover:bg-accent/30 text-sm">
                    <div>
                      <p className="font-medium">v{v.version}</p>
                      <p className="text-xs text-muted-foreground">
                        {new Date(v.published_at).toLocaleString('de-DE')}
                        {v.reason ? ` · ${v.reason}` : ''}
                      </p>
                    </div>
                    <div className="flex items-center gap-2">
                      <StatusBadge status={v.status} />
                      {v.status === 'active' && (
                        <>
                          <Button variant="ghost" size="sm" onClick={() => rollback(v.id)} disabled={actionLoading === v.id} title="Rollback">
                            <RotateCcw className={`h-4 w-4 text-yellow-600 ${actionLoading === v.id ? 'animate-spin' : ''}`} />
                          </Button>
                          <Button variant="ghost" size="sm" onClick={() => archiveVersion(v.id)} disabled={actionLoading === v.id} title="Archivieren">
                            <Eye className="h-4 w-4 text-muted-foreground" />
                          </Button>
                        </>
                      )}
                    </div>
                  </div>
                ))}
              </div>
            </Card>
          ))}
        </div>
      ) : (
        <Card>
          <div className="divide-y">
            {filtered.map(v => (
              <div key={v.id} className="flex items-center justify-between px-6 py-4 hover:bg-accent/30">
                <div className="flex items-center gap-4">
                  <History className="h-5 w-5 text-muted-foreground shrink-0" />
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
                  </div>
                </div>
                <div className="flex items-center gap-2">
                  <StatusBadge status={v.status} />
                  {v.status === 'active' && (
                    <>
                      <Button variant="ghost" size="sm" onClick={() => rollback(v.id)} disabled={actionLoading === v.id} title="Rollback">
                        <RotateCcw className={`h-4 w-4 text-yellow-600 ${actionLoading === v.id ? 'animate-spin' : ''}`} />
                      </Button>
                      <Button variant="ghost" size="sm" onClick={() => archiveVersion(v.id)} disabled={actionLoading === v.id} title="Archivieren">
                        <Eye className="h-4 w-4 text-muted-foreground" />
                      </Button>
                    </>
                  )}
                </div>
              </div>
            ))}
          </div>
        </Card>
      )}
    </div>
  )
}