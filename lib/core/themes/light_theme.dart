import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

final ColorScheme _lightColorScheme =
    ColorScheme.fromSeed(
      seedColor: AppColors.saferPrimary,
      brightness: Brightness.light,
    ).copyWith(
      primary: AppColors.saferPrimary,
      onPrimary: AppColors.white,
      secondary: AppColors.saferSecondary,
      onSecondary: AppColors.white,
      tertiary: AppColors.saferAccent,
      onTertiary: AppColors.white,
      surface: AppColors.saferLight,
      onSurface: AppColors.saferText,
      outline: AppColors.saferBorder,
      surfaceContainerHighest: AppColors.saferMuted,
    );

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.saferMuted,
  canvasColor: AppColors.saferMuted,
  cardColor: _lightColorScheme.surface,
  dividerColor: AppColors.saferBorder,
  appBarTheme: AppBarTheme(
    foregroundColor: _lightColorScheme.onSurface,
    backgroundColor: _lightColorScheme.surface,
    elevation: 0,

    /// to not show a scroll shadow
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
  ),
  drawerTheme: const DrawerThemeData(backgroundColor: Color(0xFFFFFFFF)),
  iconTheme: IconThemeData(color: _lightColorScheme.onSurface),
  primaryIconTheme: IconThemeData(color: _lightColorScheme.onSurface),
  tabBarTheme: TabBarThemeData(
    labelColor: _lightColorScheme.primary,
    unselectedLabelColor: AppColors.saferTextMuted,
    indicatorColor: _lightColorScheme.primary,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: _lightColorScheme.surface,
    selectedItemColor: _lightColorScheme.primary,
    unselectedItemColor: AppColors.saferTextMuted,
    type: BottomNavigationBarType.fixed,
    elevation: 0,
  ),
  textTheme: ThemeData(brightness: Brightness.light).textTheme.apply(
    bodyColor: _lightColorScheme.onSurface,
    displayColor: _lightColorScheme.onSurface,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.saferLight,
    hintStyle: const TextStyle(color: AppColors.saferTextMuted),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.saferBorder),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: _lightColorScheme.primary, width: 1.3),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: _lightColorScheme.primary,
      foregroundColor: _lightColorScheme.onPrimary,
      elevation: 0,
    ),
  ),
  colorScheme: _lightColorScheme,
  useMaterial3: true,
);
