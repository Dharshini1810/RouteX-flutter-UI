import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/gpsLocation.dart';
import 'package:flutter_application_1/location.dart';
import 'package:flutter_application_1/main2.dart';
import 'package:flutter_application_1/main.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OTPScreen extends StatefulWidget {
  final String phone;
  OTPScreen(this.phone);
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  late String  _verificationCode;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
          boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(6,6),
          blurRadius: 4
      )],
    // color: const Color.fromRGBO(43, 46, 66, 1),
    color : Color.fromRGBO(255, 255, 255, 0.6000000238418579),
    // boxShadow : [BoxShadow(
    //       color: Color.fromRGBO(0, 0, 0, 0.25),
    //       offset: Offset(0,4),
    //       blurRadius: 4
    //   )],
    //   color : Color.fromRGBO(255, 255, 255, 0.6000000238418579),
    // borderRadius: BorderRadius.circular(10.0),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      // body: 
      body:
        Container(
          decoration: BoxDecoration(
            image : DecorationImage(
            image: AssetImage('assets/images/Android - 3 (1).png'),
            fit: BoxFit.fill,
            ),
            ),

      child: new Column( 
        children: [
           Positioned(
        top: 10,
        left: -70,
        child: Container(
        width: 475,
        height: 148,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/images/Vector.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),
       Container(
         margin: EdgeInsets.only(left: 0, right: 90, top: 30, bottom: 0),
        //top: 290,
        //left: 29,
        child: Text('CONFIRMATION ', textAlign: TextAlign.left, style: TextStyle(
        decoration: TextDecoration.none,  
        color: (Colors.black),
        shadows: [
        Shadow(
        offset: Offset(6.0, 6.0),
        blurRadius: 4.0,
        color: Color.fromRGBO(0, 0, 0, 0.25),
        ),
        ],
        fontFamily: 'Roboto',
        fontSize: 24,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
      Container(
        margin: EdgeInsets.only(left: 20, right: 0, top: 25, bottom: 0),
        //top: 280,
        //left: 44,
        child: Text('Please type the verification code', textAlign: TextAlign.left, style: TextStyle(
        decoration: TextDecoration.none,  
        color: (Colors.black),
        fontFamily: 'Roboto',
         shadows: [
        Shadow(
        offset: Offset(6.0, 6.0),
        blurRadius: 4.0,
        color: Color.fromRGBO(0, 0, 0, 0.25),
        ),
        ],
        fontSize: 18,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ), 
          /*Container(
        margin: EdgeInsets.only(left: 0,right: 0,top: 100,bottom: 0,),    
        child: Text('RESEND CODE   ', 
        textAlign: TextAlign.left, style: TextStyle(  
        decoration: TextDecoration.none,  
        color: Color.fromRGBO(255, 255, 255, 1),
        fontFamily: 'Roboto',
         shadows: [
        Shadow(
        offset: Offset(6.0, 6.0),
        blurRadius: 4.0,
        color: Color.fromRGBO(0, 0, 0, 0.25),
        ),
        ],
        fontSize: 22,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        //height: 1
      ),)
      ),*/
          Container(
            margin: EdgeInsets.only(top: 60),
            child: Center(
              child: Text(
                'VERIFY +91-${widget.phone}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, fontFamily: 'Roboto', color: (Colors.black),
                shadows: [
        Shadow(
        offset: Offset(6.0, 6.0),
        blurRadius: 4.0,
        color: Color.fromRGBO(0, 0, 0, 0.25),
        ),
        ], ),
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 30,right: 30,bottom: 0),
            child: PinPut(
              fieldsCount: 6,
              textStyle: const TextStyle(fontSize: 25.0, color: Colors.black),
              eachFieldWidth: 40.0,
              eachFieldHeight: 55.0,
              focusNode: _pinPutFocusNode,
              controller: _pinPutController,
              submittedFieldDecoration: pinPutDecoration,
              selectedFieldDecoration: pinPutDecoration,
              followingFieldDecoration: pinPutDecoration,
              pinAnimationType: PinAnimationType.fade,
              onSubmit: (pin) async {
                try {
                  await FirebaseAuth.instance
                      .signInWithCredential(PhoneAuthProvider.credential(
                          verificationId: _verificationCode, smsCode: pin))
                      .then((value) async {
                    if (value.user != null) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) =>  AskForPermission()),
                          (route) => false);
                    }
                  });
                } catch (e) {
                  FocusScope.of(context).unfocus();
                  //_scaffoldkey.currentState
                      //.showSnackBar(SnackBar(content: Text('invalid OTP')));
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid OTP")));    
                }
              },
            ),
          ),
        Container(
        margin: EdgeInsets.only(left: 0,right: 0,top: 80,bottom: 0,),    
        child: Text('RESEND CODE   ', 
        textAlign: TextAlign.left, style: TextStyle(  
        decoration: TextDecoration.none,  
        color: (Colors.black),
        fontFamily: 'Roboto',
         shadows: [
        Shadow(
        offset: Offset(6.0, 6.0),
        blurRadius: 4.0,
        color: Color.fromRGBO(0, 0, 0, 0.25),
        ),
        ],
        fontSize: 22,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        //height: 1
      ),)
      ),
        ],
      ),
      ),
    );
  }

  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91${widget.phone}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) =>  Android4Widget()),
                  (route) => false);
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verficationID, int resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 120));
  }
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _verifyPhone();
  }
  
}