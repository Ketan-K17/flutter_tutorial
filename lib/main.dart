// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:wallpaper_ai/pages/first_page.dart';
import 'package:wallpaper_ai/pages/home.dart';
import 'package:wallpaper_ai/pages/settings.dart';
import 'package:wallpaper_ai/pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => FirstPage(),
        "/home": (context) => HomePage(),
        "/settings": (context) => SettingsPage(),
        "/profile": (context) => ProfilePage(),
      },
    );
  }
}

// when the navigation gets complex enough (many pages), you may want to maintain a routes section (routing table) to organise routes to all the pages.

// the navigation code for all the pages will be a lot easier to read, plus all the page related imports get put only into main, allowing for a cleaner dev experience.
