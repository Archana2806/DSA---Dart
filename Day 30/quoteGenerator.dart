/*
Build a Simple Random Quote Generator (Single Page)
Create an app where users can press a button to generate a random quote—all within a single page.
Features:
✅ A button to fetch and display a new quote.
✅ A list of predefined quotes stored locally.
✅ Smooth UI updates as new quotes are generated.
*/



// import 'package:flutter/material.dart';
// import 'dart:math';

// class QuoteGeneratorPage extends StatefulWidget {
//   @override
//   _QuoteGeneratorPageState createState() => _QuoteGeneratorPageState();
// }

// class _QuoteGeneratorPageState extends State<QuoteGeneratorPage> {
//   List<String> quotes = [
//     "The secret of getting ahead is getting started. – Mark Twain",
//     "Success is not final, failure is not fatal: It is the courage to continue that counts. – Winston Churchill",
//     "Believe you can and you're halfway there. – Theodore Roosevelt",
//     "Don't watch the clock; do what it does. Keep going. – Sam Levenson",
//     "Your time is limited, so don’t waste it living someone else’s life. – Steve Jobs"
//   ];

//   String currentQuote = "Tap below to get a quote";

//   void generateQuote() {
//     setState(() {
//       currentQuote = quotes[Random().nextInt(quotes.length)];
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Random Quote Generator")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               currentQuote,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: generateQuote,
//               child: Text("Generate Quote"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }