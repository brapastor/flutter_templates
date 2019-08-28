import 'package:flutter/material.dart';
import 'second.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'App',
      home: First(),
    );
  }
}

class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    TextEditingController _controller = TextEditingController();

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('primera app 1'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('Hola mundo'),
            TextField(
              enabled: true,
              maxLength: 10,
            controller: _controller,
            ),
            RaisedButton(
              child: Text('Click'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Second(dato:_controller.text))
                );
              },
             )
          ],
        ),
      ),
    );
  }

}