import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:android_intent/android_intent.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/mapdisplay.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AskForPermission extends StatefulWidget {
  static const String idScreen = "mainScreen";
  @override
  _AskForPermissionState createState() => _AskForPermissionState();
}

class _AskForPermissionState extends State<AskForPermission> {
  final PermissionHandler permissionHandler = PermissionHandler();
  late Map<PermissionGroup, PermissionStatus> permissions;
  void initState() {
    super.initState();
    requestLocationPermission();
    _gpsService();
  }
  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  late GoogleMapController newGoogleMapController;

  static final CameraPosition _kGoogleplex = CameraPosition(
    target: LatLng(37.42796133580564, -122.085749655962),
    zoom: 14.4746,
  );

  Future<bool> _requestPermission(PermissionGroup permission) async {
    final PermissionHandler _permissionHandler = PermissionHandler();
    var result = await _permissionHandler.requestPermissions([permission]);
    if (result[permission] == PermissionStatus.granted) {
      return true;
    }
    return false;
  }

/*Checking if your App has been Given Permission*/
  Future<bool> requestLocationPermission({Function? onPermissionDenied}) async {
    var granted = await _requestPermission(PermissionGroup.location);
    if (granted != true) {
      requestLocationPermission();
    }
    debugPrint('requestContactsPermission $granted');
    return granted;
  }

/*Show dialog if GPS not enabled and open settings location*/
  Future _checkGps() async {
    if (!(await Geolocator().isLocationServiceEnabled())) {
      if (Theme.of(context).platform == TargetPlatform.android) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Can't get current location"),
                content:
                    const Text('Please make sure you enable GPS and try again'),
                actions: <Widget>[
                  MaterialButton(
                      child: Text('Ok'),
                      onPressed: () {
                        final AndroidIntent intent = AndroidIntent(
                            action:
                                'android.settings.LOCATION_SOURCE_SETTINGS');
                        intent.launch();
                        Navigator.of(context, rootNavigator: true).pop();
                        _gpsService();
                      })
                ],
              );
            });
      }
    }
  }

/*Check if gps service is enabled or not*/
  Future _gpsService() async {
    if (!(await Geolocator().isLocationServiceEnabled())) {
      _checkGps();
      return null;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            myLocationButtonEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              _controllerGoogleMap.complete(controller);
              newGoogleMapController = controller;
            }, initialCameraPosition: _kGoogleplex,
          ),
        ],
      ),
    );
    /*return Scaffold(
        appBar: AppBar(
          title: Text('Ask for permisions'),
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
                /*top: 540,
        left: 47,*/
                child: Container(
                    width: 267,
                    height: 66,
                    margin: EdgeInsets.only(
                        left: 47, top: 540, right: 0, bottom: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.09),
                            offset: Offset(10, 10),
                            blurRadius: 4)
                      ],
                      color: Color.fromRGBO(255, 255, 255, 0.2199999988079071),
                    ))),
          ],
        )));*/
  }
}

// class MainScreen extends StatefulWidget {
//   static const String idScreen = "mainScreen";

//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   Completer<GoogleMapController> _controllerGoogleMap = Completer();
//   late GoogleMapController newGoogleMapController;

//   static final CameraPosition _kGoogleplex = CameraPosition(
//     target: LatLng(37.42796133580564, -122.085749655962),
//     zoom: 14.4746,
//   ); // CameraPosition

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Main Screen"),
//       ),
//       body: Stack(
//         children: [
//           GoogleMap(
//             mapType: MapType.normal,
//             myLocationButtonEnabled: true,
//             initialCameraPosition: _kGoogleplex,
//             onMapCreated: (GoogleMapController controller) {
//               _controllerGoogleMap.complete(controller);
//               newGoogleMapController = controller;
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
