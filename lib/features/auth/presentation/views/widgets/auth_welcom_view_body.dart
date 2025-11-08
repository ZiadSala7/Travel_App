import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';

class AuthWelcomViewBody extends StatefulWidget {
  const AuthWelcomViewBody({super.key});

  @override
  State<AuthWelcomViewBody> createState() => _AuthWelcomViewBodyState();
}

class _AuthWelcomViewBodyState extends State<AuthWelcomViewBody> {
  int cnt = 0;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        cnt++;
      });
      cnt == 3 ? timer.cancel() : null;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          cnt >= 2
              ? FadeIn(
                  child: Lottie.asset(
                    AppAssets.assetsImagesLetsGo,
                    fit: BoxFit.cover,
                  ),
                )
              : SizedBox(),
          cnt >= 1
              ? FadeIn(
                  child: Text(
                    "Let's Get Started",
                    style: AppTextStyles.text25Bold,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
