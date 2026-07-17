/**
 * Seed roles, permissions, plans, and plan_features.
 *
 * Usage:
 *   node scripts/seed-subscriptions.mjs
 */

const SUPABASE_URL = 'https://solksyxdlmjtthhuhacj.supabase.co'
const SERVICE_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E'
const MGMT_TOKEN = process.env.SUPABASE_MGMT_TOKEN
const PROJECT_REF = process.env.SUPABASE_PROJECT_REF || 'solksyxdlmjtthhuhacj'

import { readFileSync } from 'fs'
import { resolve, dirname } from 'path'
import { fileURLToPath } from 'url'
const __dirname = dirname(fileURLToPath(import.meta.url))

const headers = { 'Content-Type': 'application/json', 'apikey': SERVICE_KEY, 'Authorization': `Bearer ${SERVICE_KEY}` }

async function upsert(table, data, conflictCol = 'name') {
  const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}`, {
    method: 'POST',
    headers: { ...headers, 'Prefer': `resolution=merge-duplicates` },
    body: JSON.stringify(data),
  })
  if (!res.ok) {
    const err = await res.text()
    if (!err.includes('duplicate') && !err.includes('already exists')) {
      console.error(`  Error ${table}:`, err.slice(0, 150))
    }
  }
}

async function main() {
  // Apply migration
  console.log('=== Applying migration ===')
  const migration = readFileSync(resolve(__dirname, '../supabase/migrations/00032_subscription_system.sql'), 'utf-8')
  const mgmtRes = await fetch(`https://api.supabase.com/v1/projects/${PROJECT_REF}/database/query`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json', 'Authorization': `Bearer ${MGMT_TOKEN}` },
    body: JSON.stringify({ query: migration }),
  })
  if (!mgmtRes.ok) {
    const err = await mgmtRes.text()
    if (err.includes('already exists')) console.log('  Migration already applied')
    else console.log('  Migration note:', err.slice(0, 200))
  } else {
    console.log('  Migration applied')
  }

  // Seed roles
  console.log('\n=== Seeding roles ===')
  const roles = [
    { name: 'super_admin', description: 'Full system access', is_system: true },
    { name: 'admin', description: 'Administrative access', is_system: true },
    { name: 'teacher', description: 'Can create and manage courses', is_system: true },
    { name: 'content_manager', description: 'Manages vocabulary, grammar, exercises', is_system: true },
    { name: 'support', description: 'Can manage users and subscriptions', is_system: true },
    { name: 'student', description: 'Standard learner', is_system: true },
  ]
  for (const r of roles) await upsert('roles', r)
  console.log(`  ${roles.length} roles seeded`)

  // Seed permissions
  console.log('\n=== Seeding permissions ===')
  const permissions = [
    { code: 'users.view', name: 'View Users', category: 'users' },
    { code: 'users.create', name: 'Create Users', category: 'users' },
    { code: 'users.edit', name: 'Edit Users', category: 'users' },
    { code: 'users.delete', name: 'Delete Users', category: 'users' },
    { code: 'users.manage_roles', name: 'Manage User Roles', category: 'users' },
    { code: 'courses.view', name: 'View Courses', category: 'courses' },
    { code: 'courses.create', name: 'Create Courses', category: 'courses' },
    { code: 'courses.edit', name: 'Edit Courses', category: 'courses' },
    { code: 'courses.delete', name: 'Delete Courses', category: 'courses' },
    { code: 'lessons.view', name: 'View Lessons', category: 'lessons' },
    { code: 'lessons.create', name: 'Create Lessons', category: 'lessons' },
    { code: 'lessons.edit', name: 'Edit Lessons', category: 'lessons' },
    { code: 'lessons.delete', name: 'Delete Lessons', category: 'lessons' },
    { code: 'vocabulary.view', name: 'View Vocabulary', category: 'vocabulary' },
    { code: 'vocabulary.create', name: 'Create Vocabulary', category: 'vocabulary' },
    { code: 'vocabulary.edit', name: 'Edit Vocabulary', category: 'vocabulary' },
    { code: 'vocabulary.delete', name: 'Delete Vocabulary', category: 'vocabulary' },
    { code: 'grammar.view', name: 'View Grammar', category: 'grammar' },
    { code: 'grammar.create', name: 'Create Grammar', category: 'grammar' },
    { code: 'grammar.edit', name: 'Edit Grammar', category: 'grammar' },
    { code: 'grammar.delete', name: 'Delete Grammar', category: 'grammar' },
    { code: 'exams.view', name: 'View Exams', category: 'exams' },
    { code: 'exams.create', name: 'Create Exams', category: 'exams' },
    { code: 'exams.edit', name: 'Edit Exams', category: 'exams' },
    { code: 'exams.delete', name: 'Delete Exams', category: 'exams' },
    { code: 'certificates.view', name: 'View Certificates', category: 'certificates' },
    { code: 'certificates.issue', name: 'Issue Certificates', category: 'certificates' },
    { code: 'subscriptions.view', name: 'View Subscriptions', category: 'subscriptions' },
    { code: 'subscriptions.manage', name: 'Manage Subscriptions', category: 'subscriptions' },
    { code: 'subscriptions.edit', name: 'Edit Subscriptions', category: 'subscriptions' },
    { code: 'plans.view', name: 'View Plans', category: 'plans' },
    { code: 'plans.edit', name: 'Edit Plans', category: 'plans' },
    { code: 'settings.view', name: 'View Settings', category: 'settings' },
    { code: 'settings.edit', name: 'Edit Settings', category: 'settings' },
    { code: 'analytics.view', name: 'View Analytics', category: 'analytics' },
    { code: 'roles.manage', name: 'Manage Roles', category: 'roles' },
    { code: 'payments.view', name: 'View Payments', category: 'payments' },
    { code: 'payments.manage', name: 'Manage Payments', category: 'payments' },
    { code: 'content.view', name: 'View Content', category: 'content' },
    { code: 'content.manage', name: 'Manage Content', category: 'content' },
  ]
  for (const p of permissions) await upsert('permissions', p, 'code')
  console.log(`  ${permissions.length} permissions seeded`)

  // Seed plans
  console.log('\n=== Seeding plans ===')
  const plans = [
    { name: 'free', description: 'Basic access with limited features', price_monthly: 0, price_yearly: 0, sort_order: 1, is_public: true },
    { name: 'basic', description: 'Essential learning tools', price_monthly: 9.99, price_yearly: 99.99, sort_order: 2, is_public: true },
    { name: 'premium', description: 'Full access to all features', price_monthly: 14.99, price_yearly: 149.99, sort_order: 3, is_public: true },
    { name: 'pro', description: 'Advanced features for serious learners', price_monthly: 29.99, price_yearly: 299.99, sort_order: 4, is_public: true },
    { name: 'enterprise', description: 'Custom solutions for institutions', price_monthly: 0, price_yearly: 0, sort_order: 5, is_public: false },
    { name: 'lifetime', description: 'Lifetime access to Premium', price_monthly: 0, price_yearly: 0, sort_order: 6, is_public: true },
  ]
  for (const p of plans) await upsert('plans', p)
  console.log(`  ${plans.length} plans seeded`)

  // Seed plan features
  console.log('\n=== Seeding plan features ===')
  const features = {
    free: [
      { feature_key: 'max_courses', feature_value: '3' },
      { feature_key: 'max_certificates', feature_value: '0' },
      { feature_key: 'ai_features', feature_value: 'false' },
      { feature_key: 'downloads', feature_value: 'false' },
      { feature_key: 'offline_mode', feature_value: 'false' },
      { feature_key: 'exercises_per_day', feature_value: '10' },
      { feature_key: 'exams', feature_value: '1' },
      { feature_key: 'vocabulary_limit', feature_value: '500' },
      { feature_key: 'storage_mb', feature_value: '50' },
      { feature_key: 'api_access', feature_value: 'false' },
      { feature_key: 'grammar_exercises', feature_value: 'true' },
      { feature_key: 'pronunciation', feature_value: 'false' },
    ],
    basic: [
      { feature_key: 'max_courses', feature_value: '10' },
      { feature_key: 'max_certificates', feature_value: '3' },
      { feature_key: 'ai_features', feature_value: 'limited' },
      { feature_key: 'downloads', feature_value: 'true' },
      { feature_key: 'offline_mode', feature_value: 'false' },
      { feature_key: 'exercises_per_day', feature_value: '50' },
      { feature_key: 'exams', feature_value: '5' },
      { feature_key: 'vocabulary_limit', feature_value: '2000' },
      { feature_key: 'storage_mb', feature_value: '200' },
      { feature_key: 'api_access', feature_value: 'false' },
      { feature_key: 'grammar_exercises', feature_value: 'true' },
      { feature_key: 'pronunciation', feature_value: 'true' },
    ],
    premium: [
      { feature_key: 'max_courses', feature_value: 'unlimited' },
      { feature_key: 'max_certificates', feature_value: '10' },
      { feature_key: 'ai_features', feature_value: 'true' },
      { feature_key: 'downloads', feature_value: 'true' },
      { feature_key: 'offline_mode', feature_value: 'true' },
      { feature_key: 'exercises_per_day', feature_value: 'unlimited' },
      { feature_key: 'exams', feature_value: 'unlimited' },
      { feature_key: 'vocabulary_limit', feature_value: '10000' },
      { feature_key: 'storage_mb', feature_value: '1000' },
      { feature_key: 'api_access', feature_value: 'true' },
      { feature_key: 'grammar_exercises', feature_value: 'true' },
      { feature_key: 'pronunciation', feature_value: 'true' },
    ],
    pro: [
      { feature_key: 'max_courses', feature_value: 'unlimited' },
      { feature_key: 'max_certificates', feature_value: 'unlimited' },
      { feature_key: 'ai_features', feature_value: 'true' },
      { feature_key: 'downloads', feature_value: 'true' },
      { feature_key: 'offline_mode', feature_value: 'true' },
      { feature_key: 'exercises_per_day', feature_value: 'unlimited' },
      { feature_key: 'exams', feature_value: 'unlimited' },
      { feature_key: 'vocabulary_limit', feature_value: 'unlimited' },
      { feature_key: 'storage_mb', feature_value: '5000' },
      { feature_key: 'api_access', feature_value: 'true' },
      { feature_key: 'grammar_exercises', feature_value: 'true' },
      { feature_key: 'pronunciation', feature_value: 'true' },
      { feature_key: 'priority_support', feature_value: 'true' },
      { feature_key: 'custom_content', feature_value: 'true' },
    ],
    enterprise: [
      { feature_key: 'max_courses', feature_value: 'unlimited' },
      { feature_key: 'max_certificates', feature_value: 'unlimited' },
      { feature_key: 'ai_features', feature_value: 'true' },
      { feature_key: 'downloads', feature_value: 'true' },
      { feature_key: 'offline_mode', feature_value: 'true' },
      { feature_key: 'exercises_per_day', feature_value: 'unlimited' },
      { feature_key: 'exams', feature_value: 'unlimited' },
      { feature_key: 'vocabulary_limit', feature_value: 'unlimited' },
      { feature_key: 'storage_mb', feature_value: 'unlimited' },
      { feature_key: 'api_access', feature_value: 'true' },
      { feature_key: 'grammar_exercises', feature_value: 'true' },
      { feature_key: 'pronunciation', feature_value: 'true' },
      { feature_key: 'priority_support', feature_value: 'true' },
      { feature_key: 'custom_content', feature_value: 'true' },
      { feature_key: 'white_label', feature_value: 'true' },
      { feature_key: 'dedicated_support', feature_value: 'true' },
    ],
    lifetime: [
      { feature_key: 'max_courses', feature_value: 'unlimited' },
      { feature_key: 'max_certificates', feature_value: 'unlimited' },
      { feature_key: 'ai_features', feature_value: 'true' },
      { feature_key: 'downloads', feature_value: 'true' },
      { feature_key: 'offline_mode', feature_value: 'true' },
      { feature_key: 'exercises_per_day', feature_value: 'unlimited' },
      { feature_key: 'exams', feature_value: 'unlimited' },
      { feature_key: 'vocabulary_limit', feature_value: 'unlimited' },
      { feature_key: 'storage_mb', feature_value: 'unlimited' },
      { feature_key: 'api_access', feature_value: 'true' },
      { feature_key: 'grammar_exercises', feature_value: 'true' },
      { feature_key: 'pronunciation', feature_value: 'true' },
    ],
  }

  // Get plan IDs
  const plansRes = await fetch(`${SUPABASE_URL}/rest/v1/plans?select=id,name`, { headers })
  const planData = await plansRes.json()
  const planMap = Object.fromEntries(planData.map(p => [p.name, p.id]))

  for (const [planName, planFeatures] of Object.entries(features)) {
    const planId = planMap[planName]
    if (!planId) { console.error(`  Plan ${planName} not found`); continue }
    for (const f of planFeatures) {
      await upsert('plan_features', { plan_id: planId, ...f }, 'plan_id')
    }
    console.log(`  ${planName}: ${planFeatures.length} features`)
  }

  console.log('\n=== Done ===')
  console.log('Subscription system is ready.')
}

main().catch(e => console.error(e))
