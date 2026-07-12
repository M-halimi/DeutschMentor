'use client'

import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Input } from '@/components/ui/input'
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from '@/components/ui/table'
import { Search, Shield, MoreHorizontal } from 'lucide-react'

const users = [
  { id: '1', name: 'John Smith', email: 'john@example.com', role: 'student', level: 'B1', joined: '2024-01-10', status: 'active' },
  { id: '2', name: 'Maria Garcia', email: 'maria@example.com', role: 'student', level: 'A2', joined: '2024-01-12', status: 'active' },
  { id: '3', name: 'Dr. Anna Weber', email: 'anna@example.com', role: 'teacher', level: 'C1', joined: '2024-01-05', status: 'active' },
  { id: '4', name: 'Admin User', email: 'admin@deutschmentor.com', role: 'admin', level: 'C1', joined: '2024-01-01', status: 'active' },
]

export default function AdminUsersPage() {
  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <Shield className="h-6 w-6 text-primary" />
            <h1 className="text-2xl font-bold">Manage Users</h1>
          </div>
          <Button>Invite User</Button>
        </div>

        <div className="relative">
          <Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" />
          <Input placeholder="Search users..." className="pl-10" />
        </div>

        <Card>
          <CardHeader className="p-0">
            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead>Name</TableHead>
                  <TableHead>Email</TableHead>
                  <TableHead>Role</TableHead>
                  <TableHead>Level</TableHead>
                  <TableHead>Joined</TableHead>
                  <TableHead>Status</TableHead>
                  <TableHead></TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {users.map((user) => (
                  <TableRow key={user.id}>
                    <TableCell className="font-medium">{user.name}</TableCell>
                    <TableCell>{user.email}</TableCell>
                    <TableCell>
                      <Badge variant={user.role === 'admin' ? 'default' : user.role === 'teacher' ? 'secondary' : 'outline'}>
                        {user.role}
                      </Badge>
                    </TableCell>
                    <TableCell>{user.level}</TableCell>
                    <TableCell>{user.joined}</TableCell>
                    <TableCell>
                      <Badge variant="outline" className="text-emerald-500 border-emerald-500">{user.status}</Badge>
                    </TableCell>
                    <TableCell>
                      <Button variant="ghost" size="icon"><MoreHorizontal className="h-4 w-4" /></Button>
                    </TableCell>
                  </TableRow>
                ))}
              </TableBody>
            </Table>
          </CardHeader>
        </Card>
      </div>
    </AppShell>
  )
}
