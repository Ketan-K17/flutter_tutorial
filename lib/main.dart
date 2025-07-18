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
        appBar: AppBar(
          title: Text(
            "My First Flutter App!",
            style: TextStyle(color: Colors.white),
          ),
          elevation: 8.0,
          centerTitle: true,
          backgroundColor: Colors.blue[800],
          leading: IconButton(
            onPressed: () {
              print("Menu button pressed");
            },
            icon: Icon(Icons.menu),
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {
                print("Search button pressed");
              },
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.blue, width: 5),
            ),
            padding: EdgeInsets.all(25),
            // padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            // child: Text(
            //   "Ketan KUNKALIKAR",
            //   style: TextStyle(
            //     color: Colors.deepPurple[700],
            //     fontSize: 30,
            //     fontWeight: FontWeight.bold,
            //     fontStyle: FontStyle.italic,
            //   ),
            child: Icon(Icons.favorite_sharp, size: 50, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
