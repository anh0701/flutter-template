import 'package:flutter/material.dart';

Widget circle_button(
    {required IconData icon,
    Color color_icon = Colors.white,
    Color color_background = Colors.blue,
    void Function()? onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Icon(
      icon,
      color: color_icon,
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: color_background,
      shape: CircleBorder(),
      padding: EdgeInsets.all(24),
    ),
  );
}
