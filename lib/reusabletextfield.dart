import 'package:flutter/material.dart';

class ReusableTextField extends StatefulWidget {

  ReusableTextField({ @required this.hintOfTextField });

  @override
  _ReusableTextFieldState createState() => _ReusableTextFieldState();

 final String hintOfTextField;

  String get hint {
    return hintOfTextField;
}



}

class _ReusableTextFieldState extends State<ReusableTextField> {

  ReusableTextField reusableTextField = ReusableTextField();

  @override
  Widget build(BuildContext context) {

    return TextField(
        onChanged: (value)
        {

        },
        decoration: InputDecoration(
          hintText: reusableTextField.hint,
          contentPadding:
          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
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
      );

  }
}
