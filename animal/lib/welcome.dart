import 'package:flutter/material.dart';
import 'package:animal/singIn.dart';
import 'package:animal/sign_up.dart';
class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            onPressed: navigateTosignIn,
            child: Text('Sign in'),
          ),
          RaisedButton(
            onPressed: naviateTosignUp ,
            child: Text('Sign up'),
          ),
        ],
      ),
    );
  }

  void navigateTosignIn(){
    Navigator.push(context,MaterialPageRoute(builder: (context) =>LoginPage(), fullscreenDialog: true));
  }

  void naviateTosignUp(){
    Navigator.push(context,MaterialPageRoute(builder: (context) =>SingUpPage(),fullscreenDialog: true));
  }
}
