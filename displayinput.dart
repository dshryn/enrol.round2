import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Input Example',
      home: UserInputScreen(),
    );
  }
}
class UserInputScreen extends StatefulWidget {
  @override
  _UserInputScreenState createState() => _UserInputScreenState();
}
class _UserInputScreenState extends State<UserInputScreen> {
  TextEditingController _textEditingController = TextEditingController();
  String _inputText = '';

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
  void _updateInputText() {
    setState(() {
      _inputText = _textEditingController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input and Display'),
      ),
      body: Container(
        color: Colors.orange,
        child: Padding(
          padding: EdgeInsets.all(13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  labelText: 'Enter Text',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  _updateInputText();
                },
                child: Text('Display'),
              ),
              SizedBox(height: 15),
              Text(
                'Input Text: $_inputText',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
