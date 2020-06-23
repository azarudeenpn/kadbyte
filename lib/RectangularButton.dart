
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialButton(
      padding: EdgeInsets.all(25.0),
      minWidth: double.infinity,
          color: Colors.white,
          child: Text("Log in", style: TextStyle(color: Colors.black,fontSize: 15,letterSpacing: 0.5),),
          onPressed: (){}
    );

  }

}