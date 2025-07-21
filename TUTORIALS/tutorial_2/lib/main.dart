// the lecture from 1 hour point onwards is gospel, refer it for this particular tutorial project.

import 'package:flutter/material.dart';
import 'package:tutorial_2/pages/counter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: CounterPage());
  }
}
