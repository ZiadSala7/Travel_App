import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarThemeData(
    /// to not show a scroll shadow
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.black,
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.white,
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
);
