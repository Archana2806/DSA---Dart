/*
Build a Simple Image Carousel (Single Page)
Create an app where users can swipe through images in a carousel—all within a single page.
Features:
✅ Swipe left/right to navigate images.
✅ Dots indicator showing current image position.
✅ Supports both manual swiping and automatic sliding.
*/



// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class ImageCarouselPage extends StatefulWidget {
//   @override
//   _ImageCarouselPageState createState() => _ImageCarouselPageState();
// }

// class _ImageCarouselPageState extends State<ImageCarouselPage> {
//   int currentIndex = 0;
//   List<String> images = [
//     'https://source.unsplash.com/random/800x600?nature',
//     'https://source.unsplash.com/random/800x600?mountain',
//     'https://source.unsplash.com/random/800x600?beach',
//     'https://source.unsplash.com/random/800x600?city'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Image Carousel")),
//       body: Column(
//         children: [
//           SizedBox(height: 20),
//           CarouselSlider(
//             options: CarouselOptions(
//               height: 300,
//               autoPlay: true,
//               enlargeCenterPage: true,
//               onPageChanged: (index, reason) {
//                 setState(() {
//                   currentIndex = index;
//                 });
//               },
//             ),
//             items: images.map((image) {
//               return Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
//                 ),
//                 margin: EdgeInsets.symmetric(horizontal: 8),
//               );
//             }).toList(),
//           ),
//           SizedBox(height: 10),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: images.asMap().entries.map((entry) {
//               return Container(
//                 width: 10,
//                 height: 10,
//                 margin: EdgeInsets.symmetric(horizontal: 4),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: currentIndex == entry.key ? Colors.blue : Colors.grey,
//                 ),
//               );
//             }).toList(),
//           ),
//         ],
//       ),
//     );
//   }
// }