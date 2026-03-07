// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:travel_app/core/widgets/custom_button.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import 'build_reset_options.dart';
import 'widgets/handle_method.dart';

class ForgetPasswordView extends StatefulWidget {
  static const String id = 'forgetPassword';
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  String selectedMethod = 'email'; // 'email' or 'phone'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// HEADER
              Text(S.of(context).forgetPass, style: AppTextStyles.text30Bold),
              const SizedBox(height: 12),
              Text(
                S.of(context).forgPassDesc,
                style: AppTextStyles.text16med.copyWith(
                  color: AppColors.mediumGray,
                ),
              ),
              const SizedBox(height: 40),

              /// RESET OPTIONS
              buildResetOption(
                selectedMethod: selectedMethod,
                icon: Icons.email_outlined,
                title: S.of(context).resetViaEmail,
                subtitle: S.of(context).viaEmailDesc,
                value: 'email',
                gradient: const LinearGradient(
                  colors: [AppColors.warmYellow, AppColors.deepOrange],
                ),
                onTap: () {
                  setState(() {
                    selectedMethod = 'email';
                  });
                },
              ),
              const SizedBox(height: 16),
              buildResetOption(
                selectedMethod: selectedMethod,
                icon: Icons.phone_android_outlined,
                title: S.of(context).resetViaPhone,
                subtitle: S.of(context).viaPhoneDesc,
                value: 'phone',
                gradient: const LinearGradient(
                  colors: [AppColors.citrusYellow, AppColors.brightYellow],
                ),
                onTap: () {
                  setState(() {
                    selectedMethod = 'phone';
                  });
                },
              ),
              const SizedBox(height: 40),

              /// CONTINUE BUTTON
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {
                    handleContinue(
                      selectedMethod: selectedMethod,
                      context: context,
                    );
                  },
                  txt: S.of(context).cntinue,
                  icon: Icons.arrow_forward,
                ),
              ),
              const SizedBox(height: 24),

              // BACK TO LOGIN
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    S.of(context).backToLogin,
                    style: AppTextStyles.text16med.copyWith(
                      color: AppColors.mediumGray,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
