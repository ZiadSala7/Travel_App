import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

final ColorScheme _darkColorScheme =
    ColorScheme.fromSeed(
      seedColor: AppColors.saferPrimary,
      brightness: Brightness.dark,
    ).copyWith(
      primary: AppColors.saferPrimary,
      onPrimary: AppColors.white,
      secondary: const Color(0xFF1E5F9F),
      onSecondary: AppColors.white,
      tertiary: AppColors.saferAccent,
      onTertiary: AppColors.white,
      surface: AppColors.saferDarkSurface,
      onSurface: AppColors.saferDarkText,
      outline: const Color(0x1AFFFFFF),
      surfaceContainerHighest: AppColors.saferDarkPanel,
    );

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.saferDarkBg,
  canvasColor: AppColors.saferDarkBg,
  cardColor: _darkColorScheme.surface,
  dividerColor: const Color(0x1AFFFFFF),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.saferDarkBg,
    foregroundColor: _darkColorScheme.onSurface,

    /// to not show a scroll shadow
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
  ),
  drawerTheme: const DrawerThemeData(backgroundColor: AppColors.saferDarkPanel),
  iconTheme: IconThemeData(color: _darkColorScheme.onSurface),
  primaryIconTheme: IconThemeData(color: _darkColorScheme.onSurface),
  tabBarTheme: TabBarThemeData(
    labelColor: _darkColorScheme.primary,
    unselectedLabelColor: AppColors.saferDarkTextMuted,
    indicatorColor: _darkColorScheme.primary,
  ),
  textTheme: ThemeData(brightness: Brightness.dark).textTheme.apply(
    bodyColor: _darkColorScheme.onSurface,
    displayColor: _darkColorScheme.onSurface,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.saferDarkPanel,
    hintStyle: const TextStyle(color: AppColors.saferDarkTextMuted),
    labelStyle: const TextStyle(color: AppColors.saferDarkText),
    prefixIconColor: _darkColorScheme.primary,
    suffixIconColor: _darkColorScheme.primary,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: _darkColorScheme.outline),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: _darkColorScheme.primary, width: 1.3),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Color(0x1AFFFFFF)),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: _darkColorScheme.primary,
      foregroundColor: _darkColorScheme.onPrimary,
      elevation: 0,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: _darkColorScheme.surface,
    selectedItemColor: _darkColorScheme.primary,
    unselectedItemColor: AppColors.saferDarkTextMuted,
    type: BottomNavigationBarType.fixed,
    elevation: 0,
  ),
  colorScheme: _darkColorScheme,
  useMaterial3: true,
);
