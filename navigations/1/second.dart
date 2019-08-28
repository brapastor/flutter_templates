import 'package:flutter/material.dart';

class Second extends StatelessWidget{
  Second({@required this.dato}):super();
  String dato = "hola";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Brapastor"),
              accountEmail: Text("brapastor@gmail.com"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("second bar"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Click $dato'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

}