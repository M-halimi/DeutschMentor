'use client'

import Link from 'next/link'
import { AlertTriangle, RefreshCcw } from 'lucide-react'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'

export default function AccountExpiredPage() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-gradient-to-b from-amber-50 to-orange-50 dark:from-amber-950/20 dark:to-orange-950/20 p-4">
      <Card className="max-w-md w-full shadow-lg border-amber-200 dark:border-amber-800">
        <CardHeader className="text-center pb-2">
          <div className="mx-auto mb-4 h-14 w-14 rounded-full bg-amber-100 dark:bg-amber-900/50 flex items-center justify-center">
            <AlertTriangle className="h-7 w-7 text-amber-600 dark:text-amber-400" />
          </div>
          <CardTitle className="text-2xl">Account Expired</CardTitle>
          <CardDescription className="text-base">
            Your subscription has expired. Renew to regain full access.
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-4 pt-4">
          <p className="text-sm text-muted-foreground text-center">
            You still have limited access to your profile, but most features are locked until you renew.
          </p>
          <div className="flex flex-col gap-2">
            <Link href="/subscription" className="w-full">
            <Button className="w-full gap-2">
              <RefreshCcw className="h-4 w-4" />
              Renew Subscription
            </Button>
          </Link>
          <Link href="/dashboard" className="w-full">
            <Button variant="outline" className="w-full">Go to Dashboard</Button>
          </Link>
          </div>
        </CardContent>
      </Card>
    </div>
  )
}
