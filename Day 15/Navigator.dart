/*
- Build a Simple Navigation System Using Navigator
- Create a Flutter app with two screens and use Navigator.push() and Navigator.pop() for navigation.
- Example:
- Screen 1: Has a button "Go to Screen 2" → Navigates to Screen 2.
- Screen 2: Has a button "Back" → Returns to Screen 1.
*/




// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Navigation Demo',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: Screen1(),
//     );
//   }
// }

// class Screen1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Screen 1')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Screen2()),
//             );
//           },
//           child: Text('Go to Screen 2'),
//         ),
//       ),
//     );
//   }
// }

// class Screen2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Screen 2')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Back'),
//         ),
//       ),
//     );
//   }
// }
