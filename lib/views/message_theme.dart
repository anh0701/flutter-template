import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget message_theme(
    {Color box_color_received = Colors.transparent,
    Color box_color_sended = Colors.transparent,
    Text? text_sended,
    Text? text_received}) {
  return Column(
    children: [
      /// Messages page
      ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        reverse: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: box_color_sended,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: text_sended,
              ),
            );
          }
          return Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: box_color_received,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: text_received,
            ),
          );
        },
      ),
    ],
  );
}
