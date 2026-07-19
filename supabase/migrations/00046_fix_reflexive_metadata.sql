-- Fix reflexive verb metadata: object_case, preposition, preposition_case, transitivity
-- Only set object_case for verbs that truly take an additional direct object

-- 1) Verbs that take an additional Akkusativ direct object
UPDATE public.german_verbs
SET object_case = 'akkusativ', transitivity = 'transitive'
WHERE infinitive IN (
  'sich abgewöhnen',  -- sich (Dat) etw (Akk) abgewöhnen
  'sich angewöhnen',  -- sich (Dat) etw (Akk) angewöhnen
  'sich anziehen',    -- sich (Dat) etw (Akk) anziehen
  'sich ausziehen',   -- sich (Dat) etw (Akk) ausziehen
  'sich vornehmen',   -- sich (Dat) etw (Akk) vornehmen
  'sich vorstellen',  -- sich (Dat) etw (Akk) vorstellen
  'sich wünschen'     -- sich (Dat) etw (Akk) wünschen
);

-- 2) Verb that takes a Dativ direct object
UPDATE public.german_verbs
SET object_case = 'dativ', transitivity = 'transitive'
WHERE infinitive = 'sich nähern';  -- sich (Akk) jdm/etw (Dat) nähern

-- 3) Prepositional reflexive verbs — set preposition + case, keep object_case = 'none'
-- über + Akkusativ
UPDATE public.german_verbs
SET preposition = 'über', preposition_case = 'akkusativ', transitivity = 'intransitive'
WHERE infinitive IN (
  'sich ärgern',
  'sich aufregen',
  'sich beklagen',
  'sich beschweren',
  'sich informieren',
  'sich täuschen',
  'sich wundern'
);

-- auf + Akkusativ
UPDATE public.german_verbs
SET preposition = 'auf', preposition_case = 'akkusativ', transitivity = 'intransitive'
WHERE infinitive IN (
  'sich einigen',
  'sich freuen',
  'sich konzentrieren',
  'sich verlassen',
  'sich vorbereiten'
);

-- für + Akkusativ
UPDATE public.german_verbs
SET preposition = 'für', preposition_case = 'akkusativ', transitivity = 'intransitive'
WHERE infinitive IN (
  'sich entscheiden',
  'sich interessieren'
);

-- um + Akkusativ
UPDATE public.german_verbs
SET preposition = 'um', preposition_case = 'akkusativ', transitivity = 'intransitive'
WHERE infinitive IN (
  'sich bewerben',
  'sich handeln',
  'sich kümmern',
  'sich sorgen'
);

-- mit + Dativ
UPDATE public.german_verbs
SET preposition = 'mit', preposition_case = 'dativ', transitivity = 'intransitive'
WHERE infinitive IN (
  'sich beschäftigen',
  'sich streiten',
  'sich treffen',
  'sich unterhalten',
  'sich verabreden',
  'sich vertragen'
);

-- von + Dativ
UPDATE public.german_verbs
SET preposition = 'von', preposition_case = 'dativ', transitivity = 'intransitive'
WHERE infinitive IN (
  'sich erholen',
  'sich trennen',
  'sich verabschieden'
);

-- an + Akkusativ
UPDATE public.german_verbs
SET preposition = 'an', preposition_case = 'akkusativ', transitivity = 'intransitive'
WHERE infinitive IN (
  'sich erinnern',
  'sich gewöhnen'
);

-- gegen + Akkusativ
UPDATE public.german_verbs
SET preposition = 'gegen', preposition_case = 'akkusativ', transitivity = 'intransitive'
WHERE infinitive = 'sich wehren';

-- in + Akkusativ
UPDATE public.german_verbs
SET preposition = 'in', preposition_case = 'akkusativ', transitivity = 'intransitive'
WHERE infinitive = 'sich verlieben';

-- bei + Dativ
UPDATE public.german_verbs
SET preposition = 'bei', preposition_case = 'dativ', transitivity = 'intransitive'
WHERE infinitive IN (
  'sich bedanken',
  'sich entschuldigen'
);

-- 4) Pure reflexive verbs — no changes needed, object_case stays 'none', preposition stays NULL
-- These verbs take NO additional object and have NO canonical preposition:
-- sich ausdrücken, sich auskennen, sich ausruhen, sich beeilen, sich befinden,
-- sich duschen, sich einleben, sich entfernen, sich entspannen, sich ergeben,
-- sich erkälten, sich fühlen, sich irren, sich kämmen, sich langweilen, sich lohnen,
-- sich melden, sich niederlassen, sich orientieren, sich rasieren, sich reduzieren,
-- sich registrieren, sich schämen, sich schützen, sich setzen, sich verbessern, sich wiederholen
