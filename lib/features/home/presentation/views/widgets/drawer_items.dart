import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/managers/theme_cubit/theme_cubit.dart';
import '../../../../../core/themes/light_theme.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key, required this.items});

  final List<dynamic> items;

  @override
  Widget build(BuildContext context) {
    final isLight = context.watch<ThemeCubit>().state == lightTheme;
    final tileColor = isLight ? AppColors.white : AppColors.charcoalGray;
    final textColor = isLight ? AppColors.charcoalGray : AppColors.white;
    final valueColor = isLight ? AppColors.coolBlue : AppColors.calmBlue;

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
                      color: isLight
                          ? AppColors.offWhite
                          : AppColors.deepCharcoal.withOpacity(0.55),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      items[index]["icon"] as IconData,
                      size: 20,
                      color: AppColors.primaryBlue,
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
