import 'package:flutter/material.dart';
import 'package:voxpopper/reusableroundedbutton.dart';
import 'package:voxpopper/reusabletextfield.dart';

class LoginScreen extends StatefulWidget {

  static String id = 'loginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Login'),
      ),
           body: Padding(
               padding: EdgeInsets.symmetric(vertical: 24.0),
             child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,

               children: [
                 Container(
                   height: 200.0,
                   //child: Image.asset(null), //add image asset later
                 ),

                 SizedBox(
                   height: 48.0,
                 ),

                ReusableTextField(),

                 ReusableTextField(),

                 ReusableRoundedButton(buttonText: 'Login', colour: Colors.blueAccent, onPressed: (){
                  // Navigator.pushNamed((context), Homepage.id )
                 },),
               ],
             ),
               )


    );
  }
}
