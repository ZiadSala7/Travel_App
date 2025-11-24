import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travel_app/features/country/presentation/managers/country_chooser_cubit/country_states.dart';

import 'core/managers/language_cubit/language_cubit.dart';
import 'core/managers/language_cubit/language_states.dart';
import 'core/functions/on_generate_routes.dart';
import 'core/managers/theme_cubit/theme_cubit.dart';
import 'features/country/presentation/managers/country_chooser_cubit/country_cubit.dart';
import 'features/splash/presentation/views/splash_view.dart';
import 'generated/l10n.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) {
        return BlocBuilder<LanguageCubit, LanguageStates>(
          builder: (context, langState) {
            return BlocBuilder<CountryCubit, CountryStates>(
              builder: (context, countryState) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  onGenerateRoute: onGenerateRoutes,
                  home: const SplashView(),
                  locale: langState is EnglishLanguage
                      ? const Locale('en')
                      : const Locale('ar'),
                  localizationsDelegates: [
                    S.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: S.delegate.supportedLocales,
                  theme: theme,
                );
              },
            );
          },
        );
      },
    );
  }
}
