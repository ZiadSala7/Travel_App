import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/responsive_utils.dart';
import '../../../../../generated/l10n.dart';
import 'widgets/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
              padding: EdgeInsets.symmetric(
                vertical: ResponsiveUtils.getResponsiveFontSize(context, 32),
                horizontal: ResponsiveUtils.getResponsiveFontSize(context, 24),
              ),
              margin: EdgeInsets.symmetric(
                horizontal: ResponsiveUtils.getResponsiveFontSize(context, 16),
                vertical: ResponsiveUtils.getResponsiveFontSize(context, 16),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: isDark
                      ? [const Color(0xFF2A3D58), const Color(0xFF24354D)]
                      : [const Color(0xFFFFFFFF), const Color(0xFFF1F6FF)],
                ),
                borderRadius: BorderRadius.circular(ResponsiveUtils.getResponsiveFontSize(context, 24)),
                boxShadow: [
                  BoxShadow(
                    color: isDark
                        ? const Color(0x60000000)
                        : const Color(0x25060A1E),
                    blurRadius: ResponsiveUtils.getResponsiveFontSize(context, 20),
                    offset: Offset(0, ResponsiveUtils.getResponsiveFontSize(context, 8)),
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Header with icon
                  Container(
                    width: ResponsiveUtils.getResponsiveFontSize(context, 60),
                    height: ResponsiveUtils.getResponsiveFontSize(context, 60),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [AppColors.primary, AppColors.deepOrange],
                      ),
                      borderRadius: BorderRadius.circular(ResponsiveUtils.getResponsiveFontSize(context, 20)),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primary.withValues(alpha: 0.4),
                          blurRadius: ResponsiveUtils.getResponsiveFontSize(context, 12),
                          offset: Offset(0, ResponsiveUtils.getResponsiveFontSize(context, 4)),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.login_rounded,
                      color: Colors.white,
                      size: ResponsiveUtils.getResponsiveFontSize(context, 30),
                    ),
                  ),
                  SizedBox(height: ResponsiveUtils.getResponsiveFontSize(context, 20)),
                  Text(
                    S.of(context).login,
                    style: AppTextStyles.text25Bold.copyWith(
                      fontSize: ResponsiveUtils.getResponsiveFontSize(context, 25),
                      color: isDark ? Colors.white : AppColors.deepBlue,
                    ),
                  ),
                  SizedBox(height: ResponsiveUtils.getResponsiveFontSize(context, 8)),
                  Text(
                    S.of(context).continueLogin,
                    style: AppTextStyles.text14med.copyWith(
                      fontSize: ResponsiveUtils.getResponsiveFontSize(context, 14),
                      color: isDark ? Colors.white70 : AppColors.mediumGray,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: ResponsiveUtils.getResponsiveFontSize(context, 24)),
              child: const LoginForm(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: ResponsiveUtils.getResponsiveFontSize(context, 40))),
        ],
      ),
    );
  }
}
