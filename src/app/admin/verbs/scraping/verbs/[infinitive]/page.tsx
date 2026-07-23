'use client'

import { useEffect, useState } from 'react'
import { useParams } from 'next/navigation'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Loader2, ArrowLeft, CheckCircle2, XCircle, AlertTriangle, ChevronRight, Download, XCircle as XMark } from 'lucide-react'
import Link from 'next/link'

type TabId = 'overview' | 'sources' | 'conjugations' | 'grammar' | 'examples' | 'raw' | 'conflicts'

interface SourceResult {
  id: string
  infinitive: string
  source_name: string
  source_url?: string
  confidence: number
  status: string
  raw_data: Record<string, any>
  error_message?: string
  duration_ms?: number
  created_at: string
}

interface Conflict {
  id: string
  infinitive: string
  field_name: string
  source_a_name: string
  source_a_value?: string
  source_b_name: string
  source_b_value?: string
  resolution?: string
}

interface ComparisonData {
  results: SourceResult[]
  merged: {
    infinitive: string
    translation?: string
    ipa?: string
    cefr_level?: string
    verb_type?: string
    auxiliary?: string
    partizip_2?: string
    praeteritum?: string
    separable_prefix?: string
    is_reflexive?: boolean
    reflexive_pronoun?: string
    preposition?: string
    transitivity?: string
    conjugations: Record<string, Record<string, string>>
    examples: { german: string; english?: string }[]
    synonyms: string[]
    antonyms: string[]
    source_name: string
    confidence: number
    status: string
  } | null
  conflicts: Conflict[]
}

const TABS: { id: TabId; label: string }[] = [
  { id: 'overview', label: 'Overview' },
  { id: 'sources', label: 'Source Comparison' },
  { id: 'conjugations', label: 'Conjugations' },
  { id: 'grammar', label: 'Grammar' },
  { id: 'examples', label: 'Examples' },
  { id: 'raw', label: 'Raw Data' },
  { id: 'conflicts', label: 'Conflicts' },
]

const FIELDS = [
  'translation', 'ipa', 'cefr_level', 'verb_type', 'auxiliary',
  'partizip_2', 'praeteritum', 'separable_prefix', 'prefix',
  'is_reflexive', 'reflexive_pronoun', 'preposition', 'transitivity',
]

