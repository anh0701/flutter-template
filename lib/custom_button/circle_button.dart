import 'package:flutter/material.dart';

Widget circle_button(IconData icon, void Function()? onPressed){
  return ElevatedButton(
  onPressed: onPressed,
  child: Icon(icon),
  style: ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
  ),
);
}