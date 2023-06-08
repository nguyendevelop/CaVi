import 'package:flutter/material.dart';

class Constants {
  static String appName = "Cavi Booking";

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: lightPrimary,
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: lightAccent)
        .copyWith(background: lightBG),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimary,
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: darkAccent)
        .copyWith(background: darkBG),
  );

  static Color lightPrimary = const Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = const Color(0xff5563ff);
  static Color darkAccent = const Color(0xff5563ff);
  static Color lightBG = const Color(0xfffcfcff);
  static Color darkBG = Colors.black;
}
