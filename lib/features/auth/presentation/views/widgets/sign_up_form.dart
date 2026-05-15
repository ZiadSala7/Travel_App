import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_password_text_field.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // full name
          _buildFormField(
            context,
            isDark,
            S.of(context).fullName,
            CustomTextFormField(
              title: S.of(context).enterName,
              controller: TextEditingController(),
            ),
          ),
          const SizedBox(height: 12),
          // email
          _buildFormField(
            context,
            isDark,
            S.of(context).email,
            CustomTextFormField(
              title: "example@gmail.com",
              controller: TextEditingController(),
            ),
          ),
          const SizedBox(height: 12),
          // phone number
          _buildFormField(
            context,
            isDark,
            S.of(context).phoneNum,
            SizedBox(
              height: 40,
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomTextFormField(
                      title: S.of(context).entrPhone,
                      controller: TextEditingController(),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: CustomTextFormField(
                      title: S.of(context).entrPhone,
                      controller: TextEditingController(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          // password
          _buildFormField(
            context,
            isDark,
            S.of(context).password,
            CustomPasswordTextFormField(
              title: S.of(context).entrPass,
              controller: TextEditingController(),
            ),
          ),
          const SizedBox(height: 12),
          // confirm password
          _buildFormField(
            context,
            isDark,
            S.of(context).confirmPass,
            CustomPasswordTextFormField(
              title: S.of(context).entrPass,
              controller: TextEditingController(),
            ),
          ),
          const SizedBox(height: 24),
          Center(
            child: CustomButton(
              onPressed: () {},
              txt: S.of(context).signUp,
              icon: Icons.arrow_forward,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormField(
    BuildContext context,
    bool isDark,
    String label,
    Widget field,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A2638) : const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isDark ? const Color(0xFF3A4D68) : const Color(0xFFE8F0FF),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: isDark ? const Color(0x30000000) : const Color(0x10060A1E),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTextStyles.text14med.copyWith(
              color: isDark ? Colors.white70 : AppColors.mediumGray,
            ),
          ),
          const SizedBox(height: 6),
          field,
        ],
      ),
    );
  }
}
