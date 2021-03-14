import 'package:flutter/material.dart';

class Convert2 extends StatelessWidget {
  final Function rumus;
  Convert2({Key key, @required this.rumus});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 110, 0, 0),
      width: 350.0,
      height: 170.0,
      child: RaisedButton(
        onPressed: rumus,
        color: Colors.blue[400],
        textColor: Colors.white,
        child: Text(
          "Konversi Satuan Berat Kg ke Gram",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}