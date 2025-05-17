/*
Build a Simple Text-to-Speech Converter (Single Page)
Create an app where users can enter text and convert it to speech—all within a single page.
Features:
✅ A TextField for users to enter text.
✅ A Speak button to convert the text to speech.
✅ Use Flutter's TTS (Text-to-Speech) plugin for audio output.
*/



// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';

// class TextToSpeechPage extends StatefulWidget {
//   @override
//   _TextToSpeechPageState createState() => _TextToSpeechPageState();
// }

// class _TextToSpeechPageState extends State<TextToSpeechPage> {
//   FlutterTts flutterTts = FlutterTts();
//   TextEditingController textController = TextEditingController();

//   void speakText() async {
//     if (textController.text.isNotEmpty) {
//       await flutterTts.speak(textController.text);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Text-to-Speech Converter")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: textController,
//               decoration: InputDecoration(labelText: "Enter text"),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: speakText,
//               child: Text("Speak"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
