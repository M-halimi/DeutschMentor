'use client'

import { useState, useMemo, useEffect } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Input } from '@/components/ui/input'
import { Badge } from '@/components/ui/badge'
import { ScrollArea } from '@/components/ui/scroll-area'
import { Separator } from '@/components/ui/separator'
import { motion, AnimatePresence } from 'framer-motion'
import {
  FileText, Search, BookOpen, Lightbulb, ArrowLeft, BookMarked,
  Quote, Hash, Star, CheckCircle, ChevronDown, ChevronUp, Sparkles,
} from 'lucide-react'
import { AudioPlayer } from '@/components/audio-player'
import type { GermanLevel, WritingExerciseTypeFull, WritingExample } from '@/types'

const LEVELS: (GermanLevel | 'C2')[] = ['A1', 'A2', 'B1', 'B2', 'C1', 'C2']

const TYPE_LABELS: Record<WritingExerciseTypeFull, string> = {
  email_formal: 'Formal Email', email_informal: 'Informal Email', email_request: 'Request Email',
  email_complaint: 'Complaint Email', email_application: 'Application Email', email_information: 'Information Request',
  beschwerde: 'Beschwerde', meinung: 'Meinung schreiben', argumentation: 'Argumentation',
  bewertung: 'Bewertung', beschreibung: 'Beschreibung', einladung: 'Einladung',
  formular: 'Formular', stellungnahme: 'Stellungnahme', bericht: 'Bericht', erfahrung: 'Erfahrung beschreiben',
}

const TYPE_CATEGORIES: Record<string, WritingExerciseTypeFull[]> = {
  'Emails': ['email_formal', 'email_informal', 'email_request', 'email_complaint', 'email_application', 'email_information'],
  'TELC / Goethe': ['beschwerde', 'meinung', 'argumentation', 'bewertung', 'beschreibung', 'einladung', 'formular', 'stellungnahme', 'bericht', 'erfahrung'],
}

