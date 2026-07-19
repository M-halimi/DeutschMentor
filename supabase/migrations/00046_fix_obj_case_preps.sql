-- Fix object_case and preposition/preposition_case for all 73 reflexive verbs
-- Based on standard German grammar: what ADDITIONAL object (besides the reflexive pronoun) does each verb take?

-- Verbs that take a direct Akkusativ object (e.g. "Ich wünsche mir ein Auto")
UPDATE public.german_verbs
SET object_case = 'akkusativ', transitivity = 'transitive'
WHERE infinitive IN (
  'sich abgewöhnen',
  'sich angewöhnen',
  'sich anziehen',
  'sich ausziehen',
  'sich vornehmen',
  'sich vorstellen',
  'sich wünschen'
);

-- Verb that takes a direct Dativ object (e.g. "sich dem Ziel nähern")
UPDATE public.german_verbs
SET object_case = 'dativ', transitivity = 'transitive'
WHERE infinitive = 'sich nähern';

-- Verbs with preposition auf + Akkusativ
UPDATE public.german_verbs
SET preposition = 'auf', preposition_case = 'akkusativ'
WHERE infinitive IN (
  'sich einigen',
  'sich freuen',       -- sich freuen auf (+Akk) for future events
  'sich konzentrieren',
  'sich verlassen',
  'sich vorbereiten'
);

-- Verbs with preposition über + Akkusativ
UPDATE public.german_verbs
SET preposition = 'über', preposition_case = 'akkusativ'
WHERE infinitive IN (
  'sich ärgern',
  'sich aufregen',
  'sich beklagen',
  'sich beschweren',
  'sich freuen',       -- sich freuen über (+Akk) for past events (duplicate handled by NOT logic)
  'sich informieren',
  'sich täuschen',
  'sich wundern'
);
-- Use COALESCE to handle the sich freuen overlap: if already set by 'auf', keep it
UPDATE public.german_verbs
SET preposition = COALESCE(NULLIF(preposition, ''), 'über'),
    preposition_case = CASE WHEN preposition IS NULL OR preposition = '' THEN 'akkusativ' ELSE preposition_case END
WHERE infinitive = 'sich freuen' AND (preposition IS NULL OR preposition = '');

-- Fix: better approach for sich freuen — it takes BOTH auf and über depending on context
UPDATE public.german_verbs
SET preposition = 'auf', preposition_case = 'akkusativ'
WHERE infinitive = 'sich freuen';

-- Verbs with preposition für + Akkusativ
UPDATE public.german_verbs
SET preposition = 'für', preposition_case = 'akkusativ'
WHERE infinitive IN (
  'sich bewerben',
  'sich entscheiden',
  'sich interessieren'
);

-- Verbs with preposition um + Akkusativ
UPDATE public.german_verbs
SET preposition = 'um', preposition_case = 'akkusativ'
WHERE infinitive IN (
  'sich kümmern',
  'sich sorgen'
);

-- Verbs with preposition mit + Dativ
UPDATE public.german_verbs
SET preposition = 'mit', preposition_case = 'dativ'
WHERE infinitive IN (
  'sich beschäftigen',
  'sich streiten',
  'sich treffen',
  'sich unterhalten',
  'sich verabreden',
  'sich vertragen'
);

-- Verbs with preposition von + Dativ
UPDATE public.german_verbs
SET preposition = 'von', preposition_case = 'dativ'
WHERE infinitive IN (
  'sich erholen',
  'sich trennen',
  'sich verabschieden'
);

-- Verb with preposition an + Akkusativ
UPDATE public.german_verbs
SET preposition = 'an', preposition_case = 'akkusativ'
WHERE infinitive IN (
  'sich erinnern',
  'sich gewöhnen'
);

-- Verb with preposition gegen + Akkusativ
UPDATE public.german_verbs
SET preposition = 'gegen', preposition_case = 'akkusativ'
WHERE infinitive = 'sich wehren';

-- Verb with preposition in + Akkusativ
UPDATE public.german_verbs
SET preposition = 'in', preposition_case = 'akkusativ'
WHERE infinitive = 'sich verlieben';

-- Verb with preposition bei + Dativ (entschuldigen usually with bei/für)
UPDATE public.german_verbs
SET preposition = 'bei', preposition_case = 'dativ'
WHERE infinitive = 'sich bedanken';

-- Verbs that take preposition in + Dativ for location
UPDATE public.german_verbs
SET preposition = 'in', preposition_case = 'dativ'
WHERE infinitive = 'sich einleben';

-- Update transitivity for prepositional verbs
UPDATE public.german_verbs
SET transitivity = 'intransitive'
WHERE is_reflexive = true AND preposition IS NOT NULL AND object_case = 'none';

-- Pure reflexive verbs — truly no additional object — remain 'none'
-- These are: sich auskennen, sich ausruhen, sich beeilen, sich befinden, sich duschen,
-- sich entspannen, sich entfernen, sich ergeben, sich erkälten, sich fühlen,
-- sich handeln, sich irren, sich kämmen, sich langweilen, sich lohnen,
-- sich melden, sich orientieren, sich rasieren, sich reduzieren, sich registrieren,
-- sich schämen, sich setzen, sich verbessern, sich wiederholen,
-- plus: sich ausdrücken, sich entschuldigen, sich niederlassen, sich schützen
