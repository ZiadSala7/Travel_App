import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import 'widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).profile, style: AppTextStyles.text22Bold),
        centerTitle: true,
      ),
      body: ProfileViewBody(),
    );
  }
}
