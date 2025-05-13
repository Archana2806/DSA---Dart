/*
Build a Simple Currency Converter (Single Page)
Create a currency converter using Flutter that allows users to input an amount and convert it between two currencies—all within a single page.
Features:
✅ A TextField for users to enter an amount.
✅ A Dropdown to select the currency to convert from.
✅ A Dropdown to select the currency to convert to.
✅ A Convert button to display the converted amount.
*/



// import 'package:flutter/material.dart';

// class CurrencyConverterPage extends StatefulWidget {
//   @override
//   _CurrencyConverterPageState createState() => _CurrencyConverterPageState();
// }

// class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
//   TextEditingController amountController = TextEditingController();
//   String fromCurrency = "USD";
//   String toCurrency = "INR";
//   double convertedAmount = 0.0;

//   Map<String, double> exchangeRates = {
//     "USD_INR": 83.0,
//     "INR_USD": 0.012,
//     "EUR_INR": 90.0,
//     "INR_EUR": 0.011,
//   };

//   void convertCurrency() {
//     String key = "${fromCurrency}_${toCurrency}";
//     double rate = exchangeRates[key] ?? 1.0;
//     double amount = double.tryParse(amountController.text) ?? 0.0;

//     setState(() {
//       convertedAmount = amount * rate;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Currency Converter")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: amountController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(labelText: "Enter amount"),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 DropdownButton<String>(
//                   value: fromCurrency,
//                   items: ["USD", "INR", "EUR"]
//                       .map((currency) => DropdownMenuItem(
//                             value: currency,
//                             child: Text(currency),
//                           ))
//                       .toList(),
//                   onChanged: (value) {
//                     setState(() {
//                       fromCurrency = value!;
//                     });
//                   },
//                 ),
//                 SizedBox(width: 20),
//                 Text("to"),
//                 SizedBox(width: 20),
//                 DropdownButton<String>(
//                   value: toCurrency,
//                   items: ["USD", "INR", "EUR"]
//                       .map((currency) => DropdownMenuItem(
//                             value: currency,
//                             child: Text(currency),
//                           ))
//                       .toList(),
//                   onChanged: (value) {
//                     setState(() {
//                       toCurrency = value!;
//                     });
//                   },
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(onPressed: convertCurrency, child: Text("Convert")),
//             SizedBox(height: 20),
//             Text(
//               "Converted Amount: $convertedAmount $toCurrency",
//               style: TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }