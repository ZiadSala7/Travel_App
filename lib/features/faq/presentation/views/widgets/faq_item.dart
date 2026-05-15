import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/responsive_utils.dart';

/// 🔽 Expandable FAQ item
class ExpandableFAQItem extends StatefulWidget {
  final String question;
  final String answer;

  const ExpandableFAQItem({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  State<ExpandableFAQItem> createState() => ExpandableFAQItemState();
}

class ExpandableFAQItemState extends State<ExpandableFAQItem> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      margin: EdgeInsets.only(bottom: context.responsiveSpacing),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF2A3D58) : const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(context.responsiveRadius),
        border: Border.all(
          color: isDark ? const Color(0xFF3A4D68) : const Color(0xFFE8F0FF),
        ),
        boxShadow: [
          BoxShadow(
            color: isDark ? const Color(0x30000000) : const Color(0x10060A1E),
            blurRadius: ResponsiveUtils.getResponsiveFontSize(context, 8),
            offset: Offset(0, ResponsiveUtils.getResponsiveFontSize(context, 4)),
          ),
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(context.responsiveRadius)),
          ),
          title: Text(
            widget.question,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: ResponsiveUtils.getResponsiveFontSize(context, 15),
              color: isDark ? Colors.white : AppColors.deepBlue,
            ),
          ),
          trailing: Container(
            width: ResponsiveUtils.getResponsiveFontSize(context, 28),
            height: ResponsiveUtils.getResponsiveFontSize(context, 28),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppColors.primary, AppColors.deepOrange],
              ),
              borderRadius: BorderRadius.circular(ResponsiveUtils.getResponsiveFontSize(context, 8)),
            ),
            child: Icon(
              expanded ? Icons.remove : Icons.add,
              color: Colors.white,
              size: ResponsiveUtils.getResponsiveFontSize(context, 18),
            ),
          ),
          onExpansionChanged: (val) {
            setState(() => expanded = val);
          },
          children: [
            Padding(
              padding: EdgeInsets.all(ResponsiveUtils.getResponsiveFontSize(context, 16)),
              child: Text(
                widget.answer,
                style: TextStyle(
                  color: isDark ? Colors.white70 : AppColors.mediumGray,
                  fontSize: ResponsiveUtils.getResponsiveFontSize(context, 14),
                  height: 1.6,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
