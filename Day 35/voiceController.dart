/*
Voice-Controlled Drawing App
Create an app where users can draw using voice commands—no need to touch the screen!
Features:
✅ Speech recognition to detect voice commands.
✅ Users can say colors to change the brush color.
✅ Users can say "Clear" to erase the canvas.
✅ Uses device microphone permission for voice input.
*/





// import 'package:flutter/material.dart';
// import 'package:flutter_speech/flutter_speech.dart';

// class VoiceDrawingPage extends StatefulWidget {
//   @override
//   _VoiceDrawingPageState createState() => _VoiceDrawingPageState();
// }

// class _VoiceDrawingPageState extends State<VoiceDrawingPage> {
//   List<Offset> points = [];
//   Color brushColor = Colors.black;
//   final speech = SpeechRecognition();

//   void startListening() {
//     speech.setAvailabilityHandler((result) => print("Speech Available: $result"));
//     speech.setRecognitionResultHandler((text) {
//       setState(() {
//         if (text.toLowerCase() == "clear") {
//           points.clear();
//         } else if (text.toLowerCase() == "red") {
//           brushColor = Colors.red;
//         } else if (text.toLowerCase() == "blue") {
//           brushColor = Colors.blue;
//         }
//       });
//     });
//     speech.listen();
//   }

//   void addDrawingPoint(Offset point) {
//     setState(() {
//       points.add(point);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Voice-Controlled Drawing")),
//       body: GestureDetector(
//         onPanUpdate: (details) => addDrawingPoint(details.localPosition),
//         child: CustomPaint(
//           painter: DrawingPainter(points, brushColor),
//           child: Container(),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: startListening,
//         child: Icon(Icons.mic),
//       ),
//     );
//   }
// }

// class DrawingPainter extends CustomPainter {
//   final List<Offset> points;
//   final Color color;

//   DrawingPainter(this.points, this.color);

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = color
//       ..strokeWidth = 5.0
//       ..strokeCap = StrokeCap.round;

//     for (int i = 0; i < points.length - 1; i++) {
//       if (points[i] != Offset.zero && points[i + 1] != Offset.zero) {
//         canvas.drawLine(points[i], points[i + 1], paint);
//       }
//     }
//   }

//   @override
//   bool shouldRepaint(DrawingPainter oldDelegate) => true;
// }