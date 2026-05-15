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
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: isDark ? Colors.white : AppColors.deepBlue,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with icon
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: isDark
                        ? [
                            const Color(0xFF2A3D58),
                            const Color(0xFF24354D),
                          ]
                        : [
                            const Color(0xFFFFFFFF),
                            const Color(0xFFF1F6FF),
                          ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: isDark
                          ? const Color(0x40000000)
                          : const Color(0x18060A1E),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [AppColors.warmYellow, AppColors.deepOrange],
                        ),
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.deepOrange.withOpacity(0.4),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.lock_reset_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).forgetPass,
                            style: AppTextStyles.text22Bold.copyWith(
                              color: isDark ? Colors.white : AppColors.deepBlue,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            S.of(context).forgPassDesc,
                            style: AppTextStyles.text14med.copyWith(
                              color: isDark
                                  ? Colors.white70
                                  : AppColors.mediumGray,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              /// RESET OPTIONS
              Text(
                S.of(context).resetViaEmail,
                style: AppTextStyles.text16Bold.copyWith(
                  color: isDark ? Colors.white : AppColors.deepBlue,
                ),
              ),
              const SizedBox(height: 12),
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
              Text(
                S.of(context).resetViaPhone,
                style: AppTextStyles.text16Bold.copyWith(
                  color: isDark ? Colors.white : AppColors.deepBlue,
                ),
              ),
              const SizedBox(height: 12),
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: isDark
                          ? const Color(0x40000000)
                          : const Color(0x18060A1E),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
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
