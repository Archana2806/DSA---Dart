/*
- Fetch and Display Data from an API
- Write a Dart function to fetch JSON data from an API and display it in a Flutter app.
- Example:
- Fetch data from https://jsonplaceholder.typicode.com/posts
- Display the title and body of each post in a ListView.
*/

// import 'dart:convert';
// import 'dart:html';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// Future<List<Post>> fetchPosts() async {
//   final response = await HttpRequest.getString('https://jsonplaceholder.typicode.com/posts');
//   List jsonResponse = json.decode(response);
//   return jsonResponse.map((post) => Post.fromJson(post)).toList();
// }

// class Post {
//   final String title;
//   final String body;

//   Post({required this.title, required this.body});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       title: json['title'],
//       body: json['body'],
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'API Data Fetch',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: PostScreen(),
//     );
//   }
// }

// class PostScreen extends StatefulWidget {
//   @override
//   _PostScreenState createState() => _PostScreenState();
// }

// class _PostScreenState extends State<PostScreen> {
//   late Future<List<Post>> futurePosts;

//   @override
//   void initState() {
//     super.initState();
//     futurePosts = fetchPosts();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Posts')),
//       body: FutureBuilder<List<Post>>(
//         future: futurePosts,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             return ListView.builder(
//               itemCount: snapshot.data!.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(snapshot.data![index].title),
//                   subtitle: Text(snapshot.data![index].body),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }