/*
Build an AI-Powered Voice Note App
Create an app where users can record voice notes, transcribe them into text using AI, and save them—all within a single page.
Features:
✅ Record voice using the microphone.
✅ Transcribe speech into text using AI.
✅ Save transcribed notes and display them in a list.
✅ Handle microphone permissions properly.
*/




// import 'package:flutter/material.dart';
// import 'package:speech_to_text/speech_to_text.dart';

// class VoiceNotePage extends StatefulWidget {
//   @override
//   _VoiceNotePageState createState() => _VoiceNotePageState();
// }

// class _VoiceNotePageState extends State<VoiceNotePage> {
//   SpeechToText speech = SpeechToText();
//   bool isListening = false;
//   String transcribedText = "";
//   List<String> notes = [];

//   void startListening() async {
//     bool available = await speech.initialize();
//     if (available) {
//       setState(() {
//         isListening = true;
//       });
//       speech.listen(onResult: (result) {
//         setState(() {
//           transcribedText = result.recognizedWords;
//         });
//       });
//     }
//   }

//   void stopListening() {
//     speech.stop();
//     setState(() {
//       isListening = false;
//       if (transcribedText.isNotEmpty) {
//         notes.add(transcribedText);
//         transcribedText = "";
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("AI Voice Note App")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               isListening ? "Listening..." : "Tap the button to record",
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: isListening ? stopListening : startListening,
//               child: Text(isListening ? "Stop Recording" : "Start Recording"),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: notes.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(notes[index]),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }