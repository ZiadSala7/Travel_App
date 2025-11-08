import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/auth_chooser_view.dart';
import '../../features/auth/presentation/views/auth_welcome_view.dart';
import '../../features/auth/presentation/views/forget_password_view.dart';
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
    case ForgetPasswordView.id:
      return MaterialPageRoute(
        builder: (context) => FadeIn(child: ForgetPasswordView()),
      );

    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
