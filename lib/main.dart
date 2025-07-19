// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = [
    "Nate",
    "John",
    "Jane",
    "Jim",
    "Jill",
    "Jack",
    "Jill",
    "Jim",
    "Jane",
    "John",
    "Nate",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) => ListTile(title: Text(names[index])),
        ),
      ),
    );
  }
}
