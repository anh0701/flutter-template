import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget customTextField(
    {required TextInputType textInputType,
    String? hintText,
    InputBorder? border,
    Widget? suffixIcon}) {
  RegExp pattern = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  TextEditingController _textEditingController = TextEditingController();

  if (textInputType == TextInputType.visiblePassword) {
    return TextField(
      controller: _textEditingController,
      decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          hintText: 'Password',
          border: border,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.all(20)),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
    );
  } else {
    return TextField(
      controller: _textEditingController,
      decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          hintText: hintText,
          border: border,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.all(20)),
      keyboardType: TextInputType.emailAddress,
      inputFormatters: [FilteringTextInputFormatter.allow(pattern)],
    );
  }
}
