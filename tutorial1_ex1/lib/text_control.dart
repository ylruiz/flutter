import 'package:flutter/material.dart';

import 'text_output.dart';

class MyTestControl extends StatefulWidget {
  final String text;

  MyTestControl({this.text});

  @override
  _MyTestControlState createState() => _MyTestControlState();
}

class _MyTestControlState extends State<MyTestControl> {
  String _text;

  @override
  void initState() {
    _text = widget.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyText(_text),
        RaisedButton(
            child: Text('Change Text'),
            onPressed: () {
              setState(() {
                _text = 'Changed Text';
              });
            })
      ],
    );
  }
}
