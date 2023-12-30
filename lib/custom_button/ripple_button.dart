import 'package:flutter/material.dart';

Widget ripple_button(
    {required String text,
    required double width,
    Color color_text = Colors.black,
    Color color_button = Colors.blue,
    void Function()? onTap}) {
  return Container(
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30), //radius widget
      color: color_button,
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(30), //radius animation
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(12),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: color_text),
          ),
        ),
      ),
    ),
  );
}
