import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoundTextBox extends StatelessWidget {
  final name;
  RoundTextBox({this.name});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          hintText: "$name",
          hintStyle: TextStyle(color: Colors.white),
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(10.0)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(10.0)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white),borderRadius: BorderRadius.circular(10.0))
      ),
      onChanged: (text) {
        print("First text field: $text");
      },
    );
  }
}
