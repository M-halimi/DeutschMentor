-- Fix reflexive pronoun placement in Präteritum and Konjunktiv II
-- for separable prefix verbs.
--
-- Bug: pronoun was placed AFTER the prefix (e.g., "stellte ein mich")
-- Fix: pronoun must come BEFORE the prefix  (e.g., "stellte mich ein")
--
-- Root cause: conjugation engine applied separable prefix before
-- reflexive pronoun. Fixed in engine/conjugator.ts.

DO $$
DECLARE
  rec RECORD;
  prefixes text[] := ARRAY['ab', 'an', 'auf', 'aus', 'bei', 'ein', 'mit', 'nach', 'vor', 'zu', 'zurück', 'zusammen', 'weg', 'vorbei', 'her', 'hin', 'entgegen', 'gegenüber', 'fest', 'frei', 'hoch', 'klar', 'los', 'mit', 'nach', 'weiter'];
  p text;
  tense text;
  col text;
  old_val text;
  new_val text;
  pronoun text;
BEGIN
  FOREACH p IN ARRAY prefixes LOOP
    FOREACH tense IN ARRAY ARRAY['praeteritum', 'konjunktiv_ii'] LOOP
      FOREACH col IN ARRAY ARRAY['ich', 'du', 'er_sie_es', 'wir', 'ihr', 'sie'] LOOP
        FOR rec IN
          EXECUTE format('
            SELECT c.id, c.%I AS val, v.separable_prefix
            FROM public.verb_conjugations c
            JOIN public.german_verbs v ON v.id = c.verb_id
            WHERE c.tense = %L
              AND v.is_reflexive = true
              AND v.separable_prefix = %L
              AND c.%I ~ (''^(\\w+)\\s'' || %L || ''\\s(mich|dich|sich|uns|euch|mir|dir)$'')
          ', col, tense, p, col, p)
        LOOP
          -- Parse: "<verb> <prefix> <pronoun>" -> "<verb> <pronoun> <prefix>"
          SELECT regexp_replace(rec.val, '^(\w+) (\S+) (\S+)$', '\1 \3 \2') INTO new_val;
          
          IF new_val != rec.val THEN
            EXECUTE format('UPDATE public.verb_conjugations SET %I = %L WHERE id = %L', col, new_val, rec.id);
            RAISE NOTICE 'Fixed % %: % → %', tense, col, rec.val, new_val;
          END IF;
        END LOOP;
      END LOOP;
    END LOOP;
  END LOOP;
END $$;
