import 'package:flutter/material.dart';

import 'text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String text = 'Tutorial 1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: MyTestControl(text: text),
          ),
        ),
      ),
    );
  }
}
