'use client'

import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Label } from '@/components/ui/label'
import { useQuery, useMutation, useQueryClient } from '@tanstack/react-query'
import { BookOpen, Plus, Pencil, Trash2, Loader2 } from 'lucide-react'
import { useState } from 'react'
import { toast } from 'sonner'
import { LinkButton } from '@/components/shared/link-button'

interface CourseLevel {
  id: string
  title: string
  description: string | null
  color: string | null
  order_index: number
  is_active: boolean
}

export default function AdminCoursesPage() {
  const queryClient = useQueryClient()
  const [newLevel, setNewLevel] = useState({ id: '', title: '', description: '', color: '' })
  const [editingId, setEditingId] = useState<string | null>(null)
  const [editValues, setEditValues] = useState({ title: '', description: '', color: '' })

  const { data: levels, isLoading } = useQuery<CourseLevel[]>({
    queryKey: ['admin-course-levels'],
    queryFn: async () => {
      const res = await fetch('/api/admin/courses?table=course_levels&order=order_index&dir=asc&limit=50')
      const json = await res.json()
      return json.data ?? []
    },
  })

  const createMutation = useMutation({
    mutationFn: async (level: { id: string; title: string; description: string; color: string }) => {
      const res = await fetch('/api/admin/courses', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ table: 'course_levels', items: [level] }),
      })
      if (!res.ok) throw new Error('Failed to create')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['admin-course-levels'] })
      setNewLevel({ id: '', title: '', description: '', color: '' })
      toast.success('Level created')
    },
    onError: () => toast.error('Failed to create level'),
  })

  const updateMutation = useMutation({
    mutationFn: async ({ id, updates }: { id: string; updates: Record<string, unknown> }) => {
      const res = await fetch('/api/admin/courses', {
        method: 'PUT', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ table: 'course_levels', id, updates }),
      })
      if (!res.ok) throw new Error('Failed to update')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['admin-course-levels'] })
      setEditingId(null)
      toast.success('Level updated')
    },
    onError: () => toast.error('Failed to update level'),
  })

  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      const res = await fetch('/api/admin/courses', {
        method: 'DELETE', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ table: 'course_levels', id }),
      })
      if (!res.ok) throw new Error('Failed to delete')
      return res.json()
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['admin-course-levels'] })
      toast.success('Level deleted')
    },
    onError: () => toast.error('Failed to delete level'),
  })

  const startEdit = (level: CourseLevel) => {
    setEditingId(level.id)
    setEditValues({ title: level.title, description: level.description ?? '', color: level.color ?? '' })
  }

  const saveEdit = (id: string) => {
    updateMutation.mutate({
      id,
      updates: { title: editValues.title, description: editValues.description || null, color: editValues.color || null },
    })
  }

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <BookOpen className="h-6 w-6 text-primary" />
            <h1 className="text-2xl font-bold">Course Levels</h1>
          </div>
        </div>

        <Card>
          <CardHeader>
            <CardTitle className="text-base">Add New Level</CardTitle>
          </CardHeader>
          <CardContent>
            <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
              <div>
                <Label>ID</Label>
                <Input placeholder="e.g. A1" value={newLevel.id} onChange={e => setNewLevel(p => ({ ...p, id: e.target.value }))} />
              </div>
              <div>
                <Label>Title</Label>
                <Input placeholder="e.g. Beginner" value={newLevel.title} onChange={e => setNewLevel(p => ({ ...p, title: e.target.value }))} />
              </div>
              <div>
                <Label>Color</Label>
                <Input placeholder="e.g. from-green-500 to-emerald-600" value={newLevel.color} onChange={e => setNewLevel(p => ({ ...p, color: e.target.value }))} />
              </div>
              <div className="flex items-end">
                <Button
                  className="w-full"
                  onClick={() => createMutation.mutate(newLevel)}
                  disabled={!newLevel.id || !newLevel.title || createMutation.isPending}
                >
                  {createMutation.isPending ? <Loader2 className="h-4 w-4 animate-spin" /> : <Plus className="h-4 w-4 mr-1" />}
                  Add Level
                </Button>
              </div>
            </div>
            <div className="mt-3">
              <Label>Description</Label>
              <Input placeholder="Level description" value={newLevel.description} onChange={e => setNewLevel(p => ({ ...p, description: e.target.value }))} />
            </div>
          </CardContent>
        </Card>

        {isLoading ? (
          <div className="flex justify-center py-12"><Loader2 className="h-8 w-8 animate-spin text-muted-foreground" /></div>
        ) : (
          <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
            {(levels ?? []).map(level => (
              <Card key={level.id}>
                <CardContent className="p-4">
                  {editingId === level.id ? (
                    <div className="space-y-2">
                      <Input value={editValues.title} onChange={e => setEditValues(p => ({ ...p, title: e.target.value }))} placeholder="Title" />
                      <Input value={editValues.description} onChange={e => setEditValues(p => ({ ...p, description: e.target.value }))} placeholder="Description" />
                      <Input value={editValues.color} onChange={e => setEditValues(p => ({ ...p, color: e.target.value }))} placeholder="Color" />
                      <div className="flex gap-2">
                        <Button size="sm" onClick={() => saveEdit(level.id)} disabled={updateMutation.isPending}>
                          {updateMutation.isPending ? <Loader2 className="h-3 w-3 animate-spin" /> : 'Save'}
                        </Button>
                        <Button size="sm" variant="ghost" onClick={() => setEditingId(null)}>Cancel</Button>
                      </div>
                    </div>
                  ) : (
                    <>
                      <div className="flex items-start justify-between mb-3">
                        <div>
                          <div className="flex items-center gap-2 mb-1">
                            <span className="text-lg font-bold">{level.id}</span>
                            <Badge variant={level.is_active ? 'default' : 'secondary'} className="text-xs">
                              {level.is_active ? 'active' : 'inactive'}
                            </Badge>
                          </div>
                          <h3 className="font-semibold">{level.title}</h3>
                        </div>
                        <div className="flex gap-1 shrink-0">
                          <Button variant="ghost" size="icon" className="h-7 w-7" onClick={() => startEdit(level)}>
                            <Pencil className="h-3.5 w-3.5" />
                          </Button>
                          <Button variant="ghost" size="icon" className="h-7 w-7 text-destructive" onClick={() => deleteMutation.mutate(level.id)}>
                            <Trash2 className="h-3.5 w-3.5" />
                          </Button>
                        </div>
                      </div>
                      {level.description && (
                        <p className="text-sm text-muted-foreground line-clamp-2 mb-3">{level.description}</p>
                      )}
                      <div className="flex items-center gap-2 text-xs text-muted-foreground">
                        <span>Order: {level.order_index}</span>
                      </div>
                      <LinkButton href={`/admin/courses/${level.id}`} variant="secondary" size="sm" className="w-full mt-3">
                        Manage Modules
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
