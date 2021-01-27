import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
          centerTitle: true,
          backgroundColor: Colors.red[600],
        ),
        body: Center(
          child: Text(
            'hello ninjas!',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'IndieFlower',
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('click'),
          backgroundColor: Colors.red[600],
          onPressed: () {},
        ),
      );
  }
}