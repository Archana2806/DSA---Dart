/*
Reusable Button Widget
Task:
Build a custom reusable button in Flutter.
You should be able to call it from anywhere by just passing:

The button text

The onTap callback
*/

// import 'package:flutter/material.dart';

// class CustomButton extends StatelessWidget {
//   final String text;
//   final VoidCallback onTap;

//   const CustomButton({
//     Key? key,
//     required this.text,
//     required this.onTap,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//         decoration: BoxDecoration(
//           color: Colors.orange,
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(color: Colors.white, fontSize: 16),
//           ),
//         ),
//       ),
//     );
//   }
// }
