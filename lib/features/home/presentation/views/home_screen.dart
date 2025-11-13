import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [], title: Text('Home Screen')),
      body: Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Text('Welcome to the Home Screen!'),
          ),
        ),
      ),
    );
  }
}
