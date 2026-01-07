import 'package:apptheme/core/theme/dark_theme.dart';
import 'package:apptheme/core/theme/light_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get lightTheme => LightTheme.themeData;
  static ThemeData get darkTheme => DarkTheme.themeData;

}