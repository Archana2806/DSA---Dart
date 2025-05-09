/*
- Use SQLite for Local Database Storage
- Implement SQLite in Flutter to store and retrieve user data.
- Example:
- Store a list of tasks (title, description).
- Retrieve and display tasks in a ListView.
*/




// import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';
// import 'package:path/path.dart';

// void main() {
//   runApp(TaskApp());
// }

// class Task {
//   final int? id;
//   final String title;
//   final String description;

//   Task({this.id, required this.title, required this.description});

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'title': title,
//       'description': description,
//     };
//   }
// }

// class DatabaseHelper {
//   static Database? _database;

//   Future<Database> get database async {
//     if (_database != null) return _database!;
//     _database = await initDB();
//     return _database!;
//   }

//   Future<Database> initDB() async {
//     Directory directory = await getApplicationDocumentsDirectory();
//     String path = join(directory.path, 'tasks.db');

//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: (db, version) async {
//         await db.execute(
//           "CREATE TABLE tasks(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, description TEXT)",
//         );
//       },
//     );
//   }

//   Future<void> insertTask(Task task) async {
//     final db = await database;
//     await db.insert('tasks', task.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);
//   }

//   Future<List<Task>> retrieveTasks() async {
//     final db = await database;
//     final List<Map<String, dynamic>> maps = await db.query('tasks');
//     return List.generate(maps.length, (i) {
//       return Task(id: maps[i]['id'], title: maps[i]['title'], description: maps[i]['description']);
//     });
//   }
// }

// class TaskApp extends StatefulWidget {
//   @override
//   _TaskAppState createState() => _TaskAppState();
// }

// class _TaskAppState extends State<TaskApp> {
//   final DatabaseHelper dbHelper = DatabaseHelper();
//   final List<Task> _tasks = [];

//   @override
//   void initState() {
//     super.initState();
//     _loadTasks();
//   }

//   void _loadTasks() async {
//     final tasks = await dbHelper.retrieveTasks();
//     setState(() {
//       _tasks.addAll(tasks);
//     });
//   }

//   void _addTask() async {
//     final newTask = Task(title: "New Task", description: "Task Description");
//     await dbHelper.insertTask(newTask);
//     _loadTasks();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Task List')),
//         body: ListView.builder(
//           itemCount: _tasks.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(_tasks[index].title),
//               subtitle: Text(_tasks[index].description),
//             );
//           },
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: _addTask,
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
