import 'package:flutter/material.dart';

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
        title: Text('Welcome'),
        backgroundColor: Colors.lightBlue[800],

        ),


      body:Row(
          children: [
            Text(
              'Get useful reviews, suggestions and opinion from your target audience'
            ),
          ],
        ),

    );
  }
}
