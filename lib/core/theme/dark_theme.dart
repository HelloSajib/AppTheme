import 'package:apptheme/core/theme/dark_app_colors.dart';
import 'package:apptheme/core/theme/light_app_colors.dart';
import 'package:flutter/material.dart';

class DarkTheme {
  const DarkTheme._();

  static final ThemeData themeData = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      primary: DarkAppColors.colors.primary,
      secondary: DarkAppColors.colors.secondary,
      surface: DarkAppColors.colors.surface,
      error: DarkAppColors.colors.error,
    ),
    extensions: [DarkAppColors.colors],
  );

}