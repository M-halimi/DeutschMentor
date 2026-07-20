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
  CheckCircle2, XCircle, ArrowLeft, RefreshCw, AlertCircle, Loader2,
  ThumbsUp, ThumbsDown, Filter, Download,
} from 'lucide-react'
import { toast } from 'sonner'

interface Candidate {
  id: string
  infinitive: string
  translation: string | null
  cefr_level: string | null
  auxiliary: string | null
  verb_type: string | null
  separable_prefix: string | null
  is_reflexive: boolean
  reflexive_pronoun: string | null
  partizip_2: string | null
  source_name: string
  source_url: string | null
  confidence: number
  status: string
  created_at: string
}

export default function VerbImportReviewPage() {
  const router = useRouter()
  const { loaded, isAdminUser } = useAdminStore()
  const [candidates, setCandidates] = useState<Candidate[]>([])
  const [total, setTotal] = useState(0)
  const [loading, setLoading] = useState(true)
  const [selected, setSelected] = useState<Set<string>>(new Set())
  const [actionLoading, setActionLoading] = useState(false)

  const [filterSource, setFilterSource] = useState('')
  const [filterStatus, setFilterStatus] = useState('PENDING')
  const [filterCefr, setFilterCefr] = useState('')

  const [sources, setSources] = useState<string[]>([])

  const fetchCandidates = useCallback(async () => {
    setLoading(true)
    const params = new URLSearchParams()
    if (filterSource) params.set('source', filterSource)
    if (filterStatus) params.set('status', filterStatus)
    if (filterCefr) params.set('cefr', filterCefr)

    try {
      const res = await fetch(`/api/admin/verbs/import/candidates?${params}`)
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      setCandidates(json.data || [])
      setTotal(json.total || 0)
      setSelected(new Set())
    } catch {
      toast.error('Failed to load candidates')
    } finally {
      setLoading(false)
    }
  }, [filterSource, filterStatus, filterCefr])

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded) return
    fetchCandidates()
    fetchSourceNames()
  }, [loaded, isAdminUser, fetchCandidates, router])

  async function fetchSourceNames() {
    try {
      const res = await fetch('/api/admin/verbs/import/sources')
      const json = await res.json()
      if (json.data) setSources(json.data.map((s: any) => s.name))
    } catch { /* ignore */ }
  }

  function toggleSelect(id: string) {
    const next = new Set(selected)
    if (next.has(id)) next.delete(id)
    else next.add(id)
    setSelected(next)
  }

  function selectAll() {
    if (selected.size === candidates.length) setSelected(new Set())
    else setSelected(new Set(candidates.map(c => c.id)))
  }

  async function handleApprove(id?: string) {
    setActionLoading(true)
    const ids = id ? [id] : [...selected]
    if (ids.length === 0) { toast.error('No candidates selected'); setActionLoading(false); return }
    try {
      const res = await fetch('/api/admin/verbs/import/candidates/approve', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ ids }),
      })
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      toast.success(`Approved ${ids.length} candidate(s)`)
      fetchCandidates()
    } catch {
      toast.error('Failed to approve')
    } finally { setActionLoading(false) }
  }

  async function handleReject(id?: string) {
    setActionLoading(true)
    const ids = id ? [id] : [...selected]
    if (ids.length === 0) { toast.error('No candidates selected'); setActionLoading(false); return }
    try {
      const res = await fetch('/api/admin/verbs/import/candidates/reject', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ ids }),
      })
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      toast.success(`Rejected ${ids.length} candidate(s)`)
      fetchCandidates()
    } catch {
      toast.error('Failed to reject')
    } finally { setActionLoading(false) }
  }

  const confidenceBadge = (c: number) => {
    if (c >= 90) return 'bg-emerald-500/10 text-emerald-600'
    if (c >= 70) return 'bg-amber-500/10 text-amber-600'
    return 'bg-red-500/10 text-red-600'
  }

  const statusBadge = (s: string) => {
    switch (s) {
      case 'PENDING': return 'bg-amber-500/10 text-amber-600 border-amber-500/30'
      case 'APPROVED': return 'bg-emerald-500/10 text-emerald-600 border-emerald-500/30'
      case 'REJECTED': return 'bg-red-500/10 text-red-600 border-red-500/30'
      default: return ''
    }
  }

  return (
    <AppShell>
      <div className="space-y-6 p-6">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Button variant="ghost" size="icon" onClick={() => router.push('/admin/verbs/import')}>
              <ArrowLeft className="h-4 w-4" />
            </Button>
            <div>
              <h1 className="text-2xl font-bold tracking-tight">Review Candidates</h1>
              <p className="text-sm text-muted-foreground">
                {total} candidate(s) — Approve to add to reference data
              </p>
            </div>
          </div>
          <Button variant="outline" onClick={fetchCandidates} disabled={loading}>
            <RefreshCw className="h-4 w-4 mr-2" />
            Refresh
          </Button>
        </div>

        {/* Filters */}
        <div className="flex flex-wrap gap-3 items-end">
          <div className="space-y-1.5">
            <label className="text-xs text-muted-foreground font-medium">Status</label>
            <Select value={filterStatus} onValueChange={v => { setFilterStatus(v || ''); setSelected(new Set()) }}>
              <SelectTrigger className="w-[140px]"><SelectValue /></SelectTrigger>
              <SelectContent>
                <SelectItem value="PENDING">Pending</SelectItem>
                <SelectItem value="APPROVED">Approved</SelectItem>
                <SelectItem value="REJECTED">Rejected</SelectItem>
                <SelectItem value="">All</SelectItem>
              </SelectContent>
            </Select>
          </div>
          <div className="space-y-1.5">
            <label className="text-xs text-muted-foreground font-medium">CEFR</label>
            <Select value={filterCefr} onValueChange={v => { setFilterCefr(v || ''); setSelected(new Set()) }}>
              <SelectTrigger className="w-[100px]"><SelectValue placeholder="All" /></SelectTrigger>
              <SelectContent>
                {CEFR_LEVELS.map(l => <SelectItem key={l} value={l}>{l}</SelectItem>)}
                <SelectItem value="">All</SelectItem>
              </SelectContent>
            </Select>
          </div>
          <div className="space-y-1.5">
            <label className="text-xs text-muted-foreground font-medium">Source</label>
            <Select value={filterSource} onValueChange={v => { setFilterSource(v || ''); setSelected(new Set()) }}>
              <SelectTrigger className="w-[160px]"><SelectValue placeholder="All" /></SelectTrigger>
              <SelectContent>
                {sources.map(s => <SelectItem key={s} value={s}>{s}</SelectItem>)}
                <SelectItem value="">All</SelectItem>
              </SelectContent>
            </Select>
          </div>

          {selected.size > 0 && (
            <div className="flex gap-2">
              <Button
                size="sm"
                className="bg-emerald-600 hover:bg-emerald-700"
                onClick={() => handleApprove()}
                disabled={actionLoading}
              >
                {actionLoading ? <Loader2 className="h-4 w-4 mr-1 animate-spin" /> : <ThumbsUp className="h-4 w-4 mr-1" />}
                Approve ({selected.size})
              </Button>
              <Button
                size="sm"
                variant="destructive"
                onClick={() => handleReject()}
                disabled={actionLoading}
              >
                <ThumbsDown className="h-4 w-4 mr-1" />
                Reject ({selected.size})
              </Button>
            </div>
          )}
        </div>

        {/* Candidates Table */}
        <Card>
          <CardContent className="p-0">
            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead className="w-10">
                    <input
                      type="checkbox"
                      className="h-4 w-4 rounded border-gray-300"
                      checked={candidates.length > 0 && selected.size === candidates.length}
                      onChange={selectAll}
                    />
                  </TableHead>
                  <TableHead>Verb</TableHead>
                  <TableHead>CEFR</TableHead>
                  <TableHead>Auxiliary</TableHead>
                  <TableHead>Prefix</TableHead>
                  <TableHead>Reflexive</TableHead>
                  <TableHead>Partizip II</TableHead>
                  <TableHead>Source</TableHead>
                  <TableHead>Confidence</TableHead>
                  <TableHead>Status</TableHead>
                  <TableHead className="w-24">Actions</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {loading ? (
                  <TableRow>
                    <TableCell colSpan={11} className="text-center py-12 text-muted-foreground">
                      Loading...
                    </TableCell>
                  </TableRow>
                ) : candidates.length === 0 ? (
                  <TableRow>
                    <TableCell colSpan={11} className="text-center py-12 text-muted-foreground">
                      <div className="flex flex-col items-center gap-2">
                        <Download className="h-8 w-8 text-muted-foreground/50" />
                        <p>No candidates found</p>
                        <p className="text-xs">Import verbs first from the import page</p>
                        <Button variant="outline" size="sm" onClick={() => router.push('/admin/verbs/import')}>
                          Go to Import
                        </Button>
                      </div>
                    </TableCell>
                  </TableRow>
                ) : (
                  candidates.map(c => (
                    <TableRow key={c.id} className="group">
                      <TableCell>
                        <input
                          type="checkbox"
                          className="h-4 w-4 rounded border-gray-300"
                          checked={selected.has(c.id)}
                          onChange={() => toggleSelect(c.id)}
                        />
                      </TableCell>
                      <TableCell className="font-medium">
                        <div>{c.infinitive}</div>
                        {c.translation && (
                          <div className="text-xs text-muted-foreground">{c.translation}</div>
                        )}
                      </TableCell>
                      <TableCell>
                        {c.cefr_level && <Badge variant="outline" className="text-xs">{c.cefr_level}</Badge>}
                      </TableCell>
                      <TableCell className={`text-sm ${c.auxiliary === 'sein' ? 'text-amber-600 font-medium' : ''}`}>
                        {c.auxiliary || '-'}
                      </TableCell>
                      <TableCell className="text-sm">{c.separable_prefix || '-'}</TableCell>
                      <TableCell>
                        {c.is_reflexive
                          ? <Badge variant="secondary" className="text-xs">{c.reflexive_pronoun || 'sich'}</Badge>
                          : '-'
                        }
                      </TableCell>
                      <TableCell className="text-sm font-mono">{c.partizip_2 || '-'}</TableCell>
                      <TableCell className="text-xs text-muted-foreground">{c.source_name}</TableCell>
                      <TableCell>
                        <Badge variant="outline" className={`text-xs ${confidenceBadge(c.confidence)}`}>
                          {c.confidence}%
                        </Badge>
                      </TableCell>
                      <TableCell>
                        <Badge variant="outline" className={`text-xs ${statusBadge(c.status)}`}>
                          {c.status}
                        </Badge>
                      </TableCell>
                      <TableCell>
                        {c.status === 'PENDING' && (
                          <div className="flex gap-1">
                            <Button
                              variant="ghost"
                              size="sm"
                              className="h-7 w-7 p-0"
                              onClick={() => handleApprove(c.id)}
                              disabled={actionLoading}
                              title="Approve"
                            >
                              <ThumbsUp className="h-3.5 w-3.5 text-emerald-500" />
                            </Button>
                            <Button
                              variant="ghost"
                              size="sm"
                              className="h-7 w-7 p-0"
                              onClick={() => handleReject(c.id)}
                              disabled={actionLoading}
                              title="Reject"
                            >
                              <ThumbsDown className="h-3.5 w-3.5 text-red-500" />
                            </Button>
                          </div>
                        )}
                      </TableCell>
                    </TableRow>
                  ))
                )}
              </TableBody>
            </Table>
          </CardContent>
        </Card>
      </div>
    </AppShell>
  )
}
