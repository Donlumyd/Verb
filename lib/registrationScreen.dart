import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voxpopper/reusableroundedbutton.dart';
import 'package:voxpopper/reusabletextfield.dart';
import 'accountTypeDropDown.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:voxpopper/homePage.dart';
import 'dart:io' show Platform;

class RegistrationScreen extends StatefulWidget{

  static String id = 'registrationScreen';


  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}


class _RegistrationScreenState extends State<RegistrationScreen> {

  final _auth = FirebaseAuth.instance;

  String selectedMenu = 'Specify Business Type';
  String username;
  String email;
  String phoneNumber;
  String password;
  String corporateType;


  DropdownButton<String>getDropDownButton(){

    List<DropdownMenuItem<String>>dropdownItems= [];

    for (String menuItem in corporateAccountType) {
      var newItem = DropdownMenuItem(
        child: Text(menuItem),
        value: menuItem,
      );
      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(value: selectedMenu,
        items: dropdownItems,
        onChanged: (value){
setState((){selectedMenu = value;
},);
},);

  }


  CupertinoPicker iOSPicker(){

    List<Text>itemsPicker = [];
    for (String menuItem in corporateAccountType){

      itemsPicker.add(Text(menuItem));
    }

   return CupertinoPicker(itemExtent: 32.0,
       onSelectedItemChanged: (selectedMenu){},
       children: itemsPicker
  );

  }


    @override
    Widget build(BuildContext context) {

      final controlData = ModalRoute.of(context).settings.arguments;

          if (controlData == true){
      corporateType =selectedMenu;
          }

    return Scaffold(
    appBar: AppBar(
    title:
    Text('Register'),
    backgroundColor: Colors.blue,
    ),

    body: Padding(
    padding: EdgeInsets.symmetric(horizontal: 2),

    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,

    children: [
    // add Image.asset() later

    Visibility(
      visible: controlData,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Platform.isIOS ? iOSPicker() : getDropDownButton(),
      ),
    ),

    ReusableTextField(hintOfTextField: 'Username', hidePassword: false, onChangedValue:(value){
      username = value;
    },),

    SizedBox(height: 5),

    ReusableTextField(hintOfTextField: 'E-mail', hidePassword: false, keyType: TextInputType.emailAddress, onChangedValue: (value){
      email = value;
    },),

      SizedBox(height: 5),

    ReusableTextField(hintOfTextField: 'Phone Number', hidePassword: false, keyType: TextInputType.phone, onChangedValue: (value){
      phoneNumber = value;
    },),

      SizedBox(height: 5),

    ReusableTextField(hintOfTextField: 'Password', hidePassword: true, onChangedValue: (value){
      password = value;
    },),

      SizedBox(height: 5),

      ReusableRoundedButton(buttonText: 'Register', colour: Colors.lightBlueAccent, onPressed: () async {

        try {
          final newUser = await _auth.createUserWithEmailAndPassword(
              email: email, password: password). then((value) async{
                 var userUpdateInfo = new UserUpdateInfo();
                 userUpdateInfo.displayName = username;
          });

          if (newUser != null)
            {
              Navigator.pushNamed(context, HomePage.id);
            }
        }
        catch(e){
          print(e);
        }
      },
      ),





    ],

    )

    ),


    );

  }

  }
