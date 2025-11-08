import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../onboarding/presentation/views/onboarding_view.dart';
import 'app_logo.dart';

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
      Navigator.pushReplacementNamed(context, OnboardingView.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: AppLogo());
  }
}
