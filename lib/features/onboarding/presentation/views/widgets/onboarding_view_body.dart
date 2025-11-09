import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show Intl;

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/model/onboarding_model.dart';
import 'page_indicator.dart';
import 'skip_button.dart';
import 'top_image.dart';

class OnboardingViewBody extends StatelessWidget {
  final OnboardingModel onboardingModel;
  const OnboardingViewBody({super.key, required this.onboardingModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            TopImage(image: onboardingModel.image),
            Intl.getCurrentLocale() == 'en'
                ? Positioned(top: 50, right: 20, child: SkipButton())
                : Positioned(top: 50, left: 20, child: SkipButton()),
          ],
        ),

        const SizedBox(height: 20),
        Text(
          onboardingModel.title,
          textAlign: TextAlign.center,
          style: AppTextStyles.text25Bold.copyWith(color: AppColors.deepOrange),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            onboardingModel.subTitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.text16med,
          ),
        ),

        Spacer(),
        PageIndicator(currentIndex: onboardingModel.index),
        SizedBox(height: 50),
      ],
    );
  }
}
