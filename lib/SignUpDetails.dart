import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kadbyte/RoundTextbox.dart';

import 'RectangularButton.dart';

class SignUpDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size getParentSize() {
      return MediaQuery.of(context).size;
    }

    return SingleChildScrollView(
      child: Container(
        //color: Colors.blue,
        width: double.infinity,
        //margin: EdgeInsets.only(bottom: 50),
        //child: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.80,
                margin: EdgeInsets.only(
                    left: getParentSize().width * 0.04,
                    right: getParentSize().width * 0.04,
                    bottom: getParentSize().width * 0.20,
                    top: getParentSize().width * 0.04),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getParentSize().width * 0.1),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: getParentSize().width * 0.12),
                width: MediaQuery.of(context).size.width * 0.80,
                child: RoundTextBox(
                  name: "Username",
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: getParentSize().width * 0.12),
                width: MediaQuery.of(context).size.width * 0.80,
                child: RoundTextBox(
                  name: "Phone",
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: getParentSize().width * 0.12),
                width: MediaQuery.of(context).size.width * 0.80,
                child: RoundTextBox(
                  name: "Email",
                ),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: getParentSize().width * 0.20),
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: RoundTextBox(
                    name: "Password",
                  )),
              Container(
                alignment: Alignment.bottomCenter,
                child: RectangularButton(),
              ),
            ]),
        //)
      ),
    );
  }
}
