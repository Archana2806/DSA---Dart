/*
Build a Simple Temperature Converter (Single Page)
Create an app where users can input a temperature, select a unit (Celsius, Fahrenheit), and convert it to another unit—all within a single page.
Features:
✅ TextField for users to enter the temperature.
✅ Dropdown to select the input temperature unit.
✅ Convert button to calculate the converted temperature.
✅ Display the converted temperature dynamically.
*/



// import 'package:flutter/material.dart';

// class TemperatureConverterPage extends StatefulWidget {
//   @override
//   _TemperatureConverterPageState createState() => _TemperatureConverterPageState();
// }

// class _TemperatureConverterPageState extends State<TemperatureConverterPage> {
//   TextEditingController tempController = TextEditingController();
//   String fromUnit = "Celsius";
//   String toUnit = "Fahrenheit";
//   double convertedTemp = 0.0;

//   void convertTemperature() {
//     double temp = double.tryParse(tempController.text) ?? 0.0;

//     setState(() {
//       if (fromUnit == "Celsius" && toUnit == "Fahrenheit") {
//         convertedTemp = (temp * 9 / 5) + 32;
//       } else if (fromUnit == "Fahrenheit" && toUnit == "Celsius") {
//         convertedTemp = (temp - 32) * 5 / 9;
//       } else {
//         convertedTemp = temp; // If both units are the same
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Temperature Converter")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: tempController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(labelText: "Enter temperature"),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 DropdownButton<String>(
//                   value: fromUnit,
//                   items: ["Celsius", "Fahrenheit"].map((unit) {
//                     return DropdownMenuItem(value: unit, child: Text(unit));
//                   }).toList(),
//                   onChanged: (value) {
//                     setState(() {
//                       fromUnit = value!;
//                     });
//                   },
//                 ),
//                 SizedBox(width: 20),
//                 Text("to"),
//                 SizedBox(width: 20),
//                 DropdownButton<String>(
//                   value: toUnit,
//                   items: ["Celsius", "Fahrenheit"].map((unit) {
//                     return DropdownMenuItem(value: unit, child: Text(unit));
//                   }).toList(),
//                   onChanged: (value) {
//                     setState(() {
//                       toUnit = value!;
//                     });
//                   },
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(onPressed: convertTemperature, child: Text("Convert")),
//             SizedBox(height: 20),
//             Text(
//               "Converted Temperature: ${convertedTemp.toStringAsFixed(2)} $toUnit",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }