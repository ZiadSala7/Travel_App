import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import 'widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          S.of(context).profile,
          style: AppTextStyles.text22Bold.copyWith(color: scheme.onSurface),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: const ProfileViewBody(),
    );
  }
}
