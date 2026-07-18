const db = [
  'sich verlieben','sich bedanken','sich entscheiden','sich informieren','sich einigen',
  'sich beeilen','sich einleben','sich befinden','sich beklagen','sich einstellen',
  'sich interessieren','sich setzen','sich wünschen','sich ergeben','sich fühlen',
  'sich irren','sich umziehen','sich auskennen','sich ausruhen','sich kämmen',
  'sich erkälten','sich erholen','sich lohnen','sich verabreden','sich ausdrücken',
  'sich niederlassen','sich melden','sich verbessern','sich abgewöhnen','sich reduzieren',
  'sich nähern','sich vorstellen','sich angewöhnen','sich täuschen','sich unterhalten',
  'sich orientieren','sich vorbereiten','sich verlassen','sich aufregen','sich registrieren',
  'sich wehren','sich beschäftigen','sich schämen','sich konzentrieren','sich kümmern',
  'sich treffen','sich verabschieden','sich streiten','sich vertragen','sich trennen',
  'sich schützen','sich wiederholen','sich entfernen','sich anmelden','sich entspannen',
  'sich bewerben','sich ärgern','sich freuen','sich wundern','sich langweilen',
  'sich handeln','sich abmelden','sich vornehmen','sich sorgen','sich gewöhnen',
  'sich erinnern','sich beschweren','sich entschuldigen','sich waschen','sich duschen',
  'sich rasieren','sich anziehen','sich ausziehen'
];
const mine = [
  'sich waschen','sich duschen','sich rasieren','sich kämmen','sich anziehen','sich ausziehen',
  'sich setzen','sich hinlegen','sich wünschen','sich gewöhnen','sich angewöhnen','sich abgewöhnen',
  'sich verlieben','sich freuen','sich ärgern','sich wundern','sich langweilen','sich schämen',
  'sich aufregen','sich entspannen','sich erholen','sich ausruhen','sich erkälten','sich beeilen',
  'sich konzentrieren','sich interessieren','sich beschäftigen','sich kümmern','sich sorgen',
  'sich beschweren','sich entschuldigen','sich bedanken','sich entscheiden','sich einigen',
  'sich verabreden','sich treffen','sich verabschieden','sich streiten','sich vertragen',
  'sich trennen','sich umziehen','sich vorstellen','sich vorbereiten','sich einleben',
  'sich einstellen','sich orientieren','sich nähern','sich entfernen','sich befinden',
  'sich auskennen','sich melden','sich anmelden','sich abmelden','sich registrieren',
  'sich bewerben','sich vornehmen','sich wiederholen','sich ergeben','sich handeln',
  'sich wehren','sich schützen','sich täuschen','sich irren','sich verlassen','sich reduzieren',
  'sich verbessern','sich ausdrücken','sich niederlassen','sich fühlen','sich lohnen',
  'sich erinnern'
];
const missing = db.filter(v => !mine.includes(v));
const extra = mine.filter(v => !db.includes(v));
console.log('Missing from mine:', missing);
console.log('Extra in mine:', extra);
console.log('DB count:', db.length);
console.log('Mine count:', mine.length);