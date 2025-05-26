/*
Build a Simple Contact Picker
Create an app where users can select a contact from their phone's address book, and display the contact name & phone number—all within a single page.
Features:
✅ Open the contact picker and select a contact.
✅ Display contact name & phone number dynamically.
✅ Handle contact permissions properly.
*/




// import 'package:flutter/material.dart';
// import 'package:contacts_service/contacts_service.dart';
// import 'package:permission_handler/permission_handler.dart';

// class ContactPickerPage extends StatefulWidget {
//   @override
//   _ContactPickerPageState createState() => _ContactPickerPageState();
// }

// class _ContactPickerPageState extends State<ContactPickerPage> {
//   String contactName = "No contact selected";
//   String contactNumber = "";

//   Future<void> pickContact() async {
//     PermissionStatus permission = await Permission.contacts.request();

//     if (permission.isGranted) {
//       Iterable<Contact> contacts = await ContactsService.getContacts();
//       if (contacts.isNotEmpty) {
//         Contact firstContact = contacts.first;
//         setState(() {
//           contactName = firstContact.displayName ?? "No Name";
//           contactNumber = firstContact.phones?.isNotEmpty == true
//               ? firstContact.phones!.first.value ?? ""
//               : "No Number";
//         });
//       }
//     } else {
//       setState(() {
//         contactName = "Permission Denied";
//         contactNumber = "";
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Contact Picker")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Name: $contactName",
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             Text(
//               "Phone: $contactNumber",
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: pickContact,
//               child: Text("Pick Contact"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }