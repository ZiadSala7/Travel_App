import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import 'widgets/reset_with_email.dart';
import 'widgets/reset_with_phone.dart';

class ForgetPasswordView extends StatelessWidget {
  static const String id = 'forgetPassView';
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final phoneController = TextEditingController();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            S.of(context).resetYoutPass,
            style: AppTextStyles.text22Bold,
          ),
          bottom: TabBar(
            isScrollable: false,
            indicatorColor: AppColors.deepOrange,
            labelColor: AppColors.deepOrange,
            tabs: [
              Tab(
                text: S.of(context).email,
                icon: const Icon(Icons.email_outlined),
              ),
              Tab(text: S.of(context).phone, icon: const Icon(Icons.phone)),
            ],
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            ResetWithEmail(controller: emailController),
            ResetWithPhone(controller: phoneController),
          ],
        ),
      ),
    );
  }
}
