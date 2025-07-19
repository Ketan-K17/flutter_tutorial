import 'package:flutter/material.dart';
import 'package:wallpaper_ai/pages/home.dart';
import 'package:wallpaper_ai/pages/settings.dart';
import 'package:wallpaper_ai/pages/profile.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // list of pages in our app.
  final List<Widget> _pages = [HomePage(), SettingsPage(), ProfilePage()];

  // current page index.
  int _currentIndex = 0;

  // method to update current page index.
  void _navigateBottomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First Page",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 5.0,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateBottomBar,
        currentIndex: _currentIndex,
        items: [
          // home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          // settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),

          // profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
