import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kadbyte/RoundedButton.dart';

class LoginSignupSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 250,
        color: Colors.transparent,
        child: Stack(
          children: <Widget>[
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  //color: Colors.green,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
                  child: Text(
                    "Manage",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 30),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  //color: Colors.green,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
                  child: Text(
                    "With KadByte manage your business from everywhere at anytime",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  //color: Colors.green,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
                  child: RoundedButton(
                    name: "Log in",
                    buttonType: "fill",
                  ),
                ),
                Container(
                  //color: Colors.green,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
                  child: RoundedButton(
                    name: "Sign up",
                    buttonType: "outline",
                  ),
                ),
              ],
            ))
          ],
        ));
  }
}
