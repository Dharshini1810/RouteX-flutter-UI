import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math' as math;import 'dart:math' as math;import 'dart:math' as math;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/otp.dart';
//import 'package:flutter_application_1/otp.dart';
 class Android1Widget extends StatefulWidget {
        @override
        _Android1WidgetState createState() => _Android1WidgetState();
        }        
        class _Android1WidgetState extends State<Android1Widget> {
          TextEditingController _controller = TextEditingController();
          @override
          Widget build(BuildContext context) {
          // Figma Flutter Generator Android1Widget - FRAME
            return Scaffold(
              body: Container(
      width: 360,
      height: 750,
      decoration: BoxDecoration(
        color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[ 
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 360,
        height: 470,
        decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/images/Android - 3 (1).png'),
          fit: BoxFit.fill, 
          ),
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          ),
      // color : Color.fromRGBO(252, 165, 165, 1),
        )
        ),
      Positioned(
        top: 301,
        left: 22,
        child: Container(
        width: 317,
        height: 400,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(10,10),
          blurRadius: 4
      )],
      color : Color.fromRGBO(255, 255, 255, 1),
  )   
      )
      ),
      Positioned(
        top: 329,
        left: 60,
        child: Text('Personal Information', textAlign: TextAlign.left, style: TextStyle(
        decoration: TextDecoration.none,  
        shadows: [
        Shadow(
        offset: Offset(6.0, 6.0),
        blurRadius: 4.0,
        color: Color.fromRGBO(0, 0, 0, 0.25),
        ),
        ],
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 25,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 470,
        width: 250.0, 
        left: 55,
        child: TextField(
          obscureText: false,
          decoration: InputDecoration(
          hintText:'Your Mobile Number',
          prefixIcon: Icon(Icons.phone),
          hintStyle: new TextStyle(
            fontFamily: 'Roboto',
            color: Color.fromRGBO(141, 145, 145, 1),
            fontSize: 16,

          )
          ),
          keyboardType: TextInputType.phone,
          controller: _controller,
        ),),
        Positioned(
          top: 440, 
          width: 261.0, 
          left: 43, 
          child: Divider(
          color: Color.fromRGBO(141, 145, 145, 1),
          thickness: 1,
          indent: 10,
        )),
      Positioned(
        top: 348,
        left: 57,
        child: Transform.rotate(
        angle: -0.2012986355707143 * (math.pi / 180),
        child: Divider(
        color: Color.fromRGBO(0, 0, 0, 1),
        thickness: 1
      ),
      )
      ),Positioned(
        top: 569,
        left: 29,
        child: Text('OTP will be sent to your phone number', textAlign: TextAlign.left, style: TextStyle(
        decoration: TextDecoration.none,  
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 16,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        //height: 1
      ),)
      ),Positioned(
        top: 510,
        left: 152,
        child: Container(
      width: 0,
      height: 0,
      //decoration: BoxDecoration(
          //color : Color.fromRGBO(255, 255, 255, 1),
  //),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
      width: 58,
      height: 57,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
        ]
      )
    )
      ),
        ]
      )
    )
      ),Positioned(
        top: 409,
        left: 57,
        child: Container(
        width: 40, 
        height: 26.666664123535156,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/images/1200pxflag_of_india1.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 423,
        left: 110,
        child: Text('INDIA(+91)', textAlign: TextAlign.left, style: TextStyle(
        decoration: TextDecoration.none,  
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 17,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: -10,
        left: -10,
        child: Container(
        width: 375,
        height: 346,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/images/Imageedit_9_40029377491.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),
      Positioned(
        top: 612,
        left: 152,
      child: MaterialButton(
         onPressed: () {
           Navigator.of(context).push(MaterialPageRoute(builder: (context) => OTPScreen(_controller.text)));
           //Navigator.push(context, MaterialPageRoute(builder: (context) => Android2Widget()));

        },
        //top: 612,
        //left: 152,
        child: Container(
        width: 62,
        height: 62,
        // margin: EdgeInsets.only(left: 2,top: -42,right: 0,bottom: 0),
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/images/Untitled design (6).png'),
          fit: BoxFit.fitWidth
      ),
      //borderRadius : BorderRadius.all(Radius.elliptical(84, 68)),
  )
        )
      ),),
        ]
      )
              )
    );
          }
        }
        