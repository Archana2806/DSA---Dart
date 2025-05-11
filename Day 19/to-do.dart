/*
Build a Simple To-Do List (Single Page)
Create a basic to-do list where users can add, delete, and mark tasks as completed—all within a single page.
Features:
✅ Add new tasks using a TextField.
✅ Display tasks in a ListView.
✅ Tap a task to mark it as completed (strike-through text).
✅ Delete tasks using a Dismissible widget.
*/





// import 'package:flutter/material.dart';

// class TodoPage extends StatefulWidget {
//   @override
//   _TodoPageState createState() => _TodoPageState();
// }

// class _TodoPageState extends State<TodoPage> {
//   List<Map<String, dynamic>> tasks = [];
//   TextEditingController taskController = TextEditingController();

//   void addTask() {
//     if (taskController.text.isNotEmpty) {
//       setState(() {
//         tasks.add({"title": taskController.text, "completed": false});
//         taskController.clear();
//       });
//     }
//   }

//   void toggleTaskCompletion(int index) {
//     setState(() {
//       tasks[index]["completed"] = !tasks[index]["completed"];
//     });
//   }

//   void deleteTask(int index) {
//     setState(() {
//       tasks.removeAt(index);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("To-Do List")),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextField(
//               controller: taskController,
//               decoration: InputDecoration(
//                 labelText: "Enter Task",
//                 suffixIcon: IconButton(
//                   icon: Icon(Icons.add),
//                   onPressed: addTask,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: tasks.length,
//                 itemBuilder: (context, index) {
//                   return Dismissible(
//                     key: Key(tasks[index]["title"]),
//                     onDismissed: (direction) => deleteTask(index),
//                     background: Container(color: Colors.red),
//                     child: ListTile(
//                       title: Text(
//                         tasks[index]["title"],
//                         style: TextStyle(
//                           decoration: tasks[index]["completed"]
//                               ? TextDecoration.lineThrough
//                               : TextDecoration.none,
//                         ),
//                       ),
//                       trailing: Checkbox(
//                         value: tasks[index]["completed"],
//                         onChanged: (value) => toggleTaskCompletion(index),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }