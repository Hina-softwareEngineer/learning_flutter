import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  // const Api({ Key? key }) : super(key: key);

  @override
  _ApiState createState() => _ApiState();
}

class _ApiState extends State<Api> {
  // List users = [];

  getUser() async {
    List users = [];
    dynamic response =
        await http.get(Uri.https('jsonplaceholder.typicode.com', '/users'));
    dynamic jsonData = jsonDecode(response.body);

    for (var i in jsonData) {
      UserModel user = UserModel(i['name'], i['username'], i['email']);
      users.add(user);
    }

    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getUser(),
        builder: (context, snapshot) {
          print('------->$snapshot');
          if (snapshot.data == null) {
            return Container(
              child: Text("Nothing..."),
            );
          } else
            return ListView.builder(
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text(snapshot.data[i].name),
                  );
                },
                itemCount: snapshot.data.length);
        },
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
