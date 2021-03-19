import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  appBarTheme: AppBarTheme(
    elevation: 0,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,
    ),
    color: Color.fromRGBO(36, 37, 39, 1),
  ),
  scaffoldBackgroundColor: Color.fromRGBO(24, 25, 27, 1),
  primaryColor: Color.fromRGBO(36, 37, 39, 1),
  dividerColor: Color.fromRGBO(102, 103, 107, 1),
  
);

final lightTheme = ThemeData();
