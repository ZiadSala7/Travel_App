import 'package:flutter/material.dart';

import 'guest_or_login_view.dart';
import 'widgets/auth_welcom_view_body.dart';

class AuthWelcomeView extends StatelessWidget {
  static const String id = 'authWelcome';
  const AuthWelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacementNamed(GuestOrLoginView.id);
        },
        child: AuthWelcomViewBody(),
      ),
    );
  }
}
