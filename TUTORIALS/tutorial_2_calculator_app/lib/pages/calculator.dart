import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _display = '';

  void _onButtonPressed(String value) {
    HapticFeedback.lightImpact();
    setState(() {
      if (value == '=') {
        try {
          _display = _evaluateExpression(_display).toString();
        } catch (e) {
          _display = 'Error';
        }
      } else if (value == 'CLR') {
        _display = '';
      } else {
        _display += value;
      }
    });
  }

  int _evaluateExpression(String expression) {
    // Simple expression evaluator for basic operations
    expression = expression.replaceAll(' ', '');

    // Handle multiplication and division first
    while (expression.contains('x') || expression.contains('/')) {
      RegExp regExp = RegExp(r'(\d+\.?\d*)([x/])(\d+\.?\d*)');
      expression = expression.replaceAllMapped(regExp, (match) {
        int num1 = int.parse(match.group(1)!);
        String operator = match.group(2)!;
        int num2 = int.parse(match.group(3)!);

        if (operator == 'x') {
          return ((num1 * num2).toInt()).toString();
        } else {
          return ((num1 / num2).toInt()).toString();
        }
      });
    }

    // Handle addition and subtraction
    while (expression.contains('+') || expression.contains('-')) {
      RegExp regExp = RegExp(r'(\d+\.?\d*)([+-])(\d+\.?\d*)');
      expression = expression.replaceAllMapped(regExp, (match) {
        int num1 = int.parse(match.group(1)!);
        String operator = match.group(2)!;
        int num2 = int.parse(match.group(3)!);

        if (operator == '+') {
          return ((num1 + num2).toInt()).toString();
        } else {
          return ((num1 - num2).toInt()).toString();
        }
      });
    }

    return int.parse(expression);
  }

  Widget _buildButton(String text, {bool isOperator = false}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          onPressed: () => _onButtonPressed(text),
          style: ElevatedButton.styleFrom(
            backgroundColor: isOperator ? Colors.white : Colors.white,
            foregroundColor: isOperator ? Colors.black : Colors.black,
            side: const BorderSide(color: Colors.black, width: 2),
            shape: isOperator
                ? const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )
                : const CircleBorder(),
            padding: const EdgeInsets.all(20),
          ),
          child: Text(text, style: const TextStyle(fontSize: 24)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Display
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => _onButtonPressed('CLR'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        side: const BorderSide(color: Colors.black, width: 2),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        minimumSize: const Size(50, 30),
                      ),
                      child: const Text('CLR', style: TextStyle(fontSize: 20)),
                    ),
                    Expanded(
                      child: Text(
                        _display.isEmpty ? '0' : _display,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Buttons
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // Row 1: 1, 2, 3, =
                  Expanded(
                    child: Row(
                      children: [
                        _buildButton('1'),
                        _buildButton('2'),
                        _buildButton('3'),
                        _buildButton('=', isOperator: true),
                      ],
                    ),
                  ),
                  // Row 2: 4, 5, 6, -
                  Expanded(
                    child: Row(
                      children: [
                        _buildButton('4'),
                        _buildButton('5'),
                        _buildButton('6'),
                        _buildButton('-', isOperator: true),
                      ],
                    ),
                  ),
                  // Row 3: 7, 8, 9, x
                  Expanded(
                    child: Row(
                      children: [
                        _buildButton('7'),
                        _buildButton('8'),
                        _buildButton('9'),
                        _buildButton('x', isOperator: true),
                      ],
                    ),
                  ),
                  // Row 4: 0, +
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Container()), // Empty space
                        _buildButton('0'),
                        Expanded(child: Container()), // Empty space
                        _buildButton('/', isOperator: true),
                      ],
                    ),
                  ),
                  // Row 5: +
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Container()), // Empty space
                        Expanded(child: Container()), // Empty space
                        Expanded(child: Container()), // Empty space
                        _buildButton('+', isOperator: true),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
