import 'package:flutter/material.dart';
import 'package:voxpopper/loginScreen.dart';
import 'package:voxpopper/registrationScreen.dart';
import 'package:voxpopper/welcomeScreen.dart';
import 'package:voxpopper/accountchooser.dart';

 void main (){
   runApp(
       Verb(
   ),
   );
 }

 class Verb extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
     theme: ThemeData(
         accentColor: Colors.lightBlue[800],
         primaryColor: Colors.white,
         textTheme: TextTheme(
            bodyText1: TextStyle(
                color: Colors.blue
            ),
         ),
     ),

       initialRoute: WelcomeScreen.id,
       routes: {
       WelcomeScreen.id: (context) => WelcomeScreen(),
         LoginScreen.id: (context) => LoginScreen(),
         RegistrationScreen.id: (context) => RegistrationScreen(),
         AccountChooser.id: (context) => AccountChooser(),

       },
     );

   }
 }

