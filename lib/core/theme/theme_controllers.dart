import 'package:flutter/material.dart';
import 'package:riverpod/legacy.dart';

final themeModeProvider =
StateNotifierProvider<ThemeController, ThemeMode>(
      (ref) => ThemeController(),
);

class ThemeController extends StateNotifier<ThemeMode> {
  ThemeController() : super(ThemeMode.system);

  void setLight() => state = ThemeMode.light;
  void setDark() => state = ThemeMode.dark;
  void setSystem() => state = ThemeMode.system;
}
