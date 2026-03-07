import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/managers/language_cubit/language_cubit.dart';
import '../../../../../core/managers/language_cubit/language_states.dart';
import '../../../../../core/utils/app_assets.dart';

class AppLogo extends StatelessWidget {
  final double height;
  const AppLogo({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    var langeCubit = context.watch<LanguageCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          langeCubit.state is EnglishLanguage
              ? AppAssets.assetsImagesSagferBeA
              : AppAssets.assetsImagesSaferBeE,
          height: height,
        ),
      ],
    );
  }
}
