import { createClient } from '@supabase/supabase-js';
import { reflexiveVerbMeta } from './verbs/reflexive-audit-final.ts';
import { config } from 'dotenv';

config({ path: '.env.local' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const serviceKey = process.env.SUPABASE_SERVICE_ROLE_KEY!;

if (!supabaseUrl || !serviceKey) {
  console.error('Missing SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY in .env.local');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, serviceKey, {
  auth: { autoRefreshToken: false, persistSession: false },
});

async function main() {
  console.log('=== Updating reflexive verb metadata ===\n');
  
  let updated = 0;
  let failed = 0;
  
  for (const meta of reflexiveVerbMeta) {
    const payload = {
      reflexive_pronoun_case: meta.reflexiveCase,
      object_case: meta.objectCase,
      preposition: meta.requiredPreposition,
      preposition_case: meta.prepositionCase === 'none' ? null : meta.prepositionCase,
      transitivity: meta.transitivity,
    };

    const { error } = await supabase
      .from('german_verbs')
      .update(payload)
      .eq('infinitive', meta.infinitive);

    if (error) {
      console.error(`  ✗ ${meta.infinitive}: ${error.message}`);
      failed++;
    } else {
      console.log(`  ✓ ${meta.infinitive} (reflexive: ${meta.reflexiveCase}, obj: ${meta.objectCase}, prep: ${meta.requiredPreposition || 'none'} + ${meta.prepositionCase})`);
      updated++;
    }
  }

  console.log(`\n=== Summary ===`);
  console.log(`  Updated: ${updated}`);
  console.log(`  Failed: ${failed}`);
}

main().catch(console.error);