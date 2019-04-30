import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';


class Home extends StatefulWidget {
  const Home({Key key, this.user}) : super(key: key);
  final FirebaseUser user;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home ${widget.user.email}'),


      ),

bottomNavigationBar: TitledBottomNavigationBar(
  onTap: (index){
    print("Selected Index: $index");
  },
  items: [
      TitledNavigationBarItem(title: 'Home', icon: Icons.home),
      TitledNavigationBarItem(title: 'Search', icon: Icons.search),
      TitledNavigationBarItem(title: 'Bag', icon: Icons.card_travel),
      TitledNavigationBarItem(title: 'Orders', icon: Icons.shopping_cart),
      TitledNavigationBarItem(title: 'Profile', icon: Icons.person_outline),
  ]
),

      body: Form(child: Column(
          children: <Widget>[
//            TextField(
//              autofocus: true,
//            ),
//            TextField(
//              autofocus: true,
//            ),
//      RaisedButton(
//
//      child: Text('Publicar'),
//      ),

      ],
    ),)
    ,
    );
  }
}
