'use client'

import { useEffect, useState } from 'react'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { CheckCircle2, XCircle, AlertTriangle, RefreshCw, ChevronRight, ChevronLeft, Info, BookOpen, Loader2, Edit3, Save } from 'lucide-react'
import Link from 'next/link'
import { TENSE_LABELS, PERSON_LABELS, TENSE_ORDER } from '@/verbs/constants'

interface ReviewItem {
  id: string; infinitive: string; translation?: string; source_name: string
  quality_score: number; cefr_level?: string; verb_type?: string; auxiliary?: string
  separable_prefix?: string; is_reflexive?: boolean; reflexive_pronoun?: string
  conjugations: Record<string, Record<string, string>>; status: string
}

export default function ConjugationReviewPage() {
  const [items, setItems] = useState<ReviewItem[]>([])
  const [currentIndex, setCurrentIndex] = useState(0)
  const [loading, setLoading] = useState(true)
  const [submitting, setSubmitting] = useState(false)
  const [count, setCount] = useState(0)
  const [note, setNote] = useState('')
  const [showNoteInput, setShowNoteInput] = useState(false)
  const [isEditing, setIsEditing] = useState(false)
  const [editData, setEditData] = useState<Record<string, Record<string, string>>>({})

  useEffect(() => { fetchItems() }, [])

  async function fetchItems() {
    setLoading(true)
    try {
      const [dataRes, countRes] = await Promise.all([
        fetch('/api/admin/verbs/conjugations/review?pageSize=100'),
        fetch('/api/admin/verbs/conjugations/review?count=true'),
      ])
      if (dataRes.ok) {
        const d = await dataRes.json()
        setItems(d.data)
      }
      if (countRes.ok) setCount((await countRes.json()).count)
    } finally { setLoading(false) }
  }

  function startEditing() {
    if (!current) return
    setEditData(JSON.parse(JSON.stringify(current.conjugations)))
    setIsEditing(true)
  }

  function updateCell(tense: string, person: string, value: string) {
    setEditData(prev => {
      const next = { ...prev }
      if (!next[tense]) next[tense] = {}
      next[tense] = { ...next[tense], [person]: value }
      return next
    })
  }

  function cancelEditing() {
    setIsEditing(false)
    setEditData({})
  }

  async function submitReview(action: 'approved' | 'rejected' | 'edited' | 'skipped') {
    const item = items[currentIndex]
    if (!item) return
    setSubmitting(true)
    try {
      const body: any = {
        conjugation_import_id: item.id,
        infinitive: item.infinitive,
        action,
        notes: note || undefined,
      }
      if (action === 'edited') {
        body.edit_data = { conjugations: editData }
      }
      const res = await fetch('/api/admin/verbs/conjugations/review', {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body),
      })
      if (res.ok) {
        setItems(prev => prev.filter((_, i) => i !== currentIndex))
        if (currentIndex >= items.length - 1) setCurrentIndex(prev => Math.max(0, prev - 1))
        setCount(prev => Math.max(0, prev - 1))
        setNote(''); setShowNoteInput(false); setIsEditing(false); setEditData({})
      }
    } finally { setSubmitting(false) }
  }

  const current = items[currentIndex]

  if (loading) return <div className="py-12 text-center text-muted-foreground"><Loader2 className="h-6 w-6 animate-spin mx-auto mb-2" />Lade Review-Daten...</div>

  if (!current) {
    return (
      <div className="space-y-6">
        <h1 className="text-2xl font-bold tracking-tight">Konjugationen Review</h1>
        <Card className="p-12 text-center">
          <CheckCircle2 className="h-12 w-12 mx-auto mb-4 text-green-500" />
          <h2 className="text-xl font-semibold mb-2">Alle Konjugationen reviewed!</h2>
          <p className="text-muted-foreground mb-4">Es gibt keine ausstehenden Konjugationen mehr.</p>
          <div className="flex gap-2 justify-center">
            <Button onClick={fetchItems}><RefreshCw className="h-4 w-4 mr-2" />Neu laden</Button>
            <Link href="/admin/verbs/conjugation-imports"><Button variant="outline"><BookOpen className="h-4 w-4 mr-2" />Import-Queue</Button></Link>
            <Link href="/admin/verbs/conjugation-publish"><Button variant="outline"><CheckCircle2 className="h-4 w-4 mr-2" />Publish</Button></Link>
          </div>
        </Card>
      </div>
    )
  }

  const tenseOrder = TENSE_ORDER as readonly string[]

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h1 className="text-2xl font-bold tracking-tight">Konjugationen Review</h1>
        <div className="flex items-center gap-2">
          <Badge variant="outline">{currentIndex + 1} / {items.length}</Badge>
          <Badge variant="outline">{count} ausstehend gesamt</Badge>
          <Button variant="outline" size="sm" onClick={fetchItems}><RefreshCw className="h-3 w-3" /></Button>
        </div>
      </div>

      <Card className="p-6">
        <div className="flex items-start justify-between mb-6">
          <div>
            <div className="flex items-center gap-3">
              <h2 className="text-2xl font-bold">{current.infinitive}</h2>
              <Badge variant="outline">{current.source_name}</Badge>
            </div>
            <p className="text-muted-foreground">{current.translation || '(keine Übersetzung)'}</p>
          </div>
          <div className="flex items-center gap-2">
            <Badge className={`text-sm ${current.quality_score >= 80 ? 'bg-green-100 text-green-800' : current.quality_score >= 50 ? 'bg-yellow-100 text-yellow-800' : 'bg-red-100 text-red-800'}`}>
              {current.quality_score}%
            </Badge>
            {isEditing && (
              <Badge className="bg-orange-100 text-orange-800">Bearbeitungsmodus</Badge>
            )}
          </div>
        </div>

        <div className="grid grid-cols-2 sm:grid-cols-4 gap-4 mb-6">
          {[
            { label: 'CEFR', value: current.cefr_level || '-' },
            { label: 'Typ', value: current.verb_type || '-' },
            { label: 'Hilfsverb', value: current.auxiliary || '-' },
            { label: 'Präfix', value: current.separable_prefix || '-' },
            { label: 'Reflexiv', value: current.is_reflexive ? `Ja (${current.reflexive_pronoun || 'sich'})` : 'Nein' },
          ].map(item => (
            <div key={item.label}>
              <p className="text-xs text-muted-foreground uppercase">{item.label}</p>
              <p className="font-medium">{item.value}</p>
            </div>
          ))}
        </div>

        <div className="mb-6 overflow-x-auto">
          <table className="w-full text-sm border-collapse">
            <thead>
              <tr className="border-b bg-accent/30">
                <th className="text-left py-2 px-3 font-medium whitespace-nowrap">Tempus</th>
                {PERSON_LABELS.map(p => <th key={p} className="text-left py-2 px-3 font-medium whitespace-nowrap">{p}</th>)}
              </tr>
            </thead>
            <tbody>
              {tenseOrder.map(tense => {
                const forms = (isEditing ? editData : current.conjugations)?.[tense]
                if (!forms) return (
                  <tr key={tense} className="border-b last:border-0 hover:bg-accent/20">
                    <td className="py-2 px-3 font-medium whitespace-nowrap">{TENSE_LABELS[tense] || tense}</td>
                    <td colSpan={6} className="py-2 px-3 text-muted-foreground italic">Keine Daten</td>
                  </tr>
                )
                return (
                  <tr key={tense} className="border-b last:border-0 hover:bg-accent/20">
                    <td className="py-2 px-3 font-medium whitespace-nowrap">{TENSE_LABELS[tense] || tense}</td>
                    {PERSON_LABELS.map(person => {
                      const value = forms[person] || '-'
                      return (
                        <td key={person} className="py-2 px-3">
                          {isEditing ? (
                            <input
                              type="text"
                              className="w-full rounded border px-1.5 py-0.5 text-sm bg-background"
                              value={value === '-' ? '' : value}
                              onChange={e => updateCell(tense, person, e.target.value)}
                              placeholder="-"
                            />
                          ) : (
                            <span>{value}</span>
                          )}
                        </td>
                      )
                    })}
                  </tr>
                )
              })}
            </tbody>
          </table>
        </div>

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
            <Button variant="outline" size="sm" disabled={currentIndex >= items.length - 1} onClick={() => setCurrentIndex(i => i + 1)}>
              Nächster<ChevronRight className="h-4 w-4 ml-1" />
            </Button>
          </div>
          <div className="flex items-center gap-2">
            <Button variant="outline" size="sm" onClick={() => setShowNoteInput(!showNoteInput)}>
              <Info className="h-4 w-4 mr-1" />Notiz
            </Button>
            {isEditing ? (
              <>
                <Button variant="outline" size="sm" onClick={cancelEditing}>
                  Abbrechen
                </Button>
                <Button variant="default" size="sm" disabled={submitting} onClick={() => submitReview('edited')}>
                  {submitting ? <Loader2 className="h-4 w-4 mr-1 animate-spin" /> : <Save className="h-4 w-4 mr-1" />}
                  Korrigiert speichern
                </Button>
              </>
            ) : (
              <>
                <Button variant="outline" size="sm" disabled={submitting} onClick={startEditing}>
                  <Edit3 className="h-4 w-4 mr-1" />Bearbeiten
                </Button>
                <Button variant="destructive" size="sm" disabled={submitting} onClick={() => submitReview('rejected')}>
                  <XCircle className="h-4 w-4 mr-1" />Ablehnen
                </Button>
                <Button variant="default" size="sm" disabled={submitting} onClick={() => submitReview('approved')}>
                  {submitting ? <Loader2 className="h-4 w-4 mr-1 animate-spin" /> : <CheckCircle2 className="h-4 w-4 mr-1" />}
                  Genehmigen
                </Button>
              </>
            )}
          </div>
        </div>
      </Card>

      <div className="flex justify-center gap-2">
        <Link href="/admin/verbs/conjugation-publish"><Button variant="outline"><CheckCircle2 className="h-4 w-4 mr-2" />Publish ({count})</Button></Link>
      </div>
    </div>
  )
}
