import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget {
  const Dropdown({
    Key key,
    this.listItem,
    this.newValue,
    this.dropdownOnChanged,
  }) : super(key: key);
  final List<String> listItem;
  final String newValue;
  final Function dropdownOnChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: listItem.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      value: newValue,
      onChanged: dropdownOnChanged,
    );
  }
}
