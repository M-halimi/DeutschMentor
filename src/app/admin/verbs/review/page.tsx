'use client'

import { useEffect, useState } from 'react'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { CheckCircle2, XCircle, AlertTriangle, RefreshCw, ChevronRight, ChevronLeft, Info, Eye, Loader2, BookOpen } from 'lucide-react'
import Link from 'next/link'
import { TENSE_LABELS, PERSON_LABELS } from '@/verbs/constants'

interface Candidate {
  id: string; infinitive: string; translation?: string; source_name: string; source_url?: string
  confidence: number; cefr_level?: string; verb_type?: string; auxiliary?: string; partizip_2?: string
  praeteritum?: string; is_reflexive?: boolean; separable_prefix?: string; reflexive_pronoun?: string
  preposition?: string; status: string; notes?: string; created_at: string
  conjugations?: Record<string, Record<string, string>>
  examples?: { german: string; english?: string }[]
  synonyms?: string[]; antonyms?: string[]
}

export default function ReviewPage() {
  const [candidates, setCandidates] = useState<Candidate[]>([])
  const [currentIndex, setCurrentIndex] = useState(0)
  const [loading, setLoading] = useState(true)
  const [submitting, setSubmitting] = useState(false)
  const [count, setCount] = useState(0)
  const [note, setNote] = useState('')
  const [showNoteInput, setShowNoteInput] = useState(false)
  const [actionTab, setActionTab] = useState<'info' | 'conjugations' | 'examples'>('info')

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
        body: JSON.stringify({ candidate_id: candidate.id, action, notes: note || undefined }),
      })
      if (res.ok) {
        setCandidates(prev => prev.filter((_, i) => i !== currentIndex))
        if (currentIndex >= candidates.length - 1) setCurrentIndex(prev => Math.max(0, prev - 1))
        setCount(prev => Math.max(0, prev - 1))
        setNote(''); setShowNoteInput(false)
      }
    } finally { setSubmitting(false) }
  }

  const current = candidates[currentIndex]

  const tenseOrder = ['praesens', 'praeteritum', 'perfekt', 'plusquamperfekt', 'futur_i', 'futur_ii', 'konjunktiv_i', 'konjunktiv_ii', 'imperativ']

  if (loading) return <div className="py-12 text-center text-muted-foreground"><Loader2 className="h-6 w-6 animate-spin mx-auto mb-2" />Lade Kandidaten...</div>

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
            <Link href="/admin/verbs/publish"><Button variant="outline"><CheckCircle2 className="h-4 w-4 mr-2" />Publish</Button></Link>
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
              <Link href={current.source_url || '#'} target="_blank">
                <Badge className="cursor-pointer hover:opacity-80">{current.source_name}</Badge>
              </Link>
            </div>
            <p className="text-muted-foreground">{current.translation || '(keine Übersetzung)'}</p>
          </div>
          <Badge className={`text-sm ${current.confidence >= 80 ? 'bg-green-100 text-green-800' : current.confidence >= 50 ? 'bg-yellow-100 text-yellow-800' : 'bg-red-100 text-red-800'}`}>
            {current.confidence}% Vertrauen
          </Badge>
        </div>

        <div className="flex gap-2 mb-6">
          <Button variant={actionTab === 'info' ? 'default' : 'outline'} size="sm" onClick={() => setActionTab('info')}>
            <Info className="h-3 w-3 mr-1" />Details
          </Button>
          <Button variant={actionTab === 'conjugations' ? 'default' : 'outline'} size="sm" onClick={() => setActionTab('conjugations')}>
            <BookOpen className="h-3 w-3 mr-1" />Konjugationen
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
              { label: 'Quelle', value: current.source_name },
            ].map(item => (
              <div key={item.label}>
                <p className="text-xs text-muted-foreground uppercase">{item.label}</p>
                <p className="font-medium">{item.value}</p>
              </div>
            ))}
            {current.synonyms && current.synonyms.length > 0 && (
              <div className="col-span-2">
                <p className="text-xs text-muted-foreground uppercase">Synonyme</p>
                <div className="flex flex-wrap gap-1 mt-1">
                  {current.synonyms.map(s => <Badge key={s} variant="secondary" className="text-xs">{s}</Badge>)}
                </div>
              </div>
            )}
            {current.antonyms && current.antonyms.length > 0 && (
              <div>
                <p className="text-xs text-muted-foreground uppercase">Antonyme</p>
                <div className="flex flex-wrap gap-1 mt-1">
                  {current.antonyms.map(a => <Badge key={a} variant="outline" className="text-xs">{a}</Badge>)}
                </div>
              </div>
            )}
          </div>
        )}

        {actionTab === 'conjugations' && (
          <div className="mb-6 overflow-x-auto">
            {current.conjugations && Object.keys(current.conjugations).length > 0 ? (
              <table className="w-full text-sm border-collapse">
                <thead>
                  <tr className="border-b bg-accent/30">
                    <th className="text-left py-2 px-3 font-medium">Tempus</th>
                    {PERSON_LABELS.map(p => <th key={p} className="text-left py-2 px-3 font-medium">{p}</th>)}
                  </tr>
                </thead>
                <tbody>
                  {tenseOrder.map(tense => {
                    const forms = current.conjugations?.[tense]
                    if (!forms) return null
                    return (
                      <tr key={tense} className="border-b last:border-0 hover:bg-accent/20">
                        <td className="py-2 px-3 font-medium whitespace-nowrap">{TENSE_LABELS[tense] || tense}</td>
                        {PERSON_LABELS.map(p => (
                          <td key={p} className="py-2 px-3">{forms[p] || '-'}</td>
                        ))}
                      </tr>
                    )
                  })}
                </tbody>
              </table>
            ) : (
              <p className="text-sm text-muted-foreground">Keine Konjugationen in diesem Datensatz.</p>
            )}
          </div>
        )}

        {current.examples && current.examples.length > 0 && (
          <Card className="p-4 mb-6 bg-accent/20">
            <h3 className="text-sm font-semibold mb-2">Beispiele</h3>
            <div className="space-y-2">
              {current.examples.map((ex, i) => (
                <div key={i} className="text-sm">
                  <p className="font-medium">{ex.german}</p>
                  {ex.english && <p className="text-muted-foreground">{ex.english}</p>}
                </div>
              ))}
            </div>
          </Card>
        )}

        {showNoteInput && (
          <div className="mb-4">
            <textarea className="w-full rounded-lg border px-3 py-2 text-sm bg-background" rows={2}
              placeholder="Notiz zum Review..." value={note} onChange={e => setNote(e.target.value)} />
          </div>
        )}

        <div className="flex items-center justify-between pt-4 border-t">
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
              {submitting ? <Loader2 className="h-4 w-4 mr-1 animate-spin" /> : <CheckCircle2 className="h-4 w-4 mr-1" />}
              Genehmigen
            </Button>
          </div>
        </div>
      </Card>
    </div>
  )
}