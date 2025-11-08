import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../onboarding/presentation/views/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamed(context, OnboardingView.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Travel",
            style: AppTextStyles.text30Bold.copyWith(color: AppColors.deepBlue),
          ),
          Text(
            "App",
            style: AppTextStyles.text30Bold.copyWith(
              color: AppColors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
