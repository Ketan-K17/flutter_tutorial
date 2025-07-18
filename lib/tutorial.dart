import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  // print("Hi there");
  // print(17 + 34);
  // print(9 == 9);
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // variables
  String name = "Ketan Kunkalikar";
  int age = 23;
  double pi = 3.14;
  bool isBeginner = true;
  // -------------------------------------------------------
  // operators
  // +, -, *, /, %, ==, !=, >, <, >=, <=, &&, ||, !
  // 1. Arithmetic Operators (1 + 1 -> 2)
  // 2. Assignment Operators (a = 10)
  // 3. Comparison Operators (1 == 1 -> true)
  // 4. Logical Operators (true && false -> false)
  // -------------------------------------------------------

  // control flow
  // if, else, else if, switch, for, while, do while, break, continue, return

  @override
  Widget build(BuildContext context) {
    // print(name);
    // -------------------------------------------------------
    // if-else blocks
    // if (age >= 18) {
    //   print("You are an adult");
    // } else {
    //   print("You are a minor");
    // }

    // switch-case blocks
    // String grade = "K";
    // switch (grade) {
    //   case "A":
    //     print("You got an A Grade");
    //     break;
    //   case "B":
    //     print("You got an B Grade");
    //     break;
    //   case "C":
    //     print("You got an C Grade");
    //     break;
    //   default:
    //     print("You got an F Grade");
    //     break;
    // }

    // for loop
    // for (int i = 0; i <= 10; i++) {
    //   if (i == 7) break;
    //   print(i);
    // }

    // while loop
    // int i = 0;
    // while (i < 10) {
    //   print(i);
    //   i++;
    // }

    // -------------------------------------------------------
    // functions

    // void greet() {
    //   print("Hey there $name!");
    // }

    // greet();

    // void greet(String name, int age) {
    //   print("Hey there $name! You are $age years old.");
    // }

    // greet("Ketan", 23);

    // int add(int a, int b) {
    //   return a + b;
    // }

    // print(add(10, 20));

    // -------------------------------------------------------

    // -------------------------------------------------------

    // Data Structures

    // List
    // List<String> names = ["Ketan", "Vedant", "Nischal"];
    // print(names[0]);
    // names.add("Dakshal");
    // print(names[3]);
    // names.remove("Ketan");
    // print(names);

    // set
    // Set<int> numbers = {17, 34, 51};
    // print(numbers);
    // numbers.add(102);
    // print(numbers);
    // numbers.remove(51);
    // print(numbers);
    // print(numbers.contains(17));
    // print(numbers.length);

    // Map - basically dicts from python.
    Map<String, int> age = {"Ketan": 23, "Vedant": 22, "Nischal": 21};
    print(age["Ketan"]);
    age["Dakshal"] = 20;
    print(age);
    age.remove("Vedant");
    print(age);
    print(age.containsKey("Ketan"));

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
