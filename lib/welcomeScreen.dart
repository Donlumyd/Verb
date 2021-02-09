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

        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Image.asset(null),

              Text(
                'Verb',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                    ),
              ),

              Expanded(
                flex: 1,
                child:
          Text(' Generate useful public opinions, reviews and suggestions',
              style: TextStyle(
                fontSize: 15.0,
                    fontWeight: FontWeight.w900,
              ),
          ),
              ),

              SizedBox(
                height: 48.0,
              ),
              
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  elevation: 5.0,
                    color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: (){
                      // go to login screen
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                    'Login'
                    ),
                ),
                ),
              ),

              Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                child: Material(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,

                  child: MaterialButton(onPressed:(){

                  },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text('Register'),
                  ),
                ),
              ),
            ],

          ),

        ),

    );
  }
}
