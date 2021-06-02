import 'package:flutter/material.dart';
import 'home.dart';
// import 'package:flutter_learn/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Home()
      )
    );
  }
}
