/*
- Implement a Drawer Navigation
- Create a Flutter app with a Drawer that allows navigation between different screens.
- Example:
- Drawer Items: Home, Profile, Settings
- Clicking an item should navigate to the respective screen.
*/





// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Drawer Navigation',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home")),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(color: Colors.blue),
//               child: Text("Drawer Header", style: TextStyle(color: Colors.white, fontSize: 24)),
//             ),
//             ListTile(
//               title: Text("Profile"),
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
//               },
//             ),
//             ListTile(
//               title: Text("Settings"),
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Center(child: Text("Welcome to Home Screen")),
//     );
//   }
// }

// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Profile")),
//       body: Center(child: Text("Welcome to Profile Screen")),
//     );
//   }
// }

// class SettingsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Settings")),
//       body: Center(child: Text("Welcome to Settings Screen")),
//     );
//   }
// }
