import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  const Input({
    Key key,
    @required this.InputController,
  }) : super(key: key);
  final TextEditingController InputController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: "Masukkan Satuan Berat  "),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
        ],
      controller: InputController,
      keyboardType: TextInputType.number,
    );
  }
}