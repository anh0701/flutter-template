import 'package:demo/views/widgets/input.dart';
import 'package:demo/views/widgets/profile_image.dart';
import 'package:demo/views/widgets/ripple_button.dart';
import 'package:flutter/material.dart';


class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String imgURL = "https://pbs.twimg.com/media/FMQ4xLSVgAIVsis.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 65, 78),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            // example using ripple_button
            Row(
              children: [
                Container(
                  child: ProfileImage(imageUrl: imgURL, size: 90, online: true,),
                ),
              ],
            ),
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
                onTap: () => {
                }),
          ],
        ),
      ),
    );
  }
}
