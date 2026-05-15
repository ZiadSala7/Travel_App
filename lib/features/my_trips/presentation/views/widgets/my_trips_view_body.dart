import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/responsive_utils.dart';
import '../../../../../generated/l10n.dart';

class MyTripsViewBody extends StatelessWidget {
  const MyTripsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    // For now, we'll show the "no trips yet" message
    // In a real app, you would check if there are trips and show them or show this message
    return _buildNoTripsMessage(context, isDark);
  }

  Widget _buildNoTripsMessage(BuildContext context, bool isDark) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(ResponsiveUtils.getResponsiveFontSize(context, 24)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon container
            Container(
              width: ResponsiveUtils.getResponsiveFontSize(context, 100),
              height: ResponsiveUtils.getResponsiveFontSize(context, 100),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.primary, AppColors.deepOrange],
                ),
                borderRadius: BorderRadius.circular(
                  ResponsiveUtils.getResponsiveFontSize(context, 50),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: 0.3),
                    blurRadius: ResponsiveUtils.getResponsiveFontSize(context, 20),
                    offset: Offset(0, ResponsiveUtils.getResponsiveFontSize(context, 8)),
                  ),
                ],
              ),
              child: Icon(
                Icons.airplanemode_active_rounded,
                color: Colors.white,
                size: ResponsiveUtils.getResponsiveFontSize(context, 50),
              ),
            ),
            SizedBox(height: ResponsiveUtils.getResponsiveFontSize(context, 24)),

            // No trips text
            Text(
              S.of(context).noTripsYet,
              style: AppTextStyles.text20Bold.copyWith(
                fontSize: ResponsiveUtils.getResponsiveFontSize(context, 20),
                color: isDark ? Colors.white : AppColors.deepBlue,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: ResponsiveUtils.getResponsiveFontSize(context, 12)),

            // Description text
            Text(
              "ابدأ رحلتك الآن واحجز أفضل العروض على الفنادق والطيران والسيارات",
              style: AppTextStyles.text14med.copyWith(
                fontSize: ResponsiveUtils.getResponsiveFontSize(context, 14),
                color: isDark ? Colors.white70 : AppColors.mediumGray,
                height: 1.6,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: ResponsiveUtils.getResponsiveFontSize(context, 32)),

            // Book now button
            GestureDetector(
              onTap: () {
                // Navigate to home or booking screen
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveUtils.getResponsiveFontSize(context, 32),
                  vertical: ResponsiveUtils.getResponsiveFontSize(context, 16),
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [AppColors.primary, AppColors.deepOrange],
                  ),
                  borderRadius: BorderRadius.circular(
                    ResponsiveUtils.getResponsiveFontSize(context, 12),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.4),
                      blurRadius: ResponsiveUtils.getResponsiveFontSize(context, 8),
                      offset: Offset(0, ResponsiveUtils.getResponsiveFontSize(context, 4)),
                    ),
                  ],
                ),
                child: Text(
                  S.of(context).bookNow,
                  style: AppTextStyles.text16Bold.copyWith(
                    fontSize: ResponsiveUtils.getResponsiveFontSize(context, 16),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}