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

## Audio System (Female German TTS)

### Voice config
- **Primary**: Google Translate TTS (`translate.googleapis.com/translate_tts`, lang=`de`) — free, no API key, female voice
- **Fallback**: OpenAI TTS (`nova` voice, female)
- **Audio version**: `female-german-v2`

### State (Jul 2026)
- `audio_lessons` table: 42 records, all with `audio_url` and `audio_version='female-german-v2'`
- Storage bucket `audio-content` exists but upload fails from this env (service role JWT key → "signature verification failed" for object uploads)
- 39 lessons use embedded data URLs, 3 use storage URLs (pre-existing)
- All transcripts, grammar_involved, vocabulary_involved populated

### AudioGuard (do NOT delete)
**Any record in `audio_lessons` where `audio_version = 'female-german-v2'` has active audio. Never delete, nullify, or overwrite `audio_url` for these records.** Only regenerate when the version changes (e.g., `female-german-v3`).

### Management API approach
The service role JWT key fails for REST/storage calls from this environment. Use the Supabase Management API for DB operations:
```
POST https://api.supabase.com/v1/projects/{ref}/database/query
Authorization: Bearer supabase_mgmt_token_here
Body: {"query": "SQL_STATEMENT"}
```

### Key file
- `scripts/restore-audio.mjs` — Full restoration using Management API SQL + Google TTS + data URL fallback
- `src/lib/ai/google-tts.ts` — Google TTS implementation
- `src/lib/ai/tts-upgrade.ts` — TTS orchestration, AUDIO_VERSION constant
- `supabase/migrations/00055_audio_versioning.sql` — Adds audio_version column, generated_audio cache table

## Verb Quality Control Management (Jul 2026)

### Migration 00056 tables (audit metadata — does NOT touch german_verbs)
- `verb_quality_findings` — Detailed findings: verb_id, category, field_name, current_value, expected_value, explanation, example_wrong, example_correct, source_reference, severity, confidence, status
- `verb_quality_actions` — Action log (approve/reject/false_positive/manual_edit) per finding
- `verb_quality_approvals` — Owner approval queue (status: pending/approved/rejected)
- `verb_quality_summary` — Per-verb cached quality score (0-100), issue counts, audit_status

### Design rules
- **Never auto-fix production data.** Approve creates an owner approval request (`verb_quality_approvals`). Only the owner's `POST /api/admin/verbs/quality/approve` actually writes to `german_verbs`.
- Every finding has: wrong example, correct example, grammar explanation, and source reference so the owner can make an informed decision.

### Finding categories
`separable_conjugation` | `auxiliary_mismatch` | `reflexive_pronoun` | `conjugation_gap` | `slug_inconsistency` | `partizip_2` | `verb_type` | `transitivity` | `preposition` | `duplicate_verb`

### Finding statuses
`open` → `approved` (via owner), `rejected`, `false_positive`, `manual_edit` — or back to `open` via reopen.

### Quality engine
- `src/lib/verbs/quality-engine.ts` — `runQualityAudit(verbId?)` scans verbs, produces detailed `QualityFindingInput[]`. `persistQualityFindings()` deduplicates against open findings. `refreshQualitySummaries()` recomputes quality scores.
- Scoring: error=-15, warning=-5, info=-1. Min 0, max 100.

### Admin pages
- `/admin/verbs` — Quality score column (star badge + number + issue count)
- `/admin/verbs/[id]/quality` — Full quality view per verb: all findings with current/expected/examples/explanation/source + approve/reject/false_positive/manual_edit + Run Quality Check button
- `/admin/verbs?sort_by=quality_score&sort_order=asc` — Sort verbs by worst quality first (sidebar link)

### API routes (all protected by isAdminUser)
| Route | Method | Purpose |
|-------|--------|---------|
| `/api/admin/verbs/[id]/quality` | GET | Verb + findings + summary |
| `/api/admin/verbs/quality/findings` | PATCH | Approve/reject/false_positive/manual_edit/reopen |
| `/api/admin/verbs/quality/run` | POST | Trigger quality scan (optionally per verb_id) |
| `/api/admin/verbs/quality/approve` | POST | Owner applies approved change to german_verbs |

### Owner approval flow
1. Admin clicks "Approve" on a finding → `PATCH /api/admin/verbs/quality/findings` creates a `verb_quality_approvals` record (status=pending). Finding stays open.
2. Owner visits quality page → reviews finding → clicks approve → `POST /api/admin/verbs/quality/approve` applies the change to `german_verbs`, logs to `verb_change_history`, marks finding as `approved`.
3. `refreshQualitySummaries()` recalculates quality score after any status change.
