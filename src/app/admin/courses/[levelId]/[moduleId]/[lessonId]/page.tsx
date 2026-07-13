'use client'

import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Textarea } from '@/components/ui/textarea'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs'
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { ChevronLeft, Plus, Trash2, Loader2, Save } from 'lucide-react'
import { useState } from 'react'
import { toast } from 'sonner'
import { useParams } from 'next/navigation'
import type { LessonType } from '@/types'
import { LinkButton } from '@/components/shared/link-button'

const LESSON_TYPES: { value: LessonType; label: string }[] = [
  { value: 'vocabulary', label: 'Vocabulary' },
  { value: 'grammar', label: 'Grammar' },
  { value: 'reading', label: 'Reading' },
  { value: 'listening', label: 'Listening' },
  { value: 'speaking', label: 'Speaking' },
  { value: 'writing', label: 'Writing' },
  { value: 'review', label: 'Review' },
  { value: 'test', label: 'Test' },
]

export default function AdminLessonEditorPage() {
  const params = useParams()
  const levelId = params.levelId as string
  const moduleId = params.moduleId as string
  const lessonId = params.lessonId as string
  const queryClient = useQueryClient()

  const { data: lesson, isLoading } = useQuery({
    queryKey: ['admin-course-lesson', lessonId],
    queryFn: async () => {
      const res = await fetch(`/api/courses?lesson=${lessonId}`)
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
  })

  const { data: vocabList, refetch: refetchVocab } = useQuery({
    queryKey: ['admin-vocab', lessonId],
    queryFn: async () => {
      const res = await fetch(`/api/admin/courses?table=lesson_vocabulary&filter_field=lesson_id&filter_value=${lessonId}&order=order_index&dir=asc&limit=100`)
      return (await res.json()).data ?? []
    },
  })

  const { data: grammarList, refetch: refetchGrammar } = useQuery({
    queryKey: ['admin-grammar', lessonId],
    queryFn: async () => {
      const res = await fetch(`/api/admin/courses?table=lesson_grammar&filter_field=lesson_id&filter_value=${lessonId}&order=order_index&dir=asc&limit=50`)
      return (await res.json()).data ?? []
    },
  })

  const { data: exercises, refetch: refetchExercises } = useQuery({
    queryKey: ['admin-exercises', lessonId],
    queryFn: async () => {
      const res = await fetch(`/api/admin/courses?table=lesson_exercises&filter_field=lesson_id&filter_value=${lessonId}&order=order_index&dir=asc&limit=100`)
      return (await res.json()).data ?? []
    },
  })

  const { data: testQuestions, refetch: refetchTests } = useQuery({
    queryKey: ['admin-tests', lessonId],
    queryFn: async () => {
      const res = await fetch(`/api/admin/courses?table=lesson_test_questions&filter_field=lesson_id&filter_value=${lessonId}&order=order_index&dir=asc&limit=100`)
      return (await res.json()).data ?? []
    },
  })

  const updateLessonMutation = useMutation({
    mutationFn: async (updates: Record<string, unknown>) => {
      const res = await fetch('/api/admin/courses', {
        method: 'PUT', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ table: 'course_lessons', id: lessonId, updates }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['admin-course-lesson', lessonId] })
      toast.success('Lesson updated')
    },
    onError: () => toast.error('Failed'),
  })

  const deleteItemMutation = (table: string) =>
    useMutation({
      mutationFn: async (id: string) => {
        const res = await fetch('/api/admin/courses', {
          method: 'DELETE', headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ table, id }),
        })
        if (!res.ok) throw new Error('Failed')
        return res.json()
      },
      onSuccess: () => {
        refetchVocab(); refetchGrammar(); refetchExercises(); refetchTests()
        toast.success('Deleted')
      },
      onError: () => toast.error('Failed'),
    })

  const addItemMutation = (table: string, refetch: () => void) =>
    useMutation({
      mutationFn: async (item: Record<string, unknown>) => {
        const res = await fetch('/api/admin/courses', {
          method: 'POST', headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ table, items: [item] }),
        })
        if (!res.ok) throw new Error('Failed')
        return res.json()
      },
      onSuccess: () => { refetch(); toast.success('Added') },
      onError: () => toast.error('Failed'),
    })

  if (isLoading) return (
    <AppShell><div className="flex justify-center py-20"><Loader2 className="h-8 w-8 animate-spin" /></div></AppShell>
  )

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <LinkButton href={`/admin/courses/${levelId}/${moduleId}`} variant="ghost" size="icon">
            <ChevronLeft className="h-4 w-4" />
          </LinkButton>
          <div className="flex-1 min-w-0">
            <h1 className="text-2xl font-bold truncate">{lesson?.title ?? 'Edit Lesson'}</h1>
          </div>
          <Badge variant="outline">{lesson?.lesson_type}</Badge>
        </div>

        <Card>
          <CardHeader><CardTitle className="text-base">Lesson Settings</CardTitle></CardHeader>
          <CardContent>
            <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
              <div>
                <Label>Title</Label>
                <Input defaultValue={lesson?.title} onBlur={e => updateLessonMutation.mutate({ title: e.target.value })} />
              </div>
              <div>
                <Label>Type</Label>
                <Select defaultValue={lesson?.lesson_type} onValueChange={(v: string | null) => updateLessonMutation.mutate({ lesson_type: v ?? 'vocabulary' })}>
                  <SelectTrigger><SelectValue /></SelectTrigger>
                  <SelectContent>
                    {LESSON_TYPES.map(t => <SelectItem key={t.value} value={t.value}>{t.label}</SelectItem>)}
                  </SelectContent>
                </Select>
              </div>
              <div>
                <Label>Minutes</Label>
                <Input type="number" defaultValue={lesson?.duration_minutes} onBlur={e => updateLessonMutation.mutate({ duration_minutes: parseInt(e.target.value) || 30 })} />
              </div>
              <div>
                <Label>Published</Label>
                <Select defaultValue={lesson?.is_published ? 'true' : 'false'} onValueChange={(v: string | null) => updateLessonMutation.mutate({ is_published: v === 'true' })}>
                  <SelectTrigger><SelectValue /></SelectTrigger>
                  <SelectContent>
                    <SelectItem value="true">Published</SelectItem>
                    <SelectItem value="false">Draft</SelectItem>
                  </SelectContent>
                </Select>
              </div>
            </div>
            <div className="mt-3">
              <Label>Description</Label>
              <Textarea defaultValue={lesson?.description ?? ''} onBlur={e => updateLessonMutation.mutate({ description: e.target.value || null })} rows={2} />
            </div>
            <div className="mt-3 grid grid-cols-2 gap-3">
              <div>
                <Label>Source Table (for reading/listening/writing/speaking)</Label>
                <Input defaultValue={lesson?.source_table ?? ''} onBlur={e => updateLessonMutation.mutate({ source_table: e.target.value || null })} placeholder="e.g. articles" />
              </div>
              <div>
                <Label>Source ID</Label>
                <Input defaultValue={lesson?.source_id ?? ''} onBlur={e => updateLessonMutation.mutate({ source_id: e.target.value || null })} placeholder="UUID" />
              </div>
            </div>
          </CardContent>
        </Card>

        <Tabs defaultValue="vocabulary">
          <TabsList className="grid grid-cols-4">
            <TabsTrigger value="vocabulary">Vocabulary</TabsTrigger>
            <TabsTrigger value="grammar">Grammar</TabsTrigger>
            <TabsTrigger value="exercises">Exercises</TabsTrigger>
            <TabsTrigger value="tests">Test Questions</TabsTrigger>
          </TabsList>

          <TabsContent value="vocabulary" className="space-y-3 mt-4">
            <VocabEditor lessonId={lessonId} items={vocabList ?? []} refetch={refetchVocab} />
          </TabsContent>
          <TabsContent value="grammar" className="space-y-3 mt-4">
            <GrammarEditor lessonId={lessonId} items={grammarList ?? []} refetch={refetchGrammar} />
          </TabsContent>
          <TabsContent value="exercises" className="space-y-3 mt-4">
            <ExerciseEditor lessonId={lessonId} items={exercises ?? []} refetch={refetchExercises} />
          </TabsContent>
          <TabsContent value="tests" className="space-y-3 mt-4">
            <TestEditor lessonId={lessonId} items={testQuestions ?? []} refetch={refetchTests} />
          </TabsContent>
        </Tabs>
      </div>
    </AppShell>
  )
}

