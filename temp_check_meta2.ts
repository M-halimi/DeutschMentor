// Just count
const reflexiveVerbMeta = [
  // Dativ reflexive + Akkusativ object (5)
  'sich wünschen', 'sich abgewöhnen', 'sich angewöhnen', 'sich vorstellen', 'sich merken',
  // Akkusativ reflexive + body parts/clothing (6)
  'sich waschen', 'sich duschen', 'sich rasieren', 'sich kämmen', 'sich anziehen', 'sich ausziehen',
  // Prepositional mandatory (26)
  'sich interessieren', 'sich freuen', 'sich ärgern', 'sich wundern', 'sich erinnern',
  'sich kümmern', 'sich sorgen', 'sich beschäftigen', 'sich vorbereiten', 'sich verlieben',
  'sich konzentrieren', 'sich beschweren', 'sich bedanken', 'sich entschuldigen', 'sich entscheiden',
  'sich einigen', 'sich verabschieden', 'sich streiten', 'sich vertragen', 'sich trennen',
  'sich unterhalten', 'sich orientieren', 'sich einleben', 'sich einstellen', 'sich bewerben',
  'sich auskennen', 'sich nähern', 'sich entfernen',
  // Optional prepositional (7)
  'sich verabreden', 'sich treffen', 'sich melden', 'sich einleben', 'sich beeilen',
  'sich erholen', 'sich entspannen',
  // Pure reflexive (no object/prep needed) (23)
  'sich duschen', 'sich rasieren', 'sich kämmen', 'sich anziehen', 'sich ausziehen',
  'sich abmelden', 'sich anmelden', 'sich befinden', 'sich beklagen', 'sich einigen',
  'sich einstellen', 'sich entscheiden', 'sich ergeben', 'sich fühlen', 'sich handeln',
  'sich irren', 'sich langweilen', 'sich lohnen', 'sich melden', 'sich reduzieren',
  'sich registrieren', 'sich schämen', 'sich schützen', 'sich setzen', 'sich verbessern',
  'sich vornehmen', 'sich waschen', 'sich wehren', 'sich wiederholen', 'sich wundern',
  'sich wünschen',
];

const dbVerbs = [
  'sich abgewöhnen', 'sich abmelden', 'sich angewöhnen', 'sich anmelden', 'sich anziehen',
  'sich ärgern', 'sich aufregen', 'sich ausdrücken', 'sich auskennen', 'sich ausruhen',
  'sich ausziehen', 'sich bedanken', 'sich beeilen', 'sich befinden', 'sich beklagen',
  'sich beschäftigen', 'sich beschweren', 'sich bewerben', 'sich duschen', 'sich einigen',
  'sich einleben', 'sich einstellen', 'sich entfernen', 'sich entscheiden', 'sich entschuldigen',
  'sich entspannen', 'sich ergeben', 'sich erholen', 'sich erinnern', 'sich erkälten',
  'sich freuen', 'sich fühlen', 'sich gewöhnen', 'sich handeln', 'sich informieren',
  'sich interessieren', 'sich irren', 'sich kämmen', 'sich konzentrieren', 'sich kümmern',
  'sich langweilen', 'sich lohnen', 'sich melden', 'sich nähern', 'sich niederlassen',
  'sich orientieren', 'sich rasieren', 'sich reduzieren', 'sich registrieren', 'sich schämen',
  'sich schützen', 'sich setzen', 'sich sorgen', 'sich streiten', 'sich trennen',
  'sich umziehen', 'sich verabreden', 'sich verbessern', 'sich vorstellen', 'sich vorbereiten',
  'sich verabschieden', 'sich vertragen', 'sich waschen', 'sich wehren', 'sich wiederholen',
  'sich wundern', 'sich wünschen'
];

const metaSet = new Set(reflexiveVerbMeta);
const dbSet = new Set(dbVerbs);

console.log('In meta not in DB:', [...metaSet].filter(v => !dbSet.has(v)));
console.log('In DB not in meta:', [...dbSet].filter(v => !metaSet.has(v)));
console.log('Meta count:', metaSet.size);
console.log('DB count:', dbSet.size);