// practicals/flutter_lifecycle.dart
import 'package:flutter/material.dart';

class FlutterLifecycle extends StatefulWidget {
  @override
  _FlutterLifecycleState createState() => _FlutterLifecycleState();
}

class _FlutterLifecycleState extends State<FlutterLifecycle> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    print('initState called');
  }

  @override
  void dispose() {
    print('dispose called');
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('AppLifecycleState: $state');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Lifecycle Example')),
      body: Center(
        child: Text('Observe lifecycle changes in the console'),
      ),
    );
  }
}
