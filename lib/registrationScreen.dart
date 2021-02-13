import 'package:flutter/material.dart';
import 'package:voxpopper/reusableroundedbutton.dart';
import 'package:voxpopper/reusabletextfield.dart';
import 'accountTypeDropDown.dart';

class RegistrationScreen extends StatefulWidget {

  static String id = 'registrationScreen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}


class _RegistrationScreenState extends State<RegistrationScreen> {

  String selectedMenu = 'Specify Business Type';
  List <DropdownMenuItem>getDropDownItems() {
    List<DropdownMenuItem<String>>dropdownItems = [];

    for (String menuItem in corporateAccountType) {
      var newItem = DropdownMenuItem(
        child: Text(menuItem),
        value: menuItem,
      );
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
    padding: EdgeInsets.symmetric(horizontal: 2),

    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,

    children: [
    // add Image.asset() later

    Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: DropdownButton<String>(
        value: selectedMenu,
        items: getDropDownItems(),
        onChanged: (value){
          setState((){
          selectedMenu = value;
          });
        }),
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


      //ReusableRoundedButton(onPressed: null)


    ],

    )

    ),


    );

  }

  }
