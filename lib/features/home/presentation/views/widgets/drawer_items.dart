import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key, required this.items});

  final List<dynamic> items;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;
    final tileColor = isDark ? const Color(0xFF25354D) : scheme.surface;
    final textColor = scheme.onSurface;
    final valueColor = isDark ? AppColors.paleBlue : scheme.secondary;
    final iconChipColor = isDark
        ? const Color.fromRGBO(13, 27, 42, 0.55)
        : const Color(0xFFEFF4FB);
    final iconColor = isDark ? AppColors.iceBlue : scheme.secondary;

    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 12),
      itemCount: items.length,
      separatorBuilder: (_, __) => const SizedBox(height: 10),
      itemBuilder: (context, index) {
        return Material(
          color: tileColor,
          borderRadius: BorderRadius.circular(16),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: items[index]["onPressed"] as void Function()?,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              child: Row(
                children: [
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: iconChipColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      items[index]["icon"] as IconData,
                      size: 20,
                      color: iconColor,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      items[index]["title"] as String,
                      style: AppTextStyles.text16med.copyWith(color: textColor),
                    ),
                  ),
                  if (items[index]["value"] != null)
                    Text(
                      items[index]["value"] as String,
                      style: AppTextStyles.text14med.copyWith(color: valueColor),
                    )
                  else
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 14,
                      // ignore: deprecated_member_use
                      color: textColor.withOpacity(0.66),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
