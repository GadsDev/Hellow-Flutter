import 'package:flutter/material.dart';
import 'pages/homePage.dart';
import 'pages/gustavoPage.dart';

class Template extends StatefulWidget {
  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  var homePage = new HomePage();
   var gustavoPage = new GustavoPage();
  var _selectedPage = 0;
  var _pages;

  @override
  Widget build(BuildContext context) {
    _pages = [
      homePage,
      gustavoPage
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Gustavo Alexandre'),
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School'))
        ],
        fixedColor: Colors.deepPurple,
        currentIndex: _selectedPage,
        onTap:  (int index){
          setState(() {
           _selectedPage = index; 
          });
        },
      ),
    );
  }

  _body() {
    return Container(
      constraints:  BoxConstraints.expand(),
      child: _pages[_selectedPage]
    );
  }
}
