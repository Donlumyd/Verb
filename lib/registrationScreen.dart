import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {

  static String id = 'registrationScreen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text('Register'),
    backgroundColor: Colors.blue,
      ),

        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
       // add Image.asset() later

          //CONTINUE TOMORROW FROM HERE

        ],

      )

      ),


    );
  }
}
