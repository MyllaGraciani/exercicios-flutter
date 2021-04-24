import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xff00C569);
const lightColor = const Color(0xffFFFFFF);
const backgroundColor = const Color(0xffF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
    // primarySwatch: primaryColor,
    brightness: brightness,
    textTheme: new TextTheme(
      bodyText2: new TextStyle(color: Colors.black),
      headline1: new TextStyle(fontSize: 78),
      button: new TextStyle(color: Colors.green),
      headline5: new TextStyle(color: Colors.deepPurple),
    ),
    // tabBarTheme:
    // accentIconTheme:
    // accentTextTheme:
    // appBarTheme:
    // bottomAppBarTheme:
    // buttonTheme: new ButtonThemeData(
    //   buttonColor: Colors.orange,
    //   textTheme: ButtonTextTheme.primary,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 5,
    //   color: Colors.indigo,
    // ),
    // chipTheme:
    // dialogTheme:
    // floatingActionButtonTheme:
    // iconTheme:
    // inputDecorationTheme:
    // pageTransitionsTheme:
    // primaryIconTheme:
    // primaryTextTheme:
    // sliderTheme:

    primaryColor: primaryColor,
    accentColor: Colors.white,
    // fontFamily: 'Montserrat',
    // buttonColor: Color(0xFF00C569),
    // // scaffoldBackgroundColor: backgroundColor,
    // cardColor: Colors.white,
  );
}
