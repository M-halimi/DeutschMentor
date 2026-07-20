'use client'

import { useCallback, useEffect, useState } from 'react'
import { useParams, useRouter } from 'next/navigation'
import { AppShell } from '@/components/layout/app-shell'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import {
  Dialog, DialogContent, DialogDescription, DialogFooter, DialogHeader, DialogTitle,
} from '@/components/ui/dialog'
import { useAdminStore } from '@/stores/admin-store'
import type { ReferenceIssue } from '@/lib/verbs/reference-validator'
import {
  ArrowLeft, CheckCircle2, AlertTriangle, AlertCircle, XCircle, Shield, BookOpen, RefreshCw,
  ThumbsUp, Flag, Pencil, ArrowRight,
} from 'lucide-react'
import { toast } from 'sonner'

interface ReferenceItem {
  id?: string
  infinitive: string
  verb_type?: string | null
  auxiliary?: string | null
  separable_prefix?: string | null
  is_reflexive?: boolean | null
  reflexive_pronoun?: string | null
  partizip_2?: string | null
  cefr_level?: string | null
  source_name?: string | null
  source_reference?: string | null
  confidence?: number | null
}

interface VerbItem {
  id: string
  infinitive: string
  english_translation?: string | null
  verb_type?: string | null
  auxiliary?: string | null
  separable_prefix?: string | null
  is_reflexive?: boolean | null
  reflexive_pronoun?: string | null
  partizip_2?: string | null
  cefr_level?: string | null
}

interface ReferencePageData {
  verb: VerbItem
  reference: ReferenceItem | null
  issues: ReferenceIssue[]
  has_reference: boolean
}

const FIELD_LABELS: Record<string, string> = {
  auxiliary: 'Hilfsverb',
  verb_type: 'Verbtyp',
  separable_prefix: 'Trennbarer Präfix',
  is_reflexive: 'Reflexiv',
  reflexive_pronoun: 'Reflexivpronomen',
  partizip_2: 'Partizip II',
  cefr_level: 'CEFR-Niveau',
}

const SEVERITY_VARIANTS: Record<string, string> = {
  error: 'bg-red-500/10 text-red-600 border-red-500/30',
  warning: 'bg-amber-500/10 text-amber-600 border-amber-500/30',
  info: 'bg-blue-500/10 text-blue-600 border-blue-500/30',
}

