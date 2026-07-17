/**
 * Setup Platform Owner from environment variables.
 *
 * Reads OWNER_EMAIL and OWNER_PASSWORD from .env.local or environment.
 * Creates/updates the auth user, confirms email, assigns Platform Owner role.
 *
 * Usage:
 *   node scripts/setup-owner.mjs
 *
 * Required env vars:
 *   OWNER_EMAIL
 *   OWNER_PASSWORD
 *   SUPABASE_SERVICE_ROLE_KEY
 *   SUPABASE_ACCESS_TOKEN
 *   SUPABASE_PROJECT_REF
 */

import { readFileSync, existsSync } from 'fs'
import { resolve } from 'path'

const envPath = resolve(import.meta.dirname, '..', '.env.local')
if (existsSync(envPath)) {
  const lines = readFileSync(envPath, 'utf-8').split('\n')
  for (const line of lines) {
    const trimmed = line.trim()
    if (!trimmed || trimmed.startsWith('#')) continue
    const eqIdx = trimmed.indexOf('=')
    if (eqIdx === -1) continue
    process.env[trimmed.slice(0, eqIdx).trim()] = trimmed.slice(eqIdx + 1).trim()
  }
}

const OWNER_EMAIL = process.env.OWNER_EMAIL
const OWNER_PASSWORD = process.env.OWNER_PASSWORD
const SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY
const MGMT_TOKEN = process.env.SUPABASE_ACCESS_TOKEN
const PROJECT_REF = process.env.SUPABASE_PROJECT_REF
const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL

if (!OWNER_EMAIL || !OWNER_PASSWORD) {
  console.error('ERROR: OWNER_EMAIL and OWNER_PASSWORD must be set')
  console.error('Add them to .env.local or set as environment variables')
  process.exit(1)
}
if (!SERVICE_KEY || !MGMT_TOKEN || !PROJECT_REF) {
  console.error('ERROR: SUPABASE_SERVICE_ROLE_KEY, SUPABASE_ACCESS_TOKEN, and SUPABASE_PROJECT_REF must be set')
  process.exit(1)
}

let stepCount = 0
const step = (msg) => console.log(`\n${++stepCount}. ${msg}`)
const ok = (msg) => console.log(`   \u2713 ${msg}`)
const fail = (msg) => { console.error(`   \u2717 ${msg}`); process.exit(1) }

async function sql(query) {
  const res = await fetch(
    `https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`,
    {
      method: 'POST',
      headers: {
        Authorization: `Bearer ${MGMT_TOKEN}`,
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ query }),
    }
  )
  if (!res.ok) {
    const err = await res.text()
    throw new Error(`SQL error: ${res.status} ${err}`)
  }
  return res.json()
}

async function authFetch(path, options = {}) {
  const url = `https://${PROJECT_REF}.supabase.co/auth/v1${path}`
  const res = await fetch(url, {
    ...options,
    headers: {
      apikey: SERVICE_KEY,
      Authorization: `Bearer ${SERVICE_KEY}`,
      'Content-Type': 'application/json',
      ...options.headers,
    },
  })
  if (!res.ok) {
    const err = await res.text()
    throw new Error(`Auth API error: ${res.status} ${err}`)
  }
  return res.json()
}

async function main() {
  // ── Step 1: Check / Create auth user ──
  step('Checking auth user...')
  let userId

  const existing = await sql(`SELECT id, email, email_confirmed_at FROM auth.users WHERE email = '${OWNER_EMAIL}'`)

  if (existing && existing.length > 0) {
    userId = existing[0].id
    ok(`User exists: ${OWNER_EMAIL} (${userId})`)

    if (!existing[0].email_confirmed_at) {
      step('Confirming email...')
      try {
        await authFetch(`/admin/users/${userId}`, {
          method: 'PUT',
          body: JSON.stringify({ email_confirm: true }),
        })
        ok('Email confirmed')
      } catch (e) {
        fail(`Could not confirm email: ${e.message}`)
      }
    } else {
      ok('Email already confirmed')
    }
  } else {
    step('Creating auth user...')
    try {
      const newUser = await authFetch('/admin/users', {
        method: 'POST',
        body: JSON.stringify({
          email: OWNER_EMAIL,
          password: OWNER_PASSWORD,
          email_confirm: true,
          user_metadata: { full_name: 'Platform Owner' },
        }),
      })
      userId = newUser.id
      ok(`User created: ${OWNER_EMAIL} (${userId})`)
    } catch (e) {
      fail(`Create user failed: ${e.message}`)
    }
  }

  // ── Step 2: Get owner role ID ──
  step('Getting Platform Owner role...')
  const roleRows = await sql(`SELECT id FROM public.roles WHERE slug = 'owner'`)
  if (!roleRows || roleRows.length === 0) fail('Owner role not found. Run migrations first.')
  const ownerRoleId = roleRows[0].id
  ok(`Owner role ID: ${ownerRoleId}`)

  // ── Step 3: Create profile if missing ──
  step('Checking profile...')
  const profileRows = await sql(`SELECT id FROM public.profiles WHERE user_id = '${userId}'`)
  if (!profileRows || profileRows.length === 0) {
    step('Creating profile...')
    await sql(`INSERT INTO public.profiles (user_id, email, role, role_id, is_owner) VALUES ('${userId}', '${OWNER_EMAIL}', 'owner', '${ownerRoleId}', true)`)
    ok('Profile created')
  } else {
    ok('Profile exists')
  }

  // ── Step 4: Assign role and set is_owner ──
  step('Assigning Platform Owner role...')
  await sql(`UPDATE public.profiles SET role_id = '${ownerRoleId}', is_owner = true, role = 'owner', updated_at = now() WHERE user_id = '${userId}'`)
  ok('Role = Platform Owner, is_owner = true')

  // ── Step 5: Verify everything ──
  step('Verifying setup...')
  const verify = await sql(`
    SELECT
      p.user_id,
      p.email,
      r.name as role_name,
      r.slug as role_slug,
      p.is_owner,
      (SELECT count(*) FROM public.role_permissions rp WHERE rp.role_id = p.role_id) as permissions_count
    FROM public.profiles p
    JOIN public.roles r ON r.id = p.role_id
    WHERE p.user_id = '${userId}'
  `)

  if (!verify || verify.length === 0) fail('Verification failed')

  const v = verify[0]
  ok(`Email: ${v.email}`)
  ok(`Role: ${v.role_name} (${v.role_slug})`)
  ok(`Is Owner: ${v.is_owner}`)
  ok(`Permissions: ${v.permissions_count}`)

  // ── Step 6: Test permission check ──
  step('Testing permission check...')
  const test = await sql(`SELECT public.check_permission('${userId}', 'dashboard.view') as result`)
  const canView = test && test[0] && test[0].result === true
  if (canView) ok('Owner bypass works — ALL ACCESS')
  else fail('Permission check failed')

  console.log(`\n${'='.repeat(50)}`)
  console.log('  Owner setup completed')
  console.log(`${'='.repeat(50)}`)
  console.log(`  Email:       ${v.email}`)
  console.log(`  Role:        ${v.role_name}`)
  console.log(`  Owner:       ${v.is_owner}`)
  console.log(`  Permissions: ${v.permissions_count}`)
  console.log(`  Admin:       enabled`)
  console.log(`${'='.repeat(50)}`)
}

main().catch((err) => {
  console.error(`\nFATAL: ${err.message}`)
  process.exit(1)
})