export default function VerbComparisonPage() {
  const params = useParams()
  const infinitive = params.infinitive as string
  const decoded = decodeURIComponent(infinitive)
  const [data, setData] = useState<ComparisonData | null>(null)
  const [loading, setLoading] = useState(true)
  const [activeTab, setActiveTab] = useState<TabId>('overview')

  useEffect(() => {
    fetchComparison()
  }, [infinitive])

  async function fetchComparison() {
    try {
      const res = await fetch(`/api/admin/verbs/scraping/verbs/${encodeURIComponent(decoded)}`)
      if (res.ok) setData(await res.json())
    } catch {} finally { setLoading(false) }
  }

  if (loading) {
    return (
      <div className="flex items-center justify-center min-h-[400px]">
        <Loader2 className="h-6 w-6 animate-spin" />
      </div>
    )
  }

  if (!data) {
    return (
      <div className="text-center py-12">
        <p className="text-muted-foreground">Verb nicht gefunden</p>
        <Link href="/admin/verbs/scraped"><Button variant="outline" className="mt-4">Zurück</Button></Link>
      </div>
    )
  }

  const { results, merged, conflicts } = data

  function sourceValue(field: string, sourceName: string): string {
    const r = results.find(x => x.source_name === sourceName)
    if (!r?.raw_data) return '-'
    const val = r.raw_data[field]
    return val != null ? String(val) : '-'
  }

  function fieldDiffers(field: string): boolean {
    const vals = results.map(r => r.raw_data?.[field]).filter(v => v != null && v !== '')
    return new Set(vals.map(v => String(v))).size > 1
  }

  function fieldConfidence(field: string): number {
    const sourceNames = [...new Set(results.map(r => r.source_name))]
    const vals = new Map<string, number>()
    for (const r of results) {
      const v = r.raw_data?.[field]
      if (v != null && v !== '') {
        const key = String(v)
        vals.set(key, (vals.get(key) || 0) + (r.confidence || 0))
      }
    }
    if (vals.size === 0) return 0
    const best = Math.max(...vals.values())
    const total = results.reduce((s, r) => s + (r.confidence || 0), 0)
    return total > 0 ? Math.round((best / total) * 100) : 0
  }

  const sourceNames = [...new Set(results.map(r => r.source_name))]

  return (
    <div className="space-y-6">
      <div className="flex items-center gap-4">
        <Link href="/admin/verbs/scraped">
          <Button variant="ghost" size="sm"><ArrowLeft className="h-4 w-4 mr-1" />Zurück</Button>
        </Link>
        <div>
          <h1 className="text-2xl font-bold tracking-tight">{decoded}</h1>
          {merged?.translation && <p className="text-sm text-muted-foreground">{merged.translation}</p>}
        </div>
        <div className="ml-auto flex items-center gap-2">
          {merged && (
            <Badge className={merged.confidence >= 80 ? 'bg-green-100 text-green-800' : merged.confidence >= 50 ? 'bg-yellow-100 text-yellow-800' : 'bg-red-100 text-red-800'}>
              {merged.confidence}% merged
            </Badge>
          )}
          <Badge variant="outline">{results.length} Quellen</Badge>
        </div>
      </div>

      <div className="flex gap-1 border-b overflow-x-auto">
        {TABS.map(tab => (
          <button
            key={tab.id}
            onClick={() => setActiveTab(tab.id)}
            className={`px-4 py-2 text-sm font-medium whitespace-nowrap border-b-2 transition-colors ${
              activeTab === tab.id
                ? 'border-primary text-primary'
                : 'border-transparent text-muted-foreground hover:text-foreground'
            }`}
          >
            {tab.label}
            {tab.id === 'conflicts' && conflicts.length > 0 && (
              <span className="ml-1 text-xs bg-red-100 text-red-800 px-1.5 py-0.5 rounded-full">{conflicts.length}</span>
            )}
          </button>
        ))}
      </div>

      {activeTab === 'overview' && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Zusammengeführte Daten (Merged)</h2>
          {merged ? (
            <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-4">
              {FIELDS.filter(f => (merged as any)[f] != null && (merged as any)[f] !== '').map(f => (
                <div key={f}>
                  <p className="text-xs text-muted-foreground capitalize">{f.replace(/_/g, ' ')}</p>
                  <p className="font-medium">{(merged as any)[f]?.toString() || '-'}</p>
                </div>
              ))}
              {merged.synonyms?.length > 0 && (
                <div className="col-span-2">
                  <p className="text-xs text-muted-foreground">Synonyme</p>
                  <div className="flex flex-wrap gap-1 mt-1">
                    {merged.synonyms.map(s => <Badge key={s} variant="secondary" className="text-xs">{s}</Badge>)}
                  </div>
                </div>
              )}
            </div>
          ) : (
            <p className="text-muted-foreground">Keine zusammengeführten Daten vorhanden</p>
          )}
        </Card>
      )}

      {activeTab === 'sources' && (
        <div className="overflow-x-auto">
          <table className="w-full text-sm">
            <thead>
              <tr className="border-b bg-accent/30">
                <th className="text-left py-3 px-4 font-medium">Feld</th>
                <th className="text-left py-3 px-4 font-medium">Vertrauen</th>
                {sourceNames.map(s => <th key={s} className="text-center py-3 px-4 font-medium">{s}</th>)}
              </tr>
            </thead>
            <tbody>
              {FIELDS.map(field => (
                <tr key={field} className={`border-b hover:bg-accent/30 ${fieldDiffers(field) ? 'bg-yellow-50' : ''}`}>
                  <td className="py-3 px-4 font-medium capitalize">{field.replace(/_/g, ' ')}</td>
                  <td className="py-3 px-4">
                    <Badge className={`text-xs ${fieldConfidence(field) >= 80 ? 'bg-green-100 text-green-800' : fieldConfidence(field) >= 50 ? 'bg-yellow-100 text-yellow-800' : 'bg-red-100 text-red-800'}`}>
                      {fieldConfidence(field)}%
                    </Badge>
                  </td>
                  {sourceNames.map(s => (
                    <td key={s} className={`py-3 px-4 text-center ${fieldDiffers(field) ? 'text-yellow-700' : ''}`}>
                      {sourceValue(field, s)}
                    </td>
                  ))}
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}

      {activeTab === 'conjugations' && merged?.conjugations && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Konjugationen</h2>
          {Object.entries(merged.conjugations).length > 0 ? (
            <div className="overflow-x-auto">
              <table className="w-full text-sm">
                <thead>
                  <tr className="border-b bg-accent/30">
                    <th className="text-left py-2 px-3">Person</th>
                    {Object.keys(merged.conjugations).map(tense => (
                      <th key={tense} className="text-center py-2 px-3">{tense}</th>
                    ))}
                  </tr>
                </thead>
                <tbody>
                  {['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie'].map(person => (
                    <tr key={person} className="border-b">
                      <td className="py-2 px-3 font-medium">{person}</td>
                      {Object.keys(merged.conjugations).map(tense => (
                        <td key={tense} className="py-2 px-3 text-center">
                          {merged.conjugations[tense]?.[person] || '-'}
                        </td>
                      ))}
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          ) : (
            <p className="text-muted-foreground">Keine Konjugationen vorhanden</p>
          )}
        </Card>
      )}

      {activeTab === 'conjugations' && (!merged?.conjugations || Object.keys(merged.conjugations).length === 0) && (
        <p className="text-muted-foreground text-center py-8">Keine Konjugationsdaten verfügbar</p>
      )}

      {activeTab === 'grammar' && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Grammatikdetails</h2>
          <div className="overflow-x-auto">
            <table className="w-full text-sm">
              <thead>
                <tr className="border-b bg-accent/30">
                  <th className="text-left py-2 px-3">Eigenschaft</th>
                  {sourceNames.map(s => <th key={s} className="text-center py-2 px-3">{s}</th>)}
                </tr>
              </thead>
              <tbody>
                {['verb_type', 'auxiliary', 'partizip_2', 'praeteritum', 'separable_prefix', 'prefix', 'is_reflexive', 'reflexive_pronoun', 'preposition', 'transitivity'].map(f => (
                  <tr key={f} className="border-b">
                    <td className="py-2 px-3 capitalize">{f.replace(/_/g, ' ')}</td>
                    {sourceNames.map(s => (
                      <td key={s} className="py-2 px-3 text-center">{sourceValue(f, s)}</td>
                    ))}
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </Card>
      )}

      {activeTab === 'examples' && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Beispiele</h2>
          {merged?.examples && merged.examples.length > 0 ? (
            <div className="space-y-2">
              {merged.examples.map((ex, i) => (
                <div key={i} className="p-3 bg-accent/20 rounded-lg">
                  <p className="font-medium">{ex.german}</p>
                  {ex.english && <p className="text-sm text-muted-foreground mt-0.5">{ex.english}</p>}
                </div>
              ))}
            </div>
          ) : (
            <p className="text-muted-foreground">Keine Beispiele vorhanden</p>
          )}
        </Card>
      )}

      {activeTab === 'raw' && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Rohdaten nach Quelle</h2>
          <div className="space-y-4">
            {results.map(r => (
              <details key={r.id} className="border rounded-lg">
                <summary className="px-4 py-3 cursor-pointer hover:bg-accent/30 font-medium text-sm flex items-center gap-2">
                  {r.source_name}
                  {r.status === 'completed'
                    ? <CheckCircle2 className="h-4 w-4 text-green-500" />
                    : <XCircle className="h-4 w-4 text-red-500" />
                  }
                </summary>
                <div className="p-4 border-t">
                  <pre className="text-xs overflow-x-auto max-h-96">{JSON.stringify(r.raw_data, null, 2)}</pre>
                </div>
              </details>
            ))}
          </div>
        </Card>
      )}

      {activeTab === 'conflicts' && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Konflikte ({conflicts.length})</h2>
          {conflicts.length > 0 ? (
            <div className="space-y-2">
              {conflicts.map(c => (
                <div key={c.id} className="p-3 border rounded-lg border-yellow-200 bg-yellow-50">
                  <div className="flex items-center justify-between">
                    <p className="font-medium text-sm">{c.field_name}</p>
                    <Badge variant="outline" className="text-xs">{c.resolution || 'unresolved'}</Badge>
                  </div>
                  <div className="grid grid-cols-2 gap-4 mt-2 text-sm">
                    <div>
                      <p className="text-xs text-muted-foreground">{c.source_a_name}</p>
                      <p>{c.source_a_value || '-'}</p>
                    </div>
                    <div>
                      <p className="text-xs text-muted-foreground">{c.source_b_name}</p>
                      <p>{c.source_b_value || '-'}</p>
                    </div>
                  </div>
                </div>
              ))}
            </div>
          ) : (
            <p className="text-muted-foreground">Keine Konflikte — alle Quellen stimmen überein</p>
          )}
        </Card>
      )}
    </div>
  )
}
