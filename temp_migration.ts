import { createClient } from '@supabase/supabase-js';

const supabase = createClient(
  'https://solksyxdlmjtthhuhacj.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNvbGtzeXhkbG1qdHRoaHVoYWNqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc4Mzc3MzUzMiwiZXhwIjoyMDk5MzQ5NTMyfQ.vNC4FiBYCqK9A9JDCN22P92w3yxMWyCyEvDAOkIRN1E'
);

async function main() {
  const sql = `
    ALTER TABLE german_verbs 
    ADD COLUMN IF NOT EXISTS reflexive_pronoun_case TEXT CHECK (reflexive_pronoun_case IN ('akkusativ', 'dativ', 'both'));

    COMMENT ON COLUMN german_verbs.reflexive_pronoun_case IS 'Case of the reflexive pronoun: akkusativ (mich/dich/sich), dativ (mir/dir/sich), or both (different meanings)';

    CREATE INDEX IF NOT EXISTS idx_german_verbs_reflexive_pronoun_case ON german_verbs(reflexive_pronoun_case);
  `;
  
  const { data, error } = await supabase.rpc('exec_sql', { sql });
  console.log('Data:', data);
  console.log('Error:', error);
}

main();