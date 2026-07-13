'use client'

import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { BookOpen, Plus, Pencil, Trash2, Loader2, ChevronLeft } from 'lucide-react'
import { useState } from 'react'
import { toast } from 'sonner'
import { useParams } from 'next/navigation'
import type { LessonType } from '@/types'
import { LinkButton } from '@/components/shared/link-button'

interface CourseLesson {
  id: string
  module_id: string
  title: string
  description: string | null
  topic: string | null
  lesson_type: LessonType
  source_table: string | null
  source_id: string | null
  duration_minutes: number
  order_index: number
  is_published: boolean
}

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

export default function AdminModuleLessonsPage() {
  const params = useParams()
  const levelId = params.levelId as string
  const moduleId = params.moduleId as string
  const queryClient = useQueryClient()
  const [newLesson, setNewLesson] = useState({ title: '', description: '', topic: '', lesson_type: 'vocabulary' as LessonType, duration_minutes: 30, order_index: 1 })

  const { data: lessons, isLoading } = useQuery<CourseLesson[]>({
    queryKey: ['admin-course-lessons', moduleId],
    queryFn: async () => {
      const res = await fetch(`/api/admin/courses?table=course_lessons&filter_field=module_id&filter_value=${moduleId}&order=order_index&dir=asc&limit=50`)
      const json = await res.json()
      return json.data ?? []
    },
  })

  const createMutation = useMutation({
    mutationFn: async (lesson: typeof newLesson) => {
      const item = { module_id: moduleId, ...lesson, is_published: false, objectives: [] }
      const res = await fetch('/api/admin/courses', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ table: 'course_lessons', items: [item] }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ['admin-course-lessons', moduleId] })
      setNewLesson({ title: '', description: '', topic: '', lesson_type: 'vocabulary', duration_minutes: 30, order_index: 1 })
      toast.success('Lesson created')
      if (data?.data?.[0]?.id) {
        window.location.href = `/admin/courses/${levelId}/${moduleId}/${data.data[0].id}`
      }
    },
    onError: () => toast.error('Failed to create lesson'),
  })

  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      const res = await fetch('/api/admin/courses', {
        method: 'DELETE', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ table: 'course_lessons', id }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['admin-course-lessons', moduleId] })
      toast.success('Lesson deleted')
    },
    onError: () => toast.error('Failed to delete'),
  })

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <LinkButton href={`/admin/courses/${levelId}`} variant="ghost" size="icon">
            <ChevronLeft className="h-4 w-4" />
          </LinkButton>
          <div>
            <h1 className="text-2xl font-bold">{levelId} - Lessons</h1>
            <p className="text-sm text-muted-foreground">Module: {moduleId}</p>
          </div>
        </div>

        <Card>
          <CardHeader>
            <CardTitle className="text-base">Add New Lesson</CardTitle>
          </CardHeader>
          <CardContent>
            <div className="grid grid-cols-2 md:grid-cols-5 gap-3">
              <div>
                <Label>Title</Label>
                <Input value={newLesson.title} onChange={e => setNewLesson(p => ({ ...p, title: e.target.value }))} placeholder="Lesson title" />
              </div>
              <div>
                <Label>Type</Label>
                <Select value={newLesson.lesson_type} onValueChange={v => setNewLesson(p => ({ ...p, lesson_type: v as LessonType }))}>
                  <SelectTrigger><SelectValue /></SelectTrigger>
                  <SelectContent>
                    {LESSON_TYPES.map(t => <SelectItem key={t.value} value={t.value}>{t.label}</SelectItem>)}
                  </SelectContent>
                </Select>
              </div>
              <div>
                <Label>Minutes</Label>
                <Input type="number" value={newLesson.duration_minutes} onChange={e => setNewLesson(p => ({ ...p, duration_minutes: parseInt(e.target.value) || 30 }))} />
              </div>
              <div>
                <Label>Order</Label>
                <Input type="number" value={newLesson.order_index} onChange={e => setNewLesson(p => ({ ...p, order_index: parseInt(e.target.value) || 1 }))} />
              </div>
              <div className="flex items-end">
                <Button className="w-full" onClick={() => createMutation.mutate(newLesson)} disabled={!newLesson.title || createMutation.isPending}>
                  {createMutation.isPending ? <Loader2 className="h-4 w-4 animate-spin mr-1" /> : <Plus className="h-4 w-4 mr-1" />}
                  Create & Edit
                </Button>
              </div>
            </div>
            <div className="mt-3">
              <Label>Description</Label>
              <Input value={newLesson.description} onChange={e => setNewLesson(p => ({ ...p, description: e.target.value }))} placeholder="Short description" />
            </div>
          </CardContent>
        </Card>

        {isLoading ? (
          <div className="flex justify-center py-12"><Loader2 className="h-8 w-8 animate-spin" /></div>
        ) : (
          <div className="grid gap-3">
            {(lessons ?? []).map(lesson => (
              <Card key={lesson.id}>
                <CardContent className="p-4">
                  <div className="flex items-center justify-between">
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center gap-2 mb-1">
                        <span className="text-xs text-muted-foreground">#{lesson.order_index}</span>
                        <Badge variant="outline" className="text-xs">{lesson.lesson_type}</Badge>
                        <Badge variant={lesson.is_published ? 'default' : 'secondary'} className="text-xs">
                          {lesson.is_published ? 'published' : 'draft'}
                        </Badge>
                      </div>
                      <h3 className="font-semibold">{lesson.title}</h3>
                      {lesson.description && <p className="text-sm text-muted-foreground line-clamp-1">{lesson.description}</p>}
                    </div>
                    <div className="flex items-center gap-2 shrink-0 ml-3">
                      <span className="text-xs text-muted-foreground">{lesson.duration_minutes}min</span>
                      <LinkButton href={`/admin/courses/${levelId}/${moduleId}/${lesson.id}`} size="sm">
                        <Pencil className="h-3.5 w-3.5 mr-1" />
                        Edit
                      </LinkButton>
                      <Button variant="ghost" size="icon" className="h-7 w-7 text-destructive" onClick={() => deleteMutation.mutate(lesson.id)}>
                        <Trash2 className="h-3.5 w-3.5" />
                      </Button>
                    </div>
                  </div>
                </CardContent>
              </Card>
            ))}
          </div>
        )}
      </div>
    </AppShell>
  )
}
