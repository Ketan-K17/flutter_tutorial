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
        body: GridView.builder(
          // grid delegate is used to define the number of items in a row. Nothing too fancy.
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
          ),
          itemCount: 64,
          itemBuilder: (context, index) {
            int row = index ~/ 8;
            int col = index % 8;
            bool isBlack = (row % 2 == 0) ? (col % 2 == 0) : (col % 2 != 0);
            return Container(
              width: 100,
              height: 100,
              color: isBlack ? Colors.black : Colors.white,
            );
          },
        ),
      ),
    );
  }
}
