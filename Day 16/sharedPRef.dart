/*
- Implement Local Storage Using SharedPreferences
- Store and retrieve user preferences (like theme mode or username) using SharedPreferences.
- Example:
- Save "dark mode" preference.
- Retrieve and apply the saved preference when the app restarts.
*/



// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool _isDarkMode = false;

//   @override
//   void initState() {
//     super.initState();
//     _loadThemePreference();
//   }

//   // Load saved preference
//   void _loadThemePreference() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _isDarkMode = prefs.getBool('darkMode') ?? false;
//     });
//   }

//   // Save preference
//   void _toggleTheme() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _isDarkMode = !_isDarkMode;
//       prefs.setBool('darkMode', _isDarkMode);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text("Theme Preference Demo")),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: _toggleTheme,
//             child: Text(_isDarkMode ? "Switch to Light Mode" : "Switch to Dark Mode"),
//           ),
//         ),
//       ),
//     );
//   }
// }
