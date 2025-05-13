/*
Build a Simple QR Code Generator (Single Page)
Create a QR code generator using Flutter where users can enter text, and it generates a QR code—all within a single page.
Features:
✅ A TextField where users enter text.
✅ A Generate button to create a QR code.
✅ Display the QR code dynamically based on user input.
*/



// import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// class QRGeneratorPage extends StatefulWidget {
//   @override
//   _QRGeneratorPageState createState() => _QRGeneratorPageState();
// }

// class _QRGeneratorPageState extends State<QRGeneratorPage> {
//   TextEditingController textController = TextEditingController();
//   String qrData = "";

//   void generateQR() {
//     setState(() {
//       qrData = textController.text;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("QR Code Generator")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: textController,
//               decoration: InputDecoration(
//                 labelText: "Enter text",
//                 suffixIcon: IconButton(
//                   icon: Icon(Icons.qr_code),
//                   onPressed: generateQR,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             qrData.isNotEmpty
//                 ? QrImage(
//                     data: qrData,
//                     size: 200,
//                   )
//                 : Text("Enter text to generate QR code"),
//           ],
//         ),
//       ),
//     );
//   }
// }