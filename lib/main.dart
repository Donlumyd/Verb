import 'package:flutter/material.dart';
import 'package:voxpopper/homePage.dart';
import 'package:voxpopper/loginScreen.dart';
import 'package:voxpopper/registrationScreen.dart';
import 'package:voxpopper/welcomeScreen.dart';
import 'package:voxpopper/accountChooserScreen.dart';
import 'package:firebase_core/firebase_core.dart';

 void main () async{
     WidgetsFlutterBinding.ensureInitialized();
     await Firebase.initializeApp();
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
         HomePage.id: (context) => HomePage(),

       },
     );

   }
 }

