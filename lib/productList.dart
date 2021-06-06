import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  // const ProductList({Key? key}) : super(key: key);
  
  final List<Map<String, dynamic>> mobileData = [
    {
      'name': 'Iphone 12',
      'rating': 5.0,
      'reviews': 23,
      'pieces': 20,
      'price': 90,
      'quantity': 1,
      'image':
          'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bW9iaWxlfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
    },
    {
      'name': 'Note 20 Ultra',
      'rating': 3.0,
      'reviews': 20,
      'pieces': 18,
      'price': 100,
      'quantity': 5,
      'image':
          'https://images.unsplash.com/photo-1567581935884-3349723552ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=667&q=80'
    },
    {
      'name': 'Macbook Air',
      'rating': 5.0,
      'reviews': 2,
      'pieces': 15,
      'price': 150,
      'quantity': 4,
      'image':
          'https://images.unsplash.com/photo-1546054454-aa26e2b734c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80'
    },
    {
      'name': 'Macbook Pro',
      'rating': 4.0,
      'reviews': 5,
      'pieces': 12,
      'price': 70,
      'quantity': 2,
      'image':
          'https://images.unsplash.com/photo-1480694313141-fce5e697ee25?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'
    },
    {
      'name': 'Gaming PC',
      'rating': 5.0,
      'reviews': 23,
      'pieces': 25,
      'price': 180,
      'quantity': 3,
      'image':
          'https://images.unsplash.com/photo-1546027658-7aa750153465?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'
    }
  ];

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
      body: ListView.builder(
        itemBuilder: (context, index) {
          var item = mobileData[index];
          return ProductCard(item);
        },
        itemCount: mobileData.length,
      ),
    );
  }
}

Widget ProductCard(Map<String, dynamic> item) {
  return Card(
    margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
    // color:  Colors.red,
    child: Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            height: 150,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(item['image']), fit: BoxFit.cover)
            ),
          ),
          flex: 2,
        ),
        Expanded(
          child: Container(
            height: 150,
            margin: EdgeInsets.fromLTRB(10, 15, 10, 15),
            //  color: Colors.green,
            child: Column(
              children: [
                Text(
                  item['name'],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.yellowAccent.shade700,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text("${item['rating']}  ",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700)),
                    Text("(${item['reviews']} Review)",
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade700))
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
                Row(
                  children: [
                    Text("${item['pieces']} Pieces"),
                    SizedBox(width: 20),
                    Text(
                      "\$${item['price']}",
                      style: TextStyle(
                          color: Colors.purple.shade800,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: [Text("Quantity: ${item['quantity']}")],
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          flex: 2,
        )
      ],
    ),
  );
}
