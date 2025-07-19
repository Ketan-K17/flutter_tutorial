import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 5.0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(child: Text("Home Page")),
    );
  }
}
