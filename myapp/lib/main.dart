import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'wins counter league of legends',
        home: new Container(
            color: Color.fromARGB(255, 255, 255, 255),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Hello World, dart!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueAccent,
                        decoration: TextDecoration.none)),
                Text('#Gustavo',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                        decoration: TextDecoration.none))
              ],
            )));
  }
}
