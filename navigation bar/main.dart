import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "mi primera aplicacion",
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: Text(cambiarTexto()),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.email),
                    onPressed: null
                ),
                IconButton(
                    icon: Icon(Icons.add),
                    onPressed: null
                ),
              ],
            ),
            body: Container(
                child: Row(
                  children:<Widget>[
                    Text('Hola mundosss'),
                    RaisedButton(
                      child: Text("Enviar", style: TextStyle(color: Colors.white),),
                      onPressed: ()=> debugPrint('click buttons'),
                      color: Colors.blue,
                      splashColor: Colors.deepPurple,
                    )
                  ]
                )
            ),

          floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint('Click'),
            backgroundColor: Colors.red,
            child: Icon(Icons.add),
          ),

          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.print), title: Text('Imprimir')),
              BottomNavigationBarItem(icon: Icon(Icons.send), title: Text('Enviar')),
              BottomNavigationBarItem(icon: Icon(Icons.adjust), title: Text('Ajustar')),
            ],
            onTap: (int i) => debugPrint("Elemento: $i"),
          ),
        )
    );
  }
}

String cambiarTexto(){
  var cadena = 'Esto es un texto';
  return cadena;
}