function VocabEditor({ lessonId, items, refetch }: { lessonId: string; items: any[]; refetch: () => void }) {
  const [newWord, setNewWord] = useState<{ german_word: string; arabic_translation: string; english_translation: string; article: string; plural: string; part_of_speech: string; example_sentence: string; example_translation: string; order_index: number }>({ german_word: '', arabic_translation: '', english_translation: '', article: '', plural: '', part_of_speech: 'noun', example_sentence: '', example_translation: '', order_index: items.length + 1 })
  const addMutation = useMutation({
    mutationFn: async (item: Record<string, unknown>) => {
      const res = await fetch('/api/admin/courses', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ table: 'lesson_vocabulary', items: [item] }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => { refetch(); setNewWord({ german_word: '', arabic_translation: '', english_translation: '', article: '', plural: '', part_of_speech: 'noun', example_sentence: '', example_translation: '', order_index: items.length + 2 }); toast.success('Added') },
    onError: () => toast.error('Failed'),
  })
  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      const res = await fetch('/api/admin/courses', { method: 'DELETE', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ table: 'lesson_vocabulary', id }) })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => { refetch(); toast.success('Deleted') },
    onError: () => toast.error('Failed'),
  })
  return (
    <>
      <Card>
        <CardHeader><CardTitle className="text-base">Add Vocabulary</CardTitle></CardHeader>
        <CardContent>
          <div className="grid grid-cols-2 md:grid-cols-5 gap-2">
            <div><Label className="text-xs">German</Label><Input value={newWord.german_word} onChange={e => setNewWord(p => ({ ...p, german_word: e.target.value }))} /></div>
            <div><Label className="text-xs">Arabic</Label><Input value={newWord.arabic_translation} onChange={e => setNewWord(p => ({ ...p, arabic_translation: e.target.value }))} /></div>
            <div><Label className="text-xs">English</Label><Input value={newWord.english_translation} onChange={e => setNewWord(p => ({ ...p, english_translation: e.target.value }))} /></div>
            <div><Label className="text-xs">Article</Label><Input value={newWord.article} onChange={e => setNewWord(p => ({ ...p, article: e.target.value }))} /></div>
            <div><Label className="text-xs">Order</Label><Input type="number" value={newWord.order_index} onChange={e => setNewWord(p => ({ ...p, order_index: parseInt(e.target.value) || 1 }))} /></div>
          </div>
          <div className="grid grid-cols-3 gap-2 mt-2">
            <div><Label className="text-xs">Plural</Label><Input value={newWord.plural} onChange={e => setNewWord(p => ({ ...p, plural: e.target.value }))} /></div>
            <div><Label className="text-xs">POS</Label>
              <Select value={newWord.part_of_speech} onValueChange={(v: string | null) => setNewWord(p => ({ ...p, part_of_speech: v ?? 'noun' }))}>
                <SelectTrigger><SelectValue /></SelectTrigger>
                <SelectContent>
                  {['noun', 'verb', 'adjective', 'adverb', 'preposition', 'conjunction', 'pronoun', 'article', 'phrase', 'interjection', 'numeral'].map(pos => (
                    <SelectItem key={pos} value={pos}>{pos}</SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>
                <div className="flex items-end">
              <Button className="w-full" onClick={() => addMutation.mutate({ lesson_id: lessonId, german_word: newWord.german_word, arabic_translation: newWord.arabic_translation, english_translation: newWord.english_translation, article: newWord.article || null, plural: newWord.plural || null, part_of_speech: newWord.part_of_speech, example_sentence: newWord.example_sentence || null, example_translation: newWord.example_translation || null, order_index: newWord.order_index })} disabled={!newWord.german_word || addMutation.isPending}>
                {addMutation.isPending ? <Loader2 className="h-4 w-4 animate-spin" /> : <Plus className="h-4 w-4 mr-1" />}
                Add
              </Button>
            </div>
          </div>
        </CardContent>
      </Card>
      <div className="grid gap-2">
        {items.map((v: any) => (
          <Card key={v.id}>
            <CardContent className="p-3 flex items-center justify-between">
              <div className="flex items-center gap-3 min-w-0">
                {v.article && <Badge variant="outline" className="text-xs shrink-0">{v.article}</Badge>}
                <span className="font-medium">{v.german_word}</span>
                <span className="text-sm text-muted-foreground">→ {v.arabic_translation}</span>
                <span className="text-xs text-muted-foreground">({v.english_translation})</span>
                {v.plural && <span className="text-xs text-muted-foreground">Pl: {v.plural}</span>}
              </div>
              <Button variant="ghost" size="icon" className="h-7 w-7 text-destructive shrink-0" onClick={() => deleteMutation.mutate(v.id)}>
                <Trash2 className="h-3.5 w-3.5" />
              </Button>
            </CardContent>
          </Card>
        ))}
      </div>
    </>
  )
}

function GrammarEditor({ lessonId, items, refetch }: { lessonId: string; items: any[]; refetch: () => void }) {
  const [newItem, setNewItem] = useState({ title: '', explanation: '', rules: '[]', examples: '[]', common_mistakes: '[]', order_index: items.length + 1 })
  const addMutation = useMutation({
    mutationFn: async (item: Record<string, unknown>) => {
      const res = await fetch('/api/admin/courses', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ table: 'lesson_grammar', items: [item] }) })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => { refetch(); toast.success('Added') },
    onError: () => toast.error('Failed'),
  })
  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      const res = await fetch('/api/admin/courses', { method: 'DELETE', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ table: 'lesson_grammar', id }) })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => { refetch(); toast.success('Deleted') },
    onError: () => toast.error('Failed'),
  })
  return (
    <>
      <Card>
        <CardHeader><CardTitle className="text-base">Add Grammar Point</CardTitle></CardHeader>
        <CardContent>
          <div className="grid grid-cols-2 gap-3">
            <div><Label>Title</Label><Input value={newItem.title} onChange={e => setNewItem(p => ({ ...p, title: e.target.value }))} /></div>
            <div><Label>Order</Label><Input type="number" value={newItem.order_index} onChange={e => setNewItem(p => ({ ...p, order_index: parseInt(e.target.value) || 1 }))} /></div>
          </div>
          <div className="mt-2"><Label>Explanation</Label><Textarea value={newItem.explanation} onChange={e => setNewItem(p => ({ ...p, explanation: e.target.value }))} rows={3} /></div>
          <div className="mt-2 grid grid-cols-3 gap-2">
            <div><Label className="text-xs">Rules (JSON)</Label><Textarea value={newItem.rules} onChange={e => setNewItem(p => ({ ...p, rules: e.target.value }))} rows={3} /></div>
            <div><Label className="text-xs">Examples (JSON)</Label><Textarea value={newItem.examples} onChange={e => setNewItem(p => ({ ...p, examples: e.target.value }))} rows={3} /></div>
            <div><Label className="text-xs">Common Mistakes (JSON)</Label><Textarea value={newItem.common_mistakes} onChange={e => setNewItem(p => ({ ...p, common_mistakes: e.target.value }))} rows={3} /></div>
          </div>
          <Button className="mt-3" onClick={() => addMutation.mutate({ lesson_id: lessonId, ...newItem, rules: JSON.parse(newItem.rules || '[]'), examples: JSON.parse(newItem.examples || '[]'), common_mistakes: JSON.parse(newItem.common_mistakes || '[]') })} disabled={!newItem.title || addMutation.isPending}>
            {addMutation.isPending ? <Loader2 className="h-4 w-4 animate-spin mr-1" /> : <Plus className="h-4 w-4 mr-1" />}
            Add Grammar
          </Button>
        </CardContent>
      </Card>
      {items.map((g: any) => (
        <Card key={g.id}>
          <CardContent className="p-3 flex items-center justify-between">
            <div className="min-w-0 flex-1">
              <h4 className="font-medium">{g.title}</h4>
              <p className="text-sm text-muted-foreground line-clamp-1">{g.explanation}</p>
            </div>
            <Button variant="ghost" size="icon" className="h-7 w-7 text-destructive shrink-0 ml-3" onClick={() => deleteMutation.mutate(g.id)}>
              <Trash2 className="h-3.5 w-3.5" />
            </Button>
          </CardContent>
        </Card>
      ))}
    </>
  )
}

