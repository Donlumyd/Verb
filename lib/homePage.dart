import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
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

  void getCurrentUser() async {
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


  Future<String> showUsers() async {
    Future<String>userList = [] as Future<String>;
    final availableUsers = await FirebaseFirestore.instance.collection('users')
        .get();

    for (var availableUser in availableUsers.docs) {
      final String userDisplayName = availableUser.get('displayName');
      final String userAccountType = availableUser.get('accountType');

      if (userAccountType != null) {
        userList.then((value) => userDisplayName);
      }
    }
    return userList;
  }
  List<String> receivedList = [];
  List<Text>finalText = [];

 void changer () async {
 receivedList = (await showUsers()) as List<String>;
 }

 void convertToText(){

   for (var convertedText in receivedList){

   Text userText = Text('$convertedText');
   finalText.add(userText);
   }
 }

  @override
  Widget build(BuildContext context) {



    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blueAccent,

          title: Text('Homepage'),

          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {

            }),
          ],
        ),


        drawer: Drawer(

          child: ListView(

            children: [
              new DrawerHeader(child: Text('Display Name'),
                // add display picture to user
              ),

              ListTile(
                title: Text('Profile',
                    style: TextStyle(
                        fontSize: 15
                    )),
                onTap: () {
                  //set Profile

                },
              ),

              ListTile(
                title: Text('Entries',
                    style: TextStyle(
                        fontSize: 15
                    )),
                onTap: () {
                  //set Profile

                },
              ),

              ListTile(
                title: Text('Logout',
                    style: TextStyle(
                        fontSize: 15
                    )),
                onTap: () {
                  //set Profile

                },
              ),

            ],

          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [

            Expanded(
                child: ListView(
                    scrollDirection: Axis.vertical,
                    children: finalText,


                )
            )

          ],

        )
    );
  }

}






