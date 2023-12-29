import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_navbar/bottom_navbar.dart';
import 'views/screen1.dart';
import 'views/screen2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> children = [Screen1(), Screen2()];
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.star_fill),
      label: 'Favorites',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.clock_solid),
      label: 'Recents',
    ),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: // bottom navbar
          bottom_navbar(
              children,
              items,
              (index) => setState(() {
                    currentIndex = index;
                    // print(currentIndex);
                  }),
              currentIndex),
    );
  }
}
