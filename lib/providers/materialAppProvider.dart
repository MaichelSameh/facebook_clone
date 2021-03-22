import 'package:flutter/material.dart';

class MaterialAppProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  bool get theme => themeMode == ThemeMode.dark;

  void updateThemeMode(ThemeMode newMode) {
    _themeMode = newMode;
    notifyListeners();
  }
}
