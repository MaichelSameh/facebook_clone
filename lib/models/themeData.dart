import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  appBarTheme: AppBarTheme(
    elevation: 0,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 30,
        fontWeight: FontWeight.w800,
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
  textTheme: TextTheme(
    button: TextStyle(
      color: Color.fromRGBO(205, 206, 210, 1),
    ),
  ),
  primaryColorLight: Color.fromRGBO(115, 114, 96, 1),
  primaryColorDark: Color.fromRGBO(45, 129, 219, 1),
  canvasColor: Color.fromRGBO(36, 37, 39, 1),
);

final lightTheme = ThemeData(
  appBarTheme: AppBarTheme(
    elevation: 0,
    brightness: Brightness.light,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Color.fromRGBO(27, 118, 239, 1),
        fontSize: 30,
        fontWeight: FontWeight.w800,
      ),
    ),
    actionsIconTheme: IconThemeData(
      color: Color.fromRGBO(29, 27, 6, 1),
    ),
    color: Color.fromRGBO(255, 255, 255, 1),
  ),
  /*
    @param hoverColor is used in:
      action icons background
  */
  hoverColor: Color.fromRGBO(241, 242, 246, 1),
  /*
    @param scaffoldBackgroundColor is used in:
      scaffold background
  */
  scaffoldBackgroundColor: Color.fromRGBO(201, 204, 209, 1),
  /*
    @param primaryColor is used in:
      tab bar,
      mind post,
      rooms bar,
      posts
  */
  primaryColor: Color.fromRGBO(255, 255, 255, 1),
  /*
    @param dividerColor is used in:
      rooms bar dividers
  */
  dividerColor: Color.fromRGBO(247, 245, 225, 1),
  /*
    @param primaryColorLight is used in:
      mind post style,
      mind post border color with opacity 0.5
  */
  textTheme: TextTheme(
    button: TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 13),
  ),
  /*
    @param primaryColorLight is used in:
      unselected tabs in the tab bar
  */
  primaryColorLight: Color.fromRGBO(176, 179, 184, 1),
  /*
    @param primaryColorDark is used in:
      selected tabs in the tab bar
  */
  primaryColorDark: Color.fromRGBO(45, 136, 254, 1),
);
