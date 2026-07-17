# Vocabulary Expansion Pipeline

## Files
- `generate.mjs` — AI-powered vocabulary generator (OpenAI / OpenRouter)
- `categories.ts` — CEFR level targets and category distribution  
- `extract-existing.ts` — Existing word extraction (referenced from generate.mjs)
- Migration: `supabase/migrations/00030_vocabulary_master_columns.sql`

## How to Run

### 1. Apply the migration first
Run the migration to add missing columns to `public.vocabulary`:
```sql
-- In Supabase SQL editor or via migration tool
```

### 2. Generate vocabulary by CEFR level
```bash
# Single level (fast ~5-10 min)
export OPENAI_API_KEY="sk-..."
node scripts/vocab/generate.mjs --levels=A1

# All levels (will take ~1-2 hours)
node scripts/vocab/generate.mjs

# Resume from previous run (appends to output)
node scripts/vocab/generate.mjs --resume

# Level-specific with resume
node scripts/vocab/generate.mjs --levels=B1,B2 --resume
```

### 3. Result
Output goes to `supabase/seeds/vocabulary_expansion.sql`.
Each run appends new INSERT statements if using `--resume`.

### 4. Deploy
Run the output SQL against the Supabase database (via SQL editor or `supabase db execute`).

## Architecture
- Extracts all existing words from seed files on startup (~4,351 detected)
- For each CEFR level + category, calls OpenAI to generate batch of words
- Filters out any duplicates against existing word set
- Generates SQL with all required fields (IPA, translations, examples, synonyms, etc.)
- Total config: 6 levels × ~20 categories × ~16 words = ~10,000 target
