import 'package:flutter/material.dart';

import '../custom_button/circle_button.dart';
import '../custom_button/icon_text_button.dart';
import '../custom_button/rounded_button.dart';
import '../custom_button/switch_button.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // circle button
          circle_button(
              icon: Icon(Icons.phone, color: Colors.white,),
              color_background: Colors.red,
              onPressed: () => {}),
      
          // switch button
          switch_button(
              switchValue: _switchValue,
              color: Colors.green,
              onChanged: (p0) {
                setState(() {
                  _switchValue = p0;
                });
              }),
      
          //  rounded button
          rounded_button(
              text: "text button", color: Colors.black, onPressed: () => {}),
      
          // icon text button
          icon_text_button(
              text: Text("hello"),
              color_button: Colors.red,
              icon: Icon(Icons.phone),
              size: MainAxisSize.min,
              onTap: () => {}),
        ],
      ),
    );
  }
}
