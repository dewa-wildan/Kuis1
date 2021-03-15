import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input.dart';
import 'dropdown.dart';
import 'convert.dart';
import 'result.dart';
import 'history.dart';

void main() { 
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  final InputController = TextEditingController();
  var listItem = ["Kilogram", "Gram", "Ons"];
  final inputController = TextEditingController();
  List<String> listViewItem = List<String>();
  String _newValue = "Kilogram";
  String _newValueA = "Kilogram";
  double _result = 0;
  double _inputUser = 0;

  void rumus() {
    setState(() {
      _inputUser = double.parse(InputController.text);
      if (_newValue == "Kilogram") {
        if (_newValueA == "Ons")
          _result = _inputUser * 10;
        else if (_newValueA == "Gram")
          _result = _inputUser * 1000;
      
      } else if (_newValue == "Ons") {
        if (_newValueA == "Kilogram")
          _result = _inputUser / 10;
        else if (_newValueA == "Gram")
          _result = _inputUser * 10;
    
      } else if (_newValue == "Gram") {
        if (_newValueA == "Kilogram")
          _result = _inputUser / 1000;
        else if (_newValueA == "Ons")
          _result = _inputUser / 10;
      }
       
      listViewItem.add(_newValue + ": " + _result.toString() + _newValueA);
      });
    }
  void dropdownOnChanged(String changeValue) {
    setState(() {
      _newValue = changeValue;
      rumus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:  Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konversi Satuan Berat"),
        ),
       body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
            Input(InputController: InputController),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "Dari ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  DropdownButton<String>(
                    items: listItem.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    value: _newValue,
                    onChanged: (String changeValue) {
                      setState(() {
                        _newValue = changeValue;
                      });
                    },
                  ),
                  Text("Ke ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  DropdownButton<String>(
                    items: listItem.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    value: _newValueA,
                    onChanged: (String changeValue) {
                      setState(() {
                        _newValueA = changeValue;
                      });
                    },
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Riwayat Konversi",
                  style:  TextStyle(fontSize: 10,),
                ),
              ),
              Expanded(
                child: RiwayatKonversi(listViewItem: listViewItem),
              ),
                Flexible(
                child: Container(
                  child: (Convert(rumus: rumus)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
