import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // [Counter] is the model should be used for another widgets 
      // It will be provided to those widgets by using ChangeNotifierProvider
      home: ChangeNotifierProvider<Counter>(
          create: (context) => Counter(),
          child: MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // Provider.of<Counter> where [Counter] is the provided model
    // Provider.of(context, listen: false) is used when you want to access to the state of the model
    // but it will not change the UI 
    final _counter = Provider.of<Counter>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            // Consumer<Counter> where [Counter] is the provided model 
            // Consumer is used when the value will change depending on the states 
            // [instance] is the model which allows you to access to its parameters 
            Consumer<Counter>(builder: (context, instance, child) {
              int counterValue = instance.value;
               return Text(
              '$counterValue',
              style: Theme.of(context).textTheme.headline4,
              );
            }),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => _counter.increment(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () => _counter.decrement(),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
