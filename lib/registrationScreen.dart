import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voxpopper/reusableroundedbutton.dart';
import 'package:voxpopper/reusabletextfield.dart';
import 'accountTypeDropDown.dart';
import 'dart:io' show Platform;

class RegistrationScreen extends StatefulWidget{

  static String id = 'registrationScreen';


  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}


class _RegistrationScreenState extends State<RegistrationScreen> {

  String selectedMenu = 'Specify Business Type';

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

    ReusableTextField(hintOfTextField: 'Username'),
    SizedBox(height: 5),

    ReusableTextField(hintOfTextField: 'E-mail'),
      SizedBox(height: 5),

    ReusableTextField(hintOfTextField: 'Phone Number'),
      SizedBox(height: 5),

    ReusableTextField(hintOfTextField: 'Password'),
      SizedBox(height: 5),

      ReusableRoundedButton(buttonText: 'Register', colour: Colors.lightBlueAccent, onPressed: null)





    ],

    )

    ),


    );

  }

  }
