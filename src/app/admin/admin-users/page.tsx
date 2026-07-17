'use client'

import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { useAdminStore } from '@/stores/admin-store'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar'
import {
  Dialog, DialogContent, DialogHeader, DialogTitle, DialogDescription, DialogFooter,
} from '@/components/ui/dialog'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Shield, Crown, UserX, CheckCircle, XCircle, MoreHorizontal, Users } from 'lucide-react'
import {
  DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu'
import type { RbacRole } from '@/types'

interface StaffUser {
  user_id: string
  email?: string
  full_name?: string
  avatar_url?: string | null
  role: string
  role_id: string
  is_owner: boolean
  is_active: boolean
  role_name?: string
  role_slug?: string
}

export default function AdminUsersPage() {
  const { isOwner, hasPermission, loaded, isAdminUser } = useAdminStore()
  const router = useRouter()
  const [users, setUsers] = useState<any[]>([])
  const [roles, setRoles] = useState<RbacRole[]>([])
  const [loading, setLoading] = useState(true)
  const [editUser, setEditUser] = useState<any>(null)
  const [editRole, setEditRole] = useState('')
  const [editActive, setEditActive] = useState(true)
  const [removeUser, setRemoveUser] = useState<string | null>(null)
  const [error, setError] = useState('')

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded) return
    fetchData()
  }, [loaded, isAdminUser])

  async function fetchData() {
    setLoading(true)
    const [rUsers, rRoles] = await Promise.all([
      fetch('/api/admin/admin-users'),
      fetch('/api/admin/roles'),
    ])
    const usersData = await rUsers.json()
    const rolesData = await rRoles.json()
    setUsers(usersData.data || [])
    setRoles(rolesData.data || [])
    setLoading(false)
  }

  async function handleEdit() {
    if (!editUser) return
    setError('')
    const res = await fetch('/api/admin/admin-users', {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ user_id: editUser.user_id, role_id: editRole || undefined, is_active: editActive }),
    })
    if (res.ok) {
      setEditUser(null)
      fetchData()
    } else {
      const err = await res.json()
      setError(err.error || 'Failed to update')
    }
  }

  async function handleRemove() {
    if (!removeUser) return
    const res = await fetch(`/api/admin/admin-users?user_id=${removeUser}`, { method: 'DELETE' })
    if (res.ok) {
      setRemoveUser(null)
      fetchData()
    } else {
      const err = await res.json()
      setError(err.error || 'Failed to remove')
    }
  }

  function openEdit(user: any) {
    setEditUser(user)
    setEditRole(user.role_id)
    setEditActive(user.is_active)
    setError('')
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
            <h1 className="text-2xl font-bold">Admin-Benutzer</h1>
            <p className="text-muted-foreground">Verwalte Mitarbeiter mit Admin-Zugriff</p>
          </div>
          {hasPermission('staff.invite') && (
            <Button onClick={() => router.push('/admin/invitations')}>
              <Users className="h-4 w-4 mr-2" /> Einladen
            </Button>
          )}
        </div>

        {error && (
          <div className="rounded-lg bg-destructive/10 p-3 text-sm text-destructive">{error}</div>
        )}

        <div className="space-y-3">
          {users.map(au => (
            <Card key={au.user_id}>
              <CardContent className="flex items-center justify-between p-4">
                <div className="flex items-center gap-3">
                  <Avatar className="h-10 w-10">
                    <AvatarImage src={au.avatar_url || undefined} />
                    <AvatarFallback>
                      {au.full_name?.charAt(0)?.toUpperCase() ?? 'U'}
                    </AvatarFallback>
                  </Avatar>
                  <div>
                    <div className="flex items-center gap-2">
                      <span className="font-medium">{au.full_name || 'Unbekannt'}</span>
                      {au.is_owner && <Crown className="h-4 w-4 text-yellow-500" />}
                      {!au.is_active && <Badge variant="destructive">Deaktiviert</Badge>}
                    </div>
                    <div className="flex items-center gap-2 text-sm text-muted-foreground">
                      <span>{au.email || ''}</span>
                      <span>·</span>
                      <Shield className="h-3 w-3" />
                      <span>{au.role_name || 'Keine Rolle'}</span>
                    </div>
                  </div>
                </div>
                <div className="flex items-center gap-2">
                  <Badge variant={au.is_owner ? 'default' : au.is_active ? 'outline' : 'destructive'}>
                    {au.is_owner ? 'Owner' : au.is_active ? 'Aktiv' : 'Inaktiv'}
                  </Badge>
                  {isOwner && !au.is_owner && (
                    <DropdownMenu>
                      <DropdownMenuTrigger className="outline-none">
                        <Button variant="ghost" size="icon" className="h-8 w-8">
                          <MoreHorizontal className="h-4 w-4" />
                        </Button>
                      </DropdownMenuTrigger>
                      <DropdownMenuContent align="end">
                        <DropdownMenuItem onClick={() => openEdit(au)}>
                          Bearbeiten
                        </DropdownMenuItem>
                        <DropdownMenuItem
                          className="text-destructive"
                          onClick={() => setRemoveUser(au.user_id)}
                        >
                          Entfernen
                        </DropdownMenuItem>
                      </DropdownMenuContent>
                    </DropdownMenu>
                  )}
                </div>
              </CardContent>
            </Card>
          ))}

          {users.length === 0 && (
            <div className="text-center py-12 text-muted-foreground">
              <Shield className="h-12 w-12 mx-auto mb-3 opacity-50" />
              <p>Keine Admin-Benutzer gefunden</p>
            </div>
          )}
        </div>
      </div>

      {/* Edit Dialog */}
      <Dialog open={!!editUser} onOpenChange={(o) => { if (!o) setEditUser(null) }}>
        <DialogContent>
          <DialogHeader>
            <DialogTitle>Admin-Benutzer bearbeiten</DialogTitle>
            <DialogDescription>
              {editUser?.full_name || editUser?.email || ''}
            </DialogDescription>
          </DialogHeader>
          <div className="space-y-4">
            <div>
              <label className="text-sm font-medium">Rolle</label>
              <Select value={editRole} onValueChange={(v) => { if (v) setEditRole(v) }}>
                <SelectTrigger>
                  <SelectValue placeholder="Rolle auswählen" />
                </SelectTrigger>
                <SelectContent>
                  {roles.filter(r => !r.is_system).map(r => (
                    <SelectItem key={r.id} value={r.id}>{r.name}</SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>
            <div className="flex items-center gap-2">
              <label className="text-sm font-medium">Aktiv</label>
              <Button
                variant={editActive ? 'default' : 'outline'}
                size="sm"
                onClick={() => setEditActive(!editActive)}
              >
                {editActive ? <CheckCircle className="h-4 w-4 mr-1" /> : <XCircle className="h-4 w-4 mr-1" />}
                {editActive ? 'Aktiv' : 'Deaktiviert'}
              </Button>
            </div>
          </div>
          <DialogFooter>
            <Button variant="outline" onClick={() => setEditUser(null)}>Abbrechen</Button>
            <Button onClick={handleEdit}>Speichern</Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>

      {/* Remove Dialog */}
      <Dialog open={!!removeUser} onOpenChange={(o) => { if (!o) setRemoveUser(null) }}>
        <DialogContent>
          <DialogHeader>
            <DialogTitle>Admin-Zugriff entfernen?</DialogTitle>
            <DialogDescription>
              Der Benutzer verliert den Zugriff auf den Admin-Bereich.
            </DialogDescription>
          </DialogHeader>
          <DialogFooter>
            <Button variant="outline" onClick={() => setRemoveUser(null)}>Abbrechen</Button>
            <Button variant="destructive" onClick={handleRemove}>Entfernen</Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </AppShell>
  )
}
