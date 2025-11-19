import 'package:flutter/material.dart';

import 'widgets/auth_welcom_view_body.dart';

class AuthWelcomeView extends StatelessWidget {
  static const String id = 'authWelcome';
  const AuthWelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: AuthWelcomViewBody());
  }
}
