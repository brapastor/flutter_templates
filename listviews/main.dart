import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView')
      ),
      body: ListView(
        //children: <Widget>[
        children: ListTile.divideTiles(
          context:context,
          tiles:[
          ListTile(
            title: Text('opcion 1'),
          ),
          ListTile(
            title: Text('opcion 2'),
          ),
          ListTile(
            title: Text('opcion 3'),
          ),
          ListTile(
            title: Text('opcion 4'),
          ),
          ListTile(
            title: Text('opcion 5'),
          ),
          ListTile(
            title: Text('opcion 6'),
          ),
          ListTile(
            title: Text('opcion 7'),
          ),
          ListTile(
            title: Text('opcion 8'),
          ),
          ListTile(
            title: Text('opcion 9'),
          ),
          ListTile(
            title: Text('opcion 10'),
          ),
          ListTile(
            title: Text('opcion 11'),
          ),
          ListTile(
            title: Text('opcion 12'),
          ),
          ListTile(
            title: Text('opcion 13'),
          ),
          ListTile(
            title: Text('opcion 14'),
          ),
          ListTile(
            title: Text('opcion 15'),
          ),
        ]).toList(),
      ),
    );
  }
}