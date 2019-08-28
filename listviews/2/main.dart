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

  final teams = [
    'Real madrid',
    'Barcelona',
    'Alianza Lima',
    'Universitario',
    'Union comercio',
    'Cali',
    'Juventus',
    'Milan',
    'Pumas',
    'Cristal',
    'Leon',
    'Cobra',
    'Combatientes',
    'EGG',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        title: Text('List View 2')
      ),
      //body:ListView.builder(
     /* body: ListView.separated(
        itemCount: teams.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(teams[index]),
          );
        },
        separatorBuilder: (context, index){
          return Divider();
        },
      )*/
     body: ListView.builder(
       scrollDirection: Axis.horizontal,
         itemBuilder: (context,index){
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Text(teams[index]),
            );
         },
         itemCount: teams.length,

     ),
    );
  }
}