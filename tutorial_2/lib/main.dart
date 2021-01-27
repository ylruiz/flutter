import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
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
        child: Image.network(
            'https://images.unsplash.com/photo-1472552944129-b035e9ea3744?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fHNreXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        backgroundColor: Colors.red[600],
        onPressed: () {},
      ),
    );
  }
}
