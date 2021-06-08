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
            contentPadding: EdgeInsets.fromLTRB(22, 20, 0, 0),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
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
 

      ],
    ),
  );
}