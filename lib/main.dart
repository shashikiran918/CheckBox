import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(

    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;

  @override
  //App widget tree
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SHASHi'),
          centerTitle: true,
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ), //IcoButton
        ), //AppBar
        body: Center(
          child: Card(
            child: Padding(
              padding:  EdgeInsets.all(15.0),
              child: SizedBox(
                width: 430,
                height: 700,
                child: Column(
                  children: [
                    Text(
                      'Algorithms',
                      style: TextStyle(
                          color: Colors.greenAccent[400],
                          fontSize: 30), //TextStyle
                    ), //Text
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 10), //SizedBox
                        Text(
                          'Library of Algorithm: ',
                          style: TextStyle(fontSize: 17.0),
                        ), //Text
                        SizedBox(width: 10), //SizedBox
                        Checkbox(
                          value: this.value,
                          onChanged: (bool) {
                            setState(() => this.value = value);
                          },
                        ), //Checkbox
                      ], //<Widget>[]
                    ), //Row
                  ],
                ), //Column
              ), //SizedBox
            ), //Padding
          ), //Card
        ), //Center//Center
      ), //Scaffold
    ); //MaterialApp
  }
}