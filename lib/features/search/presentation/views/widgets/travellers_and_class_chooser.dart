import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/travel_icons.dart';
import '../../../../../generated/l10n.dart';
import 'travellers_and_class_dialog.dart';

class TravellersAndClassChooser extends StatefulWidget {
  const TravellersAndClassChooser({super.key});

  @override
  State<TravellersAndClassChooser> createState() =>
      _TravellersAndClassChooserState();
}

class _TravellersAndClassChooserState extends State<TravellersAndClassChooser> {
  int cnt = 1;
  String selectedClass = "";

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = Theme.of(context).colorScheme;
    final isDark = theme.brightness == Brightness.dark;
    final fillColor = isDark ? AppColors.saferDarkPanel : AppColors.saferMuted;
    final borderColor = isDark
        ? AppColors.saferDarkText.withValues(alpha: 0.10)
        : AppColors.saferBorder;

    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => TravellersAndClassDialog(
            onSubmit: (int travellers, String slctedClass) {
              setState(() {
                cnt = travellers;
                selectedClass = slctedClass;
              });
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsetsDirectional.only(start: 10, end: 12),
        constraints: const BoxConstraints(minHeight: 54),
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(width: 1, color: borderColor),
        ),
        child: Row(
          children: [
            _FieldIcon(icon: TravelIcons.travellers, color: scheme.primary),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                "${S.of(context).travellers}: $cnt  ${S.of(context).selectClass}: $selectedClass",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.text14med.copyWith(
                  color: scheme.onSurface.withValues(alpha: 0.72),
                ),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: scheme.primary,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}

class _FieldIcon extends StatelessWidget {
  const _FieldIcon({required this.icon, required this.color});

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: color, size: 18),
    );
  }
}
