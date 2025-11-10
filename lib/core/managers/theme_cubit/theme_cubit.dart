import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/core/databases/cach_helper.dart';
import 'package:travel_app/core/di/injection.dart';

import '../../themes/light_theme.dart';
import '../../themes/dark_theme.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(lightTheme) {
    loadTheme();
  }
  final prefs = getIt.get<CacheHelper>();
  Future<void> loadTheme() async {
    final isDark = prefs.getBool('isDark') ?? false;
    emit(isDark ? darkTheme : lightTheme);
  }

  Future<void> toggleTheme() async {
    final isDark = state.brightness == Brightness.light;

    await prefs.setBool('isDark', isDark);
    emit(isDark ? darkTheme : lightTheme);
  }
}

