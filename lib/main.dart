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
        body: ListView(
          children: [
            // box1
            Container(height: 400, color: Colors.blue[800]),
            // box2
            Container(height: 400, color: Colors.blue[400]),
            // box3 (won't fit because containers are too large. Use ListView here to make containers scrollable.)
            Container(height: 400, color: Colors.blue[200]),
          ],
        ),
      ),
    );
  }
}
