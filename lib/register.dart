import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatelessWidget {
  // const Register({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void register() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;
    final String username = usernameController.text;
    final String email = emailController.text;
    final String password = passwordController.text;
    print(username);
    print(email);
    print(password);

    try {
      final UserCredential user = await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      db
          .collection("users")
          .doc(user.user.uid)
          .set({'email': email, 'username': username});

      Navigator.of(context).pushNamed("/home");
    } catch (e) {
      print("error $e");
    }
  }


    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
          child: Column(children: [
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Enter your username",
              ),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Enter your email",
              ),
            ),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Enter your password",
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Enter your password",
              ),
            ),
            ElevatedButton(onPressed: register, child: Text("Register"))
          ]),
        ),
      ),
    );
  }
}
