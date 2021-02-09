import 'package:flutter/material.dart';

class ReusableRoundedButton extends StatelessWidget {

  final String buttonText;
  final Color colour;
  final Function onPressed;


  ReusableRoundedButton({ this.buttonText, this.colour, @required this.onPressed });

  @override
  Widget build(BuildContext context) {

    return Padding(padding:
    EdgeInsets.symmetric(vertical: 16),
    child: Material(
    color: colour,
    borderRadius: BorderRadius.circular(30.0),
    elevation: 5.0,

    child: MaterialButton(
      onPressed: onPressed,
    minWidth: 200.0,
    height: 42.0,
    child: Text(buttonText),
    ),
    ),
    );
  }
}
