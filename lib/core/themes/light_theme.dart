import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.white,
  appBarTheme: const AppBarThemeData(
    backgroundColor: Color.fromARGB(255, 250, 225, 212),
  ),
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.black,
    brightness: Brightness.light,
  ),
  useMaterial3: true,
);
