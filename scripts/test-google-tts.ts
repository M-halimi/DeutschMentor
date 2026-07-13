import { generateGoogleTTS, generateGoogleTTSForLesson } from '../src/lib/ai/google-tts'
import { writeFileSync } from 'fs'

async function test() {
  console.log('Test 1: Short German text')
  const r1 = await generateGoogleTTS('Guten Tag, ich möchte ein Hotelzimmer buchen.', 'de')
  console.log('Result:', r1?.provider, r1 ? `${r1.audioUrl.slice(0, 40)}... (${r1.audioUrl.length} chars)` : 'FAIL')

  console.log('\nTest 2: Longer text with multiple sentences')
  const longText = 'Hallo und herzlich willkommen. Ich heiße Anna und komme aus Berlin. Ich lerne seit drei Jahren Deutsch. Meine Hobbys sind Lesen, Schwimmen und Kochen. Am Wochenende fahre ich oft in die Berge.'
  const r2 = await generateGoogleTTS(longText, 'de')
  console.log('Result:', r2?.provider, r2 ? `audioUrl length: ${r2.audioUrl.length}` : 'FAIL')

  console.log('\nTest 3: Lesson transcript')
  const transcript = `Kellner: Guten Abend! Hier ist die Speisekarte. Darf ich Ihnen schon etwas zu trinken bringen?\nGast: Ja, ich hätte gern ein Glas Rotwein, bitte.\nKellner: Sehr gerne. Kommt sofort.`
  const r3 = await generateGoogleTTSForLesson(transcript, 'restaurant')
  console.log('Result:', r3 ? `audioUrl length: ${r3.length}` : 'FAIL')

  if (r2) {
    const base64 = r2.audioUrl.split(',')[1]
    writeFileSync('test-google.mp3', Buffer.from(base64, 'base64'))
    console.log('\nSaved test-google.mp3')
  }

  console.log('\nAll tests complete')
}

test()
