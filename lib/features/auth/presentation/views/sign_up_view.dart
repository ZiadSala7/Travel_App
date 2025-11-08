import 'package:flutter/material.dart';

import 'widgets/sign_up_form.dart';

class SignUpView extends StatelessWidget {
  static const String id = 'signUp';
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView(children: [SizedBox(height: 20), SignUpForm()]),
    );
  }
}
