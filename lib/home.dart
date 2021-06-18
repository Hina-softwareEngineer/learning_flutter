import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class TodoApp extends StatefulWidget {
  // const TodoApp({Key? key}) : super(key: key);

  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<dynamic> lst = [1, 2, 3];

  String output = '';
  // print(output);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
                child: ListTile(
                  title: Text("${lst[index]}"),
                  trailing: Container(
                    width: 50,
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Icon(Icons.edit, color: Colors.red),
                          onTap: () {
                            TextEditingController _controller =
                                TextEditingController();
                            _controller.value = _controller.value.copyWith(
                              text: '${lst[index]}',
                            );
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text('Edit Text'),
                                    content: TextField(
                                      controller: _controller,
                                      onChanged: (value) {
                                        // print(output);
                                        output = value;
                                      },
                                    ),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            // print(output);
                                            setState(() {
                                              lst.replaceRange(
                                                  index, index + 1, {output});
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("Edit"))
                                    ],
                                  );
                                });
                          },
                        ),
                        GestureDetector(
                          child: Icon(Icons.delete, color: Colors.red),
                          onTap: () {
                            setState(() {
                              lst.removeAt(index);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                height: 50,
                color: Colors.amber,
                margin: EdgeInsets.only(top: 40));
          },
          itemCount: lst.length),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Add Text'),
                  content: TextField(
                    onChanged: (value) {
                      // print(output);
                      output = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          // print(output);
                          setState(() {
                            lst.add(output);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Text("Add"))
                  ],
                );
              });
        },
        child: Text("Add"),
      ),
    );
  }
}
