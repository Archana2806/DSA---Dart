/*
Build a Simple Image Picker & Viewer (Single Page)
Create an app where users can pick an image from their device’s gallery and display it—all within a single page.
Features:
✅ A button to open the image picker.
✅ Show the selected image on the screen.
✅ Handle cases where no image is selected.
*/

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';

// class ImagePickerPage extends StatefulWidget {
//   @override
//   _ImagePickerPageState createState() => _ImagePickerPageState();
// }

// class _ImagePickerPageState extends State<ImagePickerPage> {
//   File? _image;
//   final picker = ImagePicker();

//   Future<void> pickImage() async {
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Image Picker & Viewer")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _image != null
//                 ? Image.file(_image!, width: 200, height: 200)
//                 : Text("No image selected"),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: pickImage,
//               child: Text("Pick Image"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
