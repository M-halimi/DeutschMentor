'use client'

import { useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { useAdminStore } from '@/stores/admin-store'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent } from '@/components/ui/card'
import { Input } from '@/components/ui/input'
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { ScrollArea } from '@/components/ui/scroll-area'
import { History, Search, ChevronLeft, ChevronRight, ArrowUpDown } from 'lucide-react'
import type { AuditLog } from '@/types'

export default function AuditLogsPage() {
  const { hasPermission: hp, loaded, isAdminUser } = useAdminStore()
  const router = useRouter()
  const [logs, setLogs] = useState<AuditLog[]>([])
  const [loading, setLoading] = useState(true)
  const [page, setPage] = useState(1)
  const [totalPages, setTotalPages] = useState(1)
  const [action, setAction] = useState('')
  const [resource, setResource] = useState('')

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded) return
    fetchLogs()
  }, [loaded, isAdminUser, page, action, resource])

  async function fetchLogs() {
    setLoading(true)
    const params = new URLSearchParams({ page: String(page), pageSize: '50' })
    if (action) params.set('action', action)
    if (resource) params.set('resource', resource)
    const res = await fetch(`/api/admin/audit-logs?${params}`)
    if (res.ok) {
      const data = await res.json()
      setLogs(data.data || [])
      setTotalPages(data.totalPages || 1)
    }
    setLoading(false)
  }

  if (loading && logs.length === 0) {
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
        <div>
          <h1 className="text-2xl font-bold">Audit-Logs</h1>
          <p className="text-muted-foreground">Alle Admin-Aktionen werden hier protokolliert</p>
        </div>

        <div className="flex items-center gap-3">
          <div className="flex-1">
            <Input
              placeholder="Nach Ressource filtern..."
              value={resource}
              onChange={e => { setResource(e.target.value); setPage(1) }}
            />
          </div>
          <Select value={action} onValueChange={v => { if (v !== null) { setAction(v); setPage(1) } }}>
            <SelectTrigger className="w-40">
              <SelectValue placeholder="Aktion" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value=" ">Alle Aktionen</SelectItem>
              <SelectItem value="create">Erstellen</SelectItem>
              <SelectItem value="update">Bearbeiten</SelectItem>
              <SelectItem value="delete">Löschen</SelectItem>
              <SelectItem value="login">Login</SelectItem>
            </SelectContent>
          </Select>
        </div>

        <Card>
          <ScrollArea className="h-[600px]">
            <div className="divide-y">
              {logs.map(log => (
                <div key={log.id} className="p-4 hover:bg-accent/50 transition-colors">
                  <div className="flex items-start justify-between gap-4">
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center gap-2 mb-1">
                        <Badge variant="outline" className="text-xs">
                          {log.action}
                        </Badge>
                        <span className="text-sm font-medium truncate">
                          {log.resource_type}
                          {log.resource_id && <> #{log.resource_id.slice(0, 8)}</>}
                        </span>
                      </div>
                      {log.details && Object.keys(log.details).length > 0 && (
                        <p className="text-xs text-muted-foreground mt-1">
                          {JSON.stringify(log.details).slice(0, 150)}
                        </p>
                      )}
                      {log.previous_values && log.new_values && (
                        <div className="mt-2 flex gap-4 text-xs">
                          <div className="flex-1 p-2 rounded bg-destructive/5">
                            <span className="font-medium text-destructive">Vorher:</span>
                            <pre className="mt-1 whitespace-pre-wrap">{JSON.stringify(log.previous_values, null, 1)}</pre>
                          </div>
                          <div className="flex-1 p-2 rounded bg-green-500/5">
                            <span className="font-medium text-green-600">Nachher:</span>
                            <pre className="mt-1 whitespace-pre-wrap">{JSON.stringify(log.new_values, null, 1)}</pre>
                          </div>
                        </div>
                      )}
                    </div>
                    <div className="text-xs text-muted-foreground text-right shrink-0">
                      <p>{new Date(log.created_at).toLocaleString('de-DE')}</p>
                      {log.ip_address && <p className="mt-1">IP: {log.ip_address}</p>}
                    </div>
                  </div>
                </div>
              ))}

              {logs.length === 0 && (
                <div className="text-center py-12 text-muted-foreground">
                  <History className="h-12 w-12 mx-auto mb-3 opacity-50" />
                  <p>Keine Log-Einträge gefunden</p>
                </div>
              )}
            </div>
          </ScrollArea>
        </Card>

        {totalPages > 1 && (
          <div className="flex items-center justify-center gap-2">
            <Button
              variant="outline"
              size="sm"
              disabled={page <= 1}
              onClick={() => setPage(p => p - 1)}
            >
              <ChevronLeft className="h-4 w-4" />
            </Button>
            <span className="text-sm text-muted-foreground">
              Seite {page} von {totalPages}
            </span>
            <Button
              variant="outline"
              size="sm"
              disabled={page >= totalPages}
              onClick={() => setPage(p => p + 1)}
            >
              <ChevronRight className="h-4 w-4" />
            </Button>
          </div>
        )}
      </div>
    </AppShell>
  )
}
