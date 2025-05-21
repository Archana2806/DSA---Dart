/*
Build a Simple Digital Clock (Single Page)
Create an app where a digital clock updates every second, displaying the current time—all within a single page.
Features:
✅ Show the current hour, minute, and second dynamically.
✅ Use DateTime.now() to fetch the current time.
✅ Auto-refresh every second to display real-time time updates.
*/


// import 'package:flutter/material.dart';
// import 'dart:async';

// class DigitalClockPage extends StatefulWidget {
//   @override
//   _DigitalClockPageState createState() => _DigitalClockPageState();
// }

// class _DigitalClockPageState extends State<DigitalClockPage> {
//   String currentTime = "";

//   @override
//   void initState() {
//     super.initState();
//     updateClock();
//   }

//   void updateClock() {
//     Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         currentTime = "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}";
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Digital Clock")),
//       body: Center(
//         child: Text(
//           currentTime.isNotEmpty ? currentTime : "Loading...",
//           style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }