import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  final Function rumus;
  Convert({Key key, @required this.rumus});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
      width: 324.0,
      height: 280.0,
      child: RaisedButton(
        onPressed: rumus,
        color: Colors.yellow,
        textColor: Colors.white,
        child: Text(
          "Konversi Satuan Berat",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}