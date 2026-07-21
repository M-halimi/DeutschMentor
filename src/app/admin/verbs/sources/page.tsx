'use client'

import { useCallback, useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import {
  Table, TableBody, TableCell, TableHead, TableHeader, TableRow,
} from '@/components/ui/table'
import {
  Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger,
} from '@/components/ui/dialog'
import { Input } from '@/components/ui/input'
import { Textarea } from '@/components/ui/textarea'
import { Label } from '@/components/ui/label'
import { useAdminStore } from '@/stores/admin-store'
import {
  Globe, Wifi, WifiOff, Loader2, CheckCircle2, XCircle, RefreshCw,
  Settings2, Trash2, ArrowLeft, Plug,
} from 'lucide-react'
import { toast } from 'sonner'

interface Source {
  id: string
  name: string
  website: string
  description: string | null
  adapter_name: string
  active: boolean
  last_sync: string | null
  created_at: string
  updated_at: string | null
}

interface TestResult {
  ok: boolean
  message: string
  latency?: number
}

export default function VerbSourcesPage() {
  const router = useRouter()
  const { loaded, isAdminUser } = useAdminStore()
  const [sources, setSources] = useState<Source[]>([])
  const [loading, setLoading] = useState(true)
  const [testingId, setTestingId] = useState<string | null>(null)
  const [testResults, setTestResults] = useState<Record<string, TestResult>>({})
  const [togglingId, setTogglingId] = useState<string | null>(null)
  const [editingSource, setEditingSource] = useState<Source | null>(null)
  const [editName, setEditName] = useState('')
  const [editWebsite, setEditWebsite] = useState('')
  const [editDescription, setEditDescription] = useState('')
  const [saving, setSaving] = useState(false)
  const [deleteConfirmId, setDeleteConfirmId] = useState<string | null>(null)

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded) return
    fetchSources()
  }, [loaded, isAdminUser, router])

  async function fetchSources() {
    setLoading(true)
    try {
      const res = await fetch('/api/admin/verbs/import/sources')
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      setSources(json.data || [])
    } catch {
      toast.error('Failed to load sources')
    } finally {
      setLoading(false)
    }
  }

  async function handleToggleActive(source: Source) {
    setTogglingId(source.id)
    try {
      const res = await fetch(`/api/admin/verbs/import/sources/${source.id}`, {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ active: !source.active }),
      })
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      toast.success(`${source.name} ${source.active ? 'disabled' : 'enabled'}`)
      fetchSources()
    } catch {
      toast.error('Failed to update source')
    } finally {
      setTogglingId(null)
    }
  }

  async function handleTestConnection(sourceName: string, sourceId: string) {
    setTestingId(sourceId)
    setTestResults(prev => ({ ...prev, [sourceId]: undefined as any }))
    try {
      const res = await fetch('/api/admin/verbs/import/sources/test-connection', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ source: sourceName }),
      })
      const json = await res.json()
      if (json.error) {
        setTestResults(prev => ({ ...prev, [sourceId]: { ok: false, message: json.error } }))
        return
      }
      setTestResults(prev => ({ ...prev, [sourceId]: json.data }))
    } catch {
      setTestResults(prev => ({ ...prev, [sourceId]: { ok: false, message: 'Request failed' } }))
    } finally {
      setTestingId(null)
    }
  }

  function openEditDialog(source: Source) {
    setEditingSource(source)
    setEditName(source.name)
    setEditWebsite(source.website)
    setEditDescription(source.description || '')
  }

  async function handleSaveEdit() {
    if (!editingSource) return
    setSaving(true)
    try {
      const res = await fetch(`/api/admin/verbs/import/sources/${editingSource.id}`, {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          name: editName,
          website: editWebsite,
          description: editDescription,
        }),
      })
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      toast.success('Source updated')
      setEditingSource(null)
      fetchSources()
    } catch {
      toast.error('Failed to update source')
    } finally {
      setSaving(false)
    }
  }

  async function handleDelete(id: string) {
    try {
      const res = await fetch(`/api/admin/verbs/import/sources/${id}`, { method: 'DELETE' })
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      toast.success('Source deleted')
      setDeleteConfirmId(null)
      fetchSources()
    } catch {
      toast.error('Failed to delete source')
    }
  }

  const lastSyncDisplay = (source: Source) => {
    if (source.last_sync) {
      return new Date(source.last_sync).toLocaleDateString(undefined, {
        month: 'short', day: 'numeric', hour: '2-digit', minute: '2-digit',
      })
    }
    return 'Never'
  }

  return (
    <AppShell>
      <div className="space-y-6 p-6">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Button variant="ghost" size="icon" onClick={() => router.push('/admin/verbs')}>
              <ArrowLeft className="h-4 w-4" />
            </Button>
            <div>
              <h1 className="text-2xl font-bold tracking-tight">Source Management</h1>
              <p className="text-sm text-muted-foreground">
                Manage verb import sources and adapters
              </p>
            </div>
          </div>
          <Button variant="outline" onClick={fetchSources} disabled={loading}>
            <RefreshCw className="h-4 w-4 mr-2" />
            Refresh
          </Button>
        </div>

        {loading ? (
          <div className="text-center py-12 text-muted-foreground">
            <Loader2 className="h-6 w-6 animate-spin mx-auto mb-2" />
            Loading sources...
          </div>
        ) : (
          <Card>
            <CardContent className="p-0">
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead>Source</TableHead>
                    <TableHead>Adapter</TableHead>
                    <TableHead>Status</TableHead>
                    <TableHead>Last Sync</TableHead>
                    <TableHead>Connection</TableHead>
                    <TableHead className="w-36">Actions</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {sources.length === 0 ? (
                    <TableRow>
                      <TableCell colSpan={6} className="text-center py-12 text-muted-foreground">
                        No sources configured
                      </TableCell>
                    </TableRow>
                  ) : (
                    sources.map(source => (
                      <TableRow key={source.id}>
                        <TableCell>
                          <div className="font-medium">{source.name}</div>
                          <div className="text-xs text-muted-foreground flex items-center gap-1">
                            <Globe className="h-3 w-3" />
                            <a href={source.website} target="_blank" rel="noopener noreferrer"
                              className="hover:underline truncate max-w-[200px] inline-block">
                              {source.website}
                            </a>
                          </div>
                          {source.description && (
                            <div className="text-xs text-muted-foreground mt-0.5">{source.description}</div>
                          )}
                        </TableCell>
                        <TableCell>
                          <Badge variant="secondary" className="text-xs font-mono">
                            {source.adapter_name}
                          </Badge>
                        </TableCell>
                        <TableCell>
                          {togglingId === source.id ? (
                            <Loader2 className="h-4 w-4 animate-spin" />
                          ) : source.active ? (
                            <Badge className="bg-emerald-500/10 text-emerald-600 border-emerald-500/30 text-xs">
                              <Wifi className="h-3 w-3 mr-1" /> Active
                            </Badge>
                          ) : (
                            <Badge variant="outline" className="text-xs text-muted-foreground">
                              <WifiOff className="h-3 w-3 mr-1" /> Inactive
                            </Badge>
                          )}
                        </TableCell>
                        <TableCell className="text-xs text-muted-foreground">
                          {lastSyncDisplay(source)}
                        </TableCell>
                        <TableCell>
                          {testResults[source.id] ? (
                            <div className="flex items-center gap-1.5 text-xs">
                              {testResults[source.id].ok ? (
                                <CheckCircle2 className="h-3.5 w-3.5 text-emerald-500" />
                              ) : (
                                <XCircle className="h-3.5 w-3.5 text-red-500" />
                              )}
                              <span className={testResults[source.id].ok ? 'text-emerald-600' : 'text-red-600'}>
                                {testResults[source.id].ok
                                  ? `OK${testResults[source.id].latency ? ` (${testResults[source.id].latency}ms)` : ''}`
                                  : 'Failed'
                                }
                              </span>
                            </div>
                          ) : (
                            <span className="text-xs text-muted-foreground">Not tested</span>
                          )}
                        </TableCell>
                        <TableCell>
                          <div className="flex gap-1">
                            <Button
                              variant="ghost" size="sm" className="h-7 px-2 text-xs"
                              onClick={() => handleTestConnection(source.name, source.id)}
                              disabled={testingId === source.id}
                              title="Test connection"
                            >
                              {testingId === source.id
                                ? <Loader2 className="h-3 w-3 animate-spin" />
                                : <Plug className="h-3 w-3" />
                              }
                            </Button>
                            <Button
                              variant="ghost" size="sm" className="h-7 px-2 text-xs"
                              onClick={() => handleToggleActive(source)}
                              disabled={togglingId === source.id}
                              title={source.active ? 'Disable' : 'Enable'}
                            >
                              {source.active ? <WifiOff className="h-3 w-3" /> : <Wifi className="h-3 w-3" />}
                            </Button>
                            <Button
                              variant="ghost" size="sm" className="h-7 px-2 text-xs"
                              onClick={() => openEditDialog(source)}
                              title="Edit"
                            >
                              <Settings2 className="h-3 w-3" />
                            </Button>
                            <Button
                              variant="ghost" size="sm" className="h-7 px-2 text-xs text-red-500 hover:text-red-600"
                              onClick={() => setDeleteConfirmId(source.id)}
                              title="Delete"
                            >
                              <Trash2 className="h-3 w-3" />
                            </Button>
                          </div>
                        </TableCell>
                      </TableRow>
                    ))
                  )}
                </TableBody>
              </Table>
            </CardContent>
          </Card>
        )}

        {/* Test Result Detail */}
        {Object.entries(testResults).length > 0 && (
          <Card>
            <CardHeader>
              <CardTitle className="text-lg flex items-center gap-2">
                <Plug className="h-5 w-5 text-blue-500" />
                Connection Test Results
              </CardTitle>
            </CardHeader>
            <CardContent>
              <div className="space-y-2">
                {Object.entries(testResults).map(([sourceId, result]) => {
                  const source = sources.find(s => s.id === sourceId)
                  if (!result) return null
                  return (
                    <div key={sourceId} className="flex items-start gap-2 text-sm">
                      {result.ok ? (
                        <CheckCircle2 className="h-4 w-4 text-emerald-500 mt-0.5 shrink-0" />
                      ) : (
                        <XCircle className="h-4 w-4 text-red-500 mt-0.5 shrink-0" />
                      )}
                      <div>
                        <span className="font-medium">{source?.name || sourceId}</span>
                        : {result.message}
                        {result.latency && (
                          <span className="text-muted-foreground ml-1">({result.latency}ms)</span>
                        )}
                      </div>
                    </div>
                  )
                })}
              </div>
            </CardContent>
          </Card>
        )}

        {/* Edit Dialog */}
        <Dialog open={!!editingSource} onOpenChange={(open) => { if (!open) setEditingSource(null) }}>
          <DialogContent>
            <DialogHeader>
              <DialogTitle>Edit Source</DialogTitle>
            </DialogHeader>
            {editingSource && (
              <div className="space-y-4">
                <div className="space-y-2">
                  <Label>Name</Label>
                  <Input value={editName} onChange={e => setEditName(e.target.value)} />
                </div>
                <div className="space-y-2">
                  <Label>Website URL</Label>
                  <Input value={editWebsite} onChange={e => setEditWebsite(e.target.value)} />
                </div>
                <div className="space-y-2">
                  <Label>Description</Label>
                  <Textarea value={editDescription} onChange={e => setEditDescription(e.target.value)} rows={3} />
                </div>
                <div className="flex justify-end gap-2">
                  <Button variant="outline" onClick={() => setEditingSource(null)}>Cancel</Button>
                  <Button onClick={handleSaveEdit} disabled={saving}>
                    {saving ? <><Loader2 className="h-4 w-4 mr-2 animate-spin" /> Saving...</> : 'Save'}
                  </Button>
                </div>
              </div>
            )}
          </DialogContent>
        </Dialog>

        {/* Delete Confirm Dialog */}
        <Dialog open={!!deleteConfirmId} onOpenChange={(open) => { if (!open) setDeleteConfirmId(null) }}>
          <DialogContent>
            <DialogHeader>
              <DialogTitle>Delete Source</DialogTitle>
            </DialogHeader>
            <p className="text-sm text-muted-foreground">
              Are you sure you want to delete this source? This action cannot be undone.
            </p>
            <div className="flex justify-end gap-2">
              <Button variant="outline" onClick={() => setDeleteConfirmId(null)}>Cancel</Button>
              <Button variant="destructive" onClick={() => deleteConfirmId && handleDelete(deleteConfirmId)}>
                Delete
              </Button>
            </div>
          </DialogContent>
        </Dialog>
      </div>
    </AppShell>
  )
}
