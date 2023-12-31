import 'package:flutter/material.dart';

import '../custom_color/custom_color.dart';
import '../custom_widget/input_error.dart';
import '../themes/message_theme.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          message_theme(
          text_received: Text(
            'Hi',
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 13,
                color: CustomColor.textCommonColor),
          ),
          text_sended:  Text(
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
      
          input_error(),     
        ],
      ),
    );
  }
}
