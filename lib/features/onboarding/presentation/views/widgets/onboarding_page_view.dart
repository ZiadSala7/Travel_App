import 'package:flutter/material.dart';
import 'package:travel_app/features/onboarding/data/model/onboarding_model.dart';
import 'package:travel_app/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

import '../../../../../core/constants/constants.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    var onboardings = onboardingModels(context);
    return PageView(
      controller: onboardingPageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        onboardings.length,
        (index) => OnboardingViewBody(onboardingModel: onboardings[index]),
      ),
    );
  }
}