export default function WritingExamplesPage() {
  const [examples, setExamples] = useState<WritingExample[]>([])
  const [isLoading, setIsLoading] = useState(true)
  const [selectedId, setSelectedId] = useState<string | null>(null)
  const [selectedExample, setSelectedExample] = useState<WritingExample | null>(null)
  const [searchQuery, setSearchQuery] = useState('')
  const [levelFilter, setLevelFilter] = useState<string>('')
  const [typeFilter, setTypeFilter] = useState<string>('')

  useEffect(() => {
    fetchExamples()
  }, [])

  async function fetchExamples() {
    setIsLoading(true)
    try {
      const params = new URLSearchParams()
      if (levelFilter) params.set('level', levelFilter)
      if (typeFilter) params.set('type', typeFilter)
      const res = await fetch(`/api/writing/examples?${params}`)
      if (res.ok) setExamples(await res.json())
    } catch {} finally { setIsLoading(false) }
  }

  async function loadExample(id: string) {
    setSelectedId(id)
    try {
      const res = await fetch(`/api/writing/examples?id=${id}`)
      if (res.ok) setSelectedExample(await res.json())
    } catch {}
  }

  const filtered = useMemo(() => {
    let list = [...examples]
    if (searchQuery) {
      const q = searchQuery.toLowerCase()
      list = list.filter(e => e.title.toLowerCase().includes(q) || e.task_description.toLowerCase().includes(q))
    }
    return list
  }, [examples, searchQuery])

  if (selectedId && selectedExample) {
    return (
      <AppShell>
        <div className="space-y-6 max-w-3xl">
          <Button variant="outline" size="sm" onClick={() => { setSelectedId(null); setSelectedExample(null) }}>
            <ArrowLeft className="h-4 w-4 mr-1" /> Back to Library
          </Button>

          <div>
            <div className="flex items-center gap-2 mb-2">
              <Badge>{selectedExample.level}</Badge>
              <Badge variant="secondary">{TYPE_LABELS[selectedExample.exercise_type as WritingExerciseTypeFull] ?? selectedExample.exercise_type}</Badge>
              {selectedExample.theme && <Badge variant="outline">{selectedExample.theme}</Badge>}
            </div>
            <h1 className="text-2xl font-bold">{selectedExample.title}</h1>
          </div>

          <Card>
            <CardHeader>
              <CardTitle className="text-base flex items-center gap-2"><FileText className="h-4 w-4" /> Task Description</CardTitle>
            </CardHeader>
            <CardContent>
              <p className="text-sm whitespace-pre-wrap">{selectedExample.task_description}</p>
            </CardContent>
          </Card>

          <Card className="border-emerald-200 dark:border-emerald-800">
            <CardHeader>
              <CardTitle className="text-base flex items-center gap-2 text-emerald-600 dark:text-emerald-400">
                <CheckCircle className="h-4 w-4" /> Model Answer
                <AudioPlayer text={selectedExample.example_answer} showSlow={true} />
              </CardTitle>
              {selectedExample.word_count && <CardDescription>{selectedExample.word_count} words</CardDescription>}
            </CardHeader>
            <CardContent>
              <div className="p-4 rounded-lg bg-emerald-50 dark:bg-emerald-950/20 border border-emerald-200 dark:border-emerald-800">
                <p className="text-sm whitespace-pre-wrap leading-relaxed">{selectedExample.example_answer}</p>
              </div>
            </CardContent>
          </Card>

          {selectedExample.useful_vocabulary?.length > 0 && (
            <Card>
              <CardHeader className="pb-2">
                <CardTitle className="text-sm flex items-center gap-2"><BookMarked className="h-4 w-4" /> Useful Vocabulary</CardTitle>
              </CardHeader>
              <CardContent>
                <div className="flex flex-wrap gap-2">
                  {selectedExample.useful_vocabulary.map((v: string, i: number) => (
                    <Badge key={i} variant="secondary" className="text-xs">{v}</Badge>
                  ))}
                </div>
              </CardContent>
            </Card>
          )}

          {selectedExample.useful_phrases?.length > 0 && (
            <Card>
              <CardHeader className="pb-2">
                <CardTitle className="text-sm flex items-center gap-2"><Quote className="h-4 w-4" /> Useful Phrases</CardTitle>
              </CardHeader>
              <CardContent>
                <div className="flex flex-wrap gap-2">
                  {selectedExample.useful_phrases.map((p: string, i: number) => (
                    <Badge key={i} variant="outline" className="text-xs italic">{p}</Badge>
                  ))}
                </div>
              </CardContent>
            </Card>
          )}

          {selectedExample.grammar_structures?.length > 0 && (
            <Card>
              <CardHeader className="pb-2">
                <CardTitle className="text-sm flex items-center gap-2"><Hash className="h-4 w-4" /> Grammar Structures</CardTitle>
              </CardHeader>
              <CardContent>
                <div className="flex flex-wrap gap-2">
                  {selectedExample.grammar_structures.map((g: string, i: number) => (
                    <Badge key={i} variant="default" className="text-xs bg-violet-500/10 text-violet-600 dark:text-violet-400 border-violet-200 dark:border-violet-800">{g}</Badge>
                  ))}
                </div>
              </CardContent>
            </Card>
          )}

          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm flex items-center gap-2"><Lightbulb className="h-4 w-4" /> Explanation</CardTitle>
            </CardHeader>
            <CardContent>
              <p className="text-sm">{selectedExample.explanation}</p>
              {selectedExample.why_good && (
                <div className="mt-3 p-3 rounded-lg bg-amber-50 dark:bg-amber-950/20 border border-amber-200 dark:border-amber-800">
                  <p className="text-xs font-medium text-amber-600 dark:text-amber-400 mb-1 flex items-center gap-1"><Star className="h-3 w-3" /> Why this answer works</p>
                  <p className="text-sm text-amber-700 dark:text-amber-300">{selectedExample.why_good}</p>
                </div>
              )}
            </CardContent>
          </Card>
        </div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-emerald-500 to-teal-600 text-white shadow-sm">
            <FileText className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">Writing Examples</h1>
            <p className="text-muted-foreground">Model answers for TELC / Goethe writing tasks</p>
          </div>
        </div>

        <Card>
          <CardContent className="p-4">
            <div className="flex flex-wrap items-center gap-3">
              <div className="relative flex-1 min-w-[200px]">
                <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
                <Input placeholder="Search examples..." value={searchQuery} onChange={(e) => setSearchQuery(e.target.value)} className="pl-9 h-9" />
              </div>
              <select value={levelFilter} onChange={(e) => setLevelFilter(e.target.value)} className="h-9 rounded-lg border border-input bg-transparent px-3 text-sm outline-none focus-visible:border-ring">
                <option value="">All Levels</option>
                {LEVELS.map(l => <option key={l} value={l}>{l}</option>)}
              </select>
              <select value={typeFilter} onChange={(e) => setTypeFilter(e.target.value)} className="h-9 rounded-lg border border-input bg-transparent px-3 text-sm outline-none focus-visible:border-ring">
                <option value="">All Types</option>
                {Object.entries(TYPE_CATEGORIES).map(([cat, types]) => (
                  <optgroup key={cat} label={cat}>
                    {types.map(t => <option key={t} value={t}>{TYPE_LABELS[t]}</option>)}
                  </optgroup>
                ))}
              </select>
            </div>
          </CardContent>
        </Card>

        {isLoading ? (
          <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {[1,2,3,4,5,6].map(i => <Card key={i}><CardContent className="h-32 animate-pulse bg-muted rounded-lg" /></Card>)}
          </div>
        ) : (
          <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
            {filtered.map((example: WritingExample) => (
              <motion.div key={example.id} initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }}>
                <Card className="cursor-pointer hover:border-emerald-400/50 transition-all hover:shadow-lg" onClick={() => loadExample(example.id)}>
                  <div className="h-2 bg-gradient-to-r from-emerald-500 to-teal-500" />
                  <CardContent className="p-5">
                    <div className="flex items-start justify-between gap-2 mb-2">
                      <Badge>{example.level}</Badge>
                      <Badge variant="secondary" className="text-[10px]">{TYPE_LABELS[example.exercise_type as WritingExerciseTypeFull] ?? example.exercise_type}</Badge>
                    </div>
                    <h3 className="font-semibold mb-1 line-clamp-1">{example.title}</h3>
                    <p className="text-sm text-muted-foreground line-clamp-2">{example.task_description}</p>
                    <div className="flex items-center gap-2 mt-3 text-xs text-muted-foreground">
                      <BookOpen className="h-3 w-3" />
                      <span>{example.word_count ?? '?'} words</span>
                      {example.theme && <><span>·</span><span>{example.theme}</span></>}
                    </div>
                  </CardContent>
                </Card>
              </motion.div>
            ))}
          </div>
        )}
      </div>
    </AppShell>
  )
}
