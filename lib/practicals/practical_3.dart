import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CallApplication(),
    );
  }
}

class CallApplication extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 3 - Call App: Dhruv Prajapati (D23CE181)"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'Enter phone number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _makePhoneCall(_controller.text);
              },
              child: Text('Call'),
            ),
          ],
        ),
      ),
    );
  }

  void _makePhoneCall(String number) async {
    final uri = 'tel:$number';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}
