import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/themes/dark_theme.dart';
import '../../../../core/managers/theme_cubit/theme_cubit.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import 'widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  static const String id = 'profileView';
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      delay: Duration(milliseconds: 300),
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            color: context.watch<ThemeCubit>().state == darkTheme
                ? AppColors.black
                : AppColors.offWhite,
          ),
          title: Text(S.of(context).profile, style: AppTextStyles.text22Bold),
          centerTitle: true,
        ),
        body: ProfileViewBody(),
      ),
    );
  }
}
