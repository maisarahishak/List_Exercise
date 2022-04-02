import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('MAD Assignment 1')),
            body: Center(child: CheckTextField())));
  }
}

class CheckTextField extends StatefulWidget {
  CheckTextFieldWidget createState() => CheckTextFieldWidget();
}

class CheckTextFieldWidget extends State {
  var fruit = ['Apple', 'Orange', 'Rambutan', 'Mangosteen'];
  final textController_1 = TextEditingController();

  checkTextField() {
    // Creating 1 String Variable.
    String text1;

    // Getting Value From Text Field and Store into String Variable
    text1 = textController_1.text;

    // Checking all input values.
    if (text1 == '1') {
      print(fruit[0]);
    } else if (text1 == '2') {
      print(fruit[1]);
    } else if (text1 == '3') {
      print(fruit[2]);
    } else if (text1 == '4') {
      print(fruit[3]);
    } else {
      print('Please enter numbers from 1-4');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: textController_1,
                autocorrect: true,
                decoration: InputDecoration(hintText: 'Enter number from 1-4'),
              )),
          RaisedButton(
            onPressed: checkTextField,
            color: Colors.purple,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text('Submit'),
          ),
        ],
      ),
    ));
  }
}
