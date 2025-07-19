// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // box1
            Container(height: 300, color: Colors.blue[300]),
            // box2
            Container(height: 200, color: Colors.blue[400]),
            // box3
            // Container(height: 100, width: 100, color: Colors.blue[600]),
            Expanded(child: Container(color: Colors.blue[600])),
          ],
        ),
      ),
    );
  }
}
