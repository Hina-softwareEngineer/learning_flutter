import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("LOGIN PAGE")),
        ),
        body: Column(
          children: [
            Container(width: 200, child: TextField()),
            Container(width: 200, child: TextField()),
            ElevatedButton(
                onPressed: () {
                  print("Hello");
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text('Login Page'),),
//         body: SingleChildScrollView(
//                   child: Center(
//             child: Column(children: [
//               Text('Login'),
//               SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.red,
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.red,
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 height: 200,
//                 width: 200,
//                 color: Colors.red,
//               ),
//               SizedBox(
//                 height: 30,
//               )
//             ],),
//           ),
//         )
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//         Text('1st column'),
//         SizedBox(
//           width: 10,
//         ), // used for spacing
//         Text('2nd column'),
//         Text('3rd column'),
//         Text('4th column'),
//         Text('5th column'),],)
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(children: [
//         Text('1st column'),
//         SizedBox(
//           height: 10,
//         ), // used for spacing
//         Text('2nd column'),
//         Text('3rd column'),
//         Text('4th column'),
//         Text('5th column'),],)
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           height : 100,
//           width: 100,
//           color: Colors.purple,
//           child : Text("Container")
//         )
//       ),
//     );
//   }
// }
