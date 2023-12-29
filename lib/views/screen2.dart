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
    return Column(
      children: [
        // circle button
        circle_button(Icons.phone, Colors.white, Colors.red, () => {}),

        // switch button
        switch_button(_switchValue, Colors.green, (p0) {
          setState(() {
            _switchValue = p0;
          });
        }),

        //  rounded button
        rounded_button("text button", Colors.black, () => {}),

        // icon text button
        icon_text_button("hello", Colors.red, Icons.phone, Colors.white,
            MainAxisSize.min, () => {}),
      ],
    );
  }
}
