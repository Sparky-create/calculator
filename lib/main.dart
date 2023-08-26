import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double num1 = 0.0;
  double num2 = 0.0;
  String result = "";

  final TextEditingController t1 = TextEditingController(text: "");
  final TextEditingController t2 = TextEditingController(text: "");

  void add() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = (num1 + num2).toString();
    });
  }

  void subtract() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = (num1 - num2).toString();
    });
  }

  void multiply() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = (num1 * num2).toString();
    });
  }

  void divide() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = (num1 / num2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number 1"),
              controller: t1,
            ),
            SizedBox(height: 20.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter number 2"),
              controller: t2,
            ),
            SizedBox(height: 20.0),
            Text(
              result,
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: add,
                  child: Container( padding: EdgeInsets.all(20.0),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
                  child: Text("+", style: TextStyle(fontSize: 20.0)),
                  ),
                ),
                InkWell(
                  onTap: subtract,
                  child: Container(padding: EdgeInsets.all(20.0),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
                  child: Text("-", style: TextStyle(fontSize: 20.0)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: multiply,
                  child: Container(padding: EdgeInsets.all(20.0),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
                  child: Text("*", style: TextStyle(fontSize: 20.0)),
                  ),
                ),
                InkWell(
                  onTap: divide,
                  child: Container(padding: EdgeInsets.all(20.0),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
                  child: Text("/", style: TextStyle(fontSize: 20.0)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}