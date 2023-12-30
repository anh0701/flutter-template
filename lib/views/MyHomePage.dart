import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom_navbar/bottom_navbar.dart';
import 'message_page.dart';
import 'screen1.dart';
import 'screen2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> children = [Screen1(), Screen2(), MessagePage()];
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.star_fill),
      label: 'Favorites',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.clock_solid),
      label: 'Recents',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      label: 'Message',
    ),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: // bottom navbar
          bottom_navbar(
        children: children,
        items: items,
        onTap: (index) => setState(() {
          currentIndex = index;
          // print(currentIndex);
        }),
        currentIndex: currentIndex,
      ),
    );
  }
}
