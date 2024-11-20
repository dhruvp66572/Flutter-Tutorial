// practicals/text_and_buttons.dart
import 'package:flutter/material.dart';

class TextAndButtonsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text and Buttons Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('ElevatedButton Pressed')),
                );
              },
              child: Text('Elevated Button'),
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('TextButton Pressed')),
                );
              },
              child: Text('Text Button'),
            ),
          ],
        ),
      ),
    );
  }
}
