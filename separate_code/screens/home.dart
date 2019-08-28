import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "MI PRIMERA APLICACION",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi primera app"),
          leading: Icon(Icons.menu),
        ),
        body: Column(
          children: <Widget>[
            Text("CLICKS $n"),
            RaisedButton(
              child: Text("Ingremento"),
              onPressed: incrementar,
            ),
            Image.asset("assets/images/spartano.png")
          ],
        ),
      ),
    );
  }

  int n = 0;
  void incrementar() {
    setState(() => n++);
  }
}
