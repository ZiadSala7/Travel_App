import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/auth_chooser_view.dart';
import '../../features/auth/presentation/views/auth_welcome_view.dart';
import '../../features/auth/presentation/views/forget_password_view.dart';
import '../../features/auth/presentation/views/guest_or_login_view.dart';
import '../../features/auth/presentation/views/otp_verification_view.dart';
import '../../features/country/presentation/views/country_view.dart';
import '../../features/favourites/presentation/views/favourites_view.dart';
import '../../features/home/presentation/views/contact_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../widgets/build_navigation_bar.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    // splash view
    case SplashView.id:
      return MaterialPageRoute(builder: (context) => const SplashView());
    // onboarding view
    case OnboardingView.id:
      return MaterialPageRoute(builder: (context) => const OnboardingView());
    // auth welcom view
    case AuthWelcomeView.id:
      return MaterialPageRoute(builder: (context) => const AuthWelcomeView());
    // auth chooser view
    case AuthChooserView.id:
      return MaterialPageRoute(builder: (context) => const AuthChooserView());
    // forget password view
    case ForgetPasswordView.id:
      return MaterialPageRoute(
        builder: (context) => FadeIn(child: const ForgetPasswordView()),
      );
    // otp verification view
    case OtpVerificationView.id:
      return MaterialPageRoute(
        builder: (context) => const OtpVerificationView(),
      );
    // build navigation bar
    case BuildNavigationBar.id:
      return MaterialPageRoute(
        builder: (context) => const BuildNavigationBar(),
      );
    // search view
    case SearchView.id:
      return MaterialPageRoute(builder: (context) => const SearchView());
    // guest or login view
    case GuestOrLoginView.id:
      return MaterialPageRoute(builder: (context) => const GuestOrLoginView());
    // favourite view
    case FavouritesView.id:
      return MaterialPageRoute(builder: (context) => const FavouritesView());
    // contact view
    case ContactView.id:
      return MaterialPageRoute(builder: (context) => const ContactView());
    // country view
    case CountryView.id:
      return MaterialPageRoute(builder: (context) => const CountryView());
    // default view
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
