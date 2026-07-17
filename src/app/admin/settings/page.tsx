'use client'

import { useEffect } from 'react'
import { useRouter } from 'next/navigation'
import { useAdminStore } from '@/stores/admin-store'
import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Settings, Shield, Key, Bell } from 'lucide-react'

export default function AdminSettingsPage() {
  const { hasPermission, loaded, isAdminUser } = useAdminStore()
  const router = useRouter()

  useEffect(() => {
    if (loaded && !isAdminUser) router.push('/admin')
  }, [loaded, isAdminUser])

  return (
    <AppShell>
      <div className="space-y-6 p-6">
        <div>
          <h1 className="text-2xl font-bold">Einstellungen</h1>
          <p className="text-muted-foreground">Plattform-Konfiguration</p>
        </div>

        <div className="grid gap-4 md:grid-cols-2">
          {hasPermission('settings.view') && (
            <Card>
              <CardHeader>
                <div className="flex items-center gap-2">
                  <Settings className="h-5 w-5 text-primary" />
                  <CardTitle className="text-base">Allgemein</CardTitle>
                </div>
                <CardDescription>Plattform-Name, Sprache, Zeitzone</CardDescription>
              </CardHeader>
              <CardContent>
                <Button variant="outline" size="sm" disabled>Konfigurieren</Button>
              </CardContent>
            </Card>
          )}

          {hasPermission('security.view') && (
            <Card>
              <CardHeader>
                <div className="flex items-center gap-2">
                  <Shield className="h-5 w-5 text-primary" />
                  <CardTitle className="text-base">Sicherheit</CardTitle>
                </div>
                <CardDescription>Passwort-Richtlinien, 2FA, Session-Management</CardDescription>
              </CardHeader>
              <CardContent>
                <Button variant="outline" size="sm" disabled>Konfigurieren</Button>
              </CardContent>
            </Card>
          )}

          {hasPermission('api_keys.view') && (
            <Card>
              <CardHeader>
                <div className="flex items-center gap-2">
                  <Key className="h-5 w-5 text-primary" />
                  <CardTitle className="text-base">API-Schlüssel</CardTitle>
                </div>
                <CardDescription>Verwalte API-Schlüssel für Integrationen</CardDescription>
              </CardHeader>
              <CardContent>
                <Button variant="outline" size="sm" disabled>Verwalten</Button>
              </CardContent>
            </Card>
          )}

          {hasPermission('notifications.view') && (
            <Card>
              <CardHeader>
                <div className="flex items-center gap-2">
                  <Bell className="h-5 w-5 text-primary" />
                  <CardTitle className="text-base">Benachrichtigungen</CardTitle>
                </div>
                <CardDescription>E-Mail-Benachrichtigungen und System-Mitteilungen</CardDescription>
              </CardHeader>
              <CardContent>
                <Button variant="outline" size="sm" disabled>Konfigurieren</Button>
              </CardContent>
            </Card>
          )}
        </div>
      </div>
    </AppShell>
  )
}
