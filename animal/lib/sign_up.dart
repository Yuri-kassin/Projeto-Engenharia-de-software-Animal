import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:animal/singIn.dart';
import 'package:animal/pages/home.dart';
class SingUpPage extends StatefulWidget {
  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (input){
                  if(input.isEmpty){
                    return 'Please Type an email';
                  }
                },
                onSaved: (input) => _email = input,
                decoration: InputDecoration(
                    labelText: 'Email'
                ),
              ),
              TextFormField(
                validator: (input){
                  if(input.length<6){
                    return 'Your password needs to be atleast 6 characters';
                  }
                },
                onSaved: (input) => _password = input,
                decoration: InputDecoration(
                    labelText: 'Password'
                ),
                obscureText: true,
              ),
              RaisedButton(
                onPressed: singUp ,
                child: Text('Create User'),
              ),
            ],
          )),
    );
  }



  Future<void> singUp() async{
    final formState = _formKey.currentState;
    if(formState.validate()){
      //TODO login to firebase
      formState.save();
      try{
        FirebaseUser user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password);
        user.sendEmailVerification();

        Navigator.of(context).pop();
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>LoginPage()));
      }catch(e){
        print(e.message);
      }

    }

  }
}

