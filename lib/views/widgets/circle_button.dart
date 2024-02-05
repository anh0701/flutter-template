import 'package:flutter/material.dart';

Widget circle_button(
    {required Icon icon,
    Color color_background = Colors.blue,
    void Function()? onPressed}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: icon,
    style: ElevatedButton.styleFrom(
      backgroundColor: color_background,
      shape: CircleBorder(),
      padding: EdgeInsets.all(24),
    ),
  );
}
