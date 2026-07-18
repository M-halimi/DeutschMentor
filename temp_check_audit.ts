import { reflexiveAudits } from './scripts/verbs/reflexive-audit.ts';

const dbVerbs = [
  "sich verlieben", "sich bedanken", "sich entscheiden", "sich informieren", "sich einigen",
  "sich beeilen", "sich einleben", "sich befinden", "sich beklagen", "sich einstellen",
  "sich interessieren", "sich setzen", "sich wünschen", "sich ergeben", "sich fühlen",
  "sich irren", "sich umziehen", "sich auskennen", "sich ausruhen", "sich kämmen",
  "sich erkälten", "sich erholen", "sich lohnen", "sich verabreden", "sich ausdrücken",
  "sich niederlassen", "sich melden", "sich verbessern", "sich abgewöhnen", "sich reduzieren",
  "sich nähern", "sich vorstellen", "sich angewöhnen", "sich täuschen", "sich unterhalten",
  "sich orientieren", "sich vorbereiten", "sich verlassen", "sich aufregen", "sich registrieren",
  "sich wehren", "sich beschäftigen", "sich schämen", "sich konzentrieren", "sich kümmern",
  "sich treffen", "sich verabschieden", "sich streiten", "sich vertragen", "sich trennen",
  "sich schützen", "sich wiederholen", "sich entfernen", "sich anmelden", "sich entspannen",
  "sich bewerben", "sich ärgern", "sich freuen", "sich wundern", "sich langweilen",
  "sich handeln", "sich abmelden", "sich vornehmen", "sich sorgen", "sich gewöhnen",
  "sich erinnern", "sich beschweren", "sich entschuldigen", "sich waschen", "sich duschen",
  "sich rasieren", "sich anziehen", "sich ausziehen"
];

const auditVerbs = reflexiveAudits.map(v => v.infinitive);
const missing = dbVerbs.filter(v => !auditVerbs.includes(v));
const extra = auditVerbs.filter(v => !dbVerbs.includes(v));
const duplicates = auditVerbs.filter((v, i) => auditVerbs.indexOf(v) !== i);

console.log('DB count:', dbVerbs.length);
console.log('Audit count:', auditVerbs.length);
console.log('Missing from audit:', missing);
console.log('Extra in audit:', extra);
console.log('Duplicates in audit:', duplicates);