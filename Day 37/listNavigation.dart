// Todo with navigation


// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'QuickNotes',
//       theme: ThemeData.dark(),
//       home: const HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final _controller = TextEditingController();
//   List<String> _notes = [];

//   @override
//   void initState() {
//     super.initState();
//     _loadNotes();
//   }

//   Future<void> _loadNotes() async {
//     final prefs = await SharedPreferences.getInstance();
//     final data = prefs.getString('notes');
//     if (data != null) {
//       setState(() {
//         _notes = List<String>.from(jsonDecode(data));
//       });
//     }
//   }

//   Future<void> _saveNotes() async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setString('notes', jsonEncode(_notes));
//   }

//   void _addNote() {
//     final text = _controller.text.trim();
//     if (text.isNotEmpty) {
//       setState(() {
//         _notes.add(text);
//         _controller.clear();
//       });
//       _saveNotes();
//     }
//   }

//   void _deleteNote(int index) {
//     setState(() {
//       _notes.removeAt(index);
//     });
//     _saveNotes();
//   }

//   void _openNoteDetail(int index) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (_) => NoteDetailScreen(
//           note: _notes[index],
//           onDelete: () {
//             _deleteNote(index);
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('QuickNotes')),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     decoration: const InputDecoration(
//                       hintText: 'Type a note...',
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.add),
//                   onPressed: _addNote,
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: _notes.isEmpty
//                 ? const Center(child: Text('No notes yet.'))
//                 : ListView.builder(
//                     itemCount: _notes.length,
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         title: Text(
//                           _notes[index],
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         onTap: () => _openNoteDetail(index),
//                         trailing: IconButton(
//                           icon: const Icon(Icons.delete),
//                           onPressed: () => _deleteNote(index),
//                         ),
//                       );
//                     },
//                   ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NoteDetailScreen extends StatelessWidget {
//   final String note;
//   final VoidCallback onDelete;

//   const NoteDetailScreen({
//     super.key,
//     required this.note,
//     required this.onDelete,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Note Details'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.delete),
//             onPressed: onDelete,
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Text(
//           note,
//           style: const TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }
