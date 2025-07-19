// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // functions/methods
  void UserTapped() {
    print("Tap");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          // put a gesture detector on any widget to make it responsive to your touch.
          child: GestureDetector(
            onTap: UserTapped,
            child: Container(
              height: 300,
              width: 300,
              color: Colors.blue[100],
              child: Center(child: Text("Tap Me!")),
            ),
          ),
        ),
      ),
    );
  }
}

// PRO TIP: go to a container, press cmd + . to get the lightbulb menu. Super handy.
