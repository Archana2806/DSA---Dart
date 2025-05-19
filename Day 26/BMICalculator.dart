/*
Build a Simple BMI Calculator (Single Page)
Create an app where users can input their height and weight, and it calculates their Body Mass Index (BMI)—all within a single page.
Features:
✅ TextFields to input height (in meters) and weight (in kg).
✅ A Calculate button to compute BMI.
✅ Show the BMI value & health category (Underweight, Normal, Overweight, etc.).
*/



// import 'package:flutter/material.dart';

// class BMICalculatorPage extends StatefulWidget {
//   @override
//   _BMICalculatorPageState createState() => _BMICalculatorPageState();
// }

// class _BMICalculatorPageState extends State<BMICalculatorPage> {
//   TextEditingController heightController = TextEditingController();
//   TextEditingController weightController = TextEditingController();
//   String bmiResult = "";

//   void calculateBMI() {
//     double height = double.tryParse(heightController.text) ?? 0.0;
//     double weight = double.tryParse(weightController.text) ?? 0.0;

//     if (height > 0 && weight > 0) {
//       double bmi = weight / (height * height);
//       setState(() {
//         bmiResult = "BMI: ${bmi.toStringAsFixed(2)} - ${getBMICategory(bmi)}";
//       });
//     }
//   }

//   String getBMICategory(double bmi) {
//     if (bmi < 18.5) return "Underweight";
//     if (bmi < 24.9) return "Normal";
//     if (bmi < 29.9) return "Overweight";
//     return "Obese";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("BMI Calculator")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: heightController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(labelText: "Height (m)"),
//             ),
//             TextField(
//               controller: weightController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(labelText: "Weight (kg)"),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(onPressed: calculateBMI, child: Text("Calculate BMI")),
//             SizedBox(height: 20),
//             Text(
//               bmiResult,
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }