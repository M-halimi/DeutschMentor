'use client'

import Link from 'next/link'
import { ShieldAlert, Mail } from 'lucide-react'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'

export default function AccountSuspendedPage() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-gradient-to-b from-red-50 to-rose-50 dark:from-red-950/20 dark:to-rose-950/20 p-4">
      <Card className="max-w-md w-full shadow-lg border-red-200 dark:border-red-800">
        <CardHeader className="text-center pb-2">
          <div className="mx-auto mb-4 h-14 w-14 rounded-full bg-red-100 dark:bg-red-900/50 flex items-center justify-center">
            <ShieldAlert className="h-7 w-7 text-red-600 dark:text-red-400" />
          </div>
          <CardTitle className="text-2xl">Account Suspended</CardTitle>
          <CardDescription className="text-base">
            Your account has been temporarily suspended.
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-4 pt-4">
          <p className="text-sm text-muted-foreground text-center">
            If you believe this is a mistake, please contact our support team.
          </p>
          <div className="flex flex-col gap-2">
            <a href="mailto:support@deutschmentor.app" className="w-full">
            <Button className="w-full gap-2">
              <Mail className="h-4 w-4" />
              Contact Support
            </Button>
          </a>
          <Link href="/login" className="w-full">
            <Button variant="outline" className="w-full">Back to Login</Button>
          </Link>
          </div>
        </CardContent>
      </Card>
    </div>
  )
}
