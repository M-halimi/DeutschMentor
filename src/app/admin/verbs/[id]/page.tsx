'use client'

import { useEffect, useState } from 'react'
import { useParams, useRouter } from 'next/navigation'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import {
  Table, TableBody, TableCell, TableHead, TableHeader, TableRow,
} from '@/components/ui/table'
import {
  Tabs, TabsContent, TabsList, TabsTrigger,
} from '@/components/ui/tabs'
import { useAdminStore } from '@/stores/admin-store'
import { AuditBadge, getAuditHref } from '@/components/verbs/audit-badge'
import {
  VERB_TYPE_LABELS, FREQUENCY_LABELS, AUXILIARY_LABELS,
  TRANSITIVITY_LABELS, OBJECT_CASE_LABELS,
  TENSE_LABELS, TENSE_ORDER, EXAMPLE_DIFFICULTY_LABELS,
} from '@/lib/verbs/admin-types'
import type { VerbDetailResponse } from '@/lib/verbs/admin-types'
import {
  ArrowLeft, Edit, ExternalLink, Shield, Star,
} from 'lucide-react'

export default function VerbDetailPage() {
  const params = useParams()
  const router = useRouter()
  const { loaded, isAdminUser } = useAdminStore()
  const [data, setData] = useState<VerbDetailResponse | null>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded || !params.id) return
    ;(async () => {
      try {
        const res = await fetch(`/api/admin/verbs/${params.id}`)
        const json = await res.json()
        if (json.error) return
        setData(json)
      } finally {
        setLoading(false)
      }
    })()
  }, [loaded, isAdminUser, params.id, router])

  if (loading || !loaded) {
    return (
      <AppShell>
        <div className="flex items-center justify-center h-64">
          <div className="h-8 w-8 animate-spin rounded-full border-4 border-primary border-t-transparent" />
        </div>
      </AppShell>
    )
  }

  if (!data) {
    return (
      <AppShell>
        <div className="p-6 text-center text-muted-foreground">Verb not found</div>
      </AppShell>
    )
  }

  const { verb, conjugations, examples, collocations, questions, mistakes, audit_issues } = data
  const tenseMap = new Map(conjugations.map(c => [c.tense, c]))

  return (
    <AppShell>
      <div className="space-y-6 p-6">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Button variant="ghost" size="icon" onClick={() => router.push('/admin/verbs')}>
              <ArrowLeft className="h-4 w-4" />
            </Button>
            <div>
              <h1 className="text-2xl font-bold tracking-tight">{verb.infinitive}</h1>
              <p className="text-sm text-muted-foreground">{verb.english_translation}</p>
            </div>
            <Badge variant="outline" className="ml-2">{verb.cefr_level}</Badge>
            <AuditBadge
              status={audit_issues.some(i => i.severity === 'error') ? 'error' : audit_issues.some(i => i.severity === 'warning') ? 'warning' : 'clean'}
              errorCount={audit_issues.filter(i => i.severity === 'error').length}
              warningCount={audit_issues.filter(i => i.severity === 'warning').length}
              onClick={() => router.push(getAuditHref(verb.id))}
            />
          </div>
          <div className="flex gap-2">
            <Button variant="outline" onClick={() => router.push(`/admin/verbs/${verb.id}/quality`)}>
              <Star className="h-4 w-4 mr-2" />
              Quality
            </Button>
            <Button variant="outline" onClick={() => router.push(`/admin/verbs/${verb.id}/audit`)}>
              <Shield className="h-4 w-4 mr-2" />
              Audit
            </Button>
            <Button variant="outline" onClick={() => router.push(`/admin/verbs/${verb.id}/edit`)}>
              <Edit className="h-4 w-4 mr-2" />
              Edit
            </Button>
          </div>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          <Card>
            <CardHeader className="pb-2"><CardTitle className="text-sm font-medium">Basic</CardTitle></CardHeader>
            <CardContent className="space-y-2 text-sm">
              <div className="flex justify-between"><span className="text-muted-foreground">Infinitive</span><span>{verb.infinitive}</span></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Translation</span><span>{verb.english_translation}</span></div>
              {verb.arabic_translation && <div className="flex justify-between"><span className="text-muted-foreground">Arabic</span><span dir="rtl">{verb.arabic_translation}</span></div>}
              {verb.french_translation && <div className="flex justify-between"><span className="text-muted-foreground">French</span><span>{verb.french_translation}</span></div>}
              <div className="flex justify-between"><span className="text-muted-foreground">CEFR</span><Badge variant="outline" className="text-xs">{verb.cefr_level}</Badge></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Frequency</span><span>{FREQUENCY_LABELS[verb.frequency] || verb.frequency}</span></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Slug</span><span className="font-mono text-xs">{verb.slug}</span></div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader className="pb-2"><CardTitle className="text-sm font-medium">Grammar</CardTitle></CardHeader>
            <CardContent className="space-y-2 text-sm">
              <div className="flex justify-between"><span className="text-muted-foreground">Type</span><span>{VERB_TYPE_LABELS[verb.verb_type] || verb.verb_type}</span></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Transitivity</span><span>{TRANSITIVITY_LABELS[verb.transitivity || ''] || verb.transitivity || '-'}</span></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Object Case</span><span>{OBJECT_CASE_LABELS[verb.object_case || ''] || verb.object_case || '-'}</span></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Preposition</span><span>{verb.preposition || '-'}</span></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Prep Case</span><span>{verb.preposition_case || '-'}</span></div>
              {verb.tags && verb.tags.length > 0 && (
                <div className="flex flex-wrap gap-1 pt-1">
                  {verb.tags.map(t => <Badge key={t} variant="secondary" className="text-xs">{t}</Badge>)}
                </div>
              )}
            </CardContent>
          </Card>

          <Card>
            <CardHeader className="pb-2"><CardTitle className="text-sm font-medium">Forms</CardTitle></CardHeader>
            <CardContent className="space-y-2 text-sm">
              <div className="flex justify-between"><span className="text-muted-foreground">Partizip II</span><span className="font-mono">{verb.partizip_2}</span></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Auxiliary</span><span>{AUXILIARY_LABELS[verb.auxiliary] || verb.auxiliary}</span></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Separable Prefix</span><span className="font-mono">{verb.separable_prefix || '-'}</span></div>
              <div className="flex justify-between"><span className="text-muted-foreground">Reflexive</span><span>{verb.is_reflexive ? (verb.reflexive_pronoun || 'sich') : 'No'}</span></div>
              {verb.ipa && <div className="flex justify-between"><span className="text-muted-foreground">IPA</span><span className="font-mono">{verb.ipa}</span></div>}
              {verb.stress && <div className="flex justify-between"><span className="text-muted-foreground">Stress</span><span>{verb.stress}</span></div>}
              {verb.synonyms && verb.synonyms.length > 0 && (
                <div className="flex flex-wrap gap-1 pt-1">
                  <span className="text-muted-foreground text-xs w-full">Synonyms:</span>
                  {verb.synonyms.map(s => <Badge key={s} variant="outline" className="text-xs">{s}</Badge>)}
                </div>
              )}
            </CardContent>
          </Card>
        </div>

        <Card>
          <CardHeader><CardTitle>Conjugations</CardTitle></CardHeader>
          <CardContent>
            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead className="w-28">Tense</TableHead>
                  <TableHead>ich</TableHead>
                  <TableHead>du</TableHead>
                  <TableHead>er/sie/es</TableHead>
                  <TableHead>wir</TableHead>
                  <TableHead>ihr</TableHead>
                  <TableHead>sie/Sie</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {TENSE_ORDER.map(tense => {
                  const c = tenseMap.get(tense)
                  return (
                    <TableRow key={tense}>
                      <TableCell className="font-medium">{TENSE_LABELS[tense] || tense}</TableCell>
                      <TableCell className="font-mono text-sm">{c?.ich || '-'}</TableCell>
                      <TableCell className="font-mono text-sm">{c?.du || '-'}</TableCell>
                      <TableCell className="font-mono text-sm">{c?.er_sie_es || '-'}</TableCell>
                      <TableCell className="font-mono text-sm">{c?.wir || '-'}</TableCell>
                      <TableCell className="font-mono text-sm">{c?.ihr || '-'}</TableCell>
                      <TableCell className="font-mono text-sm">{c?.sie || '-'}</TableCell>
                    </TableRow>
                  )
                })}
              </TableBody>
            </Table>
          </CardContent>
        </Card>

        <Tabs defaultValue="examples">
          <TabsList>
            <TabsTrigger value="examples">Examples ({examples.length})</TabsTrigger>
            <TabsTrigger value="collocations">Collocations ({collocations.length})</TabsTrigger>
            <TabsTrigger value="questions">Questions ({questions.length})</TabsTrigger>
            <TabsTrigger value="mistakes">Mistakes ({mistakes.length})</TabsTrigger>
            <TabsTrigger value="audit">Audit ({audit_issues.length})</TabsTrigger>
          </TabsList>

          <TabsContent value="examples" className="mt-4">
            {examples.length === 0 ? (
              <p className="text-sm text-muted-foreground py-4">No examples</p>
            ) : (
              <div className="space-y-2">
                {examples.map(e => (
                  <Card key={e.id}>
                    <CardContent className="py-3">
                      <div className="flex justify-between">
                        <span className="font-medium">{e.german}</span>
                        <Badge variant="outline" className="text-xs">{EXAMPLE_DIFFICULTY_LABELS[e.difficulty] || e.difficulty}</Badge>
                      </div>
                      <p className="text-sm text-muted-foreground">{e.english}</p>
                    </CardContent>
                  </Card>
                ))}
              </div>
            )}
          </TabsContent>

          <TabsContent value="collocations" className="mt-4">
            {collocations.length === 0 ? (
              <p className="text-sm text-muted-foreground py-4">No collocations</p>
            ) : (
              <div className="space-y-2">
                {collocations.map(c => (
                  <Card key={c.id}>
                    <CardContent className="py-3">
                      <div className="font-medium">{c.collocation}</div>
                      <p className="text-sm text-muted-foreground">{c.english}</p>
                    </CardContent>
                  </Card>
                ))}
              </div>
            )}
          </TabsContent>

          <TabsContent value="questions" className="mt-4">
            {questions.length === 0 ? (
              <p className="text-sm text-muted-foreground py-4">No questions</p>
            ) : (
              <div className="space-y-2">
                {questions.map(q => (
                  <Card key={q.id}>
                    <CardContent className="py-3">
                      <div className="font-medium">{q.german}</div>
                      <p className="text-sm text-muted-foreground">{q.english}</p>
                    </CardContent>
                  </Card>
                ))}
              </div>
            )}
          </TabsContent>

          <TabsContent value="mistakes" className="mt-4">
            {mistakes.length === 0 ? (
              <p className="text-sm text-muted-foreground py-4">No mistakes</p>
            ) : (
              <div className="space-y-2">
                {mistakes.map(m => (
                  <Card key={m.id}>
                    <CardContent className="py-3">
                      <div className="flex gap-2 items-center">
                        <span className="line-through text-red-500">{m.incorrect}</span>
                        <span>→</span>
                        <span className="text-green-600 font-medium">{m.correct}</span>
                      </div>
                      <p className="text-sm text-muted-foreground mt-1">{m.explanation}</p>
                    </CardContent>
                  </Card>
                ))}
              </div>
            )}
          </TabsContent>

          <TabsContent value="audit" className="mt-4">
            {audit_issues.length === 0 ? (
              <p className="text-sm text-muted-foreground py-4">No audit issues</p>
            ) : (
              <div className="space-y-2">
                {audit_issues.map(ai => (
                  <Card key={ai.id}>
                    <CardContent className="py-3 flex items-start gap-3">
                      <Shield className={`h-4 w-4 mt-0.5 ${ai.severity === 'error' ? 'text-red-500' : ai.severity === 'warning' ? 'text-amber-500' : 'text-blue-500'}`} />
                      <div className="flex-1">
                        <div className="flex items-center gap-2">
                          <Badge variant="outline" className={`text-xs ${
                            ai.severity === 'error' ? 'border-red-500/50 text-red-600' :
                            ai.severity === 'warning' ? 'border-amber-500/50 text-amber-600' :
                            'border-blue-500/50 text-blue-600'
                          }`}>
                            {ai.severity}
                          </Badge>
                          <span className="text-xs text-muted-foreground">{ai.issue_type}</span>
                        </div>
                        <p className="text-sm mt-1">{ai.message}</p>
                        {ai.field && <p className="text-xs text-muted-foreground mt-0.5">Field: {ai.field} | Expected: {ai.expected} | Got: {ai.actual}</p>}
                      </div>
                      <Badge variant="secondary" className="text-xs">{ai.status}</Badge>
                    </CardContent>
                  </Card>
                ))}
              </div>
            )}
          </TabsContent>
        </Tabs>
      </div>
    </AppShell>
  )
}
