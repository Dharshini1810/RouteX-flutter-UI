import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/location.dart';

void main() {
  runApp(MyApp());
}

 class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Android11Widget(),
          ],
        ),
      ),
    );
  }
}
class Android11Widget extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
          // Figma Flutter Generator Android1Widget - FRAME
            return Container(
      width: 360,
      height: 703,
      decoration: BoxDecoration(
          color : Color.fromRGBO(137, 207, 240, 0.550000011920929),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: -2,
        left: 0,
        bottom: 0,
        child: Container(
        width: 360,
        height: 180,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/images/Android - 3 (1).png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 14,
        left: -70,
        child: Container(
        width: 500,
        height: 500,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/images/Untitleddesign11.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 316,
        left: 103,
        child: Text('RouteX', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1), 
        shadows: [
            Shadow(
                blurRadius: 10.0,
                color: Colors.grey,
                offset: Offset(7.0, 7.0),
                ),
            ],
        fontFamily: 'B612', 
        fontSize: 65,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),MaterialButton(onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => Android1Widget()));
      },  
        child: Container(
        width: 239,
        height: 60, 
        margin:
              EdgeInsets.only(left: 63, top: 550, right: 0, bottom: 0),
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0,4),
          blurRadius: 4
      )],
      color : Color.fromRGBO(255, 255, 255, 0.6000000238418579),
  )
      )
      ),Positioned(
        top: 567,
        left: 128,
        child: Text('Get Started', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'OleoScript',
        fontSize: 30,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    );
          }
        }
        