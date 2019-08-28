import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  String _dato = "hola";

  void _myClick(String dato){
    setState(() {
      _dato = dato;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('My App')),
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Column(
          children: <Widget>[
            Text(_dato),
            RaisedButton(onPressed: () => _myClick('Raised'), child: Text('Chhange Texto')),
            FlatButton(onPressed: () => _myClick('FLAT BUTTON'), child: Text('Flat Button')),
            IconButton(icon: Icon(Icons.add), onPressed: () => _myClick('Icon'),),
            Tooltip(message: "El bototn sirve para x", child: Text('esto es iun texto'),)
          ],
        ),
      ),
    );
  }
}
