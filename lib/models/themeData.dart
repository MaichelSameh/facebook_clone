import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  appBarTheme: AppBarTheme(
    elevation: 0,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    ),
    actionsIconTheme: IconThemeData(
      color: Color.fromRGBO(229, 230, 235, 1),
    ),
    color: Color.fromRGBO(36, 37, 39, 1),
  ),
  hoverColor: Color.fromRGBO(57, 58, 60, 1),
  scaffoldBackgroundColor: Color.fromRGBO(24, 25, 27, 1),
  primaryColor: Color.fromRGBO(36, 37, 39, 1),
  dividerColor: Color.fromRGBO(102, 103, 107, 1),
);

final lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    elevation: 0,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Color.fromRGBO(27, 118, 239, 1),
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    ),
    actionsIconTheme: IconThemeData(
      color: Color.fromRGBO(5, 5, 5, 1),
    ),
    color: Color.fromRGBO(255, 255, 255, 1),
  ),
  hoverColor: Color.fromRGBO(241, 242, 246, 1),
  scaffoldBackgroundColor: Color.fromRGBO(24, 25, 27, 1),
  primaryColor: Color.fromRGBO(36, 37, 39, 1),
  dividerColor: Color.fromRGBO(102, 103, 107, 1),
);