export default function VerbAuditDetailPage() {
  const params = useParams()
  const router = useRouter()
  const { loaded, isAdminUser } = useAdminStore()
  const [data, setData] = useState<ReferencePageData | null>(null)
  const [loading, setLoading] = useState(true)
  const [error, setError] = useState<string | null>(null)
  const [updating, setUpdating] = useState<string | null>(null)
  const [actionDialog, setActionDialog] = useState<{ issue: ReferenceIssue; action: string } | null>(null)

  const fetchReference = useCallback(async () => {
    if (!params.id) return
    try {
      setError(null)
      const res = await fetch(`/api/admin/verbs/${params.id}/reference`)
      const json = await res.json()
      if (json.error) { setError(json.error); return }
      setData(json)
    } catch {
      setError('Failed to load reference data')
    } finally {
      setLoading(false)
    }
  }, [params.id])

  useEffect(() => {
    if (loaded && !isAdminUser) { router.push('/admin'); return }
    if (!loaded) return
    fetchReference()
  }, [loaded, isAdminUser, fetchReference, router])

  async function handleAction(issue: ReferenceIssue, action: string) {
    setUpdating(`${issue.verb_id}-${issue.field}`)
    try {
      let endpoint = ''
      let body: Record<string, unknown> = {}

      if (action === 'approve') {
        endpoint = '/api/admin/verbs/reference-audit/approve'
        body = { verb_id: issue.verb_id, field: issue.field, expected_value: issue.expected_value }
      } else if (action === 'reviewed') {
        endpoint = '/api/admin/verbs/reference-audit/issues'
        body = { verb_id: issue.verb_id, field: issue.field, action: 'reviewed' }
      } else if (action === 'ignore') {
        endpoint = '/api/admin/verbs/reference-audit/issues'
        body = { verb_id: issue.verb_id, field: issue.field, action: 'ignore' }
      }

      const res = await fetch(endpoint, {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body),
      })
      const json = await res.json()
      if (json.error) { toast.error(json.error); return }
      toast.success(json.message || 'Action applied')
      setActionDialog(null)
      fetchReference()
    } catch {
      toast.error('Failed to apply action')
    } finally {
      setUpdating(null)
    }
  }

  const severityIcon = (sev: string) => {
    switch (sev) {
      case 'error': return <XCircle className="h-5 w-5 text-red-500" />
      case 'warning': return <AlertTriangle className="h-5 w-5 text-amber-500" />
      default: return <AlertCircle className="h-5 w-5 text-blue-500" />
    }
  }

  const issueCounts = {
    errors: data?.issues.filter(i => i.severity === 'error').length ?? 0,
    warnings: data?.issues.filter(i => i.severity === 'warning').length ?? 0,
    infos: data?.issues.filter(i => i.severity === 'info').length ?? 0,
  }

  const confidenceBadge = (confidence?: number | null) => {
    if (confidence == null) return { label: 'Unknown', color: 'bg-muted text-muted-foreground' }
    if (confidence >= 90) return { label: `Verified (${confidence}%)`, color: 'bg-emerald-500/10 text-emerald-600' }
    if (confidence >= 70) return { label: `Needs Review (${confidence}%)`, color: 'bg-amber-500/10 text-amber-600' }
    return { label: `Low (${confidence}%)`, color: 'bg-red-500/10 text-red-600' }
  }

  if (loading || !loaded) {
    return (
      <AppShell>
        <div className="flex items-center justify-center h-64">
          <div className="h-8 w-8 animate-spin rounded-full border-4 border-primary border-t-transparent" />
        </div>
      </AppShell>
    )
  }

  if (error) {
    return (
      <AppShell>
        <div className="p-6 space-y-4">
          <div className="flex items-center gap-3">
            <Button variant="ghost" size="icon" onClick={() => router.push('/admin/verbs')}>
              <ArrowLeft className="h-4 w-4" />
            </Button>
            <h1 className="text-2xl font-bold tracking-tight">Error</h1>
          </div>
          <Card>
            <CardContent className="flex flex-col items-center justify-center py-16 text-muted-foreground">
              <AlertCircle className="h-12 w-12 mb-3 text-red-500" />
              <p className="text-sm font-medium text-red-500">{error}</p>
              <Button variant="outline" className="mt-4" onClick={fetchReference}>
                <RefreshCw className="h-4 w-4 mr-2" /> Retry
              </Button>
            </CardContent>
          </Card>
        </div>
      </AppShell>
    )
  }

  if (!data) {
    return (
      <AppShell>
        <div className="p-6 text-center text-muted-foreground">Verb not found</div>
      </AppShell>
    )
  }

  const { verb, reference, issues } = data
  const refConfidence = reference?.confidence
  const confBadge = confidenceBadge(refConfidence)

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
              <h1 className="text-2xl font-bold tracking-tight">{verb.infinitive}</h1>
              <p className="text-sm text-muted-foreground">{verb.english_translation} — Reference Audit</p>
            </div>
            <Badge variant="outline" className="ml-2">{verb.cefr_level}</Badge>
            <Badge variant="outline" className={data.has_reference ? 'bg-emerald-500/10 text-emerald-600 border-emerald-500/30' : 'bg-amber-500/10 text-amber-600 border-amber-500/30'}>
              {data.has_reference ? 'Reference Active' : 'No Reference'}
            </Badge>
          </div>
          <Button variant="outline" onClick={() => router.push(`/admin/verbs/${params.id}/quality`)}>
            <Shield className="h-4 w-4 mr-2" />
            Quality Control
          </Button>
        </div>

        {/* Missing Reference Banner */}
        {!data.has_reference && (
          <Card className="border-amber-500/30 bg-amber-500/5">
            <CardContent className="flex items-center gap-3 p-4">
              <AlertTriangle className="h-5 w-5 text-amber-500 shrink-0" />
              <div>
                <p className="text-sm font-medium text-amber-700">No reference data for this verb</p>
                <p className="text-xs text-amber-600/70">
                  Add reference data via the import tool or API to enable automated comparison.
                </p>
              </div>
            </CardContent>
          </Card>
        )}

        {/* Summary Cards */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          {/* Current Data (Produktion) */}
          <Card>
            <CardHeader className="py-3 px-4 border-b">
              <CardTitle className="flex items-center gap-2 text-sm font-medium">
                <BookOpen className="h-4 w-4 text-blue-500" />
                Current Data (Produktion)
              </CardTitle>
            </CardHeader>
            <CardContent className="p-4 space-y-2">
              <FieldRow label="Verbtyp" value={verb.verb_type} />
              <FieldRow label="Hilfsverb" value={verb.auxiliary} />
              <FieldRow label="Präfix" value={verb.separable_prefix} />
              <FieldRow label="Reflexiv" value={verb.is_reflexive != null ? String(verb.is_reflexive) : null} />
              <FieldRow label="Reflexivpronomen" value={verb.reflexive_pronoun} />
              <FieldRow label="Partizip II" value={verb.partizip_2} />
              <FieldRow label="CEFR" value={verb.cefr_level} />
            </CardContent>
          </Card>

          {/* Reference Data (Referenz) */}
          <Card>
            <CardHeader className="py-3 px-4 border-b">
              <CardTitle className="flex items-center gap-2 text-sm font-medium">
                <Shield className="h-4 w-4 text-emerald-500" />
                Reference Data (Referenz)
              </CardTitle>
            </CardHeader>
            <CardContent className="p-4 space-y-2">
              {reference ? (
                <>
                  <div className="flex items-center gap-2 mb-2">
                    <Badge variant="outline" className={`text-[10px] ${confBadge.color}`}>{confBadge.label}</Badge>
                    {reference.source_name && (
                      <span className="text-[10px] text-muted-foreground">Source: {reference.source_name}</span>
                    )}
                  </div>
                  <FieldRow label="Verbtyp" value={reference.verb_type} />
                  <FieldRow label="Hilfsverb" value={reference.auxiliary} />
                  <FieldRow label="Präfix" value={reference.separable_prefix} />
                  <FieldRow label="Reflexiv" value={reference.is_reflexive != null ? String(reference.is_reflexive) : null} />
                  <FieldRow label="Reflexivpronomen" value={reference.reflexive_pronoun} />
                  <FieldRow label="Partizip II" value={reference.partizip_2} />
                  <FieldRow label="CEFR" value={reference.cefr_level} />
                </>
              ) : (
                <p className="text-sm text-muted-foreground italic py-4 text-center">No reference data available</p>
              )}
            </CardContent>
          </Card>

          {/* Audit Status */}
          <Card>
            <CardHeader className="py-3 px-4 border-b">
              <CardTitle className="flex items-center gap-2 text-sm font-medium">
                <CheckCircle2 className="h-4 w-4 text-purple-500" />
                Audit Status
              </CardTitle>
            </CardHeader>
            <CardContent className="p-4">
              {issueCounts.errors === 0 && issueCounts.warnings === 0 && issueCounts.infos === 0 ? (
                <div className="flex flex-col items-center justify-center py-6 text-emerald-500">
                  <CheckCircle2 className="h-10 w-10 mb-2" />
                  <p className="text-sm font-medium">✅ Verified</p>
                  <p className="text-xs text-muted-foreground">All fields match reference data</p>
                </div>
              ) : (
                <div className="space-y-3">
                  <p className="text-sm text-muted-foreground">
                    {issues.length} issue{issues.length !== 1 ? 's' : ''} found
                  </p>
                  <div className="flex items-center gap-2">
                    <div className="flex items-center gap-1.5">
                      <AlertCircle className="h-4 w-4 text-red-500" />
                      <span className="text-sm font-medium text-red-500">{issueCounts.errors}</span>
                      <span className="text-xs text-muted-foreground">errors</span>
                    </div>
                    <div className="flex items-center gap-1.5">
                      <AlertTriangle className="h-4 w-4 text-amber-500" />
                      <span className="text-sm font-medium text-amber-500">{issueCounts.warnings}</span>
                      <span className="text-xs text-muted-foreground">warnings</span>
                    </div>
                    <div className="flex items-center gap-1.5">
                      <AlertCircle className="h-4 w-4 text-blue-500" />
                      <span className="text-sm font-medium text-blue-500">{issueCounts.infos}</span>
                      <span className="text-xs text-muted-foreground">infos</span>
                    </div>
                  </div>
                </div>
              )}
            </CardContent>
          </Card>
        </div>

        {/* Issues List */}
        {issues.length === 0 ? (
          <Card>
            <CardContent className="flex flex-col items-center justify-center py-16 text-muted-foreground">
              <CheckCircle2 className="h-12 w-12 mb-3 text-emerald-500" />
              <p className="text-sm font-medium">No discrepancies found</p>
              <p className="text-xs">All verb fields match the reference data</p>
            </CardContent>
          </Card>
        ) : (
          <div className="space-y-4">
            <h2 className="text-lg font-semibold tracking-tight flex items-center gap-2">
              <AlertTriangle className="h-5 w-5 text-amber-500" />
              Detected Discrepancies
            </h2>
            {issues.map((issue, index) => {
              const fieldLabel = FIELD_LABELS[issue.field] || issue.field
              const sevVariant = SEVERITY_VARIANTS[issue.severity] || 'bg-muted text-muted-foreground'
              const borderColor = issue.severity === 'error' ? 'border-l-red-500' :
                issue.severity === 'warning' ? 'border-l-amber-500' : 'border-l-blue-500'

              return (
                <Card key={`${issue.verb_id}-${issue.field}-${index}`} className={`border-l-4 ${borderColor}`}>
                  <CardContent className="p-4">
                    {/* Header */}
                    <div className="flex items-start justify-between mb-4">
                      <div className="flex items-center gap-3">
                        {severityIcon(issue.severity)}
                        <div className="flex items-center gap-2 flex-wrap">
                          <Badge variant="outline" className={sevVariant}>
                            {issue.severity.toUpperCase()}
                          </Badge>
                          <Badge variant="secondary" className="text-xs">
                            {fieldLabel}
                          </Badge>
                        </div>
                      </div>
                    </div>

                    {/* Comparison */}
                    <div className="grid grid-cols-1 md:grid-cols-[1fr_auto_1fr] gap-3 items-center mb-4">
                      <div className="space-y-1">
                        <p className="text-xs text-muted-foreground font-medium">Current (Produktion)</p>
                        <code className="text-sm bg-red-500/10 text-red-600 px-2 py-1 rounded block break-all">
                          {issue.current_value || '(empty)'}
                        </code>
                      </div>
                      <div className="flex justify-center">
                        <ArrowRight className="h-5 w-5 text-muted-foreground" />
                      </div>
                      <div className="space-y-1">
                        <p className="text-xs text-muted-foreground font-medium">Expected (Referenz)</p>
                        <code className="text-sm bg-emerald-500/10 text-emerald-600 px-2 py-1 rounded block break-all">
                          {issue.expected_value || '(empty)'}
                        </code>
                      </div>
                    </div>

                    {/* Reason */}
                    <div className="bg-muted/30 rounded-lg p-3 mb-3">
                      <p className="text-xs text-muted-foreground font-medium mb-1">Reason</p>
                      <p className="text-sm">{issue.reason}</p>
                    </div>

                    {/* Source + Confidence Footer */}
                    <div className="flex items-center justify-between">
                      <div className="flex items-center gap-2 text-[10px] text-muted-foreground">
                        <span>Source: {issue.source}</span>
                        {issue.source_reference && (
                          <>
                            <span>·</span>
                            <span>Ref: {issue.source_reference}</span>
                          </>
                        )}
                        <span>·</span>
                        <span>Confidence: {issue.reference_confidence}%</span>
                      </div>

                      {/* Action Buttons */}
                      <div className="flex gap-1">
                        <Button
                          variant="ghost"
                          size="sm"
                          className="h-8 text-xs gap-1"
                          onClick={() => setActionDialog({ issue, action: 'approve' })}
                          disabled={updating === `${issue.verb_id}-${issue.field}`}
                        >
                          <ThumbsUp className="h-3 w-3 text-emerald-500" />
                          <span className="hidden sm:inline">Approve Change</span>
                        </Button>
                        <Button
                          variant="ghost"
                          size="sm"
                          className="h-8 text-xs gap-1"
                          onClick={() => handleAction(issue, 'reviewed')}
                          disabled={updating === `${issue.verb_id}-${issue.field}`}
                        >
                          <CheckCircle2 className="h-3 w-3 text-blue-500" />
                          <span className="hidden sm:inline">Reviewed</span>
                        </Button>
                        <Button
                          variant="ghost"
                          size="sm"
                          className="h-8 text-xs gap-1"
                          onClick={() => handleAction(issue, 'ignore')}
                          disabled={updating === `${issue.verb_id}-${issue.field}`}
                        >
                          <XCircle className="h-3 w-3 text-muted-foreground" />
                          <span className="hidden sm:inline">Ignore</span>
                        </Button>
                      </div>
                    </div>
                  </CardContent>
                </Card>
              )
            })}
          </div>
        )}

        {/* Action Dialog */}
        <Dialog open={!!actionDialog} onOpenChange={(open) => { if (!open) setActionDialog(null) }}>
          <DialogContent>
            <DialogHeader>
              <DialogTitle>Approve Change</DialogTitle>
              <DialogDescription>
                This will apply the reference value to the production database.
                The change will be logged in the audit trail.
              </DialogDescription>
            </DialogHeader>
            {actionDialog && (
              <div className="space-y-3">
                <div className="bg-muted/30 rounded-lg p-3 space-y-2">
                  <div className="flex justify-between text-sm">
                    <span className="text-muted-foreground">Field:</span>
                    <code className="font-medium">{FIELD_LABELS[actionDialog.issue.field] || actionDialog.issue.field}</code>
                  </div>
                  <div className="flex justify-between text-sm">
                    <span className="text-muted-foreground">Current:</span>
                    <code className="text-red-600">{actionDialog.issue.current_value || '(empty)'}</code>
                  </div>
                  <div className="flex justify-between text-sm">
                    <span className="text-muted-foreground">Expected:</span>
                    <code className="text-emerald-600">{actionDialog.issue.expected_value || '(empty)'}</code>
                  </div>
                </div>
                <div className="bg-amber-500/10 border border-amber-500/30 rounded-lg p-3 text-sm text-amber-700">
                  <Shield className="h-4 w-4 inline mr-1" />
                  This change will be applied immediately. All previous values will be overwritten.
                </div>
              </div>
            )}
            <DialogFooter>
              <Button variant="outline" onClick={() => setActionDialog(null)}>Cancel</Button>
              <Button
                onClick={() => {
                  if (actionDialog) handleAction(actionDialog.issue, actionDialog.action)
                }}
                disabled={updating === actionDialog?.issue.verb_id + '-' + actionDialog?.issue.field}
              >
                {updating ? 'Applying...' : 'Confirm'}
              </Button>
            </DialogFooter>
          </DialogContent>
        </Dialog>
      </div>
    </AppShell>
  )
}

function FieldRow({ label, value }: { label: string; value: string | null | undefined }) {
  return (
    <div className="flex items-center justify-between text-sm">
      <span className="text-muted-foreground text-xs">{label}</span>
      <code className="text-xs font-medium truncate max-w-[160px] ml-2" title={value ?? undefined}>
        {value || '—'}
      </code>
    </div>
  )
}
