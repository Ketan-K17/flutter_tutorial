import 'package:flutter/material.dart';
import 'package:wallpaper_ai/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
        backgroundColor: Colors.blue,
        elevation: 5.0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // you need this syntax when going from one page to the another.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child: Text("Go to Second Page"),
        ),
      ),
    );
  }
}
