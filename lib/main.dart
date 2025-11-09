import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection.dart';
import 'core/themes/theme_cubit.dart';
import 'travel_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  runApp(
    DevicePreview(
      enabled: true, // set to false in release mode
      builder: (context) => BlocProvider(
        create: (_) => ThemeCubit()..loadTheme(),
        child: const TravelApp(),
      ),
    ),
  );
}
