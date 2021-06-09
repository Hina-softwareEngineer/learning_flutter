import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  // const HistoryPage({ Key? key }) : super(key: key);

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
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        // actionsIconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                // color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(child:HistoryContainer() ),
    );
  }
}


Widget HistoryContainer(){
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          style: TextStyle(fontSize: 18),
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            contentPadding: EdgeInsets.fromLTRB(10, 20, 15, 20),
            hintText: "Username",
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              )
            ),
            focusColor: Colors.red,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade900,
              )
            ),
          ),
          cursorColor: Colors.grey.shade900,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
          child: Text("History", style: TextStyle(
            fontSize: 18
          ),),
        ),
        
        ListTile(
            contentPadding: EdgeInsets.fromLTRB(22, 20, 30, 0),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bW9iaWxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
              radius: 30,
            ),
            title: Text('IPHone 12'),
            subtitle: Row(children: [
              Icon(Icons.star, size: 17, color: Colors.yellowAccent,),
              SizedBox(width: 5),
              Text("5.0 (23 Reviews)")
            ],),
          trailing:Text("\$10")
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(22, 20, 30, 0),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 30,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1567581935884-3349723552ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80'),
            ),
            title: Text('Note 20 Ultra'),
            subtitle: Row(children: [
              Icon(Icons.star, size: 17, color: Colors.yellowAccent,),
              SizedBox(width: 5),
              Text("5.0 (23 Reviews)")
            ],),
          trailing:Text("\$10")
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(22, 20, 30, 0),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 30,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1546054454-aa26e2b734c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80'),
            ),
            title: Text('Macbook Air'),
            subtitle: Row(children: [
              Icon(Icons.star, size: 17, color: Colors.yellowAccent,),
              SizedBox(width: 5),
              Text("5.0 (23 Reviews)")
            ],),
          trailing:Text("\$10")
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(22, 20, 30, 0),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 30,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1480694313141-fce5e697ee25?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'),
            ),
            title: Text('Macbook Pro'),
            subtitle: Row(children: [
              Icon(Icons.star, size: 17, color: Colors.yellowAccent,),
              SizedBox(width: 5),
              Text("5.0 (23 Reviews)")
            ],),
          trailing:Text("\$10")
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(22, 20, 30, 0),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 30,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1546027658-7aa750153465?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
            ),
            title: Text('Gaming PC'),
            subtitle: Row(children: [
              Icon(Icons.star, size: 17, color: Colors.yellowAccent,),
              SizedBox(width: 5),
              Text("5.0 (23 Reviews)")
            ],),
          trailing:Text("\$10")
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(22, 20, 30, 0),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 30,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bW9iaWxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            ),
            title: Text('Backlit Keyboard'),
            subtitle: Row(children: [
              Icon(Icons.star, size: 17, color: Colors.yellowAccent,),
              SizedBox(width: 5),
              Text("5.0 (23 Reviews)")
            ],),
          trailing:Text("\$10")
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(22, 20, 30, 0),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 30,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1567581935884-3349723552ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80'),
            ),
            title: Text('Mercedes'),
            subtitle: Row(children: [
              Icon(Icons.star, size: 17, color: Colors.yellowAccent,),
              SizedBox(width: 5),
              Text("5.0 (23 Reviews)")
            ],),
          trailing:Text("\$10")
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(22, 20, 30, 0),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 30,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1546054454-aa26e2b734c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80'),
            ),
            title: Text('IPHone 12'),
            subtitle: Row(children: [
              Icon(Icons.star, size: 17, color: Colors.yellowAccent,),
              SizedBox(width: 5),
              Text("5.0 (23 Reviews)")
            ],),
          trailing:Text("\$10")
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(22, 20, 30, 0),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 30,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1480694313141-fce5e697ee25?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'),
            ),
            title: Text('Roadster'),
            subtitle: Row(children: [
              Icon(Icons.star, size: 17, color: Colors.yellowAccent,),
              SizedBox(width: 5),
              Text("5.0 (23 Reviews)")
            ],),
          trailing:Text("\$10")
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(22, 20, 30, 20),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 30,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1546027658-7aa750153465?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
            ),
            title: Text('Royal Field'),
            subtitle: Row(children: [
              Icon(Icons.star, size: 17, color: Colors.yellowAccent,),
              SizedBox(width: 5),
              Text("5.0 (23 Reviews)")
            ],),
          trailing:Text("\$10")
          ),
 

      ],
    ),
  );
}