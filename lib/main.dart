import 'package:flutter/material.dart';
import 'package:flutter_learn/register.dart';

import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({ Key key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("Something wrong");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              title: "Fluter Demo",
              theme: ThemeData(primarySwatch: Colors.blue),
              routes: {
                "/": (context) => Home(),
                // '/login': (context) => Scaffold(body: Container(child : Text("Login"))) ,
                // '/register': (context) => Scaffold(body: Text("Register")) ,
                // '/home': (context) => Scaffold(body: Text("HOme")) ,
              },
            );
          }

          return Home();
        });
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Hello"),
      ),
    );
  }
}
