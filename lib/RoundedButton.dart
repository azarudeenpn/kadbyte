import 'package:flutter/material.dart';
import 'package:kadbyte/signup.dart';

class RoundedButton extends StatelessWidget {
  final String name;
  final String buttonType;

  RoundedButton({this.name, this.buttonType});

  Widget chooseButton(String buttonType,BuildContext context) {
    switch (buttonType) {
      case "fill":
        {
          return FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Colors.white,
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUp())
                );
              },
              child: Text(
                "$name",
                style: TextStyle(fontSize: 20.0),
              ));
        }
      case "outline":
        {
          return OutlineButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              borderSide: BorderSide(color: Colors.white),
              highlightedBorderColor: Colors.white,
              color: Colors.white,
              textColor: Colors.white,
              onPressed: () {},
              child: Text(
                "$name",
                style: TextStyle(fontSize: 20.0),
              ));
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: 300, height: 50, child: chooseButton(buttonType,context));
  }
}
