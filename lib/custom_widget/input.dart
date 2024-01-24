import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget customTextField(
    {required TextInputType textInputType,
    String? hintText,
    InputBorder? border,
    Widget? suffixIcon, TextEditingController? controller}) {
  RegExp patternEmail = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  RegExp patternPassword = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  RegExp patternPhone = RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$');
  String error = "";
  if (textInputType == TextInputType.visiblePassword) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          errorText: error,
          errorStyle: TextStyle(
            color: error == "Correct." ? Colors.green : Colors.red,
          ),
          hintText: 'Password',
          border: border,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.all(20)),
      keyboardType: TextInputType.visiblePassword,
       autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: true,
      validator: (value){
        if(value!.isEmpty){
          error = "Please input your password!";
        } else if(patternPassword.hasMatch(value)){
          error = "Correct.";
        }
        else if(!patternPassword.hasMatch(value)){
          error = "Your password must be at 8-16 characters including a lowercase letter, an uppercase letter, and a number.";
        }
        return error;
      },
    );
  } else if(textInputType == TextInputType.emailAddress) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          errorText: error,
          errorStyle: TextStyle(
            color: error == "Correct." ? Colors.green : Colors.red,
          ),
          hintText: hintText,
          border: border,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.all(20)),
      keyboardType: TextInputType.emailAddress,
       autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value){
        if(value!.isEmpty){
          error = 'Please input your E-mail!';
        }
        else if( patternEmail.hasMatch(value) ){
          error = 'Correct.';
        }
        else if( !patternEmail.hasMatch(value) ){
          error = 'Email is invalid.';
        }
        return error;
      },
    );
  } else{
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          hintText: hintText,
          border: border,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.all(20)),
      keyboardType: textInputType,
    ); 
  }
}
