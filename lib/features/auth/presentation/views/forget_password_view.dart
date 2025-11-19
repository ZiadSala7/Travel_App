import 'package:flutter/material.dart';
import 'package:travel_app/core/utils/app_text_styles.dart';

import '../../../../generated/l10n.dart';
import 'widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  static const String id = 'forgPassView';
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).forgetPass, style: AppTextStyles.text22Bold),
        centerTitle: true,
      ),
      body: const ForgetPasswordViewBody(),
    );
  }
}
