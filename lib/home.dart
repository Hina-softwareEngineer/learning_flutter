import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(child: Text("Press"), onPressed: (){},),
        )
    );
  }
}


// body:Container(
//         color: Colors.purple,
//         height: MediaQuery.of(context).size.height*0.5,
//         width: MediaQuery.of(context).size.width*0.5,
//       )
//     );

// body : Stack(
//         children: [
//           Align(alignment: Alignment.bottomCenter ,child: Container(color: Colors.yellow,width: 100,height: 100,)),
//           Align(alignment:Alignment.bottomRight  ,child: Container(color: Colors.red,width: 100,height: 100,)),
//            Positioned(left: 20, top:20 ,child: Container(color: Colors.orange,width: 100,height: 100,)),
//           Align(alignment: Alignment.topRight ,child: Container(color: Colors.green,width: 100,height: 100,)),
//           Align(alignment: Alignment.topCenter ,child: Container(color: Colors.blue,width: 100,height: 100,)),
//         ],
//       )

// body: Center(
//         child: CircleAvatar(
//           radius: 80,
//           backgroundColor: Colors.blue,
//           backgroundImage: AssetImage('assets/mountain.jpg'),
//           // backgroundImage: NetworkImage('https://images.unsplash.com/photo-1545161296-d9c2c241f2ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80'),
//         ),
//       )

// return Scaffold(body: Center(
//       child: Text('hello word',
//       style : TextStyle(
//         color: Colors.green, 
//         fontSize: 50,
//         fontWeight: FontWeight.bold,
//       )
//       )
//     )
//     );

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Align(
//           alignment: Alignment.bottomRight,
//           child: Container(
//          margin: EdgeInsets.only(top: 20),
//          padding: EdgeInsets.only(left:20, top:20),
//          child : Text('Box Decoration'),
//          height: 200,
//          width: 200,
//          decoration :BoxDecoration(
//            color: Colors.red, // Colors in hexadecimal : (0xffHex_code)
//            borderRadius: BorderRadius.circular(30),
//            gradient: RadialGradient(colors: [Colors.red, Colors.yellow])
//          )
//       )
//         ));
//   }
// }
