'use client'

import { useState, useEffect } from 'react'
import { useParams, useRouter } from 'next/navigation'
import Link from 'next/link'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Separator } from '@/components/ui/separator'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { Skeleton } from '@/components/ui/skeleton'
import { motion } from 'framer-motion'
import {
  ArrowLeft, Bookmark, BookmarkCheck, ChevronLeft, ChevronRight,
  Lightbulb, Languages, MessageSquare, AlertTriangle, Link2,
  BookText, Sparkles, Volume2, CheckCircle2, XCircle, Brain,
} from 'lucide-react'
import { AudioPlayer } from '@/components/audio-player'
import type { GermanVerb, Conjugation, VerbExample, VerbCollocation, VerbTypicalQuestion, VerbCommonMistake, VerbPrefixExplanation, VerbLearningTip } from '@/types'

const levelColors: Record<string, string> = {
  A1: 'bg-emerald-100 text-emerald-700 dark:bg-emerald-900/30 dark:text-emerald-400',
  A2: 'bg-sky-100 text-sky-700 dark:bg-sky-900/30 dark:text-sky-400',
  B1: 'bg-violet-100 text-violet-700 dark:bg-violet-900/30 dark:text-violet-400',
  B2: 'bg-amber-100 text-amber-700 dark:bg-amber-900/30 dark:text-amber-400',
  C1: 'bg-rose-100 text-rose-700 dark:bg-rose-900/30 dark:text-rose-400',
  C2: 'bg-fuchsia-100 text-fuchsia-700 dark:bg-fuchsia-900/30 dark:text-fuchsia-400',
}

const tenseLabels: Record<string, string> = {
  praesens: 'Präsens',
  praeteritum: 'Präteritum',
  perfekt: 'Perfekt',
  plusquamperfekt: 'Plusquamperfekt',
  futur_i: 'Futur I',
  futur_ii: 'Futur II',
  konjunktiv_ii: 'Konjunktiv II',
  imperativ: 'Imperativ',
  passiv: 'Passiv',
}

const verbTypeLabels: Record<string, string> = {
  regular: 'Regelmäßig', irregular: 'Unregelmäßig', mixed: 'Gemischt',
  separable: 'Trennbar', inseparable: 'Untrennbar', reflexive: 'Reflexiv',
  verb_preposition: 'Verb + Präposition', reflexive_preposition: 'Reflexiv + Präposition',
  modal: 'Modal', auxiliary: 'Hilfsverb',
}

const pronounLabels: Record<string, string> = {
  ich: 'ich', du: 'du', er_sie_es: 'er/sie/es', wir: 'wir', ihr: 'ihr', Sie: 'Sie',
}

function ConjugationTable({ conjugations, verb }: { conjugations: Conjugation[]; verb: GermanVerb }) {
  const tenses = conjugations.map(c => c.tense)
  const [selectedTense, setSelectedTense] = useState(tenses[0] || 'praesens')

  if (conjugations.length === 0) return <p className="text-sm text-muted-foreground">Keine Konjugationen verfügbar.</p>

  const tense = conjugations.find(c => c.tense === selectedTense)

  return (
    <div className="space-y-4">
      <div className="flex flex-wrap gap-1">
        {tenses.map(t => (
          <button key={t} onClick={() => setSelectedTense(t)}
            className={`px-3 py-1.5 text-xs font-medium rounded-md transition-all ${selectedTense === t ? 'bg-primary text-primary-foreground shadow-sm' : 'bg-muted text-muted-foreground hover:text-foreground'}`}>
            {tenseLabels[t] ?? t}
          </button>
        ))}
      </div>
      <div className="rounded-lg border bg-card overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="border-b bg-muted/50">
              <th className="text-left p-3 font-medium text-muted-foreground">Pronomen</th>
              <th className="text-left p-3 font-medium">Konjugation</th>
            </tr>
          </thead>
          <tbody>
            {(['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'Sie'] as const).map(pronoun => {
              const value = tense?.[pronoun]
              return (
                <tr key={pronoun} className="border-b last:border-0 hover:bg-muted/30">
                  <td className="p-3 text-muted-foreground font-medium">{pronounLabels[pronoun]}</td>
                  <td className="p-3 font-semibold">
                    {verb.separable_prefix && value ? `${verb.separable_prefix}${value}`.replace('—', '') : value ?? '—'}
                  </td>
                </tr>
              )
            })}
          </tbody>
        </table>
      </div>
    </div>
  )
}

