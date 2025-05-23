/*
Build a Simple Drawing App (Single Page)
Create an app where users can draw on a blank canvas using their fingers—all within a single page.
Features:
✅ Users can draw freehand on the screen.
✅ A Clear button to erase the canvas.
✅ Support for different brush colors (optional enhancement)
*/




// import 'package:flutter/material.dart';

// class DrawingPage extends StatefulWidget {
//   @override
//   _DrawingPageState createState() => _DrawingPageState();
// }

// class _DrawingPageState extends State<DrawingPage> {
//   List<Offset> points = [];

//   void clearCanvas() {
//     setState(() {
//       points.clear();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Drawing App")),
//       body: GestureDetector(
//         onPanUpdate: (details) {
//           setState(() {
//             points.add(details.localPosition);
//           });
//         },
//         onPanEnd: (details) {
//           setState(() {
//             points.add(Offset.zero); // Marks the end of a stroke
//           });
//         },
//         child: CustomPaint(
//           painter: DrawingPainter(points),
//           child: Container(),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: clearCanvas,
//         child: Icon(Icons.clear),
//       ),
//     );
//   }
// }

// class DrawingPainter extends CustomPainter {
//   final List<Offset> points;
//   DrawingPainter(this.points);

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = Colors.black
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