function ExerciseEditor({ lessonId, items, refetch }: { lessonId: string; items: any[]; refetch: () => void }) {
  const EXERCISE_TYPES = ['multiple_choice', 'fill_gap', 'matching', 'sentence_order', 'translation']
  const [newItem, setNewItem] = useState({ exercise_type: 'multiple_choice', question: '', options: '[]', correct_answer: '', explanation: '', points: 1, order_index: items.length + 1 })
  const addMutation = useMutation({
    mutationFn: async (item: Record<string, unknown>) => {
      const res = await fetch('/api/admin/courses', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ table: 'lesson_exercises', items: [item] }) })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => { refetch(); toast.success('Added') },
    onError: () => toast.error('Failed'),
  })
  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      const res = await fetch('/api/admin/courses', { method: 'DELETE', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ table: 'lesson_exercises', id }) })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => { refetch(); toast.success('Deleted') },
    onError: () => toast.error('Failed'),
  })
  return (
    <>
      <Card>
        <CardHeader><CardTitle className="text-base">Add Exercise</CardTitle></CardHeader>
        <CardContent>
          <div className="grid grid-cols-3 gap-2">
            <div>
              <Label className="text-xs">Type</Label>
              <Select value={newItem.exercise_type} onValueChange={(v: string | null) => setNewItem(p => ({ ...p, exercise_type: v ?? 'multiple_choice' }))}>
                <SelectTrigger><SelectValue /></SelectTrigger>
                <SelectContent>{EXERCISE_TYPES.map(t => <SelectItem key={t} value={t}>{t}</SelectItem>)}</SelectContent>
              </Select>
            </div>
            <div><Label className="text-xs">Points</Label><Input type="number" value={newItem.points} onChange={e => setNewItem(p => ({ ...p, points: parseInt(e.target.value) || 1 }))} /></div>
            <div><Label className="text-xs">Order</Label><Input type="number" value={newItem.order_index} onChange={e => setNewItem(p => ({ ...p, order_index: parseInt(e.target.value) || 1 }))} /></div>
          </div>
          <div className="mt-2"><Label className="text-xs">Question</Label><Input value={newItem.question} onChange={e => setNewItem(p => ({ ...p, question: e.target.value }))} /></div>
          <div className="mt-2 grid grid-cols-2 gap-2">
            <div><Label className="text-xs">Options (JSON array)</Label><Input value={newItem.options} onChange={e => setNewItem(p => ({ ...p, options: e.target.value }))} placeholder='["opt1", "opt2"]' /></div>
            <div><Label className="text-xs">Correct Answer</Label><Input value={newItem.correct_answer} onChange={e => setNewItem(p => ({ ...p, correct_answer: e.target.value }))} /></div>
          </div>
          <div className="mt-2"><Label className="text-xs">Explanation</Label><Input value={newItem.explanation} onChange={e => setNewItem(p => ({ ...p, explanation: e.target.value }))} /></div>
          <Button className="mt-2" onClick={() => addMutation.mutate({ lesson_id: lessonId, ...newItem, options: JSON.parse(newItem.options || '[]') })} disabled={!newItem.question || addMutation.isPending}>
            {addMutation.isPending ? <Loader2 className="h-4 w-4 animate-spin mr-1" /> : <Plus className="h-4 w-4 mr-1" />}
            Add
          </Button>
        </CardContent>
      </Card>
      {items.map((e: any) => (
        <Card key={e.id}>
          <CardContent className="p-3 flex items-center justify-between">
            <div className="min-w-0 flex-1">
              <div className="flex items-center gap-2 mb-0.5">
                <Badge variant="outline" className="text-xs">{e.exercise_type}</Badge>
                <span className="text-xs text-muted-foreground">{e.points}pt</span>
              </div>
              <p className="font-medium">{e.question}</p>
              <p className="text-sm text-muted-foreground">Answer: {e.correct_answer}</p>
            </div>
            <Button variant="ghost" size="icon" className="h-7 w-7 text-destructive shrink-0 ml-3" onClick={() => deleteMutation.mutate(e.id)}>
              <Trash2 className="h-3.5 w-3.5" />
            </Button>
          </CardContent>
        </Card>
      ))}
    </>
  )
}

