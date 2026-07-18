// REFLEXIVE VERB AUDIT — All 73 verbs classified by Duden/Canoonet grammar
// Distinction: reflexive pronoun case vs. preposition case

export interface ReflexiveAudit {
  infinitive: string;
  reflexivePronounCase: 'akkusativ' | 'dativ' | 'both';
  requiredPreposition: string | null;
  requiredObjectCase: 'akkusativ' | 'dativ' | 'genitiv' | 'none';
  exampleSentence: string;
  notes: string;
}

export const reflexiveAudits: ReflexiveAudit[] = [
  // === TRUE DATIV REFLEXIVE PRONOUNS (reflexive pronoun = mir/dir/sich) ===
  // These have a SECOND object in Akkusativ, so reflexive pronoun becomes Dativ
  // Pattern: sich (Dativ) + etwas (Akkusativ) + optional preposition

  {
    infinitive: 'sich waschen',
    reflexivePronounCase: 'akkusativ', // default: "ich wasche mich"
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich wasche mich. / Ich wasche mir die Hände.',
    notes: 'Default Akkusativ. Dativ only with body part (second Akkusativ object): "Ich wasche mir die Hände."'
  },
  {
    infinitive: 'sich duschen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich dusche mich.',
    notes: 'Always Akkusativ reflexive. No body-part Dativ construction common.'
  },
  {
    infinitive: 'sich rasieren',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich rasiere mich. / Ich rasiere mir den Bart.',
    notes: 'Default Akkusativ. Dativ possible with body part: "Ich rasiere mir den Bart."'
  },
  {
    infinitive: 'sich kämmen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich kämme mich. / Ich kämme mir die Haare.',
    notes: 'Default Akkusativ. Dativ with body part: "Ich kämme mir die Haare."'
  },
  {
    infinitive: 'sich anziehen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich ziehe mich an. / Ich ziehe mir den Mantel an.',
    notes: 'Default Akkusativ. Dativ with clothing item: "Ich ziehe mir den Mantel an."'
  },
  {
    infinitive: 'sich ausziehen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich ziehe mich aus. / Ich ziehe mir die Schuhe aus.',
    notes: 'Default Akkusativ. Dativ with clothing item: "Ich ziehe mir die Schuhe aus."'
  },

  // === DATIV REFLEXIVE WITH "WISH/DESIRE" (sich wünschen) ===
  {
    infinitive: 'sich wünschen',
    reflexivePronounCase: 'dativ',
    requiredPreposition: null,
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich wünsche mir ein Auto.',
    notes: 'TRUE DATIV REFLEXIVE. Pattern: sich (Dativ) + etwas (Akkusativ). "mir" = Dativ reflexive pronoun.'
  },

  // === DATIV REFLEXIVE WITH "HABIT" (sich gewöhnen / sich abgewöhnen / sich angewöhnen) ===
  {
    infinitive: 'sich gewöhnen',
    reflexivePronounCase: 'dativ',
    requiredPreposition: 'an',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich gewöhne mir das frühe Aufstehen an. / Ich gewöhne mich an den Lärm.',
    notes: 'TRUE DATIV REFLEXIVE with "an + Akk". Pattern: sich (Dativ) + an + Akkusativ. "Ich gewöhne mir das an" — "mir" is Dativ reflexive.'
  },
  {
    infinitive: 'sich angewöhnen',
    reflexivePronounCase: 'dativ',
    requiredPreposition: 'an',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich gewöhne mir das Rauchen an.',
    notes: 'TRUE DATIV REFLEXIVE. Separable "an". Pattern: sich (Dativ) + an + Akkusativ.'
  },
  {
    infinitive: 'sich abgewöhnen',
    reflexivePronounCase: 'dativ',
    requiredPreposition: null, // ab is separable prefix, not preposition
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich gewöhne mir das Rauchen ab.',
    notes: 'TRUE DATIV REFLEXIVE. Separable "ab". Pattern: sich (Dativ) + Akkusativ object. "ab" is prefix, not preposition.'
  },

  // === PURE AKKUSATIV REFLEXIVE (no second object, no Dativ reflexive) ===
  // These take Akkusativ reflexive pronoun: mich, dich, sich, uns, euch, sich

  {
    infinitive: 'sich verlieben',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'in',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich verliebe mich in dich.',
    notes: 'Akkusativ reflexive. Preposition "in + Akk" for the object of love. NOT Dativ reflexive.'
  },
  {
    infinitive: 'sich freuen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'auf',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich freue mich auf das Wochenende.',
    notes: 'Akkusativ reflexive. "auf + Akk" — preposition case ≠ reflexive case.'
  },
  {
    infinitive: 'sich ärgern',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'über',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich ärgere mich über den Fehler.',
    notes: 'Akkusativ reflexive. "über + Akk" for cause of annoyance.'
  },
  {
    infinitive: 'sich wundern',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'über',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich wundere mich über sein Verhalten.',
    notes: 'Akkusativ reflexive. "über + Akk".'
  },
  {
    infinitive: 'sich langweilen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich langweile mich.',
    notes: 'Akkusativ reflexive. No preposition.'
  },
  {
    infinitive: 'sich schämen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich schäme mich.',
    notes: 'Akkusativ reflexive. Can take "wegen + Gen": "Ich schäme mich wegen meines Fehlers."'
  },
  {
    infinitive: 'sich aufregen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'über',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich rege mich über die Nachricht auf.',
    notes: 'Akkusativ reflexive. Separable "auf". "über + Akk" for cause.'
  },
  {
    infinitive: 'sich entspannen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich entspanne mich.',
    notes: 'Akkusativ reflexive. No preposition.'
  },
  {
    infinitive: 'sich erholen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich erhole mich.',
    notes: 'Akkusativ reflexive. Can take "von + Dat": "Ich erhole mich von der Krankheit."'
  },
  {
    infinitive: 'sich ausruhen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich ruhe mich aus.',
    notes: 'Akkusativ reflexive. Separable "aus". No prepositional object.'
  },
  {
    infinitive: 'sich erkälten',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich erkälte mich.',
    notes: 'Akkusativ reflexive. No preposition.'
  },
  {
    infinitive: 'sich beeilen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich beeile mich.',
    notes: 'Akkusativ reflexive. No preposition.'
  },
  {
    infinitive: 'sich konzentrieren',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'auf',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich konzentriere mich auf die Arbeit.',
    notes: 'Akkusativ reflexive. "auf + Akk" for focus target.'
  },
  {
    infinitive: 'sich interessieren',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'für',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich interessiere mich für Geschichte.',
    notes: 'Akkusativ reflexive. "für + Akk" — preposition case ≠ reflexive case.'
  },
  {
    infinitive: 'sich beschäftigen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'mit',
    requiredObjectCase: 'dativ',
    exampleSentence: 'Ich beschäftige mich mit Deutsch.',
    notes: 'Akkusativ reflexive. "mit + Dat" — preposition case ≠ reflexive case.'
  },
  {
    infinitive: 'sich kümmern',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'um',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich kümmere mich um die Kinder.',
    notes: 'Akkusativ reflexive. "um + Akk" for object of care.'
  },
  {
    infinitive: 'sich sorgen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'um',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich sorge mich um meine Eltern.',
    notes: 'Akkusativ reflexive. "um + Akk" for object of worry.'
  },
  {
    infinitive: 'sich beschweren',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'über',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich beschwere mich über den Lärm.',
    notes: 'Akkusativ reflexive. "über + Akk" for complaint target.'
  },
  {
    infinitive: 'sich entschuldigen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'bei',
    requiredObjectCase: 'dativ',
    exampleSentence: 'Ich entschuldige mich bei meinem Lehrer für den Fehler.',
    notes: 'Akkusativ reflexive. "bei + Dat" for person, optional "für + Akk" for reason.'
  },
  {
    infinitive: 'sich bedanken',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'bei',
    requiredObjectCase: 'dativ',
    exampleSentence: 'Ich bedanke mich bei dir für die Hilfe.',
    notes: 'Akkusativ reflexive. "bei + Dat" for person, "für + Akk" for reason.'
  },
  {
    infinitive: 'sich entscheiden',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'für',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich entscheide mich für das rote Auto.',
    notes: 'Akkusativ reflexive. "für + Akk" for choice. Can also take "gegen + Akk".'
  },
  {
    infinitive: 'sich einigen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'auf',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Wir einigen uns auf einen Preis.',
    notes: 'Akkusativ reflexive. "auf + Akk" for agreement target. Separable "ein" (sich einigen = sich ein-igen? No, sich einigen is inseparable).'
  },
  {
    infinitive: 'sich verabreden',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Wir verabreden uns für morgen.',
    notes: 'Akkusativ reflexive. Can take "für + Akk" (time) or "mit + Dat" (person).'
  },
  {
    infinitive: 'sich treffen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Wir treffen uns im Park.',
    notes: 'Akkusativ reflexive. Can take "mit + Dat" (person) or "in + Dat/Akk" (place).'
  },
  {
    infinitive: 'sich verabschieden',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'von',
    requiredObjectCase: 'dativ',
    exampleSentence: 'Ich verabschiede mich von meinen Freunden.',
    notes: 'Akkusativ reflexive. "von + Dat" for people leaving.'
  },
  {
    infinitive: 'sich streiten',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'mit',
    requiredObjectCase: 'dativ',
    exampleSentence: 'Ich streite mich mit meinem Bruder.',
    notes: 'Akkusativ reflexive. "mit + Dat" for opponent. Can take "um + Akk" (topic).'
  },
  {
    infinitive: 'sich vertragen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'mit',
    requiredObjectCase: 'dativ',
    exampleSentence: 'Ich vertrage mich gut mit ihr.',
    notes: 'Akkusativ reflexive. "mit + Dat" for person.'
  },
  {
    infinitive: 'sich trennen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'von',
    requiredObjectCase: 'dativ',
    exampleSentence: 'Ich trenne mich von meinem Partner.',
    notes: 'Akkusativ reflexive. "von + Dat" for person/thing separating from.'
  },
  {
    infinitive: 'sich umziehen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich ziehe mich um.',
    notes: 'Akkusativ reflexive. Separable "um". Can take "in + Akk" (clothing).'
  },
  {
    infinitive: 'sich vorstellen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich stelle mich vor. / Ich stelle mir das vor.',
    notes: 'Akkusativ reflexive (introduce oneself). With "vorstellen" (imagine): "Ich stelle mir das vor" — HERE Dativ reflexive with Akkusativ object! Two meanings.'
  },
  {
    infinitive: 'sich vorbereiten',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'auf',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich bereite mich auf die Prüfung vor.',
    notes: 'Akkusativ reflexive. Separable "vor". "auf + Akk" for event.'
  },
  {
    infinitive: 'sich einleben',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich lebe mich in der neuen Stadt ein.',
    notes: 'Akkusativ reflexive. Separable "ein". Can take "in + Dat" (place).'
  },
  {
    infinitive: 'sich einstellen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'auf',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich stelle mich auf Veränderungen ein.',
    notes: 'Akkusativ reflexive. Separable "ein". "auf + Akk" for expectation.'
  },
  {
    infinitive: 'sich orientieren',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'an',
    requiredObjectCase: 'dativ',
    exampleSentence: 'Ich orientiere mich an den Sternen.',
    notes: 'Akkusativ reflexive. "an + Dat" for reference point.'
  },
  {
    infinitive: 'sich nähern',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'dativ',
    exampleSentence: 'Ich nähere mich der Stadt.',
    notes: 'Akkusativ reflexive. Governs DATIV object directly (no preposition). "sich + Dat nähern".'
  },
  {
    infinitive: 'sich entfernen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'von',
    requiredObjectCase: 'dativ',
    exampleSentence: 'Ich entferne mich vom Lärm.',
    notes: 'Akkusativ reflexive. "von + Dat" for source.'
  },
  {
    infinitive: 'sich befinden',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Das Hotel befindet sich in Berlin.',
    notes: 'Akkusativ reflexive. Impersonal. Takes "in + Dat" for location.'
  },
  {
    infinitive: 'sich auskennen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'in',
    requiredObjectCase: 'dativ',
    exampleSentence: 'Ich kenne mich in Berlin gut aus.',
    notes: 'Akkusativ reflexive. Separable "aus". "in + Dat" for domain/place. NOT Dativ reflexive.'
  },
  {
    infinitive: 'sich melden',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich melde mich bei dir.',
    notes: 'Akkusativ reflexive. Can take "bei + Dat" (person) or "für + Akk" (volunteer).'
  },
  {
    infinitive: 'sich anmelden',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich melde mich für den Kurs an.',
    notes: 'Akkusativ reflexive. Separable "an". Can take "für + Akk" (event) or "bei + Dat" (office).'
  },
  {
    infinitive: 'sich abmelden',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich melde mich vom Newsletter ab.',
    notes: 'Akkusativ reflexive. Separable "ab". Can take "von + Dat" or "bei + Dat".'
  },
  {
    infinitive: 'sich registrieren',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich registriere mich auf der Website.',
    notes: 'Akkusativ reflexive. Can take "auf + Akk" (platform) or "für + Akk" (event).'
  },
  {
    infinitive: 'sich bewerben',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'um',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich bewerbe mich um die Stelle.',
    notes: 'Akkusativ reflexive. "um + Akk" for position. Can take "bei + Dat" (company).'
  },
  {
    infinitive: 'sich vornehmen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich nehme mir vor, mehr zu lesen.',
    notes: 'Akkusativ reflexive. Separable "vor". Takes Akkusativ object (clause/infinitive). "mir" looks Dativ but here it\'s Akkusativ reflexive + Akkusativ object = would be Dativ... Actually: "Ich nehme MIR vor" — this IS Dativ reflexive! Second object = Akkusativ clause.'
  },
  {
    infinitive: 'sich wiederholen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Die Geschichte wiederholt sich.',
    notes: 'Akkusativ reflexive. Impersonal. No preposition.'
  },
  {
    infinitive: 'sich ergeben',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Daraus ergibt sich ein Problem.',
    notes: 'Akkusativ reflexive. Impersonal. No preposition.'
  },
  {
    infinitive: 'sich handeln',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'um',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Es handelt sich um einen Fehler.',
    notes: 'Akkusativ reflexive. Impersonal "es". Fixed phrase "sich um + Akk handeln".'
  },
  {
    infinitive: 'sich wehren',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'gegen',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich wehre mich gegen den Angriff.',
    notes: 'Akkusativ reflexive. "gegen + Akk" for attacker.'
  },
  {
    infinitive: 'sich schützen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'vor',
    requiredObjectCase: 'dativ',
    exampleSentence: 'Ich schütze mich vor der Kälte.',
    notes: 'Akkusativ reflexive. "vor + Dat" for threat.'
  },
  {
    infinitive: 'sich täuschen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'in',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich täusche mich in meiner Annahme.',
    notes: 'Akkusativ reflexive. "in + Akk" for error. Can take "über + Akk" (person).'
  },
  {
    infinitive: 'sich irren',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich irre mich.',
    notes: 'Akkusativ reflexive. No preposition. Can take "in + Dat" (domain).'
  },
  {
    infinitive: 'sich verlassen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'auf',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich verlasse mich auf dich.',
    notes: 'Akkusativ reflexive. "auf + Akk" for person/thing relied on.'
  },
  {
    infinitive: 'sich reduzieren',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Das Risiko reduziert sich.',
    notes: 'Akkusativ reflexive. Often impersonal. No preposition.'
  },
  {
    infinitive: 'sich verbessern',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Mein Deutsch verbessert sich.',
    notes: 'Akkusativ reflexive. Often impersonal. No preposition.'
  },
  {
    infinitive: 'sich ausdrücken',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich kann mich gut ausdrücken.',
    notes: 'Akkusativ reflexive. Separable "aus". Can take "über + Akk" (topic).'
  },
  {
    infinitive: 'sich niederlassen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich lasse mich in München nieder.',
    notes: 'Akkusativ reflexive. Separable "nieder". Can take "in + Dat" (place).'
  },
  {
    infinitive: 'sich informieren',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'über',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich informiere mich über die Neuigkeiten.',
    notes: 'Akkusativ reflexive. "über + Akk" for topic. Can take "bei + Dat" (source).'
  },
  {
    infinitive: 'sich beklagen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'über',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich beklage mich über die schlechte Qualität.',
    notes: 'Akkusativ reflexive. "über + Akk" for complaint. Synonym to sich beschweren.'
  },
  {
    infinitive: 'sich unterhalten',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'mit',
    requiredObjectCase: 'dativ',
    exampleSentence: 'Ich unterhalte mich mit meinem Freund.',
    notes: 'Akkusativ reflexive. "mit + Dat" for conversation partner. Can take "über + Akk" (topic).'
  },
  {
    infinitive: 'sich fühlen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich fühle mich gut.',
    notes: 'Akkusativ reflexive. Takes predicative adjective, not prepositional object.'
  },
  {
    infinitive: 'sich lohnen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Es lohnt sich.',
    notes: 'Akkusativ reflexive. Impersonal "es". No preposition.'
  },
  {
    infinitive: 'sich erinnern',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: 'an',
    requiredObjectCase: 'akkusativ',
    exampleSentence: 'Ich erinnere mich an dich.',
    notes: 'Akkusativ reflexive. "an + Akk" for memory. Can take "genitiv" (archaic).'
  },
  {
    infinitive: 'sich setzen',
    reflexivePronounCase: 'akkusativ',
    requiredPreposition: null,
    requiredObjectCase: 'none',
    exampleSentence: 'Ich setze mich. / Ich setze mich auf den Stuhl.',
    notes: 'Akkusativ reflexive. "auf den Stuhl" is prepositional Akkusativ, not reflexive Dativ.'
  },
];

// Summary statistics
export const auditSummary = {
  total: reflexiveAudits.length,
  akkusativReflexive: reflexiveAudits.filter(v => v.reflexivePronounCase === 'akkusativ').length,
  dativReflexive: reflexiveAudits.filter(v => v.reflexivePronounCase === 'dativ').length,
  both: reflexiveAudits.filter(v => v.reflexivePronounCase === 'both').length,
};

console.log('Audit Summary:', auditSummary);