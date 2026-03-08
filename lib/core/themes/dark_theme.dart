import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

final ColorScheme _darkColorScheme =
    ColorScheme.fromSeed(
      seedColor: const Color(0xFFF2A65A),
      brightness: Brightness.dark,
    ).copyWith(
      primary: const Color(0xFFF2A65A),
      onPrimary: const Color(0xFF1A2333),
      secondary: const Color(0xFF8DBAF8),
      onSecondary: const Color(0xFF102238),
      surface: const Color(0xFF223149),
      onSurface: const Color(0xFFEAF1FF),
    );

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF18263A),
  canvasColor: const Color(0xFF18263A),
  cardColor: _darkColorScheme.surface,
  dividerColor: const Color(0x335D7396),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.darknessMode,
    foregroundColor: _darkColorScheme.onSurface,

    /// to not show a scroll shadow
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
  ),
  drawerTheme: const DrawerThemeData(backgroundColor: Color(0xFF1A2638)),
  iconTheme: IconThemeData(color: _darkColorScheme.onSurface),
  primaryIconTheme: IconThemeData(color: _darkColorScheme.onSurface),
  textTheme: ThemeData(brightness: Brightness.dark).textTheme.apply(
    bodyColor: _darkColorScheme.onSurface,
    displayColor: _darkColorScheme.onSurface,
  ),
  colorScheme: _darkColorScheme,
  useMaterial3: true,
);
