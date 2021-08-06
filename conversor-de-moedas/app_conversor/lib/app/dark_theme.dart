import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.greenAccent,
    // accentColor: lightColor,
    backgroundColor: Colors.amber,
    //buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.greenAccent,
        onPrimary: Colors.white,
      ),
    ),
  );
}
