import 'package:flutter/material.dart';

void main() {
  runApp(
    CarWashApp(),
  );
}

class CarWashApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('A1A Car Wash'),
        ),
      ),
    );
  }
}
