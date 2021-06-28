import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  // const Api({ Key? key }) : super(key: key);

  @override
  _ApiState createState() => _ApiState();
}

class _ApiState extends State<Api> {
  getUser() async {
    dynamic response =
        await http.get(Uri.https('jsonplaceholder.typicode.com', '/users'));
    print(response);
    dynamic jsonData = jsonDecode(response.body);
    print('------------$jsonData-----------');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            getUser();
          },
          child: Text("Get"),
        ),
      ),
    );
  }
}

class UserModel {
  String name;
  String username;
  String email;

  UserModel(this.name, this.username, this.email);
}
