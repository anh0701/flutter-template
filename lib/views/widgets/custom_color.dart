import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class CustomColor {
  static const buttonColor = Colors.red;
  static const textCommonColor = Colors.black;
  static const colorNavUnselect = Colors.black;
  static const colorNavSelect = Color.fromRGBO(255, 143, 0, 1);
  static Color colorTextPlaceholder = HexColor("AAAAAA");
  static Color colorNameApp =  HexColor("384CFF");
  static const kPrimaryColor = Color(0xFF00BF6D);
  static const kSecondaryColor = Color(0xFFFE9901);
  static const kContentColorLightTheme = Color(0xFF1D1D35);
  static const kContentColorDarkTheme = Color(0xFFF5FCF9);
  static const kWarninngColor = Color(0xFFF3BB1C);
  static const kErrorColor = Color(0xFFF03738);
  static const kDefaultPadding = 20.0;
  static const kBubbleDark = Color(0xFF262629);
  static const kAppBarDark = Color(0xFF111111);
  static const kActiveUsersDark = Color(0xFF3B3B3B);
  static const kIndicatorBubble = Color(0xFF39B54A);
  static const kIconLight = Color(0xFF999999);
}

