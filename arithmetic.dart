import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  final TextEditingController control1 = TextEditingController();
  final TextEditingController control2 = TextEditingController();
  String result= '';

  void add() {
    setState(() {
      result= (control1.text.isEmpty || control2.text.isEmpty)
         ? 'Please enter both numbers'
          : (double.parse(control1.text) + double.parse(control2.text)).toString();
    });
  }
  void multiply() {
    setState(() {
      result= (control1.text.isEmpty || control2.text.isEmpty)
         ? 'Please enter both numbers'
          : (double.parse(control1.text) * double.parse(control2.text)).toString();
    });
  }
  void subtract() {
    setState(() {
      result= (control1.text.isEmpty || control2.text.isEmpty)
         ? 'Please enter both numbers'
          : (double.parse(control1.text) - double.parse(control2.text)).toString();
    });
  }
  void divide() {
    setState(() {
      if (control2.text.isEmpty || control2.text == '0') {
        result= 'Cannot divide by zero';
      } else {
        result= (double.parse(control1.text) / double.parse(control2.text)).toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator-'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                controller: control1,
                decoration: InputDecoration(
                  labelText: 'Number 1',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: control2,
                decoration: InputDecoration(
                  labelText: 'Number 2',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: add,
                    child: Text('+'),
                  ),
                  ElevatedButton(
                    onPressed: multiply,
                    child: Text('*'),
                  ),
                  ElevatedButton(
                    onPressed: subtract,
                    child: Text('-'),
                  ),
                  ElevatedButton(
                    onPressed: divide,
                    child: Text('/'),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Text(
                result,
                style: TextStyle(fontSize: 25, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
