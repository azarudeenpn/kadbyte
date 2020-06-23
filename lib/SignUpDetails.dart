import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kadbyte/RoundTextbox.dart';

import 'RectangularButton.dart';

class SignUpDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height -
        Scaffold.of(context).appBarMaxHeight;
    return Container(
        height: height,
        color: Colors.blue,
        width: double.infinity,
        //margin: EdgeInsets.only(bottom: 50),
        child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 35.0,right: 35.0,bottom: 35.0,top: 35.0),
                  child: Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 30),textAlign: TextAlign.center,),
            ),
            Flexible(
              flex: 1,
              child:
            Container(
                        margin: EdgeInsets.only(left: 35.0,right: 35.0,bottom: 35.0),
                        child:
              RoundTextBox(
                name: "Username",
              ),),),
              Flexible(
                flex: 1,
                child:
              Container(
                margin: EdgeInsets.only(left: 35.0,right: 35.0,bottom: 35.0),
                child:
              RoundTextBox(
                name: "Phone",
              ),),),
              Flexible(
                flex: 1,
                child:
              Container(
                margin: EdgeInsets.only(left: 35.0,right: 35.0,bottom: 35.0),
                child:
              RoundTextBox(
                name: "Email",
              ),),),
              Flexible(
                flex: 1,
                child:
              Container(
                  margin: EdgeInsets.only(left: 35.0,right: 35.0,bottom: 35.0),
                  child:
              RoundTextBox(
                name: "Password",
              )),),
            Flexible(
                child:
            Container(
              child: RectangularButton(),
            ))
            ]))
    );
  }
}
