import 'package:flutter/material.dart';

Widget rounded_button(
    String text, Color color_border, void Function()? onPressed) {
  return TextButton(
      child: Text(text.toUpperCase(), style: TextStyle(fontSize: 14)),
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
          foregroundColor: MaterialStateProperty.all<Color>(color_border),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: color_border)))),
      onPressed: onPressed);
}
