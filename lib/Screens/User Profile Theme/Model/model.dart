import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Colors.purple,
      onPrimary: Colors.blue,
      secondary: Colors.green,
      onSecondary: Colors.redAccent,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: Colors.amber,
      onPrimary: Colors.pink,
      secondary: Colors.blue,
      onSecondary: Colors.green,
    ),
  );
}
