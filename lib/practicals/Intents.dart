// practicals/intents_example.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IntentsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Intents Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            const url = 'https://dhruvprajapati.vercel.app/';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Text('Go to my website'),
        ),
      ),
    );
  }
}
