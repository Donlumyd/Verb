import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voxpopper/reusableroundedbutton.dart';
import 'package:voxpopper/reusabletextfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:voxpopper/homePage.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {

  static String id = 'loginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String email;
  String password;
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Login'),
        backgroundColor: Colors.blue,
      ),
           body: ModalProgressHUD(
             inAsyncCall: showSpinner,
             child: Padding(
                 padding: EdgeInsets.symmetric(vertical: 24.0),
               child: Center(
                 child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,

                   children: [
                     Container(
                       height: 100.0,
                       //child: Image.asset(null), //add image asset later
                     ),

                     SizedBox(
                       height: 48.0,
                     ),

                    ReusableTextField(hintOfTextField: 'Username or E-mail', hidePassword: false, onChangedValue: (value){
                            email = value;
                    },),

                     SizedBox(height: 5),

                     ReusableTextField(hintOfTextField: 'Password' , hidePassword: true, onChangedValue: (value){
                              password = value;
                     },),

                     ReusableRoundedButton(buttonText: 'Login', colour: Colors.blueAccent, onPressed: () async{

                       setState(() {
                         showSpinner = true;
                       });

                       try {
                         final user = await _auth.signInWithEmailAndPassword(
                             email: email, password: password);

                         if (user != null){
                           Navigator.pushNamed((context), HomePage.id );
                         }

                         setState(() {
                           showSpinner = true;
                         });

                       }
                       catch(e){

                         print(e);
                       }

                     },),
                   ],
                 ),
               ),
                 ),
           )


    );
  }
}
