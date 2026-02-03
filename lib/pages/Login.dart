import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';


class LoginScreen extends StatefulWidget{
   _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<LoginScreen> {
  
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body:
      Column(
        children: <Widget>[
          Expanded(child: Container(
            child: Image.asset('lib/images/Logo.png'),
          ),
          ),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Don\'t have an account?', style: TextStyle(color: Colors.white, fontSize: 20),),
                Text('SIGN UP', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
            Expanded(child: Padding(padding: EdgeInsets.only(left: 40, right: 40, top: 10),
           child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Container(
              color: Colors.blue[50],
              child: Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(20),
                  child: Icon(Icons.accessibility,),),
                  Text('E M A I L')
                ],
            ),
          ),
        ),
      ),
    ),
    Expanded(child: Padding(padding: EdgeInsets.only(left: 40, right: 40, top: 10),
           child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Container(
              color: Colors.blue[50],
              child: Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(20),
                  child: Icon(Icons.lock,),),
                  Text('P A S S W O R D')
                ],
            ),
          ),
        ),
      ),
    ),
    Padding(padding: EdgeInsets.only(top: 10),
    child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Forgot Password?', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
            ),
            Expanded(child: Padding(padding: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 20),
           child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Container(
              color: Colors.blue[50],
              child: Center(
                  child: Text('S I G N   I N',),
            ),
              )
          ),
        ),
      ),
      Row(
        children: <Widget>[
          Expanded(child: Padding(padding: EdgeInsets.only(left: 10, right: 5),
          child: SignInButton(Buttons.AppleDark, onPressed: () {},
          ),
      ),
    ),
    Expanded(child: Padding(padding: EdgeInsets.only(left: 5 , right: 5),
          child: SignInButton(Buttons.Google, onPressed: () {},
          ),
      ),
    ),
    Expanded(child: Padding(padding: EdgeInsets.only(left: 5, right: 10),
          child: SignInButton(Buttons.FacebookNew, onPressed: () {},
          ),
      ),
    ),
    Padding(padding: 
    EdgeInsets.all(5),),

    ],
      )
],
            ),
          ),
        ],
      ),
    );
  }
}