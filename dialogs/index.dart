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

enum Options { YES, NO }

class _State extends State<MyApp> {
  Future _showAlert(BuildContext context, String msn) async {
    return showDialog(
        context: context,
        child: AlertDialog(
          title: Text(msn),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: Text('ok'),
            )
          ],
        ));
  }

  Future _event() async {
    switch (await showDialog(
        context: context,
        child: SimpleDialog(
          title: Text('esto es un dialog'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Ok'),
              onPressed: () {
                Navigator.pop(context, Options.YES);
              },
            ),
            SimpleDialogOption(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context, Options.NO);
              },
            )
          ],
        ))) {
      case Options.YES:
        _setValue('YES');
        break;
      case Options.NO:
        _setValue('NO');
        break;
    }
  }

  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('My App')),
      body: Container(
        child: Center(
            child: Column(
          children: <Widget>[
            Text(_value),
            RaisedButton(
              onPressed: _event,
              child: Text('Click'),
            ),
            Text('Texto'),
            RaisedButton(
              onPressed: () => _showAlert(context, 'Lo que sea'),
              child: Text('click'),
            )
          ],
        )),
      ),
    );
  }
}
