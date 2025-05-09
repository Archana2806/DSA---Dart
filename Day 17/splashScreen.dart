/*
- Create a Custom Animated Splash Screen
- Build a splash screen with an animation that fades in the app logo before navigating to the home screen.
- Example:
- Show a logo animation for 3 seconds.
- Navigate to the main screen automatically.
*/




// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashScreen(),
//     );
//   }
// }

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   double _opacity = 0.0;

//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(milliseconds: 500), () {
//       setState(() {
//         _opacity = 1.0;
//       });
//     });

//     Future.delayed(Duration(seconds: 3), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (context) => HomeScreen()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: AnimatedOpacity(
//           duration: Duration(seconds: 2),
//           opacity: _opacity,
//           child: Image.network(
//             'https://flutter.dev/assets/flutter-logo-sharing-96270b8e28e01d39d3f38dcdd69f3c96.png',
//             width: 150,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home")),
//       body: Center(child: Text("Welcome to the Home Screen!")),
//     );
//   }
// }
