import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _animacao = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Olá Amigo',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.display3),
        Text('Nivel de animação: $_animacao',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .display1
                .copyWith(color: Colors.blue)),
        Padding(
            padding: EdgeInsets.all(20),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _animacao++;
                });
              },
              child: Icon(Icons.sentiment_satisfied),
            ))
      ],
    );
  }
}
