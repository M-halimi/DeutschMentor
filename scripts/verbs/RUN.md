# German Verbs Module Setup

## 1. Apply Migration
Run `supabase/migrations/00031_german_verbs.sql` in the Supabase SQL editor.

## 2. Generate Seed Data (3,500+ verbs)
```bash
export OPENAI_API_KEY="sk-..."
node scripts/verbs/generate.mjs              # All levels (will take several hours)
node scripts/verbs/generate.mjs --levels=A1  # Single level (~15 min)
node scripts/verbs/generate.mjs --dry-run    # Preview counts only
```

## 3. Deploy Seed
Run the generated `supabase/migrations/00032_verbs_seed.sql` in the Supabase SQL editor.

## Architecture
- **9 tables** (normalized): german_verbs, verb_conjugations, verb_examples, verb_collocations, verb_typical_questions, verb_common_mistakes, verb_prefix_explanations, verb_family_members, verb_learning_tips, user_verbs
- **Full-text search** on infinitive, translations, preposition, and tags
- **RLS**: Public read, user-owned user_verbs, admin write
- **API**: `/api/verbs?page=1&cefr_level=A1&verb_type=irregular&search=laufen`
- **Detail**: `/api/verbs/laufen` with all relations joined
- **Pages**: `/dashboard/verbs` (list) and `/dashboard/verbs/[slug]` (detail)
