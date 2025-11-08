import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/auth_chooser_view.dart';
import '../../features/auth/presentation/views/auth_welcome_view.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.id:
      return MaterialPageRoute(builder: (context) => SplashView());
    case OnboardingView.id:
      return MaterialPageRoute(builder: (context) => OnboardingView());
    case AuthWelcomeView.id:
      return MaterialPageRoute(builder: (context) => AuthWelcomeView());
    case AuthChooserView.id:
      return MaterialPageRoute(builder: (context) => AuthChooserView());

    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
