import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:voxpopper/profilePage.dart';

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
                  Navigator.pushNamed(context, ProfilePage.id);

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
            StreamBuilder <QuerySnapshot>(
                stream: FirebaseFirestore.instance.collection('user').snapshots(),
                builder: (context, snapshot){
                  List<HomePageTiles>profileWidgets = [];

                  if (!snapshot.hasData)
                  {
                    return Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.blueAccent,
                        )
                    );
                  }
                  else {
                    final profiles = snapshot.data.docs;
                    for (var profile in profiles){

                      final profileName = profile.get('displayName');
                      final profileWidget = HomePageTiles(profileName: profileName);
                      profileWidgets.add(profileWidget);
                    }

                  }
                  return Expanded(
                    child: ListView(
                      children: profileWidgets,
                    ),
                  );

                }
            )
          ],

        )
    );
  }



  }

class HomePageTiles extends StatelessWidget {

  final String profileName;

 HomePageTiles({this.profileName});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
child: DecoratedBox(
  decoration: BoxDecoration(
      border: Border.all(width:0.5, color: Colors.lightBlue),
  ),

  child:   Text('$profileName',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 30,
      fontFamily: 'Sans serif'


    )

  ),
),

    );
  }
}








