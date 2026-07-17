'use client'

import { useEffect, useState } from 'react'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Separator } from '@/components/ui/separator'
import { Skeleton } from '@/components/ui/skeleton'
import { CreditCard, Calendar, Clock, RefreshCcw, CheckCircle2, AlertTriangle, XCircle } from 'lucide-react'
import type { Subscription, Plan } from '@/types'

const statusConfig: Record<string, { label: string; variant: 'default' | 'secondary' | 'destructive' | 'outline'; icon: any }> = {
  active: { label: 'Active', variant: 'default', icon: CheckCircle2 },
  expired: { label: 'Expired', variant: 'destructive', icon: XCircle },
  suspended: { label: 'Suspended', variant: 'destructive', icon: AlertTriangle },
  pending: { label: 'Pending', variant: 'outline', icon: Clock },
  trial: { label: 'Trial', variant: 'secondary', icon: Clock },
  lifetime: { label: 'Lifetime', variant: 'default', icon: CheckCircle2 },
  cancelled: { label: 'Cancelled', variant: 'outline', icon: XCircle },
}

export default function SubscriptionPage() {
  const [subscription, setSubscription] = useState<Subscription | null>(null)
  const [loading, setLoading] = useState(true)

  useEffect(() => {
    fetch('/api/subscriptions')
      .then(r => r.json())
      .then(d => setSubscription(d.data))
      .finally(() => setLoading(false))
  }, [])

  if (loading) {
    return (
      <AppShell>
        <div className="space-y-6">
          <Skeleton className="h-8 w-64" />
          <Skeleton className="h-40 w-full" />
        </div>
      </AppShell>
    )
  }

  const statusInfo = subscription ? statusConfig[subscription.status] || statusConfig.pending : null
  const plan = subscription?.plan as Plan | undefined
  const isExpiring = subscription?.end_date && new Date(subscription.end_date) < new Date(Date.now() + 7 * 86400000) && subscription.status === 'active'

  return (
    <AppShell>
      <div className="space-y-8">
        <div className="flex items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-lg bg-gradient-to-br from-primary to-primary/60 text-white">
            <CreditCard className="h-5 w-5" />
          </div>
          <div>
            <h1 className="text-3xl font-bold tracking-tight">My Subscription</h1>
            <p className="text-muted-foreground">Manage your plan and billing</p>
          </div>
        </div>

        <Card className={isExpiring ? 'border-amber-200 dark:border-amber-800' : ''}>
          <CardHeader>
            <div className="flex items-center justify-between">
              <div>
                <CardTitle className="text-xl capitalize">{plan?.name || 'Free'} Plan</CardTitle>
                <CardDescription>
                  {subscription?.status === 'trial' ? 'Trial period' : `Started ${new Date(subscription?.start_date || '').toLocaleDateString()}`}
                </CardDescription>
              </div>
              {statusInfo && (
                <Badge variant={statusInfo.variant} className="gap-1.5 text-sm px-3 py-1">
                  <statusInfo.icon className="h-4 w-4" />
                  {statusInfo.label}
                </Badge>
              )}
            </div>
          </CardHeader>
          <CardContent className="space-y-4">
            <div className="grid gap-4 sm:grid-cols-2">
              <div className="flex items-center gap-3 rounded-lg bg-muted/50 p-3">
                <Calendar className="h-5 w-5 text-muted-foreground" />
                <div>
                  <p className="text-sm text-muted-foreground">Start Date</p>
                  <p className="font-medium">{subscription?.start_date ? new Date(subscription.start_date).toLocaleDateString() : 'N/A'}</p>
                </div>
              </div>
              <div className="flex items-center gap-3 rounded-lg bg-muted/50 p-3">
                <Clock className="h-5 w-5 text-muted-foreground" />
                <div>
                  <p className="text-sm text-muted-foreground">Expiry Date</p>
                  <p className="font-medium">{subscription?.end_date ? new Date(subscription.end_date).toLocaleDateString() : 'Never'}</p>
                </div>
              </div>
            </div>

            {isExpiring && (
              <div className="flex items-center gap-2 rounded-lg bg-amber-50 dark:bg-amber-950/50 p-3 text-sm text-amber-700 dark:text-amber-400">
                <AlertTriangle className="h-4 w-4 shrink-0" />
                Your subscription expires soon. Renew to avoid interruption.
              </div>
            )}

            {subscription?.auto_renew && (
              <div className="flex items-center gap-2 text-sm text-muted-foreground">
                <RefreshCcw className="h-4 w-4" />
                Auto-renewal is enabled
              </div>
            )}

            {subscription?.status === 'expired' && (
              <Button className="w-full gap-2">
                <RefreshCcw className="h-4 w-4" />
                Renew Subscription
              </Button>
            )}

            {subscription?.status === 'trial' && (
              <Button className="w-full">Upgrade Now</Button>
            )}
          </CardContent>
        </Card>

        <div className="grid gap-4 md:grid-cols-3">
          {['basic', 'premium', 'pro'].map((planName) => (
            <Card key={planName} className={plan?.name === planName ? 'border-primary' : ''}>
              <CardHeader>
                <CardTitle className="capitalize">{planName}</CardTitle>
                <CardDescription>
                  {planName === 'basic' && 'Essential learning tools'}
                  {planName === 'premium' && 'Full access to all features'}
                  {planName === 'pro' && 'Advanced features for serious learners'}
                </CardDescription>
              </CardHeader>
              <CardContent>
                <Button
                  variant={plan?.name === planName ? 'default' : 'outline'}
                  className="w-full"
                  disabled={plan?.name === planName}
                >
                  {plan?.name === planName ? 'Current Plan' : 'Upgrade'}
                </Button>
              </CardContent>
            </Card>
          ))}
        </div>
      </div>
    </AppShell>
  )
}
