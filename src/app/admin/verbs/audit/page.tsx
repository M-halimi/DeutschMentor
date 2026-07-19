'use client'

import { useCallback, useEffect, useMemo, useState } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Skeleton } from '@/components/ui/skeleton'
import { Input } from '@/components/ui/input'
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select'
import {
  ShieldAlert, AlertTriangle, Info, RefreshCw, CheckCircle2, XCircle,
  BookOpen, Hash, ThumbsUp, ChevronRight, ArrowUp, ArrowDown, Minus,
  Search, Filter, ArrowUpDown, X,
} from 'lucide-react'

interface AuditIssue {
  id: string
  verb_id: string | null
  verb_name: string | null
  issue_type: string
  severity: 'error' | 'warning' | 'info'
  field: string | null
  expected: string | null
  actual: string | null
  message: string
  status: string
  created_at: string
}

interface AuditRun {
  id: string
  total_verbs: number
  total_issues: number
  errors: number
  warnings: number
  infos: number
  confidence: number
  created_at: string
}

interface AuditDiff {
  new: number
  fixed: number
  unchanged: number
  previous_run: AuditRun | null
  trend: string
}

interface SourceStats {
  total: number
  verified: number
  pending: number
  rejected: number
  highConfidence: number
  coverage: number
}

const ISSUE_LABELS: Record<string, string> = {
  auxiliary_mismatch: 'Auxiliary',
  missing_separable_prefix: 'Missing Prefix',
  incorrect_separable_prefix: 'Wrong Prefix',
  missing_reflexive_pronoun: 'Reflexive Pronoun',
  missing_conjugations: 'Conjugations',
  duplicate_verb: 'Duplicate',
  slug_inconsistency: 'Slug',
  cefr_gap: 'CEFR Gap',
}

const ISSUE_TYPES = Object.keys(ISSUE_LABELS)
const SEVERITIES = ['error', 'warning', 'info'] as const
const STATUSES = ['open', 'dismissed']
const SORT_OPTIONS = [
  { value: 'severity', label: 'Most severe first' },
  { value: 'verb', label: 'Alphabetical' },
  { value: 'recent', label: 'Recently detected' },
] as const

type SortKey = typeof SORT_OPTIONS[number]['value']

