import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);

    // set backgound
    String bgImage = data['isDaytime'] ? 'day.webp' : 'night.jpeg';
    Color bgColor = data['isDaytime'] ? Colors.lightBlue[900] : Colors.cyan[900];

    // set text color
    Color textColor = data['isDaytime'] ? Colors.black : Colors.white;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            )
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                  textColor: textColor,
                  label: Text('Edit Location'),
                  icon: Icon(Icons.edit_location),
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Icon(Icons.flag),
                    //
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28.0, 
                        letterSpacing: 2,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20.0),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66.0,
                     color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
