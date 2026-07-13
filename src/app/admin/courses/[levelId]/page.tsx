'use client'

import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { Textarea } from '@/components/ui/textarea'
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { BookOpen, Plus, Pencil, Trash2, Loader2, ChevronLeft } from 'lucide-react'
import { useState } from 'react'
import { toast } from 'sonner'
import { useParams } from 'next/navigation'
import { LinkButton } from '@/components/shared/link-button'

interface CourseModule {
  id: string
  level_id: string
  title: string
  description: string | null
  objectives: string[]
  order_index: number
  estimated_hours: number
  is_published: boolean
  lesson_count?: number
}

export default function AdminLevelModulesPage() {
  const params = useParams()
  const levelId = params.levelId as string
  const queryClient = useQueryClient()
  const [newModule, setNewModule] = useState({ title: '', description: '', order_index: 1, estimated_hours: 1 })
  const [editingId, setEditingId] = useState<string | null>(null)
  const [editValues, setEditValues] = useState({ title: '', description: '', order_index: 1, estimated_hours: 1, is_published: false })

  const { data: modules, isLoading } = useQuery<CourseModule[]>({
    queryKey: ['admin-course-modules', levelId],
    queryFn: async () => {
      const res = await fetch(`/api/admin/courses?table=course_modules&filter_field=level_id&filter_value=${levelId}&order=order_index&dir=asc&limit=50`)
      const json = await res.json()
      return json.data ?? []
    },
  })

  const createMutation = useMutation({
    mutationFn: async (mod: typeof newModule) => {
      const item = { level_id: levelId, ...mod, objectives: [], is_published: false }
      const res = await fetch('/api/admin/courses', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ table: 'course_modules', items: [item] }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['admin-course-modules', levelId] })
      setNewModule({ title: '', description: '', order_index: 1, estimated_hours: 1 })
      toast.success('Module created')
    },
    onError: () => toast.error('Failed to create module'),
  })

  const updateMutation = useMutation({
    mutationFn: async ({ id, updates }: { id: string; updates: Record<string, unknown> }) => {
      const res = await fetch('/api/admin/courses', {
        method: 'PUT', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ table: 'course_modules', id, updates }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['admin-course-modules', levelId] })
      setEditingId(null)
      toast.success('Module updated')
    },
    onError: () => toast.error('Failed to update'),
  })

  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      const res = await fetch('/api/admin/courses', {
        method: 'DELETE', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ table: 'course_modules', id }),
      })
      if (!res.ok) throw new Error('Failed')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['admin-course-modules', levelId] })
      toast.success('Module deleted')
    },
    onError: () => toast.error('Failed to delete'),
  })

  const startEdit = (mod: CourseModule) => {
    setEditingId(mod.id)
    setEditValues({
      title: mod.title,
      description: mod.description ?? '',
      order_index: mod.order_index,
      estimated_hours: mod.estimated_hours,
      is_published: mod.is_published,
    })
  }

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center gap-3">
          <LinkButton href="/admin/courses" variant="ghost" size="icon">
            <ChevronLeft className="h-4 w-4" />
          </LinkButton>
          <div>
            <h1 className="text-2xl font-bold">{levelId} - Modules</h1>
            <p className="text-sm text-muted-foreground">Manage modules for level {levelId}</p>
          </div>
        </div>

        <Card>
          <CardHeader>
            <CardTitle className="text-base">Add New Module</CardTitle>
          </CardHeader>
          <CardContent>
            <div className="grid grid-cols-3 gap-3">
              <div>
                <Label>Title</Label>
                <Input value={newModule.title} onChange={e => setNewModule(p => ({ ...p, title: e.target.value }))} placeholder="Module title" />
              </div>
              <div>
                <Label>Order</Label>
                <Input type="number" value={newModule.order_index} onChange={e => setNewModule(p => ({ ...p, order_index: parseInt(e.target.value) || 1 }))} />
              </div>
              <div>
                <Label>Hours</Label>
                <Input type="number" step="0.5" value={newModule.estimated_hours} onChange={e => setNewModule(p => ({ ...p, estimated_hours: parseFloat(e.target.value) || 1 }))} />
              </div>
            </div>
            <div className="mt-3">
              <Label>Description</Label>
              <Textarea value={newModule.description} onChange={e => setNewModule(p => ({ ...p, description: e.target.value }))} placeholder="Module description" />
            </div>
            <Button className="mt-3" onClick={() => createMutation.mutate(newModule)} disabled={!newModule.title || createMutation.isPending}>
              {createMutation.isPending ? <Loader2 className="h-4 w-4 animate-spin mr-1" /> : <Plus className="h-4 w-4 mr-1" />}
              Add Module
            </Button>
          </CardContent>
        </Card>

        {isLoading ? (
          <div className="flex justify-center py-12"><Loader2 className="h-8 w-8 animate-spin text-muted-foreground" /></div>
        ) : (
          <div className="grid gap-4">
            {(modules ?? []).map(mod => (
              <Card key={mod.id}>
                <CardContent className="p-4">
                  {editingId === mod.id ? (
                    <div className="space-y-2">
                      <Input value={editValues.title} onChange={e => setEditValues(p => ({ ...p, title: e.target.value }))} />
                      <Textarea value={editValues.description} onChange={e => setEditValues(p => ({ ...p, description: e.target.value }))} />
                      <div className="grid grid-cols-3 gap-2">
                        <div><Label className="text-xs">Order</Label><Input type="number" value={editValues.order_index} onChange={e => setEditValues(p => ({ ...p, order_index: parseInt(e.target.value) || 1 }))} /></div>
                        <div><Label className="text-xs">Hours</Label><Input type="number" step="0.5" value={editValues.estimated_hours} onChange={e => setEditValues(p => ({ ...p, estimated_hours: parseFloat(e.target.value) || 1 }))} /></div>
                        <div className="flex items-end gap-2">
                          <Button size="sm" onClick={() => setEditValues(p => ({ ...p, is_published: !p.is_published }))} variant={editValues.is_published ? 'default' : 'secondary'} className="text-xs">
                            {editValues.is_published ? 'Published' : 'Draft'}
                          </Button>
                        </div>
                      </div>
                      <div className="flex gap-2">
                        <Button size="sm" onClick={() => updateMutation.mutate({ id: mod.id, updates: editValues })} disabled={updateMutation.isPending}>
                          {updateMutation.isPending ? <Loader2 className="h-3 w-3 animate-spin" /> : 'Save'}
                        </Button>
                        <Button size="sm" variant="ghost" onClick={() => setEditingId(null)}>Cancel</Button>
                      </div>
                    </div>
                  ) : (
                    <>
                      <div className="flex items-start justify-between">
                        <div className="flex-1 min-w-0">
                          <div className="flex items-center gap-2 mb-1">
                            <span className="text-xs text-muted-foreground">#{mod.order_index}</span>
                            <Badge variant={mod.is_published ? 'default' : 'secondary'} className="text-xs">
                              {mod.is_published ? 'published' : 'draft'}
                            </Badge>
                          </div>
                          <h3 className="font-semibold">{mod.title}</h3>
                          {mod.description && <p className="text-sm text-muted-foreground line-clamp-1">{mod.description}</p>}
                        </div>
                        <div className="flex gap-1 shrink-0 ml-3">
                          <Button variant="ghost" size="icon" className="h-7 w-7" onClick={() => startEdit(mod)}>
                            <Pencil className="h-3.5 w-3.5" />
                          </Button>
                          <Button variant="ghost" size="icon" className="h-7 w-7 text-destructive" onClick={() => deleteMutation.mutate(mod.id)}>
                            <Trash2 className="h-3.5 w-3.5" />
                          </Button>
                        </div>
                      </div>
                      <div className="flex items-center gap-3 mt-2 text-xs text-muted-foreground">
                        <span>{mod.estimated_hours}h estimated</span>
                        <span>Lesson count: {mod.lesson_count ?? '-'}</span>
                      </div>
                      <LinkButton href={`/admin/courses/${levelId}/${mod.id}`} variant="secondary" size="sm" className="w-full mt-3">
                        Manage Lessons
                      </LinkButton>
                    </>
                  )}
                </CardContent>
              </Card>
            ))}
          </div>
        )}
      </div>
    </AppShell>
  )
}
