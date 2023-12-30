import 'package:flutter/material.dart';

import '../custom_color/custom_color.dart';
import 'message_theme.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return message_theme(
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
        box_color_received: Colors.black12,
        box_color_sended: Color.fromARGB(255, 144, 89, 6));
  }
}
