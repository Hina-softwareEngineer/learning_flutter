import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  // const UserProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Ecomm App Ui",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        actionsIconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                // color: Colors.black,
              ))
        ],
      ),
      body: UserWithImage(),
    );
  }
}

class UserWithImage extends StatelessWidget {
  // const UserWithImage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          ProfileImageContainer(),
          Divider(),
          ProfileInformation()
        ],
      ),
    );
  }
}

Widget ProfileImageContainer() {
  return Row(children: [
    Expanded(
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        backgroundImage: NetworkImage(
            'https://images.unsplash.com/photo-1532969200589-57f1fe57aaab?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1857&q=80'),
        radius: 75,
      ),
      flex: 2,
    ),
    Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "User",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "abc@gmail.com",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Logout",
              style: TextStyle(fontSize: 16, color: Colors.purple),
            ),
          ],
        ),
      ),
      flex: 2,
    ),
  ]);
}

Widget ProfileInformation() {
  return Row(
    children: [
      Expanded(
          child: Container(
            color: Colors.green,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Account Information"),
              Row(children: [
                Column(children: [
                  Text("Full Name"),
                  Text("User")
                ],),
                Text("pen")
              ],),
              
                Column(children: [
                  Text("Full Name"),
                  Text("User")
                ],),
              
              
                Column(children: [
                  Text("Full Name"),
                  Text("User")
                ],),
              
              
                Column(children: [
                  Text("Full Name"),
                  Text("User")
                ],),
                
              
                Column(children: [
                  Text("Full Name"),
                  Text("User")
                ],),
              
              
                Column(children: [
                  Text("Full Name"),
                  Text("User")
                ],),
               
            ],
          ),
        ),
        flex: 2,
      )
    ],
  );
}
