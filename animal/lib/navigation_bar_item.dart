//import 'dart:async';
//
//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:login/Pages/Setup/signIn.dart';
//import 'package:login/Pages/Setup/signUp.dart';
//import 'package:bottom_navy_bar/bottom_navy_bar.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:location/location.dart';
//import 'package:speech_bubble/speech_bubble.dart';
//
//
//
//class WelcomePage extends StatefulWidget {
//  @override
//  _WelcomePageState createState() => _WelcomePageState();
//}
//
//class _WelcomePageState extends State<WelcomePage> {
//
//  Completer<GoogleMapController> _controller = Completer();
//
//
//  Location location = new Location();
//
//  static final CameraPosition _kGooglePlex = CameraPosition(
//
//    target: LatLng(37.42796133580664, -122.085749655962),
//    zoom: 14.4746,
//  );
//
//  @override
//  Widget build(BuildContext context) {
//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
//        statusBarColor: Colors.transparent,
//        //statusBarIconBrightness: Brightness.light,
//        statusBarBrightness: Brightness.light
//    ));
//
//    return Scaffold(
//      appBar: AppBar(
//        brightness: Brightness.light,
//        title: Text('iWay', style: TextStyle(color: Colors.black),),
//        backgroundColor: Colors.white,
//        elevation: 0.0,
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.search, color: Color.fromARGB(255, 255, 111, 97),),
//            onPressed: (){
//
//            },
//          )
//        ],
//        //backgroundColor: Colors.white,
//      ),
//
//
//      bottomNavigationBar: BottomNavyBar(
//        onItemSelected: (index) => setState(() {
//          if(index == 0)
//            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
//
//          if(index == 3){
//            showDialog(
//                context: context,
//                builder: (BuildContext conext){
//                  return AlertDialog(
//                    content: new Text("Deseja realmente sair?"),
//                    actions: <Widget>[
//                      new FlatButton(
//                          child: new Text("Sair"),
//                          color: Color.fromARGB(255, 255, 111, 97),
//                          textColor: Colors.white,
//                          onPressed: (){
//                            SystemNavigator.pop();
//                          }
//                      )
//                    ],
//                  );
//                }
//            );
//          }
//
//        }),
//        items: [
//          BottomNavyBarItem(
//            icon: Icon(Icons.person),
//            title: Text('Login'),
//            activeColor: Color.fromARGB(255, 255, 111, 97),
//          ),
//          BottomNavyBarItem(
//            icon: Icon(Icons.settings),
//            title: Text('Opções'),
//            activeColor: Color.fromARGB(255, 255, 111, 97),
//          ),
//          BottomNavyBarItem(
//            icon: Icon(Icons.email),
//            title: Text('Opções'),
//            activeColor: Color.fromARGB(255, 255, 111, 97),
//          ),
//          BottomNavyBarItem(
//            icon: Icon(Icons.arrow_back),
//            title: Text('Sair'),
//            activeColor: Color.fromARGB(255, 255, 111, 97),
//          ),
//        ],
//      ),
//
//      body: Container(
//        child: GoogleMap(
//          mapType: MapType.terrain,
//          initialCameraPosition: _kGooglePlex,
//          onMapCreated: (GoogleMapController controller) {
//            _controller.complete(controller);
//          },
//          myLocationEnabled: true,
//        ),
//      ),
//
//      floatingActionButton: FloatingActionButton.extended(
//        onPressed: _goToTheLake,
//        label: Text('Onde estou?'),
//        icon: Icon(Icons.home),
//        backgroundColor: Color.fromARGB(255, 255, 111, 97),
//      ),
//    );
//  }
//
//  Future<void> _goToTheLake() async {
//    var pos = await location.getLocation();
//    final GoogleMapController controller = await _controller.future;
//    controller.animateCamera(CameraUpdate.newCameraPosition(
//        CameraPosition(
//            target: LatLng(pos.latitude, pos.longitude),
//            zoom: 16.151926040649414,
//            tilt: 59.440717697143555
//        )
//    )
//    );
//  }
//
//  void navigateToSignIn(){
//    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(), fullscreenDialog: true));
//
//  }
//
//  void navigateToSignUp(){
//    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(), fullscreenDialog: true));
//  }
//}