function TestEditor({ lessonId, items, refetch }: { lessonId: string; items: any[]; refetch: () => void }) {
  const TEST_TYPES = ['multiple_choice', 'true_false', 'fill_blank', 'matching']
  const [newItem, setNewItem] = useState({ question_type: 'multiple_choice', question: '', options: '[]', correct_answer: '', points: 1, order_index: items.length + 1 })
  const addMutation = useMutation({
    mutationFn: async (item: Record<string, unknown>) => {
      const res = await fetch('/api/admin/courses', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ table: 'lesson_test_questions', items: [item] }) })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => { refetch(); toast.success('Added') },
    onError: () => toast.error('Failed'),
  })
  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      const res = await fetch('/api/admin/courses', { method: 'DELETE', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ table: 'lesson_test_questions', id }) })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => { refetch(); toast.success('Deleted') },
    onError: () => toast.error('Failed'),
  })
  return (
    <>
      <Card>
        <CardHeader><CardTitle className="text-base">Add Test Question</CardTitle></CardHeader>
        <CardContent>
          <div className="grid grid-cols-3 gap-2">
            <div>
              <Label className="text-xs">Type</Label>
              <Select value={newItem.question_type} onValueChange={(v: string | null) => setNewItem(p => ({ ...p, question_type: v ?? 'multiple_choice' }))}>
                <SelectTrigger><SelectValue /></SelectTrigger>
                <SelectContent>{TEST_TYPES.map(t => <SelectItem key={t} value={t}>{t}</SelectItem>)}</SelectContent>
              </Select>
            </div>
            <div><Label className="text-xs">Points</Label><Input type="number" value={newItem.points} onChange={e => setNewItem(p => ({ ...p, points: parseInt(e.target.value) || 1 }))} /></div>
            <div><Label className="text-xs">Order</Label><Input type="number" value={newItem.order_index} onChange={e => setNewItem(p => ({ ...p, order_index: parseInt(e.target.value) || 1 }))} /></div>
          </div>
          <div className="mt-2"><Label className="text-xs">Question</Label><Input value={newItem.question} onChange={e => setNewItem(p => ({ ...p, question: e.target.value }))} /></div>
          <div className="mt-2 grid grid-cols-2 gap-2">
            <div><Label className="text-xs">Options (JSON array)</Label><Input value={newItem.options} onChange={e => setNewItem(p => ({ ...p, options: e.target.value }))} placeholder='["opt1", "opt2"]' /></div>
            <div><Label className="text-xs">Correct Answer</Label><Input value={newItem.correct_answer} onChange={e => setNewItem(p => ({ ...p, correct_answer: e.target.value }))} /></div>
          </div>
          <Button className="mt-2" onClick={() => addMutation.mutate({ lesson_id: lessonId, ...newItem, options: JSON.parse(newItem.options || '[]') })} disabled={!newItem.question || addMutation.isPending}>
            {addMutation.isPending ? <Loader2 className="h-4 w-4 animate-spin mr-1" /> : <Plus className="h-4 w-4 mr-1" />}
            Add
          </Button>
        </CardContent>
      </Card>
      {items.map((q: any) => (
        <Card key={q.id}>
          <CardContent className="p-3 flex items-center justify-between">
            <div className="min-w-0 flex-1">
              <div className="flex items-center gap-2 mb-0.5">
                <Badge variant="outline" className="text-xs">{q.question_type}</Badge>
                <span className="text-xs text-muted-foreground">{q.points}pt</span>
              </div>
              <p className="font-medium">{q.question}</p>
              <p className="text-sm text-muted-foreground">Answer: {q.correct_answer}</p>
            </div>
            <Button variant="ghost" size="icon" className="h-7 w-7 text-destructive shrink-0 ml-3" onClick={() => deleteMutation.mutate(q.id)}>
              <Trash2 className="h-3.5 w-3.5" />
            </Button>
          </CardContent>
        </Card>
      ))}
    </>
  )
}
