'use client'

import { useEffect, useState } from 'react'
import { useParams } from 'next/navigation'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { ArrowLeft, Edit3, Trash2, RefreshCw, History, Sparkles, Save, X, Loader2, CheckCircle2, AlertTriangle, Info } from 'lucide-react'
import Link from 'next/link'
import { CEFR_LEVELS, VERB_TYPES, TENSE_LABELS, PERSON_LABELS } from '@/verbs/constants'

export default function VerbDetailPage() {
  const params = useParams()
  const [verb, setVerb] = useState<any>(null)
  const [loading, setLoading] = useState(true)
  const [editing, setEditing] = useState(false)
  const [saving, setSaving] = useState(false)
  const [editForm, setEditForm] = useState<any>({})
  const [qualitySummary, setQualitySummary] = useState<any>(null)

  useEffect(() => {
    if (params.id) fetchVerb()
  }, [params.id])

  async function fetchVerb() {
    setLoading(true)
    try {
      const [verbRes, qualityRes] = await Promise.all([
        fetch(`/api/admin/verbs/${params.id}`),
        fetch(`/api/admin/verbs/quality?verb_id=${params.id}`),
      ])
      if (verbRes.ok) {
        const data = await verbRes.json()
        setVerb(data)
      }
      if (qualityRes.ok) {
        const data = await qualityRes.json()
        setQualitySummary(data)
      }
    } finally { setLoading(false) }
  }

  function startEditing() {
    setEditForm({
      infinitive: verb.infinitive,
      english_translation: verb.english_translation || '',
      cefr_level: verb.cefr_level || '',
      verb_type: verb.verb_type || '',
      auxiliary: verb.auxiliary || '',
      partizip_2: verb.partizip_2 || '',
      separable_prefix: verb.separable_prefix || '',
      is_reflexive: verb.is_reflexive || false,
      reflexive_pronoun: verb.reflexive_pronoun || '',
      transitivity: verb.transitivity || '',
      object_case: verb.object_case || '',
      preposition: verb.preposition || '',
      ipa: verb.ipa || '',
      frequency: verb.frequency || '',
      slug: verb.slug || '',
      synonyms: verb.synonyms || [],
      antonyms: verb.antonyms || [],
      tags: verb.tags || [],
    })
    setEditing(true)
  }

  async function saveChanges() {
    setSaving(true)
    try {
      const res = await fetch(`/api/admin/verbs/${params.id}`, {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(editForm),
      })
      if (res.ok) {
        const updated = await res.json()
        setVerb(updated)
        setEditing(false)
      }
    } finally { setSaving(false) }
  }

  async function deleteVerb() {
    if (!confirm('Dieses Verb wirklich löschen?')) return
    try {
      await fetch(`/api/admin/verbs/${params.id}`, { method: 'DELETE' })
      window.location.href = '/admin/verbs'
    } catch {}
  }

  if (loading) return (
    <div className="p-8 text-center text-muted-foreground">
      <Loader2 className="h-6 w-6 animate-spin mx-auto mb-2" />Lade Verb...
    </div>
  )
  if (!verb) return <div className="p-8 text-center text-muted-foreground">Verb nicht gefunden</div>

  const tenseOrder = ['praesens', 'praeteritum', 'perfekt', 'plusquamperfekt', 'futur_i', 'futur_ii', 'konjunktiv_i', 'konjunktiv_ii', 'imperativ', 'passiv']

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-3">
          <Link href="/admin/verbs"><Button variant="ghost" size="sm"><ArrowLeft className="h-4 w-4" /></Button></Link>
          <div>
            <div className="flex items-center gap-3">
              <h1 className="text-2xl font-bold">{verb.infinitive}</h1>
              {qualitySummary && !Array.isArray(qualitySummary) && (
                <Badge className={`${
                  qualitySummary.quality_score >= 80 ? 'bg-green-100 text-green-800' :
                  qualitySummary.quality_score >= 50 ? 'bg-yellow-100 text-yellow-800' :
                  'bg-red-100 text-red-800'
                }`}>
                  <Sparkles className="h-3 w-3 mr-1" />{qualitySummary.quality_score}%
                </Badge>
              )}
            </div>
            <p className="text-muted-foreground">{verb.english_translation || '(keine Übersetzung)'}</p>
          </div>
        </div>
        <div className="flex items-center gap-2">
          <Link href={`/admin/verbs/${params.id}/quality`}>
            <Button variant="outline" size="sm"><Sparkles className="h-4 w-4 mr-2" />Qualität</Button>
          </Link>
          <Link href={`/admin/verbs/versions?verb_id=${verb.id}`}>
            <Button variant="outline" size="sm"><History className="h-4 w-4 mr-2" />Versionen</Button>
          </Link>
          {editing ? (
            <>
              <Button variant="outline" size="sm" onClick={() => setEditing(false)} disabled={saving}>
                <X className="h-4 w-4 mr-2" />Abbrechen
              </Button>
              <Button size="sm" onClick={saveChanges} disabled={saving}>
                {saving ? <Loader2 className="h-4 w-4 mr-2 animate-spin" /> : <Save className="h-4 w-4 mr-2" />}Speichern
              </Button>
            </>
          ) : (
            <>
              <Button variant="outline" size="sm" onClick={startEditing}><Edit3 className="h-4 w-4 mr-2" />Bearbeiten</Button>
              <Button variant="destructive" size="sm" onClick={deleteVerb}><Trash2 className="h-4 w-4 mr-2" />Löschen</Button>
            </>
          )}
        </div>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
        <Card className="p-6 lg:col-span-2">
          <h2 className="font-semibold mb-4">Details</h2>
          <div className="grid grid-cols-2 gap-4">
            {[
              { label: 'Slug', key: 'slug' },
              { label: 'CEFR', key: 'cefr_level' },
              { label: 'Typ', key: 'verb_type' },
              { label: 'Arabisch', key: 'arabic_translation' },
              { label: 'Französisch', key: 'french_translation' },
              { label: 'Transitivität', key: 'transitivity' },
              { label: 'Objekt-Kasus', key: 'object_case' },
              { label: 'Präposition', key: 'preposition' },
              { label: 'Hilfsverb', key: 'auxiliary' },
              { label: 'Partizip II', key: 'partizip_2' },
              { label: 'Trennpräfix', key: 'separable_prefix' },
              { label: 'Reflexiv', key: 'is_reflexive' },
              { label: 'Reflexivpronomen', key: 'reflexive_pronoun' },
              { label: 'IPA', key: 'ipa' },
              { label: 'Frequenz', key: 'frequency' },
            ].map(item => (
              <div key={item.key}>
                <p className="text-xs text-muted-foreground uppercase">{item.label}</p>
                {editing && !['tags', 'synonyms', 'antonyms'].includes(item.key) ? (
                  item.key === 'is_reflexive' ? (
                    <select className="w-full rounded border px-2 py-1 text-sm bg-background mt-1"
                      value={editForm[item.key] ? 'true' : 'false'}
                      onChange={e => setEditForm({...editForm, [item.key]: e.target.value === 'true'})}>
                      <option value="false">Nein</option>
                      <option value="true">Ja</option>
                    </select>
                  ) : item.key === 'cefr_level' ? (
                    <select className="w-full rounded border px-2 py-1 text-sm bg-background mt-1"
                      value={editForm[item.key]}
                      onChange={e => setEditForm({...editForm, [item.key]: e.target.value})}>
                      {CEFR_LEVELS.map(l => <option key={l} value={l}>{l}</option>)}
                    </select>
                  ) : item.key === 'verb_type' ? (
                    <select className="w-full rounded border px-2 py-1 text-sm bg-background mt-1"
                      value={editForm[item.key]}
                      onChange={e => setEditForm({...editForm, [item.key]: e.target.value})}>
                      {VERB_TYPES.map(t => <option key={t} value={t}>{t}</option>)}
                    </select>
                  ) : (
                    <input className="w-full rounded border px-2 py-1 text-sm bg-background mt-1"
                      value={editForm[item.key] ?? ''}
                      onChange={e => setEditForm({...editForm, [item.key]: e.target.value})}
                    />
                  )
                ) : (
                  <p className="font-medium truncate">
                    {item.key === 'is_reflexive' ? (verb[item.key] ? 'Ja' : 'Nein') : verb[item.key] || '-'}
                  </p>
                )}
              </div>
            ))}
          </div>
          {editing && (
            <div className="mt-4">
              <p className="text-xs text-muted-foreground uppercase mb-1">Tags (kommagetrennt)</p>
              <input className="w-full rounded border px-2 py-1 text-sm bg-background"
                value={(editForm.tags || []).join(', ')}
                onChange={e => setEditForm({...editForm, tags: e.target.value.split(',').map((t: string) => t.trim()).filter(Boolean)})}
              />
            </div>
          )}
        </Card>

        <Card className="p-6">
          <h2 className="font-semibold mb-4">Synonyme & Antonyme</h2>
          <div className="mb-4">
            <p className="text-xs text-muted-foreground uppercase mb-1">Synonyme</p>
            {editing ? (
              <input className="w-full rounded border px-2 py-1 text-sm bg-background"
                value={(editForm.synonyms || []).join(', ')}
                onChange={e => setEditForm({...editForm, synonyms: e.target.value.split(',').map((t: string) => t.trim()).filter(Boolean)})}
              />
            ) : (
              <div className="flex flex-wrap gap-1">
                {verb.synonyms?.length > 0 ? verb.synonyms.map((s: string) => <Badge key={s} variant="secondary">{s}</Badge>) : <span className="text-sm text-muted-foreground">-</span>}
              </div>
            )}
          </div>
          <div>
            <p className="text-xs text-muted-foreground uppercase mb-1">Antonyme</p>
            {editing ? (
              <input className="w-full rounded border px-2 py-1 text-sm bg-background"
                value={(editForm.antonyms || []).join(', ')}
                onChange={e => setEditForm({...editForm, antonyms: e.target.value.split(',').map((t: string) => t.trim()).filter(Boolean)})}
              />
            ) : (
              <div className="flex flex-wrap gap-1">
                {verb.antonyms?.length > 0 ? verb.antonyms.map((a: string) => <Badge key={a} variant="outline">{a}</Badge>) : <span className="text-sm text-muted-foreground">-</span>}
              </div>
            )}
          </div>
        </Card>
      </div>

      {verb.verb_conjugations?.length > 0 && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Konjugationen</h2>
          <div className="overflow-x-auto">
            <table className="w-full text-sm border-collapse">
              <thead>
                <tr className="border-b bg-accent/30">
                  <th className="text-left py-2 px-3 font-medium">Tempus</th>
                  {PERSON_LABELS.map(p => <th key={p} className="text-left py-2 px-3 font-medium">{p}</th>)}
                </tr>
              </thead>
              <tbody>
                {tenseOrder.map(tense => {
                  const conj = verb.verb_conjugations.find((c: any) => c.tense === tense)
                  if (!conj) return null
                  return (
                    <tr key={tense} className="border-b last:border-0 hover:bg-accent/20">
                      <td className="py-2 px-3 font-medium whitespace-nowrap">{TENSE_LABELS[tense] || tense}</td>
                      {PERSON_LABELS.map(p => (
                        <td key={p} className="py-2 px-3">{conj[p] || '-'}</td>
                      ))}
                    </tr>
                  )
                })}
              </tbody>
            </table>
          </div>
        </Card>
      )}

      {verb.verb_examples?.length > 0 && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Beispiele ({verb.verb_examples.length})</h2>
          <div className="space-y-3">
            {verb.verb_examples.map((ex: any) => (
              <div key={ex.id} className="p-3 bg-accent/30 rounded-lg">
                <p className="font-medium">{ex.german}</p>
                <p className="text-sm text-muted-foreground">{ex.english || ''}</p>
                <div className="flex gap-2 mt-1">
                  {ex.difficulty && <Badge variant="outline" className="text-xs">{ex.difficulty}</Badge>}
                  {ex.source && <Badge variant="outline" className="text-xs">{ex.source}</Badge>}
                </div>
              </div>
            ))}
          </div>
        </Card>
      )}

      {verb.verb_collocations?.length > 0 && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Kollokationen</h2>
          <div className="flex flex-wrap gap-2">
            {verb.verb_collocations.map((c: any) => (
              <Badge key={c.id} variant="secondary">{c.collocation}</Badge>
            ))}
          </div>
        </Card>
      )}

      {verb.verb_typical_questions?.length > 0 && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Typische Fragen ({verb.verb_typical_questions.length})</h2>
          <div className="space-y-2">
            {verb.verb_typical_questions.map((q: any) => (
              <div key={q.id} className="p-3 bg-accent/30 rounded-lg">
                <p className="text-sm font-medium">{q.german}</p>
                {q.english && <p className="text-xs text-muted-foreground mt-0.5">{q.english}</p>}
                {q.arabic && <p className="text-xs text-muted-foreground mt-0.5" dir="rtl">{q.arabic}</p>}
                {q.difficulty && <Badge variant="outline" className="mt-1 text-xs">{q.difficulty}</Badge>}
              </div>
            ))}
          </div>
        </Card>
      )}

      {verb.verb_common_mistakes?.length > 0 && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Häufige Fehler ({verb.verb_common_mistakes.length})</h2>
          <div className="space-y-2">
            {verb.verb_common_mistakes.map((m: any) => (
              <div key={m.id} className="p-3 border border-rose-200 dark:border-rose-900/50 rounded-lg">
                <p className="text-sm line-through text-rose-500">{m.incorrect || m.wrong}</p>
                <p className="text-sm font-semibold text-green-600 dark:text-green-400">{m.correct}</p>
                {m.explanation && <p className="text-xs text-muted-foreground mt-1">{m.explanation}</p>}
                {m.arabic_explanation && <p className="text-xs text-muted-foreground mt-0.5" dir="rtl">{m.arabic_explanation}</p>}
              </div>
            ))}
          </div>
        </Card>
      )}

      {verb.verb_prefix_explanations?.length > 0 && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Präfix-Erklärungen ({verb.verb_prefix_explanations.length})</h2>
          <div className="space-y-2">
            {verb.verb_prefix_explanations.map((p: any) => (
              <div key={p.id} className="flex items-start gap-3 p-3 bg-accent/30 rounded-lg">
                <Badge variant="outline" className="shrink-0 mt-0.5 font-mono">{p.prefix}</Badge>
                <div>
                  <p className="text-sm">{p.explanation}</p>
                  {p.example && <p className="text-xs text-muted-foreground mt-0.5 italic">{p.example}</p>}
                </div>
              </div>
            ))}
          </div>
        </Card>
      )}

      {verb.verb_learning_tips?.length > 0 && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Lerntipps ({verb.verb_learning_tips.length})</h2>
          <div className="space-y-2">
            {verb.verb_learning_tips.map((t: any) => (
              <div key={t.id} className="p-3 bg-accent/30 rounded-lg">
                <p className="text-sm">{t.tip || t.content}</p>
                {t.category && <Badge variant="outline" className="mt-1 text-xs">{t.category}</Badge>}
                {t.tip_type && <Badge variant="outline" className="mt-1 text-xs">{t.tip_type}</Badge>}
              </div>
            ))}
          </div>
        </Card>
      )}
    </div>
  )
}