'use client'

import { useEffect, useState } from 'react'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Globe, CheckCircle2, XCircle, ExternalLink, Loader2 } from 'lucide-react'

interface SourceInfo {
  name: string; website: string; description?: string
  confidence: number; priority: number; active: boolean; adapter_available?: boolean
}

export default function SourcesPage() {
  const [sources, setSources] = useState<{ configured: any[]; available: SourceInfo[] }>({ configured: [], available: [] })
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    fetch('/api/admin/verbs/sources')
      .then(res => res.ok ? res.json() : { configured: [], available: [] })
      .then(data => setSources(data))
      .finally(() => setLoading(false))
  }, [])

  if (loading) return <div className="py-12 text-center text-muted-foreground"><Loader2 className="h-6 w-6 animate-spin mx-auto mb-2" />Lade Quellen...</div>

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-2xl font-bold tracking-tight">Datenquellen</h1>
        <p className="text-sm text-muted-foreground mt-1">{sources.available.length} Quellen konfiguriert</p>
      </div>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
        {sources.available.map(source => (
          <Card key={source.name} className="p-6 hover:shadow-md transition-shadow">
            <div className="flex items-start justify-between mb-3">
              <div className="flex items-center gap-2">
                <Globe className="h-5 w-5 text-muted-foreground" />
                <h3 className="font-semibold">{source.name}</h3>
              </div>
              {source.adapter_available ? (
                <CheckCircle2 className="h-5 w-5 text-green-500 shrink-0" />
              ) : (
                <XCircle className="h-5 w-5 text-gray-300 shrink-0" />
              )}
            </div>
            <a href={source.website} target="_blank" rel="noopener noreferrer" className="text-xs text-primary hover:underline flex items-center gap-1 mb-3">
              {source.website} <ExternalLink className="h-3 w-3" />
            </a>
            <div className="flex items-center gap-2 flex-wrap">
              <Badge variant="outline" className="text-xs">Vertrauen: {source.confidence}%</Badge>
              <Badge variant="outline" className="text-xs">Priorität: {source.priority}</Badge>
              {source.adapter_available ? (
                <Badge className="bg-green-100 text-green-800 text-xs">Adapter verfügbar</Badge>
              ) : (
                <Badge variant="secondary" className="text-xs">Nicht implementiert</Badge>
              )}
            </div>
          </Card>
        ))}
      </div>

      <Card className="p-6">
        <h2 className="font-semibold mb-2">Legende</h2>
        <div className="space-y-1 text-sm text-muted-foreground">
          <p className="flex items-center gap-2"><CheckCircle2 className="h-4 w-4 text-green-500" /> Adapter verfügbar — Scraping möglich</p>
          <p className="flex items-center gap-2"><XCircle className="h-4 w-4 text-gray-300" /> Kein Adapter — Scraping nicht implementiert</p>
        </div>
      </Card>
    </div>
  )
}