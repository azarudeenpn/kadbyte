import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kadbyte/RectangularButton.dart';
import 'package:kadbyte/RoundTextbox.dart';
import 'package:kadbyte/login_signup_selector.dart';

import 'SignUpDetails.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "kadbyte",
      home: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('KadByte'),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.info_outline, color: Colors.white),
                  tooltip: 'info',
                  onPressed: null)
            ],
          ),
          extendBodyBehindAppBar: true,
          //resizeToAvoidBottomInset: true,
          body: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/bg.png'), fit: BoxFit.cover)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 0.8, sigmaY: 0.8),
                  child: Container(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
              Container(
                color: Colors.red,
                alignment: Alignment.bottomCenter,
                child: SignUpDetails(),
              ),
            ],
          )),
    );
  }
}
