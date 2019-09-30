import 'package:flutter/material.dart';

class GustavoPage extends StatefulWidget {
  @override
  _GustavoPageState createState() => _GustavoPageState();
}

class _GustavoPageState extends State<GustavoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Visite: ',   
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.body1        
        ),
        RaisedButton(
          child: Text('https://github.com/GadsDev', textAlign: TextAlign.center,),)
      ],
    );
  }
}