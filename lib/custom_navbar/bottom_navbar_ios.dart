import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottom_navbar(
    {required List<Widget> children,
    required List<BottomNavigationBarItem> items,
    void Function(int)? onTap,
    currentIndex,
    CupertinoThemeData? theme =
        const CupertinoThemeData(brightness: Brightness.light)}) {
  return CupertinoApp(
    theme: theme,
    home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            currentIndex: currentIndex, onTap: onTap, items: items),
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
