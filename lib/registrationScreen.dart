import 'dart:html';
import 'package:flutter/material.dart';
import 'package:voxpopper/reusabletextfield.dart';
import 'accountTypeDropDown.dart';

class RegistrationScreen extends StatefulWidget {

  static String id = 'registrationScreen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {


  List <DropdownMenuItem>getDropDownItems() {
    List<DropdownMenuItem<String>>dropdownItems = [];

    for (String menuItem in corporateAccountType) {

      var newItem = DropDownMenuItem(
        child: Text(menuItem),
        value: menuItem,
      ),
          dropdownItems.add(newItem);
  }
    return dropdownItems;
  }

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

    DropdownMenuItem<String>(
      value: selectedMenu,
      items: getDropDownItems(),
      onChanged: (value){
        setState((){
          selectedMenu = value;
        });
      }),

    ReusableTextField(hintOfTextField: 'Username'),

    ReusableTextField(hintOfTextField: 'E-mail'),

    ReusableTextField(hintOfTextField: 'Phone Number'),

    ReusableTextField(hintOfTextField: 'Password'),


    ],

    )

    ),


    );

  }

  }
