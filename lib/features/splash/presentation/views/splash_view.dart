import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../country/presentation/managers/country_chooser_cubit/country_cubit.dart';
import 'widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  static const String id = "splashView";
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<CountryCubit>().initCountry(context);
    return Scaffold(body: FadeInDown(child: const SplashViewBody()));
  }
}
