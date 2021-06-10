import 'package:flutter/material.dart';

class AdvancedWidgets extends StatefulWidget {
  // const AdvancedWidgets({ Key? key }) : super(key: key);

  @override
  _AdvancedWidgetsState createState() => _AdvancedWidgetsState();
}

class _AdvancedWidgetsState extends State<AdvancedWidgets> {
  var text = 1;
  // var total = '$text + h';

  one() {
    setState(() {
      text += 1;
    });
  }

  two() {
    setState(() {
      text -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text("Text : $text --- "),
          SizedBox(height: 30),
          ElevatedButton(onPressed: one, child: Text("Make 1")),
          SizedBox(height: 30),
          ElevatedButton(onPressed: two, child: Text("Make 2")),
        ],
      ),
    ));
  }
}

// ---------------------- Tabs -----------------
/*
  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.yellow,
            labelColor: Colors.yellow,
            tabs: [
              Tab(child: Text('Login'),),
              Tab(child: Text('SignUp'),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            LoginState(),
            RegisterPage(),
          ],
        ),
      ),
    );
 */

// class AdvancedWidgets extends StatelessWidget {
//   // const AdvancedWidgets({ Key? key }) : super(key: key);

//   var lst = [
//     {'name': 'ahmed', 'age': '10'},
//     {'name': 'hina', 'age': '23'},
//     {'name': "ali", 'age': '29'},
//     {'name': 'ahmed', 'age': '10'},
//     {'name': 'hina', 'age': '23'},
//     {'name': "ali", 'age': '29'},
//     {'name': 'ahmed', 'age': '10'},
//     {'name': 'hina', 'age': '23'},
//     {'name': "ali", 'age': '29'},
//     {'name': 'ahmed', 'age': '10'},
//     {'name': 'hina', 'age': '23'},
//     {'name': "ali", 'age': '29'},
//   ];
//   @override
//   Widget build(BuildContext context) {
// return DefaultTabController(
//   length: 2,
//   child: Scaffold(
//     appBar: AppBar(
//       title: TabBar(
//         tabs: [
//           Tab(child: Text('Login'),),
//           Tab(child: Text('SignUp'),),
//         ],
//       ),
//     ),
//     body: TabBarView(
//       children: [

//       ],
//     ),
//   ),
// );
//   }
// }

// ------------------Drawer----------------

/*
  Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Drawer Header"),
            ),
            GestureDetector(
              onTap: () {}, child : ListTile(title: Text("Hello"),),
            ),
            ListTile(
              title: Text('First Option'),
            ),
            ListTile(
              title: Text('First Option'),
            )
          ],
        ),
      ),
 */

// ----------------- Grid View Count-------------
/*
  GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 50,
        mainAxisSpacing: 50,
        children: List.generate(lst.length, (index) => 
          Container(
            height:200,
            width: 200,
            color: Colors.red,
            margin: EdgeInsets.all(10),
            child: Text(lst[index]['name'], style: TextStyle(color: Colors.white),),
          )
        ),
      )
 */

// ----------------- List View --------------------
/*  ListView.builder(
           itemBuilder: (context, index) {
             return ListTile(
               title: Text(lst[index]['name']),
               subtitle: Text(lst[index]['age']),
             );
           },
           itemCount: lst.length),
*/
