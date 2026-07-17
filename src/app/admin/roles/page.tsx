'use client'

import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { useAdminStore } from '@/stores/admin-store'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import {
  Dialog, DialogContent, DialogHeader, DialogTitle, DialogDescription, DialogFooter,
} from '@/components/ui/dialog'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Shield, Plus, Pencil, Trash2, Check, X, Users } from 'lucide-react'
import type { RbacRole, RbacPermission } from '@/types'

export default function AdminRolesPage() {
  const { hasPermission, isOwner, loaded, isAdminUser } = useAdminStore()
  const router = useRouter()
  const [roles, setRoles] = useState<RbacRole[]>([])
  const [permissions, setPermissions] = useState<RbacPermission[]>([])
  const [groupedPermissions, setGroupedPermissions] = useState<Record<string, RbacPermission[]>>({})
  const [loading, setLoading] = useState(true)
  const [showCreate, setShowCreate] = useState(false)
  const [showEdit, setShowEdit] = useState<string | null>(null)
  const [showDelete, setShowDelete] = useState<string | null>(null)
  const [formName, setFormName] = useState('')
  const [formDesc, setFormDesc] = useState('')
  const [formPerms, setFormPerms] = useState<string[]>([])
  const [error, setError] = useState('')

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded) return
    fetchData()
  }, [loaded, isAdminUser])

  async function fetchData() {
    setLoading(true)
    const [rRoles, rPerms] = await Promise.all([
      fetch('/api/admin/roles'),
      fetch('/api/admin/permissions'),
    ])
    const rolesData = await rRoles.json()
    const permsData = await rPerms.json()
    setRoles(rolesData.data || [])
    setPermissions(permsData.data || [])
    setGroupedPermissions(permsData.grouped || {})
    setLoading(false)
  }

  async function handleCreate() {
    if (!formName.trim()) return
    setError('')
    const res = await fetch('/api/admin/roles', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ name: formName, description: formDesc, permission_ids: formPerms }),
    })
    if (res.ok) {
      setShowCreate(false)
      resetForm()
      fetchData()
    } else {
      const err = await res.json()
      setError(err.error || 'Failed to create role')
    }
  }

  async function handleEdit() {
    if (!formName.trim() || !showEdit) return
    setError('')
    const res = await fetch('/api/admin/roles', {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ id: showEdit, name: formName, description: formDesc, permission_ids: formPerms }),
    })
    if (res.ok) {
      setShowEdit(null)
      resetForm()
      fetchData()
    } else {
      const err = await res.json()
      setError(err.error || 'Failed to update role')
    }
  }

  async function handleDelete(id: string) {
    const res = await fetch(`/api/admin/roles?id=${id}`, { method: 'DELETE' })
    if (res.ok) {
      setShowDelete(null)
      fetchData()
    } else {
      const err = await res.json()
      setError(err.error || 'Failed to delete role')
    }
  }

  function openEdit(role: RbacRole) {
    setFormName(role.name)
    setFormDesc(role.description || '')
    setFormPerms([])
    setShowEdit(role.id)
  }

  function resetForm() {
    setFormName('')
    setFormDesc('')
    setFormPerms([])
    setError('')
  }

  function togglePerm(permId: string) {
    setFormPerms(prev =>
      prev.includes(permId) ? prev.filter(p => p !== permId) : [...prev, permId]
    )
  }

  if (loading) {
    return (
      <AppShell>
        <div className="flex items-center justify-center h-64">
          <div className="h-8 w-8 animate-spin rounded-full border-4 border-primary border-t-transparent" />
        </div>
      </AppShell>
    )
  }

  return (
    <AppShell>
      <div className="space-y-6 p-6">
        <div className="flex items-center justify-between">
          <div>
            <h1 className="text-2xl font-bold">Rollen & Berechtigungen</h1>
            <p className="text-muted-foreground">Verwalte Admin-Rollen und ihre Berechtigungen</p>
          </div>
          {isOwner && (
            <Button onClick={() => { resetForm(); setShowCreate(true) }}>
              <Plus className="h-4 w-4 mr-2" /> Neue Rolle
            </Button>
          )}
        </div>

        {error && (
          <div className="rounded-lg bg-destructive/10 p-3 text-sm text-destructive">{error}</div>
        )}

        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
          {roles.map(role => (
            <Card key={role.id}>
              <CardHeader className="pb-3">
                <div className="flex items-start justify-between">
                  <div className="flex items-center gap-2">
                    <Shield className="h-5 w-5 text-primary" />
                    <div>
                      <CardTitle className="text-base">{role.name}</CardTitle>
                      {role.description && (
                        <CardDescription>{role.description}</CardDescription>
                      )}
                    </div>
                  </div>
                  <div className="flex gap-1">
                    {role.is_system && (
                      <Badge variant="secondary">System</Badge>
                    )}
                    {role.slug === 'super-admin' && (
                      <Badge>Super Admin</Badge>
                    )}
                  </div>
                </div>
              </CardHeader>
              <CardContent>
                <div className="flex items-center justify-between text-sm">
                  <span className="text-muted-foreground">
                    <Check className="h-3.5 w-3.5 inline mr-1" />
                    {role.permission_count ?? 0} Berechtigungen
                  </span>
                  <div className="flex gap-1">
                    {isOwner && !role.is_system && (
                      <>
                        <Button variant="ghost" size="icon" className="h-8 w-8" onClick={() => openEdit(role)}>
                          <Pencil className="h-4 w-4" />
                        </Button>
                        <Button variant="ghost" size="icon" className="h-8 w-8 text-destructive" onClick={() => setShowDelete(role.id)}>
                          <Trash2 className="h-4 w-4" />
                        </Button>
                      </>
                    )}
                  </div>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      </div>

      {/* Create Dialog */}
      <Dialog open={showCreate} onOpenChange={setShowCreate}>
        <DialogContent className="max-w-2xl max-h-[80vh] overflow-y-auto">
          <DialogHeader>
            <DialogTitle>Neue Rolle erstellen</DialogTitle>
            <DialogDescription>Lege eine benutzerdefinierte Admin-Rolle an</DialogDescription>
          </DialogHeader>
          <div className="space-y-4">
            <div>
              <label className="text-sm font-medium">Name</label>
              <Input value={formName} onChange={e => setFormName(e.target.value)} placeholder="z.B. Content Manager" />
            </div>
            <div>
              <label className="text-sm font-medium">Beschreibung</label>
              <Input value={formDesc} onChange={e => setFormDesc(e.target.value)} placeholder="Optional" />
            </div>
            <div>
              <label className="text-sm font-medium">Berechtigungen</label>
              <div className="mt-2 space-y-3 max-h-96 overflow-y-auto border rounded-lg p-3">
                {Object.entries(groupedPermissions).map(([category, perms]) => (
                  <div key={category}>
                    <h4 className="text-sm font-semibold capitalize mb-1">{category}</h4>
                    <div className="flex flex-wrap gap-1.5">
                      {perms.map(p => (
                        <button
                          key={p.id}
                          onClick={() => togglePerm(p.id)}
                          className={`text-xs px-2 py-1 rounded border transition-colors ${
                            formPerms.includes(p.id)
                              ? 'bg-primary text-primary-foreground border-primary'
                              : 'bg-background hover:bg-accent'
                          }`}
                        >
                          {p.name}
                        </button>
                      ))}
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </div>
          <DialogFooter>
            <Button variant="outline" onClick={() => setShowCreate(false)}>Abbrechen</Button>
            <Button onClick={handleCreate}>Erstellen</Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>

      {/* Edit Dialog */}
      <Dialog open={!!showEdit} onOpenChange={(o) => { if (!o) setShowEdit(null) }}>
        <DialogContent className="max-w-2xl max-h-[80vh] overflow-y-auto">
          <DialogHeader>
            <DialogTitle>Rolle bearbeiten</DialogTitle>
            <DialogDescription>Ändere Name, Beschreibung und Berechtigungen</DialogDescription>
          </DialogHeader>
          <div className="space-y-4">
            <div>
              <label className="text-sm font-medium">Name</label>
              <Input value={formName} onChange={e => setFormName(e.target.value)} />
            </div>
            <div>
              <label className="text-sm font-medium">Beschreibung</label>
              <Input value={formDesc} onChange={e => setFormDesc(e.target.value)} />
            </div>
            <div>
              <label className="text-sm font-medium">Berechtigungen</label>
              <div className="mt-2 space-y-3 max-h-96 overflow-y-auto border rounded-lg p-3">
                {Object.entries(groupedPermissions).map(([category, perms]) => (
                  <div key={category}>
                    <h4 className="text-sm font-semibold capitalize mb-1">{category}</h4>
                    <div className="flex flex-wrap gap-1.5">
                      {perms.map(p => (
                        <button
                          key={p.id}
                          onClick={() => togglePerm(p.id)}
                          className={`text-xs px-2 py-1 rounded border transition-colors ${
                            formPerms.includes(p.id)
                              ? 'bg-primary text-primary-foreground border-primary'
                              : 'bg-background hover:bg-accent'
                          }`}
                        >
                          {p.name}
                        </button>
                      ))}
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </div>
          <DialogFooter>
            <Button variant="outline" onClick={() => setShowEdit(null)}>Abbrechen</Button>
            <Button onClick={handleEdit}>Speichern</Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>

      {/* Delete Confirmation */}
      <Dialog open={!!showDelete} onOpenChange={(o) => { if (!o) setShowDelete(null) }}>
        <DialogContent>
          <DialogHeader>
            <DialogTitle>Rolle löschen?</DialogTitle>
            <DialogDescription>Diese Aktion kann nicht rückgängig gemacht werden.</DialogDescription>
          </DialogHeader>
          <DialogFooter>
            <Button variant="outline" onClick={() => setShowDelete(null)}>Abbrechen</Button>
            <Button variant="destructive" onClick={() => handleDelete(showDelete!)}>Löschen</Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </AppShell>
  )
}
