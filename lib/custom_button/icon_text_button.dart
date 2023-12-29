import 'package:flutter/material.dart';

Widget icon_text_button(String text, Color color_button, IconData icon,
    Color color_icon, MainAxisSize size, void Function()? onTap) {
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
              Icon(
                icon,
                color: color_icon,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(color: color_icon),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
