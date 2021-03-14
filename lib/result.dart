import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required this.kilogram,
    @required this.gram,
  }) : super(key: key);
  final double kilogram;
  final double gram;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 140, 50, 0),
                child: Text("Kilogram ",
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 50, 0),
                child: Text(
                  "$kilogram",
                  style: TextStyle(color: Colors.black, fontSize: 35),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 140, 0, 0),
                child: Text("Gram",
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text("$gram",
                    style: TextStyle(color: Colors.black, fontSize: 35)),
              )
            ],
          ),
        ],
      ),
    );
  }
}