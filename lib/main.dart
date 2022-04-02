import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void buttonPressed() {
    print('Button Pressed');
  }

  @override
  var fruit = ['Apple', 'Orange', 'Rambutan', 'Mangosteen'];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MAD Assignment 1'),
        ),
        body: Column(children: [
          const TextField(
              decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter a number from 1-4',
          )),
          RaisedButton(child: Text('Answer 1'), onPressed: buttonPressed)
        ]),
      ),
    );
  }
}
