import 'package:flutter/material.dart';

final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFFF07E48),
  brightness: Brightness.light,
).copyWith(
  primary: const Color(0xFFF07E48),
  onPrimary: const Color(0xFFFFFFFF),
  secondary: const Color(0xFF3F6FB6),
  onSecondary: const Color(0xFFFFFFFF),
  surface: const Color(0xFFFFFFFF),
  onSurface: const Color(0xFF1A2533),
);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFF4F7FB),
  canvasColor: const Color(0xFFF4F7FB),
  cardColor: _lightColorScheme.surface,
  dividerColor: const Color(0xFFD6DFEA),
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
  textTheme: ThemeData(brightness: Brightness.light).textTheme.apply(
    bodyColor: _lightColorScheme.onSurface,
    displayColor: _lightColorScheme.onSurface,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFFF9FBFF),
    hintStyle: const TextStyle(color: Color(0xFF70849C)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Color(0xFFD8E2EF)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
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
