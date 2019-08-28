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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('My App')),
      body: Container(
        child: Center(
            child: Column(
          children: <Widget>[
            Card(
              child: Container(
                padding: EdgeInsets.all(28.0),
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/480/public/media/image/2012/11/5103-restaurar-ajustes-android.jpg?itok=3lEz_oFR'),
                    Text('Brayan Pastor'),
                    Text('PAredes')
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
