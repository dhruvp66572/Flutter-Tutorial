import 'package:flutter/material.dart';
import 'package:flutter_application_2/practicals/Intents.dart';
import 'package:flutter_application_2/practicals/animation.dart';
import 'package:flutter_application_2/practicals/button_textexample.dart';
import 'package:flutter_application_2/practicals/listviewexample.dart';
import 'package:flutter_application_2/practicals/login_page.dart';
import 'package:flutter_application_2/practicals/navigationexample.dart';
import 'package:flutter_application_2/practicals/practical_1.dart';
import 'package:flutter_application_2/practicals/practical_2.dart';
import 'package:flutter_application_2/practicals/practical_3.dart';
import 'package:flutter_application_2/practicals/practical_4.dart';
import 'package:flutter_application_2/practicals/practical_5.dart';
import 'package:flutter_application_2/practicals/practical_6.dart';
import 'package:flutter_application_2/practicals/flutter_lifecycle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practical List',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PracticalList(), // This is the homepage
    );
  }
}

class PracticalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practical List'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Practical 1: Checkbox Example'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CheckboxExample()),
              );
            },
          ),
          ListTile(
            title: const Text('Practical 2: RecyclerViewExample'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  RecyclerViewExample()), // Assume this is in practical_2.dart
              );
            },
          ),
          ListTile(
            title: const Text('Practical 3: CallApplication Example'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  CallApplication()), // Assume this is in practical_2.dart
              );
            },
          ),
          ListTile(
            title: const Text('Practical 4: Calculator App Example'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  CalculatorApp()), // Assume this is in practical_2.dart
              );
            },
          ),
       ListTile(
            title: Text('Practical 5: Change App Icon'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangeAppIcon()),
              );
            },
          ),
          ListTile(
            title: Text('Practical 6: Splash Screen Example'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SplashScreenPractical()),
              );
            },
          ),
          ListTile(
            title: Text('Flutter Lifecycle Example'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FlutterLifecycle()),
              );
            },
          ),
          ListTile(
            title: Text('Login Page'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
          ListTile(
            title: Text('List View Example'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListViewExample()),
              );
            },
          ),
          ListTile(
            title: Text('Navigation Example'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExamApp()),
              );
            },
          ),
          ListTile(
            title: Text('Animation Example'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnimationExample()),
              );
            },
          ),
          ListTile(
            title: Text('TextAndButtonsExample Example'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextAndButtonsExample()),
              );
            },
          ),
          ListTile(
            title: Text('Intents Example'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IntentsExample()),
              );
            },
          ),

          // Add more ListTiles for other practicals
        ],
      ),
    );
  }
}
