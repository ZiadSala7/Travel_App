import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../onboarding/presentation/views/onboarding_view.dart';
import 'app_logo.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  int cnt = 0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
       setState(() {
          cnt++;
        });
      if (cnt == 7) {
        setState(() {
          timer.cancel();
          Navigator.pushReplacementNamed(context, OnboardingView.id);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return cnt <= 4
        ? Center(child: Lottie.asset(AppAssets.assetsImagesPlaneeee))
        : Center(child: FadeIn(child: AppLogo()));
  }
}
