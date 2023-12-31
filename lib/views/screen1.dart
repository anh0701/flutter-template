import 'package:flutter/material.dart';

import '../custom_button/ripple_button.dart';
import '../custom_widget/input.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 78, 49),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            // example using ripple_button

            Container(
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.circular(32),
              ),
              child: customTextField(
                  textInputType: TextInputType.name,
                  hintText: "Your name",
                  // border: InputBorder.none,
                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide.none,
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  suffixIcon: Icon(Icons.search)),
            ),

            ripple_button(
                text: Text(
                  "test ripple button",
                  textAlign: TextAlign.center,
                ),
                width: 200,
                color_button: Colors.green,
                onTap: () => {}),
          ],
        ),
      ),
    );
  }
}
