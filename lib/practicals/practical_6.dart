import 'package:flutter/material.dart';

class SplashScreenPractical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task 6 - Splash Screen: Dhruv Prajapati (D23CE181)"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          '1. Add flutter_native_splash dependency.\n'
          '2. Configure splash screen in pubspec.yaml.\n'
          '3. Run the splash screen generator command.\n'
          '4. Splash screen will show on app launch.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
