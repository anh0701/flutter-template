import 'package:flutter/material.dart';

Widget rounded_button(
    {required String text, Color color = Colors.black, void Function()? onPressed}) {
  return TextButton(
      child: Text(text.toUpperCase(), style: TextStyle(fontSize: 14)),
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
          foregroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: color)))),
      onPressed: onPressed);
}
