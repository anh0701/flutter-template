import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget switch_button(
    {required bool switchValue,
    Color color = Colors.black,
    void Function(bool)? onChanged}) {
  return CupertinoSwitch(
      value: switchValue, activeColor: color, onChanged: onChanged);
}
