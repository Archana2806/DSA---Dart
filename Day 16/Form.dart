/*
- Build a Simple Form with Validation
- Create a Flutter form with fields for name, email, and password.
- Example:
- Validate that the email is properly formatted.
- Ensure the password is at least 6 characters long.
- Show error messages if validation fails.

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
//       home: FormScreen(),
//     );
//   }
// }

// class FormScreen extends StatefulWidget {
//   @override
//   _FormScreenState createState() => _FormScreenState();
// }

// class _FormScreenState extends State<FormScreen> {
//   final _formKey = GlobalKey<FormState>();
//   String _name = '';
//   String _email = '';
//   String _password = '';

//   void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Form Submitted Successfully!")),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Simple Form with Validation")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 decoration: InputDecoration(labelText: "Name"),
//                 validator: (value) {
//                   return value!.isEmpty ? "Please enter your name" : null;
//                 },
//                 onSaved: (value) => _name = value!,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: "Email"),
//                 keyboardType: TextInputType.emailAddress,
//                 validator: (value) {
//                   return RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z]+\.[a-zA-Z]+$')
//                           .hasMatch(value!)
//                       ? null
//                       : "Enter a valid email";
//                 },
//                 onSaved: (value) => _email = value!,
//               ),
//               TextFormField(
//                 decoration: InputDecoration(labelText: "Password"),
//                 obscureText: true,
//                 validator: (value) {
//                   return value!.length < 6 ? "Password must be at least 6 characters" : null;
//                 },
//                 onSaved: (value) => _password = value!,
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _submitForm,
//                 child: Text("Submit"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
