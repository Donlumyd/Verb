import 'package:flutter/material.dart';
import 'package:voxpopper/loginScreen.dart';
import 'package:voxpopper/reusableroundedbutton.dart';
import 'package:voxpopper/accountchooser.dart';


class WelcomeScreen extends StatefulWidget {

  static String id = 'welcomeScreen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'
        ),
        backgroundColor: Colors.lightBlue[800],
      ),

        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
             // Image.asset(null), //add image asset later

              Center (

             child: Text(
                'Verb',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                      color: Colors.lightBlue[800],
                      fontFamily: 'Calibri',
                    ),

              ),
              ),

              Expanded(
                child:
          Text(' Generate useful public opinions, reviews, suggestions and brand perception with Verb',

              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Sans serif',
                fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                color: Colors.lightBlue[800],
              ),
          ),
              ),

              SizedBox(
                height: 20.0,
              ),

              ReusableRoundedButton(buttonText: 'Log in', colour: Colors.lightBlueAccent, onPressed: (){
                Navigator.pushNamed(context, LoginScreen.id);
              }),


              ReusableRoundedButton(buttonText: 'Register', colour: Colors.lightBlue, onPressed: (){
                Navigator.pushNamed(context, AccountChooser.id);
              },),
            ],

          ),

        ),

    );
  }
}
