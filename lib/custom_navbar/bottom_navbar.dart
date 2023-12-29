import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottom_navbar(List<Widget> children,  List<BottomNavigationBarItem> items, void Function(int)? onTap,
    currentIndex ) {
  return CupertinoApp(
    theme: CupertinoThemeData(brightness: Brightness.light),
    home: CupertinoTabScaffold(
        tabBar:
            CupertinoTabBar(currentIndex: currentIndex, onTap: onTap, items: items),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(builder: (BuildContext context) {
            return CupertinoTabView(
              builder: (BuildContext context) {
                return SafeArea(
                  top: false,
                  bottom: false,
                  child: CupertinoApp(
                    home: CupertinoPageScaffold(
                      resizeToAvoidBottomInset: false,
                      child: children[currentIndex],
                    ),
                  ),
                );
              },
            );
          });
        }),
  );
}