function ExampleSection({ examples }: { examples: VerbExample[] }) {
  const difficulties = ['beginner', 'intermediate', 'advanced'] as const
  const diffLabels: Record<string, string> = { beginner: 'Anfänger', intermediate: 'Mittelstufe', advanced: 'Fortgeschritten' }

  return (
    <div className="space-y-4">
      {difficulties.map(diff => {
        const filtered = examples.filter(e => e.difficulty === diff)
        if (filtered.length === 0) return null
        return (
          <div key={diff}>
            <h4 className="text-sm font-semibold text-muted-foreground mb-2">{diffLabels[diff]}</h4>
            <div className="space-y-2">
              {filtered.map(example => (
                <Card key={example.id}>
                  <CardContent className="p-3">
                    <p className="text-sm font-medium">{example.german}</p>
                    <div className="mt-1 text-xs text-muted-foreground space-y-0.5">
                      <p>{example.english}</p>
                      {example.french && <p>fr: {example.french}</p>}
                      {example.arabic && <p dir="rtl">ar: {example.arabic}</p>}
                    </div>
                  </CardContent>
                </Card>
              ))}
            </div>
          </div>
        )
      })}
      {examples.length === 0 && <p className="text-sm text-muted-foreground">Keine Beispiele verfügbar.</p>}
    </div>
  )
}

function MistakesSection({ mistakes }: { mistakes: VerbCommonMistake[] }) {
  if (mistakes.length === 0) return <p className="text-sm text-muted-foreground">Keine typischen Fehler hinterlegt.</p>
  return (
    <div className="space-y-3">
      {mistakes.map(m => (
        <Card key={m.id} className="border-rose-200 dark:border-rose-900/50">
          <CardContent className="p-4">
            <div className="flex items-start gap-3">
              <XCircle className="h-5 w-5 text-rose-500 shrink-0 mt-0.5" />
              <div className="flex-1">
                <p className="text-sm line-through text-rose-500">{m.incorrect}</p>
                <p className="text-sm font-semibold text-green-600 dark:text-green-400">{m.correct}</p>
                <p className="text-xs text-muted-foreground mt-1">{m.explanation}</p>
                {m.arabic_explanation && <p className="text-xs text-muted-foreground mt-0.5" dir="rtl">{m.arabic_explanation}</p>}
                {m.french_explanation && <p className="text-xs text-muted-foreground mt-0.5">fr: {m.french_explanation}</p>}
              </div>
            </div>
          </CardContent>
        </Card>
      ))}
    </div>
  )
}

function CollocationsSection({ collocations }: { collocations: VerbCollocation[] }) {
  if (collocations.length === 0) return <p className="text-sm text-muted-foreground">Keine Kollokationen verfügbar.</p>
  return (
    <div className="flex flex-wrap gap-2">
      {collocations.map(c => (
        <div key={c.id} className="rounded-lg border bg-card p-3 hover:border-primary/40 transition-colors">
          <p className="text-sm font-medium">{c.collocation}</p>
          <p className="text-xs text-muted-foreground mt-0.5">{c.english}</p>
          {c.arabic && <p className="text-xs text-muted-foreground" dir="rtl">{c.arabic}</p>}
        </div>
      ))}
    </div>
  )
}

function TipsSection({ tips }: { tips: VerbLearningTip[] }) {
  const tipLabels: Record<string, string> = {
    memory_trick: 'Merkhilfe',
    usage_notes: 'Verwendung',
    common_contexts: 'Typische Kontexte',
    formal_vs_informal: 'Formal/Informal',
  }
  const tipIcons: Record<string, React.ElementType> = {
    memory_trick: Lightbulb,
    usage_notes: BookText,
    common_contexts: MessageSquare,
    formal_vs_informal: Languages,
  }
  if (tips.length === 0) return <p className="text-sm text-muted-foreground">Keine Lerntipps verfügbar.</p>
  return (
    <div className="space-y-3">
      {tips.map(tip => {
        const Icon = tipIcons[tip.tip_type] ?? Lightbulb
        return (
          <Card key={tip.id}>
            <CardContent className="p-4">
              <div className="flex items-start gap-3">
                <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-primary/10 shrink-0">
                  <Icon className="h-4 w-4 text-primary" />
                </div>
                <div>
                  <p className="text-xs font-medium text-muted-foreground">{tipLabels[tip.tip_type] ?? tip.tip_type}</p>
                  <p className="text-sm mt-0.5">{tip.content}</p>
                </div>
              </div>
            </CardContent>
          </Card>
        )
      })}
    </div>
  )
}

function QuestionsSection({ questions }: { questions: VerbTypicalQuestion[] }) {
  if (questions.length === 0) return <p className="text-sm text-muted-foreground">Keine typischen Fragen verfügbar.</p>
  return (
    <div className="space-y-2">
      {questions.map(q => (
        <Card key={q.id}>
          <CardContent className="p-3">
            <p className="text-sm font-medium">{q.german}</p>
            <p className="text-xs text-muted-foreground">{q.english}</p>
          </CardContent>
        </Card>
      ))}
    </div>
  )
}

