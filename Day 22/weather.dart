/*
Build a Simple Weather UI (Single Page, No API Required)
Create a weather app UI that displays weather conditions without using an API—perfect for practicing UI design.
Features:
✅ A Dropdown to select a city.
✅ A static temperature & weather condition display for the selected city.
✅ Use icons and colors to represent different weather conditions.
*/


// import 'package:flutter/material.dart';

// class WeatherPage extends StatefulWidget {
//   @override
//   _WeatherPageState createState() => _WeatherPageState();
// }

// class _WeatherPageState extends State<WeatherPage> {
//   String selectedCity = "New York";

//   Map<String, Map<String, dynamic>> weatherData = {
//     "New York": {"temp": "22°C", "condition": "Sunny", "icon": Icons.wb_sunny},
//     "London": {"temp": "16°C", "condition": "Cloudy", "icon": Icons.cloud},
//     "Tokyo": {"temp": "25°C", "condition": "Rainy", "icon": Icons.grain},
//     "Mumbai": {"temp": "30°C", "condition": "Humid", "icon": Icons.wb_cloudy},
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Weather App")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DropdownButton<String>(
//               value: selectedCity,
//               items: weatherData.keys
//                   .map((city) => DropdownMenuItem(
//                         value: city,
//                         child: Text(city),
//                       ))
//                   .toList(),
//               onChanged: (value) {
//                 setState(() {
//                   selectedCity = value!;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             Icon(
//               weatherData[selectedCity]!["icon"],
//               size: 100,
//               color: Colors.orange,
//             ),
//             SizedBox(height: 10),
//             Text(
//               weatherData[selectedCity]!["temp"],
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 5),
//             Text(
//               weatherData[selectedCity]!["condition"],
//               style: TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }