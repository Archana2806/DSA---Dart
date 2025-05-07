/*
- Implement a Simple State Management Using Provider
- Create a counter app using Flutter’s Provider package for state management.
- Example:
- Increment button → Updates the counter value across the app.
- Decrement button → Decreases the counter value.
*/


// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Counter App',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: CounterScreen(),
//     );
//   }
// }

// class CounterScreen extends StatefulWidget {
//   @override
//   _CounterScreenState createState() => _CounterScreenState();
// }

// class _CounterScreenState extends State<CounterScreen> {
//   int _count = 0;

//   void _increment() {
//     setState(() {
//       _count++;
//     });
//   }

//   void _decrement() {
//     setState(() {
//       _count--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Counter App')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Counter Value:', style: TextStyle(fontSize: 20)),
//             Text('$_count', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(onPressed: _increment, child: Text('Increment')),
//                 SizedBox(width: 20),
//                 ElevatedButton(onPressed: _decrement, child: Text('Decrement')),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }