import 'package:flutter/material.dart';

import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.id:
      return MaterialPageRoute(builder: (context) => SplashView());
    case OnboardingView.id:
      return MaterialPageRoute(builder: (context) => OnboardingView());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
