import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/auth_chooser_view.dart';
import '../../features/auth/presentation/views/auth_welcome_view.dart';
import '../../features/auth/presentation/views/forget_password_view.dart';
import '../../features/auth/presentation/views/guest_or_login_view.dart';
import '../../features/auth/presentation/views/otp_verification_view.dart';
import '../../features/favourites/presentation/views/favourites_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../widgets/build_navigation_bar.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.id:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnboardingView.id:
      return MaterialPageRoute(builder: (context) => const OnboardingView());
    case AuthWelcomeView.id:
      return MaterialPageRoute(builder: (context) => const AuthWelcomeView());
    case AuthChooserView.id:
      return MaterialPageRoute(builder: (context) => const AuthChooserView());
    case ForgetPasswordView.id:
      return MaterialPageRoute(
        builder: (context) => FadeIn(child: const ForgetPasswordView()),
      );
    case OtpVerificationView.id:
      return MaterialPageRoute(builder: (context) => const OtpVerificationView());
    case BuildNavigationBar.id:
      return MaterialPageRoute(builder: (context) => const BuildNavigationBar());
    case SearchView.id:
      return MaterialPageRoute(builder: (context) => const SearchView());

    case GuestOrLoginView.id:
      return MaterialPageRoute(builder: (context) => const GuestOrLoginView());
    case FavouritesView.id:
      return MaterialPageRoute(builder: (context) => const FavouritesView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
