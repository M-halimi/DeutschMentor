'use client'

import { useEffect, useState } from 'react'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { CheckCircle2, XCircle, AlertTriangle, RefreshCw, ChevronRight, ChevronLeft, Info, Eye } from 'lucide-react'
import Link from 'next/link'

interface Candidate {
  id: string
  infinitive: string
  translation?: string
  source_name: string
  source_url?: string
  confidence: number
  cefr_level?: string
  verb_type?: string
  auxiliary?: string
  partizip_2?: string
  praeteritum?: string
  is_reflexive?: boolean
  separable_prefix?: string
  reflexive_pronoun?: string
  preposition?: string
  status: string
  diff_against_production?: Record<string, unknown>
  conflict_ids?: string[]
  notes?: string
  created_at: string
}

export default function ReviewPage() {
  const [candidates, setCandidates] = useState<Candidate[]>([])
  const [currentIndex, setCurrentIndex] = useState(0)
  const [loading, setLoading] = useState(true)
  const [submitting, setSubmitting] = useState(false)
  const [count, setCount] = useState(0)
  const [note, setNote] = useState('')
  const [showNoteInput, setShowNoteInput] = useState(false)
  const [actionTab, setActionTab] = useState<'info' | 'conjugations'>('info')

  useEffect(() => { fetchCandidates() }, [])

  async function fetchCandidates() {
    setLoading(true)
    try {
      const res = await fetch('/api/admin/verbs/review/candidates?limit=100')
      if (res.ok) {
        const data = await res.json()
        setCandidates(data)
      }
      const countRes = await fetch('/api/admin/verbs/review?count=true')
      if (countRes.ok) setCount((await countRes.json()).count)
    } finally { setLoading(false) }
  }

  async function submitReview(action: 'approved' | 'rejected' | 'flagged') {
    const candidate = candidates[currentIndex]
    if (!candidate) return
    setSubmitting(true)
    try {
      const res = await fetch('/api/admin/verbs/review', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          candidate_id: candidate.id,
          action,
          notes: note || undefined,
        }),
      })
      if (res.ok) {
        setCandidates(prev => prev.filter((_, i) => i !== currentIndex))
        if (currentIndex >= candidates.length - 1) setCurrentIndex(prev => Math.max(0, prev - 1))
        setCount(prev => Math.max(0, prev - 1))
        setNote('')
        setShowNoteInput(false)
      }
    } finally { setSubmitting(false) }
  }

  const current = candidates[currentIndex]

  const personLabels = ['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie'] as const
  const tenseLabels: Record<string, string> = {
    praesens: 'Präsens', praeteritum: 'Präteritum', perfekt: 'Perfekt',
    plusquamperfekt: 'Plusquamperfekt', futur_i: 'Futur I',
    konjunktiv_i: 'Konjunktiv I', konjunktiv_ii: 'Konjunktiv II', imperativ: 'Imperativ',
  }

  if (loading) return <div className="p-8 text-center text-muted-foreground">Lade Kandidaten...</div>

  if (!current) {
    return (
      <div className="space-y-6">
        <h1 className="text-2xl font-bold tracking-tight">Review</h1>
        <Card className="p-12 text-center">
          <CheckCircle2 className="h-12 w-12 mx-auto mb-4 text-green-500" />
          <h2 className="text-xl font-semibold mb-2">Alle Kandidaten reviewed!</h2>
          <p className="text-muted-foreground mb-4">Es gibt keine ausstehenden Kandidaten mehr.</p>
          <div className="flex gap-2 justify-center">
            <Button onClick={fetchCandidates}><RefreshCw className="h-4 w-4 mr-2" />Neu laden</Button>
            <Link href="/admin/verbs/scraped"><Button variant="outline"><Eye className="h-4 w-4 mr-2" />Scraped Data</Button></Link>
          </div>
        </Card>
      </div>
    )
  }

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h1 className="text-2xl font-bold tracking-tight">Review</h1>
        <div className="flex items-center gap-2">
          <Badge variant="outline">{currentIndex + 1} / {candidates.length}</Badge>
          <Badge variant="outline">{count} ausstehend gesamt</Badge>
          <Button variant="outline" size="sm" onClick={fetchCandidates}><RefreshCw className="h-3 w-3" /></Button>
        </div>
      </div>

      <Card className="p-6">
        <div className="flex items-start justify-between mb-6">
          <div>
            <div className="flex items-center gap-3">
              <h2 className="text-2xl font-bold">{current.infinitive}</h2>
              {current.conflict_ids && current.conflict_ids.length > 0 && (
                <Badge className="bg-red-100 text-red-800">{current.conflict_ids.length} Konflikte</Badge>
              )}
            </div>
            <p className="text-muted-foreground">{current.translation || '(keine Übersetzung)'}</p>
          </div>
          <div className="flex items-center gap-2">
            <Badge className="text-sm">{current.source_name}</Badge>
            <Badge className={
              current.confidence >= 80 ? 'bg-green-100 text-green-800' :
              current.confidence >= 50 ? 'bg-yellow-100 text-yellow-800' :
              'bg-red-100 text-red-800'
            }>{current.confidence}%</Badge>
          </div>
        </div>

        <div className="flex gap-2 mb-6">
          <Button variant={actionTab === 'info' ? 'default' : 'outline'} size="sm" onClick={() => setActionTab('info')}>
            <Info className="h-3 w-3 mr-1" />Details
          </Button>
          <Button variant={actionTab === 'conjugations' ? 'default' : 'outline'} size="sm" onClick={() => setActionTab('conjugations')}>
            <Info className="h-3 w-3 mr-1" />Konjugationen
          </Button>
        </div>

        {actionTab === 'info' && (
          <div className="grid grid-cols-2 sm:grid-cols-3 gap-4 mb-6">
            {[
              { label: 'CEFR', value: current.cefr_level || '-' },
              { label: 'Typ', value: current.verb_type || '-' },
              { label: 'Hilfsverb', value: current.auxiliary || '-' },
              { label: 'Partizip II', value: current.partizip_2 || '-' },
              { label: 'Präteritum', value: current.praeteritum || '-' },
              { label: 'Präfix', value: current.separable_prefix || '-' },
              { label: 'Reflexiv', value: current.is_reflexive ? `Ja (${current.reflexive_pronoun || 'sich'})` : 'Nein' },
              { label: 'Präposition', value: current.preposition || '-' },
              { label: 'Quelle', value: current.source_url ? (
                <a href={current.source_url} target="_blank" rel="noopener noreferrer" className="text-primary underline text-xs">{current.source_name}</a>
              ) : current.source_name },
            ].map(item => (
              <div key={item.label}>
                <p className="text-xs text-muted-foreground uppercase">{item.label}</p>
                <p className="font-medium">{item.value}</p>
              </div>
            ))}
          </div>
        )}

        {actionTab === 'conjugations' && (
          <p className="text-sm text-muted-foreground mb-6">
            Konjugationen aus der Quelle extrahiert. Im nächsten Schritt werden vollständige Tabellen angezeigt.
          </p>
        )}

        {current.diff_against_production && Object.keys(current.diff_against_production).length > 0 && (
          <Card className="p-4 mb-6 bg-yellow-50 border-yellow-200">
            <h3 className="text-sm font-semibold mb-2 text-yellow-800">Unterschiede zur Produktion</h3>
            <div className="space-y-1 text-xs">
              {Object.entries(current.diff_against_production).map(([key, value]) => (
                <div key={key} className="flex gap-2">
                  <span className="font-medium w-24">{key}:</span>
                  <span className="text-red-600 line-through mr-2">{(value as any)?.old ?? '-'}</span>
                  <span className="text-green-600">{(value as any)?.new ?? '-'}</span>
                </div>
              ))}
            </div>
          </Card>
        )}

        {showNoteInput && (
          <div className="mb-4">
            <textarea
              className="w-full rounded-lg border px-3 py-2 text-sm bg-background"
              rows={2}
              placeholder="Notiz zum Review..."
              value={note}
              onChange={e => setNote(e.target.value)}
            />
          </div>
        )}

        <div className="flex items-center justify-between">
          <div className="flex items-center gap-2">
            <Button variant="outline" size="sm" disabled={currentIndex === 0} onClick={() => setCurrentIndex(i => i - 1)}>
              <ChevronLeft className="h-4 w-4 mr-1" />Vorheriger
            </Button>
            <Button variant="outline" size="sm" disabled={currentIndex >= candidates.length - 1} onClick={() => setCurrentIndex(i => i + 1)}>
              Nächster<ChevronRight className="h-4 w-4 ml-1" />
            </Button>
          </div>
          <div className="flex items-center gap-2">
            <Button variant="outline" size="sm" onClick={() => setShowNoteInput(!showNoteInput)}>
              <Info className="h-4 w-4 mr-1" />Notiz
            </Button>
            <Button variant="destructive" size="sm" disabled={submitting} onClick={() => submitReview('rejected')}>
              <XCircle className="h-4 w-4 mr-1" />Ablehnen
            </Button>
            <Button variant="outline" size="sm" disabled={submitting} onClick={() => submitReview('flagged')}>
              <AlertTriangle className="h-4 w-4 mr-1" />Markieren
            </Button>
            <Button variant="default" size="sm" disabled={submitting} onClick={() => submitReview('approved')}>
              <CheckCircle2 className="h-4 w-4 mr-1" />Genehmigen
            </Button>
          </div>
        </div>
      </Card>
    </div>
  )
}
