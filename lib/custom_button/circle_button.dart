import 'package:flutter/material.dart';

Widget circle_button(IconData icon, Color color_icon, Color color_back, void Function()? onPressed){
  return ElevatedButton(
  onPressed: onPressed,
  child: Icon(icon, color: color_icon,),
  style: ElevatedButton.styleFrom(
    backgroundColor: color_back,
    shape: CircleBorder(),
    padding: EdgeInsets.all(24),
  ),
);
}