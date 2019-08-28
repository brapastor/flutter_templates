import 'dart:math';

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
  int _value = 0;
  bool _isChecked = false;
  DateTime selectedDate;
  TimeOfDay _timeOfDay = TimeOfDay.now();

  /*Future<Null> _selectedDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(Duration(days: 30)),
        lastDate: DateTime.now().add(Duration(days: 30)));

    if(picked != null && picked != selectedDate){
      setState(() {
        selectedDate = picked;
        print(selectedDate);
      });
    }
  }*/

  Future<Null> _selectTime (BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
        context: context,
        initialTime: _timeOfDay
    );
    if(picked != null && picked != _timeOfDay){
      print("Time ${picked.toString()}");
    }
  }

  void _handleRadio(int value) {
    setState(() {
      _value = value;
      switch (_value) {
        case 0:
          print("0000000");
          break;
        case 1:
          print("1111111");
          break;
        case 2:
          print("2222222");
          break;
      }
    });
  }

  void onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  void getVelue() {
    if (_isChecked) {
      print("check es true");
    } else {
      print("check es false");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('My App')),
      body: Container(
        padding: EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Opcion'),
              Checkbox(
                value: _isChecked,
                onChanged: (bool value) {
                  onChanged(value);
                },
              ),
              RaisedButton(
                onPressed: getVelue,
                child: Text("get value"),
              ),
              Text('Quieres este elemento'),
              Switch(
                value: _isChecked,
                onChanged: onChanged,
                activeColor: Colors.deepPurple,
                inactiveTrackColor: Colors.red,
              ),
              Divider(
                height: 5.0,
                color: Colors.red,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(value: 0, groupValue: _value, onChanged: _handleRadio),
                  Text('opcion 1'),
                  Radio(value: 1, groupValue: _value, onChanged: _handleRadio),
                  Text('opcion 2'),
                  Radio(value: 2, groupValue: _value, onChanged: _handleRadio),
                  Text('opcion 3'),
                ],
              ),
              SizedBox(
                height: 18.0,
              ),
              RaisedButton(
                //onPressed: () => {_selectedDate(context)},
                onPressed: () => {_selectTime(context)},
                child: Text('Select date'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
