-- Add reflexive_pronoun_case column to german_verbs
ALTER TABLE german_verbs 
ADD COLUMN IF NOT EXISTS reflexive_pronoun_case TEXT CHECK (reflexive_pronoun_case IN ('akkusativ', 'dativ', 'both'));

-- Add comment
COMMENT ON COLUMN german_verbs.reflexive_pronoun_case IS 'Case of the reflexive pronoun: akkusativ (mich/dich/sich), dativ (mir/dir/sich), or both (different meanings)';

-- Create index for filtering
CREATE INDEX IF NOT EXISTS idx_german_verbs_reflexive_pronoun_case ON german_verbs(reflexive_pronoun_case);