import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
          resizeToAvoidBottomInset: true,
          body: Builder(builder: (BuildContext context) {
            var height = MediaQuery.of(context).size.height -
                Scaffold.of(context).appBarMaxHeight;
            return Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/bg.png'),
                          fit: BoxFit.cover)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.8, sigmaY: 0.8),
                    child: Container(
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: Scaffold.of(context).appBarMaxHeight,
                  ),
                  child: Container(
                    height: height,
                    //color: Colors.blue,
                    alignment: Alignment.bottomCenter,
                    child: SignUpDetails(),
                  ),
                )
              ],
            );
          })),
    );
  }
}
