import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<dynamic> lst = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 210,
              width: 200,
              color: Colors.green,
              margin: EdgeInsets.only(top: 10),
            ),
            Container(
              height: 210,
              width: 200,
              color: Colors.green,
              margin: EdgeInsets.only(top: 10),
            ),
            Container(
              height: 210,
              width: 200,
              color: Colors.green,
              margin: EdgeInsets.only(top: 10),
            ),
            Container(
              height: 210,
              width: 200,
              color: Colors.green,
              margin: EdgeInsets.only(top: 10),
            ),
            Container(
              height: 210,
              width: 200,
              color: Colors.green,
              margin: EdgeInsets.only(top: 10),
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: List.generate(lst.length, (index) {
                return Container(
                  child: Text('${lst[index]}'),
                  color: Colors.lightBlue,
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

/*
child: ListView(
                scrollDirection: Axis.horizontal,
                // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children:[
                  Container(child: Text("Hello"),color: Colors.red, width: 200,height: 200,margin:EdgeInsets.only(top: 10)),
                  Container(child: Text("Hello"),color: Colors.red, width: 200,height: 200,margin:EdgeInsets.only(top: 10)),
                  Container(child: Text("Hello"),color: Colors.red, width: 200,height: 200,margin:EdgeInsets.only(top: 10)),
                  Container(child: Text("Hello"),color: Colors.red, width: 200,height: 200,margin:EdgeInsets.only(top: 10))
                ]
              ),
              */