export default function VerbDetailPage() {
  const params = useParams()
  const router = useRouter()
  const slug = params?.slug as string

  const [verb, setVerb] = useState<GermanVerb | null>(null)
  const [loading, setLoading] = useState(true)
  const [isBookmarked, setIsBookmarked] = useState(false)

  useEffect(() => {
    if (!slug) return
    setLoading(true)
    fetch(`/api/verbs/${slug}`)
      .then(r => r.json())
      .then(d => {
        setVerb(d)
        setIsBookmarked(d.user_verb?.is_bookmarked ?? false)
      })
      .finally(() => setLoading(false))
  }, [slug])

  const toggleBookmark = async () => {
    if (!verb) return
    const res = await fetch('/api/verbs/user', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ verb_id: verb.id, is_bookmarked: !isBookmarked }),
    })
    if (res.ok) setIsBookmarked(!isBookmarked)
  }

  if (loading) {
    return (
      <AppShell>
        <div className="space-y-6">
          <Skeleton className="h-10 w-64" />
          <Skeleton className="h-48 rounded-xl" />
          <Skeleton className="h-64 rounded-xl" />
        </div>
      </AppShell>
    )
  }

  if (!verb) {
    return (
      <AppShell>
        <div className="p-12 text-center">
          <p className="text-muted-foreground">Verb nicht gefunden.</p>
          <Button variant="outline" className="mt-4" onClick={() => router.push('/dashboard/verbs')}>
            <ArrowLeft className="h-4 w-4 mr-2" /> Zurück zur Übersicht
          </Button>
        </div>
      </AppShell>
    )
  }

  const conjugations = verb.conjugations ?? []
  const examples = verb.examples ?? []
  const collocations = verb.collocations ?? []
  const mistakes = verb.common_mistakes ?? []
  const questions = verb.typical_questions ?? []
  const tips = verb.learning_tips ?? []
  const prefixes = verb.prefix_explanations ?? []
  const family = verb.family_members ?? []

  return (
    <AppShell>
      <div className="space-y-6">
        {/* Back + Bookmark */}
        <div className="flex items-center justify-between">
          <Button variant="ghost" size="sm" className="gap-2 text-muted-foreground" onClick={() => router.push('/dashboard/verbs')}>
            <ArrowLeft className="h-4 w-4" /> Alle Verben
          </Button>
          <Button variant="outline" size="sm" onClick={toggleBookmark}>
            {isBookmarked ? <BookmarkCheck className="h-4 w-4 mr-2 text-amber-500" /> : <Bookmark className="h-4 w-4 mr-2" />}
            {isBookmarked ? 'Gespeichert' : 'Merken'}
          </Button>
        </div>

        {/* Header Card */}
        <Card className="overflow-hidden">
          <div className="bg-gradient-to-r from-violet-500/10 via-primary/5 to-transparent p-6">
            <div className="flex items-start justify-between gap-4">
              <div className="min-w-0 flex-1">
                <div className="flex items-center gap-3 flex-wrap mb-2">
                  <h1 className="text-4xl font-bold tracking-tight">{verb.infinitive}</h1>
                  <AudioPlayer text={verb.infinitive} />
                  {verb.ipa && <span className="text-sm text-muted-foreground font-mono">/{verb.ipa}/</span>}
                </div>
                <p className="text-lg text-muted-foreground">{verb.english_translation}</p>
                <div className="flex flex-wrap items-center gap-1.5 mt-3">
                  <Badge className={levelColors[verb.cefr_level]}>{verb.cefr_level}</Badge>
                  <Badge variant="secondary">{verbTypeLabels[verb.verb_type]}</Badge>
                  <Badge variant="secondary" className="capitalize">{verb.frequency.replace('_', ' ')}</Badge>
                  {verb.separable_prefix && <Badge variant="outline">Trennbar: {verb.separable_prefix}-</Badge>}
                  {verb.is_reflexive && <Badge variant="outline">{verb.reflexive_pronoun ?? 'sich'}</Badge>}
                  {verb.preposition && <Badge variant="outline">{verb.preposition} + {verb.preposition_case}</Badge>}
                  <Badge variant="outline">{verb.auxiliary}</Badge>
                  <Badge variant="outline">Partizip II: {verb.partizip_2}</Badge>
                </div>
              </div>
            </div>
          </div>
          <CardContent className="p-4 bg-muted/20">
            <div className="grid grid-cols-2 sm:grid-cols-4 gap-4 text-sm">
              <div><span className="text-muted-foreground">Transitivität:</span><p className="font-medium capitalize">{verb.transitivity}</p></div>
              <div><span className="text-muted-foreground">Objekt-Kasus:</span><p className="font-medium capitalize">{verb.object_case === 'none' ? 'Kein Objekt' : verb.object_case}</p></div>
              {verb.arabic_translation && <div><span className="text-muted-foreground">Arabisch:</span><p dir="rtl" className="font-medium">{verb.arabic_translation}</p></div>}
              {verb.french_translation && <div><span className="text-muted-foreground">Französisch:</span><p className="font-medium">{verb.french_translation}</p></div>}
            </div>
          </CardContent>
        </Card>

        {/* Tabs */}
        <Tabs defaultValue="conjugation">
          <TabsList className="w-full sm:w-auto flex-nowrap overflow-x-auto">
            <TabsTrigger value="conjugation">Konjugation</TabsTrigger>
            <TabsTrigger value="examples">Beispiele</TabsTrigger>
            <TabsTrigger value="collocations">Kollokationen</TabsTrigger>
            <TabsTrigger value="questions">Typische Fragen</TabsTrigger>
            <TabsTrigger value="mistakes">Häufige Fehler</TabsTrigger>
            <TabsTrigger value="tips">Lerntipps</TabsTrigger>
          </TabsList>

          <TabsContent value="conjugation" className="mt-4">
            <ConjugationTable conjugations={conjugations} verb={verb} />
          </TabsContent>

          <TabsContent value="examples" className="mt-4">
            <ExampleSection examples={examples} />
          </TabsContent>

          <TabsContent value="collocations" className="mt-4">
            <CollocationsSection collocations={collocations} />
          </TabsContent>

          <TabsContent value="questions" className="mt-4">
            <QuestionsSection questions={questions} />
          </TabsContent>

          <TabsContent value="mistakes" className="mt-4">
            <MistakesSection mistakes={mistakes} />
          </TabsContent>

          <TabsContent value="tips" className="mt-4">
            <TipsSection tips={tips} />
          </TabsContent>
        </Tabs>

        {/* Prefixes */}
        {prefixes.length > 0 && (
          <Card>
            <CardContent className="p-5">
              <h3 className="text-sm font-semibold flex items-center gap-2 mb-3">
                <Sparkles className="h-4 w-4 text-primary" /> Präfixe
              </h3>
              <div className="space-y-2">
                {prefixes.map(p => (
                  <div key={p.id} className="flex items-start gap-3">
                    <Badge variant="outline" className="shrink-0 mt-0.5">{p.prefix}</Badge>
                    <div>
                      <p className="text-sm">{p.explanation}</p>
                      {p.example && <p className="text-xs text-muted-foreground mt-0.5 italic">{p.example}</p>}
                    </div>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>
        )}

        {/* Verb Family */}
        {family.length > 0 && (
          <Card>
            <CardContent className="p-5">
              <h3 className="text-sm font-semibold flex items-center gap-2 mb-3">
                <Link2 className="h-4 w-4 text-primary" /> Verwandte Verben
              </h3>
              <div className="flex flex-wrap gap-2">
                {family.map(f => {
                  const rv = f as any
                  const related = rv.related_verb
                  if (!related) return null
                  return (
                    <Link key={f.id} href={`/dashboard/verbs/${related.slug}`}>
                      <Badge variant="secondary" className="cursor-pointer hover:bg-primary/20 transition-colors">
                        {related.infinitive}
                      </Badge>
                    </Link>
                  )
                })}
              </div>
            </CardContent>
          </Card>
        )}

        {/* Synonyms / Antonyms */}
        {(verb.synonyms?.length > 0 || verb.antonyms?.length > 0) && (
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
            {verb.synonyms?.length > 0 && (
              <Card>
                <CardContent className="p-5">
                  <h3 className="text-sm font-semibold mb-2">Synonyme</h3>
                  <div className="flex flex-wrap gap-1.5">
                    {verb.synonyms.map((s, i) => <Badge key={i} variant="secondary">{s}</Badge>)}
                  </div>
                </CardContent>
              </Card>
            )}
            {verb.antonyms?.length > 0 && (
              <Card>
                <CardContent className="p-5">
                  <h3 className="text-sm font-semibold mb-2">Antonyme</h3>
                  <div className="flex flex-wrap gap-1.5">
                    {verb.antonyms.map((a, i) => <Badge key={i} variant="secondary">{a}</Badge>)}
                  </div>
                </CardContent>
              </Card>
            )}
          </div>
        )}
      </div>
    </AppShell>
  )
}
