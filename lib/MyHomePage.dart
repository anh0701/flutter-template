import 'package:flutter/material.dart';

import 'custom_button/circle_button.dart';
import 'custom_button/icon_text_button.dart';
import 'custom_button/ripple_button.dart';
import 'custom_button/rounded_button.dart';
import 'custom_button/switch_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // example using ripple_button
          ripple_button(
              "test ripple button",
              Colors.green,
              () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('AlertDialog Title'),
                      content: const Text('AlertDialog description'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  )),

          // circle button
            circle_button(Icons.phone,Colors.white, Colors.red, ()=>{}),

          // switch button
          switch_button(_switchValue, Colors.black, (p0) {
            setState(() {
              _switchValue = p0;
            });
           }),

          //  rounded button
          rounded_button("text button", Colors.black, ()=>{}),

          // icon text button
          icon_text_button("hello", Colors.red, Icons.phone, Colors.white, MainAxisSize.min , ()=>{}),
        ],
      ),
    );
  }
}
