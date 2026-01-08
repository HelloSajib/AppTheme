import 'package:apptheme/core/theme/dark_app_colors.dart';
import 'package:apptheme/core/theme/light_app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();
  
  /// For LightMode Theme
  static final ThemeData lightTheme = ThemeData(
    //brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: lightAppColors.primary,
      secondary: lightAppColors.secondary,
      surface: lightAppColors.surface,
      error: lightAppColors.error,
    ),
    extensions: [lightAppColors],
  );

  
  /// For DarkMode Theme
  static final ThemeData darkTheme = ThemeData(
    //brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      primary: darkAppColors.primary,
      secondary: darkAppColors.secondary,
      surface: darkAppColors.surface,
      error: darkAppColors.error,
    ),
    extensions: [darkAppColors],
  );
  

}