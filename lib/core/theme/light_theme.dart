import 'package:apptheme/core/theme/light_app_colors.dart';
import 'package:flutter/material.dart';

class LightTheme {
  const LightTheme._();

  static final ThemeData themeData = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: LightAppColors.colors.primary,
      secondary: LightAppColors.colors.secondary,
      surface: LightAppColors.colors.surface,
      error: LightAppColors.colors.error,
    ),
    extensions: [LightAppColors.colors],
  );

}