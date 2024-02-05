import 'package:demo/themes/message_theme.dart';
import 'package:demo/views/widgets/custom_color.dart';
import 'package:demo/views/widgets/input.dart';
import 'package:flutter/material.dart';


class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  // String err = "correct";
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          message_theme(
              text_received: Text(
                'Hi',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 13,
                    color: CustomColor.textCommonColor),
              ),
              text_sended: Text(
                'hello',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 13,
                    color: Colors.white),
              ),
              box_color_received: Color.fromARGB(31, 227, 20, 20),
              box_color_sended: Color.fromARGB(255, 144, 89, 6)),
          message_theme(
              text_received: Text(
                'where are you?',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 13,
                    color: CustomColor.textCommonColor),
              ),
              box_color_received: Color.fromARGB(31, 227, 20, 20)),

          // input_error(),
          customTextField(
              textInputType: TextInputType.emailAddress,
              hintText: 'enter email address'),
          customTextField(
              textInputType: TextInputType.phone,
              hintText: 'enter phone number'),
          customTextField(
            textInputType: TextInputType.visiblePassword,
            hintText: 'enter password',
            obscureText: _isObscure,
            suffixIcon: IconButton(
              icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
          ),

          // Text("hihi", style: TextStyle(
          //   color: err == "correct" ? Colors.blue : Colors.red
          // ),)
        ],
      ),
    );
  }
}
