import 'package:flutter/material.dart';

Widget ripple_button(String text, Color color, void Function()? onTap) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30), //radius widget
      color: color,
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(30), //radius animation
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(12),
          child: Text(text),
        ),
      ),
    ),
  );
}
