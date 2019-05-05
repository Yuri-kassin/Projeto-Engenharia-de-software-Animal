import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import 'package:animal/pages/Map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key key, this.user}) : super(key: key);
  final FirebaseUser user;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> containers = [
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.deepPurple,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home ${widget.user.email}'),
        ),
        
        bottomNavigationBar: TitledBottomNavigationBar(
          reverse: true,
            onTap: (index) {
              if (index == 1) {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => MapSample(), fullscreenDialog: true));
              }
              print("Selected Index: $index");
            },
            items:[
              TitledNavigationBarItem(title: 'Home', icon: Icons.home),
              TitledNavigationBarItem(title: 'Search', icon: Icons.pets,),
              TitledNavigationBarItem(title: 'Profile', icon: Icons.person_outline),
            ]),

          //body:,
          //  body: Title(color: null, child: null),
//        body: TabBarView(children: <Widget>[
//          Center(child: Text("nossa")),
//          Center(child: Text("nosssa")),
//          Center(child: Text("nossssa")),
//        ]),
      ),
    );
  }
}


