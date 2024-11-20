// practicals/list_view_example.dart
import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  final List<String> items = List.generate(15, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Example')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.list),
            title: Text(items[index]),
            onTap: () => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Tapped on ${items[index]}')),
            ),
          );
        },
      ),
    );
  }
}
