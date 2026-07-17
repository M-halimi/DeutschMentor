'use client'

import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { useAdminStore } from '@/stores/admin-store'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Card, CardContent } from '@/components/ui/card'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import {
  Dialog, DialogContent, DialogHeader, DialogTitle, DialogDescription, DialogFooter,
} from '@/components/ui/dialog'
import { Mail, XCircle, CheckCircle, Clock, Copy, ExternalLink } from 'lucide-react'
import type { Invitation, RbacRole } from '@/types'

export default function InvitationsPage() {
  const { hasPermission, isOwner, loaded, isAdminUser } = useAdminStore()
  const router = useRouter()
  const [invitations, setInvitations] = useState<Invitation[]>([])
  const [roles, setRoles] = useState<RbacRole[]>([])
  const [loading, setLoading] = useState(true)
  const [showCreate, setShowCreate] = useState(false)
  const [formEmail, setFormEmail] = useState('')
  const [formRole, setFormRole] = useState('')
  const [error, setError] = useState('')
  const [inviteUrl, setInviteUrl] = useState('')
  const [copied, setCopied] = useState(false)

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded) return
    fetchData()
  }, [loaded, isAdminUser])

  async function fetchData() {
    setLoading(true)
    const [rInv, rRoles] = await Promise.all([
      fetch('/api/admin/invitations'),
      fetch('/api/admin/roles'),
    ])
    const invData = await rInv.json()
    const rolesData = await rRoles.json()
    setInvitations(invData.data || [])
    setRoles(rolesData.data || [])
    setLoading(false)
  }

  async function handleCreate() {
    if (!formEmail.trim() || !formRole) return
    setError('')
    setInviteUrl('')
    const res = await fetch('/api/admin/invitations', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ email: formEmail, role_id: formRole }),
    })
    if (res.ok) {
      const data = await res.json()
      setInviteUrl(data.invite_url || '')
      setFormEmail('')
      setFormRole('')
      fetchData()
    } else {
      const err = await res.json()
      setError(err.error || 'Failed to create invitation')
    }
  }

  async function handleRevoke(id: string) {
    const res = await fetch('/api/admin/invitations', {
      method: 'PATCH',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ id }),
    })
    if (res.ok) {
      fetchData()
    } else {
      const err = await res.json()
      setError(err.error || 'Failed to revoke')
    }
  }

  function copyToClipboard(text: string) {
    navigator.clipboard.writeText(text)
    setCopied(true)
    setTimeout(() => setCopied(false), 2000)
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
            <h1 className="text-2xl font-bold">Einladungen</h1>
            <p className="text-muted-foreground">Lade neue Mitarbeiter in den Admin-Bereich ein</p>
          </div>
          {hasPermission('invitations.create') && (
            <Button onClick={() => { resetForm(); setShowCreate(true) }}>
              <Mail className="h-4 w-4 mr-2" /> Einladung erstellen
            </Button>
          )}
        </div>

        {error && (
          <div className="rounded-lg bg-destructive/10 p-3 text-sm text-destructive">{error}</div>
        )}

        <div className="space-y-3">
          {invitations.map(inv => {
            const isPending = !inv.accepted_at && !inv.revoked_at && new Date(inv.expires_at) > new Date()
            const isExpired = !inv.accepted_at && !inv.revoked_at && new Date(inv.expires_at) <= new Date()
            return (
              <Card key={inv.id}>
                <CardContent className="flex items-center justify-between p-4">
                  <div className="flex items-center gap-3">
                    <Mail className="h-5 w-5 text-muted-foreground" />
                    <div>
                      <p className="font-medium">{inv.email}</p>
                      <p className="text-sm text-muted-foreground">
                        Rolle: {inv.role_name || 'Unbekannt'}
                      </p>
                    </div>
                  </div>
                  <div className="flex items-center gap-2">
                    {inv.accepted_at ? (
                      <Badge variant="default" className="bg-green-500">
                        <CheckCircle className="h-3 w-3 mr-1" /> Angenommen
                      </Badge>
                    ) : inv.revoked_at ? (
                      <Badge variant="destructive">
                        <XCircle className="h-3 w-3 mr-1" /> Widerrufen
                      </Badge>
                    ) : isExpired ? (
                      <Badge variant="secondary">
                        <Clock className="h-3 w-3 mr-1" /> Abgelaufen
                      </Badge>
                    ) : (
                      <Badge variant="default">
                        <Clock className="h-3 w-3 mr-1" /> Ausstehend
                      </Badge>
                    )}
                    {isPending && hasPermission('invitations.revoke') && (
                      <Button
                        variant="ghost"
                        size="sm"
                        className="text-destructive"
                        onClick={() => handleRevoke(inv.id)}
                      >
                        <XCircle className="h-4 w-4" />
                      </Button>
                    )}
                  </div>
                </CardContent>
              </Card>
            )
          })}

          {invitations.length === 0 && (
            <div className="text-center py-12 text-muted-foreground">
              <Mail className="h-12 w-12 mx-auto mb-3 opacity-50" />
              <p>Keine Einladungen gefunden</p>
            </div>
          )}
        </div>
      </div>

      {/* Create Dialog */}
      <Dialog open={showCreate} onOpenChange={setShowCreate}>
        <DialogContent>
          <DialogHeader>
            <DialogTitle>Einladung erstellen</DialogTitle>
            <DialogDescription>
              Der Benutzer erhält eine E-Mail mit einem Link zum Admin-Bereich
            </DialogDescription>
          </DialogHeader>
          <div className="space-y-4">
            <div>
              <label className="text-sm font-medium">E-Mail-Adresse</label>
              <Input
                type="email"
                value={formEmail}
                onChange={e => setFormEmail(e.target.value)}
                placeholder="email@beispiel.de"
              />
            </div>
            <div>
              <label className="text-sm font-medium">Rolle</label>
              <Select value={formRole} onValueChange={(v) => { if (v) setFormRole(v) }}>
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

            {inviteUrl && (
              <div className="rounded-lg bg-green-50 dark:bg-green-950 border border-green-200 dark:border-green-800 p-3 space-y-2">
                <p className="text-sm font-medium text-green-800 dark:text-green-200">
                  Einladung erstellt!
                </p>
                <div className="flex items-center gap-2">
                  <code className="flex-1 text-xs bg-background rounded px-2 py-1 truncate">
                    {inviteUrl}
                  </code>
                  <Button variant="outline" size="sm" onClick={() => copyToClipboard(inviteUrl)}>
                    {copied ? 'Kopiert!' : <Copy className="h-3 w-3" />}
                  </Button>
                </div>
                <p className="text-xs text-muted-foreground">
                  Der Link läuft in 7 Tagen ab
                </p>
              </div>
            )}
          </div>
          <DialogFooter>
            {!inviteUrl && (
              <>
                <Button variant="outline" onClick={() => setShowCreate(false)}>Abbrechen</Button>
                <Button onClick={handleCreate}>Einladung senden</Button>
              </>
            )}
            {inviteUrl && (
              <Button onClick={() => setShowCreate(false)}>Schließen</Button>
            )}
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </AppShell>
  )

  function resetForm() {
    setFormEmail('')
    setFormRole('')
    setError('')
    setInviteUrl('')
  }
}
