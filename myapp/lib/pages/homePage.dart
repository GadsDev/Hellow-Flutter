import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _animacao = 0;
  int _selectedImage = 0;
 var _images = [
   'images/1.jpg',
   'images/2.jpg',
   'images/3.jpg',
   'images/4.png',
  ' images/5.png',
   'images/6.png',
   'images/7.png',
 ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(_images[_animacao], height: 150.0,),
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
                  if(_animacao == 3){
                    _animacao = 0;
                  }else{
                    _animacao++;  
                  }                  
                });
              },
              child: Icon(Icons.sentiment_satisfied),
            ))
      ],
    );
  }
}
