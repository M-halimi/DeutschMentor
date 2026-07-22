'use client'

import { useEffect, useState } from 'react'
import { useParams } from 'next/navigation'
import { Button } from '@/components/ui/button'
import { Card } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { ArrowLeft, Edit3, Trash2, RefreshCw, History } from 'lucide-react'
import Link from 'next/link'

export default function VerbDetailPage() {
  const params = useParams()
  const [verb, setVerb] = useState<any>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    if (params.id) fetchVerb()
  }, [params.id])

  async function fetchVerb() {
    setLoading(true)
    try {
      const res = await fetch(`/api/admin/verbs/${params.id}`)
      if (res.ok) setVerb(await res.json())
    } finally { setLoading(false) }
  }

  if (loading) return <div className="p-8 text-center text-muted-foreground">Lade Verb...</div>
  if (!verb) return <div className="p-8 text-center text-muted-foreground">Verb nicht gefunden</div>

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-3">
          <Link href="/admin/verbs"><Button variant="ghost" size="sm"><ArrowLeft className="h-4 w-4" /></Button></Link>
          <div>
            <h1 className="text-2xl font-bold">{verb.infinitive}</h1>
            <p className="text-muted-foreground">{verb.english_translation}</p>
          </div>
        </div>
        <div className="flex items-center gap-2">
          <Link href={`/admin/verbs/versions?verb_id=${verb.id}`}>
            <Button variant="outline" size="sm"><History className="h-4 w-4 mr-2" />Versionen</Button>
          </Link>
          <Link href={`/admin/verbs/quality?verb_id=${verb.id}`}>
            <Button variant="outline" size="sm"><RefreshCw className="h-4 w-4 mr-2" />Qualität</Button>
          </Link>
        </div>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
        <Card className="p-6 lg:col-span-2">
          <h2 className="font-semibold mb-4">Details</h2>
          <div className="grid grid-cols-2 gap-4">
            {[
              { label: 'Slug', value: verb.slug },
              { label: 'CEFR', value: verb.cefr_level },
              { label: 'Typ', value: verb.verb_type },
              { label: 'Transitivität', value: verb.transitivity },
              { label: 'Objekt-Kasus', value: verb.object_case },
              { label: 'Präposition', value: verb.preposition || '-' },
              { label: 'Hilfsverb', value: verb.auxiliary },
              { label: 'Partizip II', value: verb.partizip_2 },
              { label: 'Trennpräfix', value: verb.separable_prefix || '-' },
              { label: 'Reflexiv', value: verb.is_reflexive ? 'Ja' : 'Nein' },
              { label: 'Reflexivpronomen', value: verb.reflexive_pronoun || '-' },
              { label: 'IPA', value: verb.ipa || '-' },
              { label: 'Frequenz', value: verb.frequency },
              { label: 'Tags', value: verb.tags?.join(', ') || '-' },
            ].map(item => (
              <div key={item.label}>
                <p className="text-xs text-muted-foreground uppercase">{item.label}</p>
                <p className="font-medium truncate">{item.value}</p>
              </div>
            ))}
          </div>
        </Card>

        <Card className="p-6">
          <h2 className="font-semibold mb-4">Synonyme & Antonyme</h2>
          <div className="mb-4">
            <p className="text-xs text-muted-foreground uppercase mb-1">Synonyme</p>
            <div className="flex flex-wrap gap-1">
              {verb.synonyms?.length > 0 ? verb.synonyms.map((s: string) => <Badge key={s} variant="secondary">{s}</Badge>) : <span className="text-sm text-muted-foreground">-</span>}
            </div>
          </div>
          <div>
            <p className="text-xs text-muted-foreground uppercase mb-1">Antonyme</p>
            <div className="flex flex-wrap gap-1">
              {verb.antonyms?.length > 0 ? verb.antonyms.map((a: string) => <Badge key={a} variant="outline">{a}</Badge>) : <span className="text-sm text-muted-foreground">-</span>}
            </div>
          </div>
        </Card>
      </div>

      {verb.verb_conjugations?.length > 0 && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Konjugationen</h2>
          <div className="overflow-x-auto">
            <table className="w-full text-sm">
              <thead>
                <tr className="border-b">
                  <th className="text-left py-2 pr-4">Tempus</th>
                  <th className="text-left py-2 pr-4">ich</th>
                  <th className="text-left py-2 pr-4">du</th>
                  <th className="text-left py-2 pr-4">er/sie/es</th>
                  <th className="text-left py-2 pr-4">wir</th>
                  <th className="text-left py-2 pr-4">ihr</th>
                  <th className="text-left py-2">Sie</th>
                </tr>
              </thead>
              <tbody>
                {verb.verb_conjugations.map((c: any) => (
                  <tr key={c.id} className="border-b last:border-0">
                    <td className="py-2 pr-4 font-medium">{c.tense}</td>
                    <td className="py-2 pr-4">{c.ich}</td>
                    <td className="py-2 pr-4">{c.du}</td>
                    <td className="py-2 pr-4">{c.er_sie_es}</td>
                    <td className="py-2 pr-4">{c.wir}</td>
                    <td className="py-2 pr-4">{c.ihr}</td>
                    <td className="py-2">{c.Sie}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </Card>
      )}

      {verb.verb_examples?.length > 0 && (
        <Card className="p-6">
          <h2 className="font-semibold mb-4">Beispiele</h2>
          <div className="space-y-3">
            {verb.verb_examples.map((ex: any) => (
              <div key={ex.id} className="p-3 bg-accent/30 rounded-lg">
                <p className="font-medium">{ex.german}</p>
                <p className="text-sm text-muted-foreground">{ex.english}</p>
                <Badge variant="outline" className="mt-1">{ex.difficulty}</Badge>
              </div>
            ))}
          </div>
        </Card>
      )}
    </div>
  )
}
