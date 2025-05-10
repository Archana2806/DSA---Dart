/*
Build a Simple Stopwatch App
Create a stopwatch using Flutter that allows the user to start, stop, and reset the timer—all within a single page.
Features:
✅ Display the elapsed time in seconds.
✅ A Start button to begin the timer.
✅ A Stop button to pause the timer.
✅ A Reset button to set the timer back to 0.
*/




// import 'package:flutter/material.dart';
// import 'dart:async';

// class StopwatchPage extends StatefulWidget {
//   @override
//   _StopwatchPageState createState() => _StopwatchPageState();
// }

// class _StopwatchPageState extends State<StopwatchPage> {
//   int seconds = 0;
//   Timer? timer;
//   bool isRunning = false;

//   void startTimer() {
//     if (!isRunning) {
//       timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
//         setState(() {
//           seconds++;
//         });
//       });
//       isRunning = true;
//     }
//   }

//   void stopTimer() {
//     if (isRunning) {
//       timer?.cancel();
//       isRunning = false;
//     }
//   }

//   void resetTimer() {
//     stopTimer();
//     setState(() {
//       seconds = 0;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Stopwatch")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("$seconds sec", style: TextStyle(fontSize: 40)),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(onPressed: startTimer, child: Text("Start")),
//                 SizedBox(width: 10),
//                 ElevatedButton(onPressed: stopTimer, child: Text("Stop")),
//                 SizedBox(width: 10),
//                 ElevatedButton(onPressed: resetTimer, child: Text("Reset")),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }