import 'package:flutter/material.dart';

Widget icon_text_button({required Text text, Color color_button = Colors.blue, required Icon icon,
    MainAxisSize size = MainAxisSize.min, void Function()? onTap}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30), //radius widget
      color: color_button,
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(30), //radius animation
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: size,
            children: [
              icon,
              SizedBox(
                width: 10,
              ),
             text
            ],
          ),
        ),
      ),
    ),
  );
}
