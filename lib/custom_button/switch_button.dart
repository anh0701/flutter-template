import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget switch_button(bool _switchValue, Color color, void Function(bool)? onChanged) {
  return CupertinoSwitch(value: _switchValue, activeColor: color, onChanged: onChanged);
}
