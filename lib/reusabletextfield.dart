import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {

  ReusableTextField({ this.hintOfTextField, this.hidePassword, @required this.onChangedValue});

 final String hintOfTextField;
 final Function onChangedValue;
 final bool hidePassword;


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),

      child: TextField(
        textAlign: TextAlign.center,
          obscureText: hidePassword,
          onChanged: onChangedValue,
          decoration: InputDecoration(
            hintText: hintOfTextField,
            contentPadding:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: BorderSide(width: 1.5),
            ),

            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlue, width: 1.0 ),
              borderRadius: BorderRadius.circular(32.0),
            ),

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlue, width: 2.0 ),
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
        ),
    );

  }
}
