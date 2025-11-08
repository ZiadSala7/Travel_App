import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../managers/onboarding_provider.dart';
import 'widgets/onboarding_page_view.dart';

class OnboardingView extends StatelessWidget {
  static const String id = 'onboardingView';
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OnboardingpProvider(),
      child: Scaffold(body: FadeIn(child: OnboardingPageView())),
    );
  }
}
