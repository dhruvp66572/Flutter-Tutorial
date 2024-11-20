import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _input = "";
  String _output = "";

  void _buttonPressed(String value) {
    setState(() {
      if (value == "C") {
        _input = "";
        _output = "";
      } else if (value == "=") {
        try {
          Parser parser = Parser();
          Expression expression = parser.parse(_input);
          ContextModel contextModel = ContextModel();
          double eval = expression.evaluate(EvaluationType.REAL, contextModel);
          _output = eval.toString();
        } catch (e) {
          _output = "Error";
        }
      } else {
        _input += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 4 - Calculator: Dhruv Prajapati (D23CE181)"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    _input,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _output,
                    style: TextStyle(fontSize: 24, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                children: [
                  _buildButton("7"),
                  _buildButton("8"),
                  _buildButton("9"),
                  _buildButton("/"),
                  _buildButton("4"),
                  _buildButton("5"),
                  _buildButton("6"),
                  _buildButton("*"),
                  _buildButton("1"),
                  _buildButton("2"),
                  _buildButton("3"),
                  _buildButton("-"),
                  _buildButton("C"),
                  _buildButton("0"),
                  _buildButton("="),
                  _buildButton("+"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String value) {
    return ElevatedButton(
      onPressed: () => _buttonPressed(value),
      child: Text(
        value,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
