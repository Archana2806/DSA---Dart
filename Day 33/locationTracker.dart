/*
Build a Simple Location Tracker (Single Page)
Create an app where users can get their current GPS location and display it dynamically—all within a single page.
Features:
✅ Fetch the device's current location using GPS.
✅ Display latitude and longitude dynamically.
✅ Handle location permissions properly.
*/



// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

// class LocationTrackerPage extends StatefulWidget {
//   @override
//   _LocationTrackerPageState createState() => _LocationTrackerPageState();
// }

// class _LocationTrackerPageState extends State<LocationTrackerPage> {
//   String locationMessage = "Tap the button to get location";

//   Future<void> getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     // Check if location services are enabled
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       setState(() {
//         locationMessage = "Location services are disabled";
//       });
//       return;
//     }

//     // Check for location permission
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.deniedForever) {
//         setState(() {
//           locationMessage = "Location permissions are permanently denied";
//         });
//         return;
//       }
//     }

//     // Get current position
//     Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);

//     setState(() {
//       locationMessage =
//           "Latitude: ${position.latitude}, Longitude: ${position.longitude}";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Location Tracker")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               locationMessage,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: getCurrentLocation,
//               child: Text("Get Location"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }