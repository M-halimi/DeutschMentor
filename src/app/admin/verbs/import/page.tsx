'use client'

import { useCallback, useEffect, useState } from 'react'
import { useRouter } from 'next/navigation'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import {
  Select, SelectContent, SelectItem, SelectTrigger, SelectValue,
} from '@/components/ui/select'
import {
  Table, TableBody, TableCell, TableHead, TableHeader, TableRow,
} from '@/components/ui/table'
import { useAdminStore } from '@/stores/admin-store'
import { CEFR_LEVELS } from '@/lib/verbs/admin-types'
import {
  Download, ListChecks, History, RefreshCw, AlertCircle, CheckCircle2, Loader2,
} from 'lucide-react'
import { toast } from 'sonner'

interface ImportSource {
  id: string
  name: string
  website: string
  description: string
  adapter_name: string
}

interface ImportResult {
  source_name: string
  cefr_level: string
  total_fetched: number
  total_imported: number
  errors: string[]
  log_id: string
}

interface ImportLog {
  id: string
  source_name: string
  cefr_level: string
  total_fetched: number
  total_imported: number
  total_approved: number
  total_rejected: number
  status: string
  error_message: string | null
  created_at: string
}

export default function VerbImportPage() {
  const router = useRouter()
  const { loaded, isAdminUser } = useAdminStore()
  const [cefrLevel, setCefrLevel] = useState('')
  const [sourceName, setSourceName] = useState('')
  const [sources, setSources] = useState<ImportSource[]>([])
  const [importing, setImporting] = useState(false)
  const [lastResult, setLastResult] = useState<ImportResult | null>(null)
  const [logs, setLogs] = useState<ImportLog[]>([])
  const [loadingLogs, setLoadingLogs] = useState(true)

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded) return
    fetchSources()
    fetchLogs()
  }, [loaded, isAdminUser, router])

  async function fetchSources() {
    try {
      const res = await fetch('/api/admin/verbs/import/sources')
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      setSources(json.data || [])
      if (json.data?.length > 0 && !sourceName) setSourceName(json.data[0].name)
    } catch { toast.error('Failed to load sources') }
  }

  async function fetchLogs() {
    try {
      const res = await fetch('/api/admin/verbs/import/logs')
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      setLogs(json.data || [])
    } catch { /* ignore */ }
    finally { setLoadingLogs(false) }
  }

  async function handleImport() {
    if (!cefrLevel || !sourceName) {
      toast.error('Please select both a CEFR level and source')
      return
    }
    setImporting(true)
    setLastResult(null)
    try {
      const res = await fetch('/api/admin/verbs/import', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ level: cefrLevel, source: sourceName }),
      })
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      setLastResult(json.data)
      toast.success(`Imported ${json.data.total_imported} verbs`)
      fetchLogs()
    } catch {
      toast.error('Import failed')
    } finally {
      setImporting(false)
    }
  }

  return (
    <AppShell>
      <div className="space-y-6 p-6">
        <div className="flex items-center justify-between">
          <div>
            <h1 className="text-2xl font-bold tracking-tight">Verb Import</h1>
            <p className="text-sm text-muted-foreground">
              Import German verbs from trusted sources
            </p>
          </div>
          <div className="flex gap-2">
            <Button
              variant="outline"
              onClick={() => router.push('/admin/verbs/import/review')}
            >
              <ListChecks className="h-4 w-4 mr-2" />
              Review Candidates
            </Button>
            <Button variant="outline" onClick={() => router.push('/admin/verbs')}>
              <RefreshCw className="h-4 w-4 mr-2" />
              Back to Verbs
            </Button>
          </div>
        </div>

        {/* Import Form */}
        <Card>
          <CardHeader>
            <CardTitle className="text-lg flex items-center gap-2">
              <Download className="h-5 w-5 text-blue-500" />
              New Import
            </CardTitle>
          </CardHeader>
          <CardContent>
            <div className="flex flex-wrap gap-4 items-end">
              <div className="space-y-1.5">
                <label className="text-sm font-medium">CEFR Level</label>
                <Select value={cefrLevel} onValueChange={(v) => setCefrLevel(v || '')}>
                  <SelectTrigger className="w-[140px]">
                    <SelectValue placeholder="Select level" />
                  </SelectTrigger>
                  <SelectContent>
                    {CEFR_LEVELS.map(l => (
                      <SelectItem key={l} value={l}>{l}</SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>

              <div className="space-y-1.5">
                <label className="text-sm font-medium">Source</label>
                <Select value={sourceName} onValueChange={(v) => setSourceName(v || '')}>
                  <SelectTrigger className="w-[200px]">
                    <SelectValue placeholder="Select source" />
                  </SelectTrigger>
                  <SelectContent>
                    {sources.map(s => (
                      <SelectItem key={s.id} value={s.name}>{s.name}</SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>

              <Button onClick={handleImport} disabled={importing || !cefrLevel || !sourceName}>
                {importing ? (
                  <><Loader2 className="h-4 w-4 mr-2 animate-spin" /> Importing...</>
                ) : (
                  <><Download className="h-4 w-4 mr-2" /> Import Verbs</>
                )}
              </Button>
            </div>
          </CardContent>
        </Card>

        {/* Import Result */}
        {lastResult && (
          <Card className="border-emerald-500/30">
            <CardContent className="p-4">
              <div className="flex items-center gap-3 mb-3">
                <CheckCircle2 className="h-5 w-5 text-emerald-500" />
                <p className="text-sm font-medium">
                  Import from <strong>{lastResult.source_name}</strong> for level <strong>{lastResult.cefr_level}</strong>
                </p>
              </div>
              <div className="grid grid-cols-2 md:grid-cols-4 gap-4 text-sm">
                <div>
                  <span className="text-muted-foreground">Fetched</span>
                  <p className="text-lg font-semibold">{lastResult.total_fetched}</p>
                </div>
                <div>
                  <span className="text-muted-foreground">Imported</span>
                  <p className="text-lg font-semibold">{lastResult.total_imported}</p>
                </div>
                <div>
                  <span className="text-muted-foreground">Errors</span>
                  <p className={`text-lg font-semibold ${lastResult.errors.length > 0 ? 'text-red-500' : ''}`}>
                    {lastResult.errors.length}
                  </p>
                </div>
                <div className="flex items-end">
                  <Button
                    variant="outline"
                    size="sm"
                    onClick={() => router.push('/admin/verbs/import/review')}
                  >
                    <ListChecks className="h-4 w-4 mr-2" />
                    Review
                  </Button>
                </div>
              </div>
              {lastResult.errors.length > 0 && (
                <div className="mt-3 text-xs text-red-500 space-y-1">
                  {lastResult.errors.map((e, i) => (
                    <p key={i} className="flex items-center gap-1">
                      <AlertCircle className="h-3 w-3" /> {e}
                    </p>
                  ))}
                </div>
              )}
            </CardContent>
          </Card>
        )}

        {/* Import History */}
        <Card>
          <CardHeader>
            <CardTitle className="text-lg flex items-center gap-2">
              <History className="h-5 w-5 text-purple-500" />
              Import History
            </CardTitle>
          </CardHeader>
          <CardContent>
            {loadingLogs ? (
              <div className="text-center py-8 text-muted-foreground">Loading...</div>
            ) : logs.length === 0 ? (
              <div className="text-center py-8 text-muted-foreground">No imports yet</div>
            ) : (
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead>Date</TableHead>
                    <TableHead>Source</TableHead>
                    <TableHead>CEFR</TableHead>
                    <TableHead>Fetched</TableHead>
                    <TableHead>Imported</TableHead>
                    <TableHead>Approved</TableHead>
                    <TableHead>Rejected</TableHead>
                    <TableHead>Status</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {logs.map(log => (
                    <TableRow key={log.id}>
                      <TableCell className="text-xs text-muted-foreground">
                        {new Date(log.created_at).toLocaleDateString()}
                      </TableCell>
                      <TableCell className="font-medium">{log.source_name}</TableCell>
                      <TableCell><Badge variant="outline" className="text-xs">{log.cefr_level}</Badge></TableCell>
                      <TableCell>{log.total_fetched}</TableCell>
                      <TableCell>{log.total_imported}</TableCell>
                      <TableCell>{log.total_approved}</TableCell>
                      <TableCell>{log.total_rejected}</TableCell>
                      <TableCell>
                        <Badge variant="outline" className={
                          log.status === 'completed' ? 'bg-emerald-500/10 text-emerald-600' :
                          log.status === 'failed' ? 'bg-red-500/10 text-red-600' :
                          'bg-amber-500/10 text-amber-600'
                        }>
                          {log.status}
                        </Badge>
                      </TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            )}
          </CardContent>
        </Card>
      </div>
    </AppShell>
  )
}
