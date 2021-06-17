import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  // const Calculator({ Key? key }) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  dynamic result = '';

  Widget Button(dynamic value) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            result = result + '$value';
          });
        },
        child: Text('$value'));
  }

  clear() {
    setState(() {
      result = '';
    });
  }

  output() {
    Parser p = Parser();
    print(p);
    Expression exp = p.parse(result);
    print("---------$exp");
    ContextModel contextModal = ContextModel();
    print("----contex modal-----$contextModal");
    double eval = exp.evaluate(EvaluationType.REAL, contextModal);
    print("----eval-----$eval");

    setState(() {
      result = '$eval';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(height: 130),
        Text(result,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Button(1),
            Button(2),
            Button(3),
            Button(4),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Button(5),
            Button(6),
            Button(7),
            Button(8),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Button(9),
            Button(0),
            ElevatedButton(onPressed: clear, child: Text("Clear")),
            ElevatedButton(onPressed: output, child: Text("=")),
            Button('.'),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Button('+'),
            Button('-'),
            Button('*'),
            Button('/'),
          ],
        )
      ],
    ));
  }
}
