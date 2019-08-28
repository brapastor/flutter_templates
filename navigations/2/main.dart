import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'second.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
    routes: <String, WidgetBuilder>{
      '/a': (BuildContext context) => SecondActivity()
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  double _value = 0.0;
  void _setValue(double value)  => setState(() => _value = value);

  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  void _showSnack(){
    _scaffold.currentState.showSnackBar(SnackBar(content: Text('Esto es un snack'),));
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffold,
      appBar: AppBar(
          title: Text('Ejemplo slider y Drawer')
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
            //DrawerHeader(
              //child: Text('Header'),
              accountName: Text('Brayan'),
              accountEmail: Text('brapastor@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text('GB'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('SP'),
                )
              ],
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Opcion 1'),
              trailing: Icon(Icons.add),
              onTap: (){
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/a');
              },
            ),
            ListTile(
              title: Text('Opcion 2'),
              trailing: Icon(Icons.print),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Cerrar'),
              trailing: Icon(Icons.close),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),

      ),
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Column(
          children: <Widget>[
            Text('Valor: ${(_value * 100).round()}'),
            Slider(value: _value, onChanged: _setValue),
            RaisedButton(
              onPressed: _showSnack,
              child: Text('Click'),
            )
          ],
        ),
      ),
    );
  }
}