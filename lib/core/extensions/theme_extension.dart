import 'package:apptheme/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

extension ThemeX on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
}
