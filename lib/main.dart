import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection.dart';
import 'core/managers/currency_cubit/currency_cubit.dart';
import 'core/managers/language_cubit/language_cubit.dart';
import 'core/managers/theme_cubit/theme_cubit.dart';
import 'features/country/presentation/managers/country_chooser_cubit/country_cubit.dart';
import 'travel_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (_) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => ThemeCubit()..loadTheme()),
          BlocProvider(create: (_) => LanguageCubit()..initLanguage()),
          BlocProvider(create: (_) => CountryCubit()..loadSavedCountry()),
          BlocProvider(create: (_) => CurrencyCubit()..loadSavedCurrency()),
        ],
        child: const TravelApp(),
      ),
    ),
  );
}
