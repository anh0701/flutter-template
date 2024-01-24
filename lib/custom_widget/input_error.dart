import 'package:flutter/material.dart';

Widget input_error() {
  return Container(
    child: TextField(
      decoration: InputDecoration(
          errorStyle: TextStyle(), errorText: 'Please enter something'),
      // readOnly: true,
      onTap: () {
        //Go to the next screen
      },
      cursorColor: Colors.grey,
    ),
  );
}
