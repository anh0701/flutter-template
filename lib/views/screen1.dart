import 'package:flutter/material.dart';

import '../custom_button/ripple_button.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // example using ripple_button
        ripple_button(
            "test ripple button", 200, Colors.white, Colors.green, () => {}),
      ],
    );
  }
}
