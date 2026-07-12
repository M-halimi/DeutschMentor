'use client'

import { AppShell } from '@/components/layout/app-shell'
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card'
import { Button } from '@/components/ui/button'
import { Badge } from '@/components/ui/badge'
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from '@/components/ui/table'
import { BookOpen, Plus, MoreHorizontal } from 'lucide-react'

const courses = [
  { id: '1', title: 'German A1 Complete', level: 'A1', lessons: 24, students: 45, status: 'published' },
  { id: '2', title: 'German A2 Essentials', level: 'A2', lessons: 20, students: 38, status: 'published' },
  { id: '3', title: 'B1 Business German', level: 'B1', lessons: 18, students: 22, status: 'draft' },
  { id: '4', title: 'Goethe B1 Prep', level: 'B1', lessons: 30, students: 15, status: 'published' },
]

export default function AdminCoursesPage() {
  return (
    <AppShell>
      <div className="space-y-6">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <BookOpen className="h-6 w-6 text-primary" />
            <h1 className="text-2xl font-bold">Manage Courses</h1>
          </div>
          <Button><Plus className="mr-2 h-4 w-4" /> New Course</Button>
        </div>

        <Card>
          <CardHeader className="p-0">
            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead>Title</TableHead>
                  <TableHead>Level</TableHead>
                  <TableHead>Lessons</TableHead>
                  <TableHead>Students</TableHead>
                  <TableHead>Status</TableHead>
                  <TableHead></TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {courses.map((course) => (
                  <TableRow key={course.id}>
                    <TableCell className="font-medium">{course.title}</TableCell>
                    <TableCell><Badge variant="outline">{course.level}</Badge></TableCell>
                    <TableCell>{course.lessons}</TableCell>
                    <TableCell>{course.students}</TableCell>
                    <TableCell>
                      <Badge variant={course.status === 'published' ? 'default' : 'secondary'}>
                        {course.status}
                      </Badge>
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