export default function VerbAuditPage() {
  const [run, setRun] = useState<AuditRun | null>(null)
  const [allIssues, setAllIssues] = useState<AuditIssue[]>([])
  const [diff, setDiff] = useState<AuditDiff | null>(null)
  const [sourceStats, setSourceStats] = useState<SourceStats | null>(null)
  const [loading, setLoading] = useState(true)
  const [running, setRunning] = useState(false)
  const [updating, setUpdating] = useState<string | null>(null)
  const [validating, setValidating] = useState<string | null>(null)

  const [searchQuery, setSearchQuery] = useState('')
  const [filterType, setFilterType] = useState<string>('all')
  const [filterSeverity, setFilterSeverity] = useState<string>('all')
  const [filterStatus, setFilterStatus] = useState<string>('all')
  const [sortBy, setSortBy] = useState<SortKey>('severity')
  const [selectedVerb, setSelectedVerb] = useState<{ name: string; issues: AuditIssue[] } | null>(null)

  const fetchAudit = useCallback(async (rerun = false) => {
    if (rerun) setRunning(true)
    else setLoading(true)
    try {
      const params = rerun ? '?rerun=true' : ''
      const res = await fetch(`/api/admin/verbs/audit${params}`)
      if (res.ok) {
        const json = await res.json()
        setRun(json.run)
        setAllIssues(json.issues || [])
        setDiff(json.diff || null)
        setSourceStats(json.sourceStats || null)
      }
    } catch { /* swallow */ }
    setLoading(false)
    setRunning(false)
  }, [])

  useEffect(() => { fetchAudit() }, [fetchAudit])

  async function handleDismiss(issueId: string) {
    setUpdating(issueId)
    try {
      const res = await fetch('/api/admin/verbs/audit/issues', {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ issue_id: issueId, action: 'dismiss' }),
      })
      if (res.ok) {
        setAllIssues(prev => prev.map(i => i.id === issueId ? { ...i, status: 'dismissed' } : i))
      }
    } catch { /* swallow */ }
    setUpdating(null)
  }

  async function handleReopen(issueId: string) {
    setUpdating(issueId)
    try {
      const res = await fetch('/api/admin/verbs/audit/issues', {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ issue_id: issueId, action: 'reopen' }),
      })
      if (res.ok) {
        setAllIssues(prev => prev.map(i => i.id === issueId ? { ...i, status: 'open' } : i))
      }
    } catch { /* swallow */ }
    setUpdating(null)
  }

  const openIssues = useMemo(() => allIssues.filter(i => i.status === 'open'), [allIssues])
  const dismissedCount = useMemo(() => allIssues.filter(i => i.status === 'dismissed').length, [allIssues])
  const unverifiedErrors = useMemo(() => openIssues.filter(i => i.severity === 'error').length, [openIssues])

  const filteredIssues = useMemo(() => {
    let result = [...allIssues]

    if (searchQuery.trim()) {
      const q = searchQuery.trim().toLowerCase()
      result = result.filter(i => {
        const nameMatch = i.verb_name && i.verb_name.toLowerCase().includes(q)
        const msgMatch = i.message.toLowerCase().includes(q)
        return nameMatch || msgMatch
      })
    }

    if (filterType !== 'all') {
      result = result.filter(i => i.issue_type === filterType)
    }
    if (filterSeverity !== 'all') {
      result = result.filter(i => i.severity === filterSeverity)
    }
    if (filterStatus !== 'all') {
      result = result.filter(i => i.status === filterStatus)
    }

    const sevOrder: Record<string, number> = { error: 0, warning: 1, info: 2 }
    result.sort((a, b) => {
      switch (sortBy) {
        case 'severity':
          return sevOrder[a.severity] - sevOrder[b.severity]
        case 'verb': {
          const an = a.verb_name || ''
          const bn = b.verb_name || ''
          return an.localeCompare(bn)
        }
        case 'recent':
          return new Date(b.created_at).getTime() - new Date(a.created_at).getTime()
        default:
          return 0
      }
    })

    return result
  }, [allIssues, searchQuery, filterType, filterSeverity, filterStatus, sortBy])

  const verbDetailsMap = useMemo(() => {
    const map = new Map<string, AuditIssue[]>()
    for (const issue of filteredIssues) {
      const key = issue.verb_name || '(no verb)'
      if (!map.has(key)) map.set(key, [])
      map.get(key)!.push(issue)
    }
    return map
  }, [filteredIssues])

  const groupedBySeverity = useMemo(() => {
    const groups: Record<string, AuditIssue[]> = {}
    for (const issue of filteredIssues) {
      if (!groups[issue.severity]) groups[issue.severity] = []
      groups[issue.severity].push(issue)
    }
    return groups
  }, [filteredIssues])

  const statCards = [
    {
      label: 'Total Verbs',
      value: run?.total_verbs ?? 0,
      icon: BookOpen,
      color: 'text-primary',
      bg: 'bg-primary/10',
    },
    {
      label: 'Errors',
      value: run?.errors ?? 0,
      icon: XCircle,
      color: run?.errors ? 'text-red-500' : 'text-emerald-500',
      bg: run?.errors ? 'bg-red-500/10' : 'bg-emerald-500/10',
    },
    {
      label: 'Warnings',
      value: run?.warnings ?? 0,
      icon: AlertTriangle,
      color: run?.warnings ? 'text-amber-500' : 'text-emerald-500',
      bg: run?.warnings ? 'bg-amber-500/10' : 'bg-emerald-500/10',
    },
    {
      label: 'Confidence',
      value: `${run?.confidence ?? 100}%`,
      icon: ThumbsUp,
      color: (run?.confidence ?? 100) >= 90 ? 'text-emerald-500' : (run?.confidence ?? 100) >= 70 ? 'text-amber-500' : 'text-red-500',
      bg: 'bg-emerald-500/10',
    },
  ]

  const openErrors = openIssues.filter(i => i.severity === 'error').length
  const openWarnings = openIssues.filter(i => i.severity === 'warning').length
  const openInfos = openIssues.filter(i => i.severity === 'info').length

  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center justify-between gap-3">
          <div className="flex items-center gap-3">
            <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-purple-500 to-indigo-600 text-white shadow-sm">
              <ShieldAlert className="h-5 w-5" />
            </div>
            <div>
              <h1 className="text-2xl font-bold tracking-tight">Verb Data Verification Center</h1>
              <p className="text-sm text-muted-foreground">
                Quality control for {run?.total_verbs ?? 0} German verbs
                {run ? ` · last audit ${new Date(run.created_at).toLocaleString()}` : ''}
              </p>
            </div>
          </div>
          <Button
            onClick={() => fetchAudit(true)}
            disabled={running}
            className="gap-2"
          >
            <RefreshCw className={`h-4 w-4 ${running ? 'animate-spin' : ''}`} />
            {running ? 'Scanning...' : 'Run Audit'}
          </Button>
        </div>

        <div className="grid gap-3 grid-cols-2 lg:grid-cols-4">
          {statCards.map((card) => (
            <Card key={card.label}>
              <CardContent className="flex items-center gap-3 p-4">
                <div className={`flex h-10 w-10 shrink-0 items-center justify-center rounded-lg ${card.bg}`}>
                  <card.icon className={`h-5 w-5 ${card.color}`} />
                </div>
                <div className="min-w-0">
                  <p className="text-2xl font-bold">{card.value}</p>
                  <p className="text-xs text-muted-foreground truncate">{card.label}</p>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>

        {/* Issue Counters */}
        <Card>
          <CardContent className="p-4">
            <div className="flex items-center gap-6">
              <div className="flex items-center gap-2">
                <XCircle className="h-4 w-4 text-red-500" />
                <span className="text-sm">
                  Errors: <strong className="text-red-500">{openErrors}</strong>
                </span>
              </div>
              <div className="flex items-center gap-2">
                <AlertTriangle className="h-4 w-4 text-amber-500" />
                <span className="text-sm">
                  Warnings: <strong className="text-amber-500">{openWarnings}</strong>
                </span>
              </div>
              <div className="flex items-center gap-2">
                <Info className="h-4 w-4 text-blue-500" />
                <span className="text-sm">
                  Info: <strong className="text-blue-500">{openInfos}</strong>
                </span>
              </div>
              <div className="flex items-center gap-2 ml-auto">
                <Hash className="h-4 w-4 text-muted-foreground" />
                <span className="text-sm text-muted-foreground">
                  Total open: <strong>{openIssues.length}</strong>
                </span>
              </div>
            </div>
          </CardContent>
        </Card>

        {/* Search, Filters, Sort */}
        <div className="flex flex-wrap items-center gap-3">
          <div className="relative flex-1 min-w-[200px] max-w-sm">
            <Search className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
            <Input
              className="pl-8 h-9 text-sm"
              placeholder="Search by verb name or message..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
            />
            {searchQuery && (
              <button
                className="absolute right-2 top-2.5 text-muted-foreground hover:text-foreground"
                onClick={() => setSearchQuery('')}
              >
                <X className="h-4 w-4" />
              </button>
            )}
          </div>

          <div className="flex items-center gap-2">
            <Filter className="h-4 w-4 text-muted-foreground shrink-0" />
            <Select value={filterSeverity} onValueChange={(v) => setFilterSeverity(v ?? 'all')}>
              <SelectTrigger className="h-9 w-[130px] text-xs">
                <SelectValue placeholder="Severity" />
              </SelectTrigger>
              <SelectContent>
                <SelectItem value="all">All severities</SelectItem>
                <SelectItem value="error">Error</SelectItem>
                <SelectItem value="warning">Warning</SelectItem>
                <SelectItem value="info">Info</SelectItem>
              </SelectContent>
            </Select>

            <Select value={filterType} onValueChange={(v) => setFilterType(v ?? 'all')}>
              <SelectTrigger className="h-9 w-[150px] text-xs">
                <SelectValue placeholder="Issue type" />
              </SelectTrigger>
              <SelectContent>
                <SelectItem value="all">All types</SelectItem>
                {ISSUE_TYPES.map(t => (
                  <SelectItem key={t} value={t}>{ISSUE_LABELS[t]}</SelectItem>
                ))}
              </SelectContent>
            </Select>

            <Select value={filterStatus} onValueChange={(v) => setFilterStatus(v ?? 'all')}>
              <SelectTrigger className="h-9 w-[130px] text-xs">
                <SelectValue placeholder="Status" />
              </SelectTrigger>
              <SelectContent>
                <SelectItem value="all">All statuses</SelectItem>
                <SelectItem value="open">Open</SelectItem>
                <SelectItem value="dismissed">Dismissed</SelectItem>
              </SelectContent>
            </Select>
          </div>

          <div className="flex items-center gap-2">
            <ArrowUpDown className="h-4 w-4 text-muted-foreground shrink-0" />
            <Select value={sortBy} onValueChange={(v) => setSortBy((v ?? 'severity') as SortKey)}>
              <SelectTrigger className="h-9 w-[180px] text-xs">
                <SelectValue placeholder="Sort by" />
              </SelectTrigger>
              <SelectContent>
                {SORT_OPTIONS.map(o => (
                  <SelectItem key={o.value} value={o.value}>{o.label}</SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>
        </div>

        {diff && diff.trend !== 'initial' && diff.previous_run && (
          <Card>
            <CardHeader className="py-3 px-4 border-b">
              <CardTitle className="flex items-center gap-2 text-sm font-medium">
                <RefreshCw className="h-4 w-4 text-muted-foreground" />
                History Comparison
              </CardTitle>
            </CardHeader>
            <CardContent className="p-4 space-y-3">
              <div className="flex items-center justify-between">
                <div className="text-xs space-y-0.5">
                  <p className="text-muted-foreground">Previous run</p>
                  <p className="font-medium">
                    {diff.previous_run.total_issues} issues
                    {' · '}{diff.previous_run.errors} errors
                    {' · '}{diff.previous_run.confidence}% confidence
                  </p>
                  <p className="text-[10px] text-muted-foreground">
                    {new Date(diff.previous_run.created_at).toLocaleString()}
                  </p>
                </div>
                <div className="flex items-center gap-2">
                  {diff.trend === 'improved' ? (
                    <Badge className="gap-1 bg-emerald-500/10 text-emerald-600 border-emerald-500/30 text-xs">
                      <ArrowUp className="h-3 w-3" /> Improved
                    </Badge>
                  ) : diff.trend === 'declined' ? (
                    <Badge className="gap-1 bg-red-500/10 text-red-600 border-red-500/30 text-xs">
                      <ArrowDown className="h-3 w-3" /> Declined
                    </Badge>
                  ) : (
                    <Badge className="gap-1 bg-muted text-muted-foreground border text-xs">
                      <Minus className="h-3 w-3" /> Stable
                    </Badge>
                  )}
                </div>
              </div>
              {diff.new > 0 && (
                <p className="text-xs text-red-500">{diff.new} new issue{diff.new !== 1 ? 's' : ''} since last run</p>
              )}
              {diff.fixed > 0 && (
                <p className="text-xs text-emerald-500">{diff.fixed} issue{diff.fixed !== 1 ? 's' : ''} fixed since last run</p>
              )}
              {diff.unchanged > 0 && (
                <p className="text-xs text-muted-foreground">{diff.unchanged} issue{diff.unchanged !== 1 ? 's' : ''} unchanged</p>
              )}
              <div className="flex gap-3 pt-2">
                <div className="flex-1 h-2 rounded-full bg-muted overflow-hidden flex">
                  {diff.unchanged > 0 && <div className="h-full bg-emerald-500/50" style={{ width: `${(diff.unchanged / (diff.new + diff.fixed + diff.unchanged)) * 100}%` }} />}
                  {diff.fixed > 0 && <div className="h-full bg-emerald-500" style={{ width: `${(diff.fixed / (diff.new + diff.fixed + diff.unchanged)) * 100}%` }} />}
                  {diff.new > 0 && <div className="h-full bg-red-500" style={{ width: `${(diff.new / (diff.new + diff.fixed + diff.unchanged)) * 100}%` }} />}
                </div>
              </div>
              <div className="flex gap-4 text-[10px] text-muted-foreground">
                <span className="flex items-center gap-1"><span className="w-2 h-2 rounded-full bg-emerald-500/50" /> Unchanged ({diff.unchanged})</span>
                <span className="flex items-center gap-1"><span className="w-2 h-2 rounded-full bg-emerald-500" /> Fixed ({diff.fixed})</span>
                <span className="flex items-center gap-1"><span className="w-2 h-2 rounded-full bg-red-500" /> New ({diff.new})</span>
              </div>
            </CardContent>
          </Card>
        )}

        {/* Verb Details Panel */}
        {selectedVerb && (
          <Card className="border-indigo-500/30">
            <CardHeader className="py-3 px-4 border-b flex flex-row items-center justify-between">
              <CardTitle className="flex items-center gap-2 text-sm font-medium">
                <BookOpen className="h-4 w-4 text-indigo-500" />
                Verb: <span className="font-bold text-base">{selectedVerb.name}</span>
              </CardTitle>
              <Button variant="ghost" size="sm" className="h-7 w-7 p-0" onClick={() => setSelectedVerb(null)}>
                <X className="h-4 w-4" />
              </Button>
            </CardHeader>
            <CardContent className="p-4">
              <p className="text-xs text-muted-foreground mb-3">
                {selectedVerb.issues.length} detected problem{selectedVerb.issues.length !== 1 ? 's' : ''}
              </p>
              <div className="space-y-2">
                {selectedVerb.issues.map((issue) => (
                  <div key={issue.id} className="flex items-start gap-3 rounded-lg border p-3 text-sm">
                    <div className="mt-0.5">
                      {issue.severity === 'error' ? (
                        <XCircle className="h-4 w-4 text-red-500" />
                      ) : issue.severity === 'warning' ? (
                        <AlertTriangle className="h-4 w-4 text-amber-500" />
                      ) : (
                        <Info className="h-4 w-4 text-blue-500" />
                      )}
                    </div>
                    <div className="flex-1 min-w-0 space-y-1">
                      <div className="flex items-center gap-2">
                        <Badge variant="outline" className="text-[10px]">
                          {ISSUE_LABELS[issue.issue_type] || issue.issue_type}
                        </Badge>
                        <Badge variant="secondary" className="text-[10px]">
                          {issue.status}
                        </Badge>
                      </div>
                      <div className="grid grid-cols-2 gap-x-6 gap-y-1 text-xs">
                        <div>
                          <span className="text-muted-foreground">Field: </span>
                          <code className="text-foreground">{issue.field || '-'}</code>
                        </div>
                        <div>
                          <span className="text-muted-foreground">Current: </span>
                          <code className="text-red-600">{issue.actual || '-'}</code>
                        </div>
                        <div>
                          <span className="text-muted-foreground">Expected: </span>
                          <code className="text-emerald-600">{issue.expected || '-'}</code>
                        </div>
                        <div>
                          <span className="text-muted-foreground">Reason: </span>
                          <span className="text-foreground">{issue.message}</span>
                        </div>
                      </div>
                    </div>
                    <div className="flex flex-col gap-1 shrink-0">
                      {issue.status === 'open' ? (
                        <Button variant="ghost" size="sm" className="h-7 text-xs" onClick={() => handleDismiss(issue.id)} disabled={updating === issue.id}>
                          <CheckCircle2 className="h-3 w-3 mr-1" /> Dismiss
                        </Button>
                      ) : (
                        <Button variant="ghost" size="sm" className="h-7 text-xs" onClick={() => handleReopen(issue.id)} disabled={updating === issue.id}>
                          Reopen
                        </Button>
                      )}
                    </div>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>
        )}

        {/* Issue Explorer Table */}
        {loading && allIssues.length === 0 ? (
          <div className="space-y-2">
            {Array.from({ length: 8 }).map((_, i) => (
              <Skeleton key={i} className="h-12 w-full" />
            ))}
          </div>
        ) : filteredIssues.length === 0 ? (
          <Card>
            <CardContent className="flex flex-col items-center justify-center py-16 text-muted-foreground">
              <CheckCircle2 className="h-12 w-12 mb-3 text-emerald-500" />
              <p className="text-sm font-medium">
                {searchQuery || filterType !== 'all' || filterSeverity !== 'all' || filterStatus !== 'all'
                  ? 'No issues match your filters'
                  : 'No issues found'}
              </p>
              <p className="text-xs">
                {searchQuery || filterType !== 'all' || filterSeverity !== 'all' || filterStatus !== 'all'
                  ? 'Try adjusting your search query or filters'
                  : `All ${run?.total_verbs ?? 0} verbs passed quality checks`}
              </p>
            </CardContent>
          </Card>
        ) : (
          <div className="space-y-4">
            {/* Table header */}
            <div className="hidden lg:grid grid-cols-[60px_1fr_1fr_100px_100px_100px_90px_120px] gap-3 px-4 py-2 text-[10px] font-medium text-muted-foreground uppercase tracking-wider border-b">
              <div>Severity</div>
              <div>Verb</div>
              <div>Issue Type</div>
              <div>Field</div>
              <div>Current</div>
              <div>Expected</div>
              <div>Status</div>
              <div>Actions</div>
            </div>

            {SEVERITIES.map(sev => {
              const items = groupedBySeverity[sev]
              if (!items || items.length === 0) return null

              return (
                <div key={sev}>
                  <div className={`flex items-center gap-2 px-4 py-2 rounded-t-lg text-sm font-medium ${
                    sev === 'error' ? 'bg-red-500/10 text-red-600' :
                    sev === 'warning' ? 'bg-amber-500/10 text-amber-600' :
                    'bg-blue-500/10 text-blue-600'
                  }`}>
                    {sev === 'error' ? <XCircle className="h-4 w-4" /> :
                     sev === 'warning' ? <AlertTriangle className="h-4 w-4" /> :
                     <Info className="h-4 w-4" />}
                    <span className="capitalize">{sev}s</span>
                    <Badge variant="outline" className="ml-auto text-[10px]">{items.length}</Badge>
                  </div>

                  <div className="border-x border-b rounded-b-lg divide-y">
                    {items.map((issue) => {
                      const verbKey = issue.verb_name || '(no verb)'
                      return (
                        <div
                          key={issue.id}
                          className="grid grid-cols-1 lg:grid-cols-[60px_1fr_1fr_100px_100px_100px_90px_120px] gap-3 px-4 py-3 text-sm items-center hover:bg-muted/50 transition-colors"
                        >
                          {/* Severity */}
                          <div className="flex lg:block items-center gap-2">
                            <span className="lg:hidden text-[10px] text-muted-foreground uppercase">Severity</span>
                            {issue.severity === 'error' ? (
                              <Badge variant="outline" className="text-[10px] border-red-500/50 text-red-600 bg-red-500/5">ERROR</Badge>
                            ) : issue.severity === 'warning' ? (
                              <Badge variant="outline" className="text-[10px] border-amber-500/50 text-amber-600 bg-amber-500/5">WARNING</Badge>
                            ) : (
                              <Badge variant="outline" className="text-[10px] border-blue-500/50 text-blue-600 bg-blue-500/5">INFO</Badge>
                            )}
                          </div>

                          {/* Verb */}
                          <div className="flex lg:block items-center gap-2 min-w-0">
                            <span className="lg:hidden text-[10px] text-muted-foreground uppercase shrink-0">Verb</span>
                            {issue.verb_name ? (
                              <button
                                className="font-medium text-left hover:text-indigo-600 hover:underline truncate"
                                onClick={() => setSelectedVerb({
                                  name: issue.verb_name!,
                                  issues: filteredIssues.filter(i => i.verb_name === issue.verb_name)
                                })}
                              >
                                {issue.verb_name}
                              </button>
                            ) : (
                              <span className="text-muted-foreground italic text-xs">(no verb)</span>
                            )}
                          </div>

                          {/* Issue Type */}
                          <div className="flex lg:block items-center gap-2">
                            <span className="lg:hidden text-[10px] text-muted-foreground uppercase">Type</span>
                            <Badge variant="outline" className="text-[10px]">
                              {ISSUE_LABELS[issue.issue_type] || issue.issue_type}
                            </Badge>
                          </div>

                          {/* Field */}
                          <div className="flex lg:block items-center gap-2">
                            <span className="lg:hidden text-[10px] text-muted-foreground uppercase">Field</span>
                            <code className="text-xs">{issue.field || '-'}</code>
                          </div>

                          {/* Current Value */}
                          <div className="flex lg:block items-center gap-2">
                            <span className="lg:hidden text-[10px] text-muted-foreground uppercase">Current</span>
                            <code className="text-xs text-red-600">{issue.actual || '-'}</code>
                          </div>

                          {/* Expected Value */}
                          <div className="flex lg:block items-center gap-2">
                            <span className="lg:hidden text-[10px] text-muted-foreground uppercase">Expected</span>
                            <code className="text-xs text-emerald-600">{issue.expected || '-'}</code>
                          </div>

                          {/* Status */}
                          <div className="flex lg:block items-center gap-2">
                            <span className="lg:hidden text-[10px] text-muted-foreground uppercase">Status</span>
                            {issue.status === 'open' ? (
                              <Badge variant="secondary" className="text-[10px] bg-amber-500/10 text-amber-600">Open</Badge>
                            ) : (
                              <Badge variant="secondary" className="text-[10px] bg-muted text-muted-foreground">Dismissed</Badge>
                            )}
                          </div>

                          {/* Actions */}
                          <div className="flex lg:block items-center gap-2">
                            <span className="lg:hidden text-[10px] text-muted-foreground uppercase">Actions</span>
                            <div className="flex gap-1">
                              {issue.status === 'open' ? (
                                <Button
                                  variant="ghost"
                                  size="sm"
                                  className="h-7 text-[10px] gap-1"
                                  onClick={() => handleDismiss(issue.id)}
                                  disabled={updating === issue.id}
                                >
                                  <CheckCircle2 className="h-3 w-3" />
                                  <span className="hidden lg:inline">Dismiss</span>
                                </Button>
                              ) : (
                                <Button
                                  variant="ghost"
                                  size="sm"
                                  className="h-7 text-[10px] gap-1"
                                  onClick={() => handleReopen(issue.id)}
                                  disabled={updating === issue.id}
                                >
                                  Reopen
                                </Button>
                              )}
                            </div>
                          </div>
                        </div>
                      )
                    })}
                  </div>
                </div>
              )
            })}

            {dismissedCount > 0 && (
              <details className="group">
                <summary className="flex items-center gap-2 cursor-pointer text-sm text-muted-foreground hover:text-foreground py-2">
                  <ChevronRight className="h-4 w-4 group-open:rotate-90 transition-transform" />
                  Dismissed Issues ({dismissedCount})
                </summary>
              </details>
            )}
          </div>
        )}
      </div>
    </AppShell>
  )
}
