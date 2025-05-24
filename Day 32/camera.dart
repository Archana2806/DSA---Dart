/*
Build a Simple Camera App
Create an app where users can open the camera, take a picture, and display it on the screen—all within a single page.
Features:
✅ Open the device camera using the image_picker package.
✅ Capture an image and display it in the UI.
✅ Handle camera permissions dynamically.
*/





// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';

// class CameraPage extends StatefulWidget {
//   @override
//   _CameraPageState createState() => _CameraPageState();
// }

// class _CameraPageState extends State<CameraPage> {
//   File? _image;
//   final picker = ImagePicker();

//   Future<void> takePicture() async {
//     final pickedFile = await picker.pickImage(source: ImageSource.camera);

//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Camera App")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _image != null
//                 ? Image.file(_image!, width: 200, height: 200)
//                 : Text("No image captured"),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: takePicture,
//               child: Text("Open Camera"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }