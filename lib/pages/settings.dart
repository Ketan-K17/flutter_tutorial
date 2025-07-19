import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings Page",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 5.0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(child: Text("Settings Page")),
    );
  }
}
