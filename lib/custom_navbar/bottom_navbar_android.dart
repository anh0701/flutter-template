import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottom_navbar({
    required List<BottomNavigationBarItem> items,
    void Function(int)? onTap,
    currentIndex}){
  return BottomNavigationBar(
        items: items,
        currentIndex: currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: onTap,
      );
}