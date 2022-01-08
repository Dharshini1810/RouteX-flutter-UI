import 'package:flutter/material.dart';
import 'package:flutter_application_1/main2.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_application_1/gpsLocation.dart'; 

class Android4Widget extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
          // Figma Flutter Generator Android4Widget - FRAME
            return Container(
      width: 360,
      height: 640,
      decoration: BoxDecoration(
          color : Color.fromRGBO(137, 207, 240, 0.550000011920929),
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
          ),),),),
          Positioned(
        top: 350,
        left: 0,
        child: Container(
        width: 360,
        height: 450,
        decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 605,
        left: 43,
         child: MaterialButton(
         onPressed: () {
           //Navigator.of(context).push(MaterialPageRoute(builder: (context) => OTPScreen(_controller.text)));
           Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Container(
        width: 262,
        height: 55,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0,4),
          blurRadius: 4
      )],
      color : Color.fromRGBO(137, 207, 240, 0.550000011920929),
  )
      ),),
      ),Positioned(
        top: 622,
        left: 71,
        child: Text('ENABLE LOCATION', textAlign: TextAlign.left, style: TextStyle(
        decoration: TextDecoration.none,  
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 391,
        left: 116,
        child: Text('LOCATION ', textAlign: TextAlign.left, style: TextStyle(
        decoration: TextDecoration.none,  
        color: Color.fromRGBO(0, 0, 0, 1),
         shadows: [
        Shadow(
        offset: Offset(6.0, 6.0),
        blurRadius: 4.0,
        color: Color.fromRGBO(0, 0, 0, 0.25),
        ),
        ],
        fontFamily: 'Oswald',
        fontSize: 30,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 455,
        left: 45,
        child: Text('RouteX needs location access' 
        ,textAlign: TextAlign.center, style: TextStyle(
        decoration: TextDecoration.none,   
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 18,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 480,
        left: 50,
        child: Text('to provide accurate score that' 
        ,textAlign: TextAlign.center, style: TextStyle(
        decoration: TextDecoration.none,   
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 18,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 505,
        left: 57,
        child: Text('     helps you to choose the' 
        ,textAlign: TextAlign.center, style: TextStyle(
        decoration: TextDecoration.none,   
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 18,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
      Positioned(
        top: 530,
        left: 95,
        child: Text('          right route' 
        ,textAlign: TextAlign.center, style: TextStyle(
        decoration: TextDecoration.none,   
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Roboto',
        fontSize: 18,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
      Positioned(
        top: 15,
        left: 40,
        child: Container(
        width: 270,
        height: 335,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/images/Imageedit_11_67054133101.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 82.5,
        left: 119,
        child: Container(
        width: 138,
        height: 205,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/images/Rectangle5.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),
        ]
      )
    );
          }
        }
        