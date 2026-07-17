<!-- BEGIN:nextjs-agent-rules -->
# This is NOT the Next.js you know

This version has breaking changes — APIs, conventions, and file structure may all differ from your training data. Read the relevant guide in `node_modules/next/dist/docs/` before writing any code. Heed deprecation notices.
<!-- END:nextjs-agent-rules -->

## Curriculum Data Restored (Jul 2026)

The full A1-C2 curriculum was restored after seeds had `\'` escaping bugs. All 15 tables are populated and accessible via anon key.

### Final counts
- **6 levels, 47 modules, 273 lessons**
- lesson_vocabulary: 1958, lesson_grammar: 200, lesson_exercises: 1434, lesson_test_questions: 1670
- Premium: 273/273 for expressions/flashcards/homework/reviews/writing/conversations/ai_challenges, 546 speaking
- RLS: public SELECT on all 15 tables

### Key files
- `supabase/seeds/_restore_module1.sql` — A1 Module 1 with hardcoded UUIDs
- `supabase/seeds/seed_a1.sql` — modified (hardcoded module UUIDs, `\'`→`''`)
- `supabase/seeds/_fill_premium.sql` — cursor-based DO block for premium content
- `scripts/_apply_premium.mjs` — dynamic UUID mapping for premium seeds

### DB schema quirks
- `lesson_type` CHECK: limited values
- `lesson_ai_challenges.difficulty`: `'easy'/'medium'/'hard'`
- `lesson_conversations.difficulty`: `'beginner'/'intermediate'/'advanced'`
- `course_lessons` lacks `has_flashcards`/`has_grammar`
- `exam_prep_modules` uses different column set than generator
- Supabase JS client defaults to 1000-row limit (use `.range()` for pagination)

### Anon key
`eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODM3NzM1MzIsImV4cCI6MjA5OTM0OTUzMn0.xrjZ93c6VKRBJp1gMb7jkBB0t8VbjlITmfRIaHWSGzU`

## RBAC System (Enterprise Admin)

### Tables (migration 00036)
- `roles` — System + custom roles (slug-based)
- `permissions` — 138 granular permissions across 30 categories
- `role_permissions` — Many-to-many role<->permission mapping
- `invitations` — 7-day expiry invitation tokens
- `audit_logs` — Full audit trail with old/new values, IP, user-agent

### Profiles additions
- `role_id` (FK→roles) — NULL = student, non-NULL = admin
- `is_owner` (boolean) — Exactly one Platform Owner

### Roles (pre-seeded)
| Slug | Perms | Description |
|------|-------|-------------|
| `owner` | 138 | Full access, bypasses all checks |
| `super-admin` | 120 | All except owner-only actions |
| `admin` | 109 | Day-to-day operations |
| `editor` | 43 | Content management |
| `support` | 10 | User management, basic read |

### Security rules (hard-coded in DB)
- Owner: bypasses permission checks entirely (`check_permission` returns true)
- Owner cannot be deleted, downgraded, or modified by other admins
- System roles cannot be deleted or renamed
- Only owner can create/edit/delete roles, manage staff, create invitations
- All admin routes protected by backend middleware (`isAdminUser` check)

### Key server-side files
- `src/lib/rbac/permissions.ts` — checkPermission, isAdminUser, isOwner, requireOwner
- `src/lib/rbac/audit.ts` — logAudit with IP/user-agent capture
- `src/lib/rbac/middleware.ts` — requireAdmin, requirePermission, requireOwner middleware wrappers
- `src/stores/admin-store.ts` — Client-side store with hasPermission, cached per user

### Owner setup
```bash
OWNER_EMAIL=admin@example.com OWNER_PASSWORD=secure node scripts/setup-owner.mjs
```

### Debug endpoint
`GET /api/debug` — Returns user, profile, role, permissions, admin status
