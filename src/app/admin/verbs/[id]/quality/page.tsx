'use client'

import { useEffect, useState, useCallback } from 'react'
import { useParams, useRouter } from 'next/navigation'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { useAdminStore } from '@/stores/admin-store'
import { FINDING_CATEGORY_LABELS, FINDING_STATUS_LABELS, FINDING_STATUS_COLORS } from '@/lib/verbs/admin-types'
import type { VerbQualityFinding } from '@/lib/verbs/admin-types'
import {
  ArrowLeft, AlertTriangle, AlertCircle, Info, CheckCircle2, XCircle,
  ThumbsUp, ThumbsDown, Flag, Pencil, ExternalLink, RefreshCw, Star,
  BookOpen, Shield,
} from 'lucide-react'
import { toast } from 'sonner'
import {
  Dialog, DialogContent, DialogDescription, DialogFooter, DialogHeader, DialogTitle,
} from '@/components/ui/dialog'

export default function VerbQualityPage() {
  const params = useParams()
  const router = useRouter()
  const { loaded, isAdminUser, isOwner } = useAdminStore()
  const [findings, setFindings] = useState<VerbQualityFinding[]>([])
  const [summary, setSummary] = useState<{
    quality_score: number
    total_issues: number
    error_count: number
    warning_count: number
    info_count: number
    audit_status: string | null
  } | null>(null)
  const [verb, setVerb] = useState<{ infinitive: string; english_translation: string | null } | null>(null)
  const [loading, setLoading] = useState(true)
  const [updating, setUpdating] = useState<string | null>(null)
  const [running, setRunning] = useState(false)
  const [selectedFinding, setSelectedFinding] = useState<VerbQualityFinding | null>(null)
  const [notes, setNotes] = useState('')
  const [actionDialog, setActionDialog] = useState<{ finding: VerbQualityFinding; action: string } | null>(null)

  const fetchQuality = useCallback(async () => {
    if (!params.id) return
    try {
      const res = await fetch(`/api/admin/verbs/${params.id}/quality`)
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      setVerb(json.verb)
      setFindings(json.findings || [])
      setSummary(json.summary)
    } catch {
      toast.error('Failed to load quality data')
    } finally {
      setLoading(false)
    }
  }, [params.id])

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded) return
    fetchQuality()
  }, [loaded, isAdminUser, fetchQuality, router])

  async function handleAction(finding: VerbQualityFinding, action: string) {
    setUpdating(finding.id)
    try {
      const res = await fetch('/api/admin/verbs/quality/findings', {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          finding_id: finding.id,
          action,
          notes: notes || null,
        }),
      })
      const json = await res.json()
      if (json.error) {
        toast.error(json.error)
        return
      }
      setFindings(prev => prev.map(f => f.id === finding.id ? { ...f, status: json.data?.status || action === 'reopen' ? 'open' : action } as VerbQualityFinding : f))
      toast.success(json.message || 'Action applied')
      setActionDialog(null)
      setNotes('')
      fetchQuality()
    } catch {
      toast.error('Failed to update finding')
    } finally {
      setUpdating(null)
    }
  }

  async function runQualityCheck() {
    setRunning(true)
    try {
      const res = await fetch('/api/admin/verbs/quality/run', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ verb_id: params.id }),
      })
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      toast.success(json.message || 'Quality check complete')
      fetchQuality()
    } catch {
      toast.error('Failed to run quality check')
    } finally {
      setRunning(false)
    }
  }

  async function handleOwnerApprove(finding: VerbQualityFinding) {
    setUpdating(finding.id)
    try {
      const res = await fetch('/api/admin/verbs/quality/approve', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ approval_id: finding.id, action: 'approve' }),
      })
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      toast.success(json.message)
      fetchQuality()
    } catch {
      toast.error('Failed to approve')
    } finally {
      setUpdating(null)
    }
  }

  const severityIcon = (sev: string) => {
    switch (sev) {
      case 'error': return <AlertCircle className="h-5 w-5 text-red-500" />
      case 'warning': return <AlertTriangle className="h-5 w-5 text-amber-500" />
      default: return <Info className="h-5 w-5 text-blue-500" />
    }
  }

  const qualityColor = (score: number) => {
    if (score >= 90) return 'text-emerald-500'
    if (score >= 70) return 'text-amber-500'
    return 'text-red-500'
  }

  const qualityBg = (score: number) => {
    if (score >= 90) return 'bg-emerald-500/10'
    if (score >= 70) return 'bg-amber-500/10'
    return 'bg-red-500/10'
  }

  const openFindings = findings.filter(f => f.status === 'open')
  const errorCount = openFindings.filter(f => f.severity === 'error').length
  const warningCount = openFindings.filter(f => f.severity === 'warning').length
  const infoCount = openFindings.filter(f => f.severity === 'info').length

  if (loading || !loaded) {
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
        {/* Header */}
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Button variant="ghost" size="icon" onClick={() => router.push(`/admin/verbs/${params.id}`)}>
              <ArrowLeft className="h-4 w-4" />
            </Button>
            <div>
              <h1 className="text-2xl font-bold tracking-tight">{verb?.infinitive || 'Verb'}</h1>
              <p className="text-sm text-muted-foreground">{verb?.english_translation} — Quality Control</p>
            </div>
          </div>
          <div className="flex gap-2">
            <Button variant="outline" onClick={runQualityCheck} disabled={running}>
              <RefreshCw className={`h-4 w-4 mr-2 ${running ? 'animate-spin' : ''}`} />
              {running ? 'Scanning...' : 'Run Quality Check'}
            </Button>
            <Button variant="outline" onClick={() => router.push(`/admin/verbs/${params.id}/edit`)}>
              <Pencil className="h-4 w-4 mr-2" />
              Edit Verb
            </Button>
          </div>
        </div>

        {/* Summary Cards */}
        <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
          <Card>
            <CardContent className="flex items-center gap-3 p-4">
              <div className={`flex h-10 w-10 shrink-0 items-center justify-center rounded-lg ${qualityBg(summary?.quality_score ?? 100)}`}>
                <Star className={`h-5 w-5 ${qualityColor(summary?.quality_score ?? 100)}`} />
              </div>
              <div>
                <p className={`text-2xl font-bold ${qualityColor(summary?.quality_score ?? 100)}`}>
                  {summary?.quality_score ?? 100}
                </p>
                <p className="text-xs text-muted-foreground">Quality Score</p>
              </div>
            </CardContent>
          </Card>
          <Card>
            <CardContent className="flex items-center gap-3 p-4">
              <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-red-500/10">
                <AlertCircle className="h-5 w-5 text-red-500" />
              </div>
              <div>
                <p className="text-2xl font-bold text-red-500">{summary?.error_count ?? 0}</p>
                <p className="text-xs text-muted-foreground">Errors</p>
              </div>
            </CardContent>
          </Card>
          <Card>
            <CardContent className="flex items-center gap-3 p-4">
              <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-amber-500/10">
                <AlertTriangle className="h-5 w-5 text-amber-500" />
              </div>
              <div>
                <p className="text-2xl font-bold text-amber-500">{summary?.warning_count ?? 0}</p>
                <p className="text-xs text-muted-foreground">Warnings</p>
              </div>
            </CardContent>
          </Card>
          <Card>
            <CardContent className="flex items-center gap-3 p-4">
              <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-blue-500/10">
                <Info className="h-5 w-5 text-blue-500" />
              </div>
              <div>
                <p className="text-2xl font-bold text-blue-500">{summary?.info_count ?? 0}</p>
                <p className="text-xs text-muted-foreground">Info</p>
              </div>
            </CardContent>
          </Card>
        </div>

        {/* Issue counter bar */}
        <Card>
          <CardContent className="p-4">
            <div className="flex items-center gap-6">
              <div className="flex items-center gap-2">
                <AlertCircle className="h-4 w-4 text-red-500" />
                <span className="text-sm">Errors: <strong className="text-red-500">{errorCount}</strong></span>
              </div>
              <div className="flex items-center gap-2">
                <AlertTriangle className="h-4 w-4 text-amber-500" />
                <span className="text-sm">Warnings: <strong className="text-amber-500">{warningCount}</strong></span>
              </div>
              <div className="flex items-center gap-2">
                <Info className="h-4 w-4 text-blue-500" />
                <span className="text-sm">Info: <strong className="text-blue-500">{infoCount}</strong></span>
              </div>
              <div className="flex items-center gap-2 ml-auto">
                <Shield className="h-4 w-4 text-muted-foreground" />
                <span className="text-sm text-muted-foreground">
                  Audit status: <strong>{summary?.audit_status || 'clean'}</strong>
                </span>
              </div>
            </div>
          </CardContent>
        </Card>

        {/* Findings */}
        {findings.length === 0 ? (
          <Card>
            <CardContent className="flex flex-col items-center justify-center py-16 text-muted-foreground">
              <CheckCircle2 className="h-12 w-12 mb-3 text-emerald-500" />
              <p className="text-sm font-medium">No quality issues found</p>
              <p className="text-xs">Run a quality check to detect potential problems</p>
            </CardContent>
          </Card>
        ) : (
          <div className="space-y-4">
            {findings.map(finding => (
              <Card
                key={finding.id}
                className={`border-l-4 ${
                  finding.severity === 'error' ? 'border-l-red-500' :
                  finding.severity === 'warning' ? 'border-l-amber-500' : 'border-l-blue-500'
                }`}
              >
                <CardContent className="p-4">
                  {/* Header row */}
                  <div className="flex items-start justify-between mb-3">
                    <div className="flex items-center gap-3">
                      {severityIcon(finding.severity)}
                      <div>
                        <div className="flex items-center gap-2">
                          <Badge variant="outline" className="text-xs font-medium">
                            {FINDING_CATEGORY_LABELS[finding.category] || finding.category}
                          </Badge>
                          <Badge className={`text-xs ${FINDING_STATUS_COLORS[finding.status] || ''}`}>
                            {FINDING_STATUS_LABELS[finding.status] || finding.status}
                          </Badge>
                          <span className="text-[10px] text-muted-foreground">
                            Confidence: {finding.confidence}%
                          </span>
                        </div>
                        {finding.source_reference && (
                          <p className="text-[10px] text-muted-foreground mt-0.5">
                            Source: {finding.source_reference}
                          </p>
                        )}
                      </div>
                    </div>
                    {finding.status === 'open' && (
                      <div className="flex gap-1 shrink-0">
                        <Button
                          variant="ghost"
                          size="sm"
                          className="h-8 text-xs gap-1"
                          onClick={() => { setSelectedFinding(finding); setActionDialog({ finding, action: 'approve' }) }}
                          disabled={updating === finding.id}
                        >
                          <ThumbsUp className="h-3 w-3 text-emerald-500" />
                          <span className="hidden sm:inline">Approve</span>
                        </Button>
                        <Button
                          variant="ghost"
                          size="sm"
                          className="h-8 text-xs gap-1"
                          onClick={() => { setSelectedFinding(finding); setActionDialog({ finding, action: 'reject' }) }}
                          disabled={updating === finding.id}
                        >
                          <ThumbsDown className="h-3 w-3 text-red-500" />
                          <span className="hidden sm:inline">Reject</span>
                        </Button>
                        <Button
                          variant="ghost"
                          size="sm"
                          className="h-8 text-xs gap-1"
                          onClick={() => { setSelectedFinding(finding); setActionDialog({ finding, action: 'false_positive' }) }}
                          disabled={updating === finding.id}
                        >
                          <Flag className="h-3 w-3 text-blue-500" />
                          <span className="hidden sm:inline">False Pos.</span>
                        </Button>
                        <Button
                          variant="ghost"
                          size="sm"
                          className="h-8 text-xs gap-1"
                          onClick={() => { setSelectedFinding(finding); setActionDialog({ finding, action: 'manual_edit' }) }}
                          disabled={updating === finding.id}
                        >
                          <Pencil className="h-3 w-3 text-purple-500" />
                          <span className="hidden sm:inline">Manual Edit</span>
                        </Button>
                      </div>
                    )}
                    {finding.status !== 'open' && (
                      <Button
                        variant="ghost"
                        size="sm"
                        className="h-8 text-xs gap-1"
                        onClick={() => handleAction(finding, 'reopen')}
                        disabled={updating === finding.id}
                      >
                        <RefreshCw className="h-3 w-3" />
                        Reopen
                      </Button>
                    )}
                  </div>

                  {/* Field comparison */}
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-3">
                    <div className="space-y-1">
                      <p className="text-xs text-muted-foreground font-medium">Field</p>
                      <code className="text-sm bg-muted px-2 py-1 rounded">{finding.field_name}</code>
                    </div>
                    <div className="space-y-1">
                      <p className="text-xs text-muted-foreground font-medium">Current Database Value</p>
                      <code className="text-sm bg-red-500/10 text-red-600 px-2 py-1 rounded block">
                        {finding.current_value || '(empty)'}
                      </code>
                    </div>
                    <div className="space-y-1">
                      <p className="text-xs text-muted-foreground font-medium">Expected Value</p>
                      <code className="text-sm bg-emerald-500/10 text-emerald-600 px-2 py-1 rounded block">
                        {finding.expected_value || '(empty)'}
                      </code>
                    </div>
                  </div>

                  {/* Explanation */}
                  <div className="bg-muted/30 rounded-lg p-3 space-y-2">
                    <div>
                      <p className="text-xs text-muted-foreground font-medium mb-1">Explanation</p>
                      <p className="text-sm">{finding.explanation}</p>
                    </div>
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
                      <div>
                        <p className="text-xs text-red-500 font-medium mb-1">Incorrect</p>
                        <p className="text-sm line-through text-red-500 bg-red-500/5 px-2 py-1 rounded">
                          {finding.example_wrong}
                        </p>
                      </div>
                      <div>
                        <p className="text-xs text-emerald-500 font-medium mb-1">Correct</p>
                        <p className="text-sm text-emerald-600 bg-emerald-500/5 px-2 py-1 rounded">
                          {finding.example_correct}
                        </p>
                      </div>
                    </div>
                  </div>
                </CardContent>
              </Card>
            ))}
          </div>
        )}

        {/* Action Dialog */}
        <Dialog open={!!actionDialog} onOpenChange={(open) => { if (!open) setActionDialog(null) }}>
          <DialogContent>
            <DialogHeader>
              <DialogTitle>
                {actionDialog?.action === 'approve' && 'Approve Correction'}
                {actionDialog?.action === 'reject' && 'Reject Finding'}
                {actionDialog?.action === 'false_positive' && 'Mark as False Positive'}
                {actionDialog?.action === 'manual_edit' && 'Manual Edit'}
              </DialogTitle>
              <DialogDescription>
                {actionDialog?.action === 'approve' && 'This will create an owner approval request. The change will not be applied until the platform owner approves it.'}
                {actionDialog?.action === 'reject' && 'Mark this finding as rejected. It will be hidden from active issues.'}
                {actionDialog?.action === 'false_positive' && 'Mark this finding as a false positive. The audit engine will skip this pattern in future checks.'}
                {actionDialog?.action === 'manual_edit' && 'Mark this finding as manually edited. Use this when you fixed the issue directly in the database.'}
              </DialogDescription>
            </DialogHeader>
            <div className="space-y-3">
              {actionDialog && (
                <div className="bg-muted/30 rounded-lg p-3 space-y-2">
                  <div className="flex justify-between text-sm">
                    <span className="text-muted-foreground">Field:</span>
                    <code className="font-medium">{actionDialog.finding.field_name}</code>
                  </div>
                  <div className="flex justify-between text-sm">
                    <span className="text-muted-foreground">Current:</span>
                    <code className="text-red-600">{actionDialog.finding.current_value || '(empty)'}</code>
                  </div>
                  <div className="flex justify-between text-sm">
                    <span className="text-muted-foreground">Expected:</span>
                    <code className="text-emerald-600">{actionDialog.finding.expected_value || '(empty)'}</code>
                  </div>
                </div>
              )}
              <div>
                <label className="text-sm text-muted-foreground mb-1 block">Notes (optional)</label>
                <textarea
                  className="w-full rounded-md border border-input bg-background px-3 py-2 text-sm focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring"
                  rows={3}
                  value={notes}
                  onChange={e => setNotes(e.target.value)}
                  placeholder="Add any notes about this action..."
                />
              </div>
              {actionDialog?.action === 'approve' && !isOwner && (
                <div className="bg-amber-500/10 border border-amber-500/30 rounded-lg p-3 text-sm text-amber-700">
                  <Shield className="h-4 w-4 inline mr-1" />
                  Owner approval required. The change will not be applied until the platform owner approves it.
                </div>
              )}
            </div>
            <DialogFooter>
              <Button variant="outline" onClick={() => setActionDialog(null)}>Cancel</Button>
              <Button
                onClick={() => {
                  if (actionDialog) handleAction(actionDialog.finding, actionDialog.action)
                }}
                disabled={updating === actionDialog?.finding.id}
              >
                {updating === actionDialog?.finding.id ? 'Processing...' : 'Confirm'}
              </Button>
            </DialogFooter>
          </DialogContent>
        </Dialog>
      </div>
    </AppShell>
  )
}
