'use client'

import { useEffect, useState } from 'react'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Globe, CheckCircle2, XCircle, ExternalLink } from 'lucide-react'

interface SourceInfo {
  name: string
  website: string
  description?: string
  confidence: number
  priority: number
  active: boolean
  adapter_available?: boolean
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

  if (loading) return <div className="p-8 text-center text-muted-foreground">Lade Quellen...</div>

  return (
    <div className="space-y-6">
      <h1 className="text-2xl font-bold tracking-tight">Datenquellen</h1>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
        {sources.available.map(source => (
          <Card key={source.name} className="p-6">
            <div className="flex items-start justify-between mb-3">
              <div className="flex items-center gap-2">
                <Globe className="h-5 w-5 text-muted-foreground" />
                <h3 className="font-semibold">{source.name}</h3>
              </div>
              {source.adapter_available ? (
                <CheckCircle2 className="h-5 w-5 text-green-500" />
              ) : (
                <XCircle className="h-5 w-5 text-gray-300" />
              )}
            </div>
            <p className="text-sm text-muted-foreground mb-3">{source.website}</p>
            <div className="flex items-center gap-2">
              <Badge variant="outline">Vertrauen: {source.confidence}%</Badge>
              <Badge variant="outline">Priorität: {source.priority}</Badge>
              {source.adapter_available ? (
                <Badge className="bg-green-100 text-green-800">Verfügbar</Badge>
              ) : (
                <Badge variant="secondary">Nicht implementiert</Badge>
              )}
            </div>
          </Card>
        ))}
      </div>

      <Card className="p-6">
        <h2 className="font-semibold mb-2">Legende</h2>
        <div className="space-y-1 text-sm text-muted-foreground">
          <p><CheckCircle2 className="h-4 w-4 inline text-green-500 mr-1" /> Adapter verfügbar — Scraping möglich</p>
          <p><XCircle className="h-4 w-4 inline text-gray-300 mr-1" /> Kein Adapter — Scraping nicht implementiert</p>
        </div>
      </Card>
    </div>
  )
}
