import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'widgets/sign_up_form.dart';

class SignUpView extends StatelessWidget {
  static const String id = 'signUp';
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: isDark
              ? [
                  const Color(0xFF1A2638),
                  const Color(0xFF24354D),
                  const Color(0xFF2A3D58),
                ]
              : [
                  const Color(0xFFF8FBFF),
                  const Color(0xFFF1F6FF),
                  const Color(0xFFE8F0FF),
                ],
        ),
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: isDark
                        ? const Color(0x60000000)
                        : const Color(0x25060A1E),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Header with icon
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [AppColors.skyBlue, AppColors.primary],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.skyBlue.withValues(alpha: 0.4),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.person_add_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    S.of(context).signUp,
                    style: AppTextStyles.text25Bold.copyWith(
                      color: isDark ? Colors.white : AppColors.deepBlue,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "قم بإنشاء حساب جديد",
                    style: AppTextStyles.text14med.copyWith(
                      color: isDark ? Colors.white70 : AppColors.mediumGray,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: SignUpForm(),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
        ],
      ),
    );
  }
}
