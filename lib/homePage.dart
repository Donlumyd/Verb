import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {

  static String id = 'Homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _auth = FirebaseAuth.instance;
   User loggedInUser;


  @override
  void initState() {
    getCurrentUser();
    super.initState();
  }

  void getCurrentUser() async{

    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(user.email);
      }
    }
    catch (e) {
      print(e);
    }

    }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(
          title: Text('Homepage'),
          backgroundColor: Colors.blueAccent,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [

            Expanded(
                child: ListView(

                ))

          ],

        )
    );
  }

  }





