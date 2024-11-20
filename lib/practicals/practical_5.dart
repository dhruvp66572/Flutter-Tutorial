import 'package:flutter/material.dart';

class ChangeAppIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 5 - Change App Icon: Dhruv Prajapati (D23CE181)"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          '1. Add flutter_launcher_icons dependency.\n'
          '2. Configure the app icon in pubspec.yaml.\n'
          '3. Run the flutter_launcher_icons command.\n'
          '4. Your app icon will be updated.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
