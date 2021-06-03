import 'package:flutter/material.dart';

class App extends StatefulWidget {
  // const App({ Key? key }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "App Page",
            style: TextStyle(fontSize: 50),
          ),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Back'))
        ],
      ),
    );
  }
}
