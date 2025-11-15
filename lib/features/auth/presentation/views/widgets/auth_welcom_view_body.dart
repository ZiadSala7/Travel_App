import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import '../guest_or_login_view.dart';

class AuthWelcomViewBody extends StatefulWidget {
  const AuthWelcomViewBody({super.key});

  @override
  State<AuthWelcomViewBody> createState() => _AuthWelcomViewBodyState();
}

class _AuthWelcomViewBodyState extends State<AuthWelcomViewBody> {
  int cnt = 0;
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(GuestOrLoginView.id);
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
          FadeIn(
            child: Lottie.asset(
              AppAssets.assetsImagesLoading,
              fit: BoxFit.cover,
              height: 200,
            ),
          ),
          FadeIn(
            child: Text(
              S.of(context).letsStart,
              style: AppTextStyles.text25Bold,
            ),
          ),
        ],
      ),
    );
  }
}
