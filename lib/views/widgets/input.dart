import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget customTextField(
    {required TextInputType textInputType,
    String? hintText,
    InputBorder? border,
    Widget? suffixIcon,
    bool obscureText = true,
    Color? iconColor = Colors.blue,
    InputBorder? errorBorder,
    TextEditingController? controller}) {
  RegExp patternEmail = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  RegExp patternPassword =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  RegExp patternPhone = RegExp(r'(^(\+[0-9]{1,3}[- ]?)?\d{10,12}$)');

  String error = "";

  if (textInputType == TextInputType.visiblePassword) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          iconColor: iconColor,
          hintStyle: TextStyle(fontSize: 17),
          errorText: error,
          hintText: 'Password',
          border: border,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.all(20),
          errorBorder: errorBorder),
      keyboardType: TextInputType.visiblePassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscureText,
      validator: (value) {
        if (value!.isEmpty) {
          error = "Please input your password!";
        } else if (patternPassword.hasMatch(value)) {
          error = "";
        } else if (!patternPassword.hasMatch(value)) {
          error =
              "Your password must be at 8-16 characters including a lowercase letter, an uppercase letter, and a number.";
        }
        return error;
      },
    );
  } else if (textInputType == TextInputType.emailAddress) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          errorText: error,
          hintText: hintText,
          border: border,
          errorBorder: errorBorder,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.all(20)),
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          error = 'Please input your E-mail!';
        } else if (patternEmail.hasMatch(value)) {
          error = '';
        } else if (!patternEmail.hasMatch(value)) {
          error = 'Email is invalid.';
        }
        return error;
      },
    );
  } else if(textInputType == TextInputType.phone) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          hintText: hintText,
          border: border,
          errorText: error,
          errorBorder: errorBorder,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.all(20)),
      keyboardType: TextInputType.phone,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          error = 'Please input your Phone!';
        } else if (patternPhone.hasMatch(value)) {
          error = '';
        } else if (!patternPhone.hasMatch(value)) {
          error = 'Phone is invalid.';
        }
        return error;
      },
    );
  }
   else {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          hintText: hintText,
          border: border,
          errorBorder: errorBorder,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.all(20)),
      keyboardType: textInputType,
    );
  }
}
