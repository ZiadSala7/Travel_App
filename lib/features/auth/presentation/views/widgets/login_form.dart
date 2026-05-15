import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/core/managers/theme_cubit/theme_cubit.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_password_text_field.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import '../forget_password_view.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // email
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              color: isDark
                  ? const Color(0xFF1A2638)
                  : const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: isDark
                    ? const Color(0xFF3A4D68)
                    : const Color(0xFFE8F0FF),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: isDark
                      ? const Color(0x30000000)
                      : const Color(0x10060A1E),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).email,
                  style: AppTextStyles.text14med.copyWith(
                    color: isDark ? Colors.white70 : AppColors.mediumGray,
                  ),
                ),
                const SizedBox(height: 6),
                CustomTextFormField(
                  title: "example@gmail.com",
                  controller: TextEditingController(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // password
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              color: isDark
                  ? const Color(0xFF1A2638)
                  : const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: isDark
                    ? const Color(0xFF3A4D68)
                    : const Color(0xFFE8F0FF),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: isDark
                      ? const Color(0x30000000)
                      : const Color(0x10060A1E),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).password,
                  style: AppTextStyles.text14med.copyWith(
                    color: isDark ? Colors.white70 : AppColors.mediumGray,
                  ),
                ),
                const SizedBox(height: 6),
                CustomPasswordTextFormField(
                  title: S.of(context).entrPass,
                  controller: TextEditingController(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: CustomTextButton(
              title: S.of(context).forgetPass,
              onPressed: () {
                Navigator.pushNamed(context, ForgetPasswordView.id);
              },
            ),
          ),
          const SizedBox(height: 24),
          Center(
            child: CustomButton(
              onPressed: () {
                context.read<ThemeCubit>().toggleTheme();
              },
              txt: S.of(context).login,
              icon: Icons.arrow_forward,
            ),
          ),
        ],
      ),
    );
  }
}
