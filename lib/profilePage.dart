import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  static String id = 'profilePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text ('Profile Page'),
    ),

    body: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(name);

    TextField()
    ],
    );

  }
}
