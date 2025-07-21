// A basic app needs 3 things - variable, method, UI.

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  // method
  void _incrementCounter() {
    setState(() {
      // if you're changing a state variable, you must use setState, for it to be reflected in the UI. setState is a method that tells flutter to rebuild the widget.
      _counter++;
    });
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // message
            Text("You have clicked the button this many times:"),
            // counter
            Text("$_counter", style: TextStyle(fontSize: 40)),
            // button
            ElevatedButton(onPressed: _incrementCounter, child: Text("+")),
          ],
        ),
      ),
    );
  }
}
