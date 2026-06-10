import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CustomDropDownButton extends StatefulWidget {
  final List<String> items;
  final String hint;
  final Function(String selectedClass) onSelected;
  const CustomDropDownButton({
    super.key,
    required this.items,
    required this.hint,
    required this.onSelected,
  });

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;
    final fillColor = isDark ? AppColors.saferDarkPanel : AppColors.saferMuted;
    final borderColor = isDark
        ? AppColors.saferDarkText.withValues(alpha: 0.10)
        : AppColors.saferBorder;

    return Container(
      padding: const EdgeInsetsDirectional.only(start: 10, end: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: fillColor,
        border: Border.all(color: borderColor),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          dropdownColor: isDark ? AppColors.saferDarkPanel : AppColors.white,
          borderRadius: BorderRadius.circular(14),
          style: AppTextStyles.text16med.copyWith(color: scheme.onSurface),
          value: selectedValue,
          hint: Row(
            children: [
              _FieldIcon(color: scheme.primary),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  widget.hint,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.text14med.copyWith(
                    color: scheme.onSurface.withValues(
                      alpha: isDark ? 0.56 : 0.48,
                    ),
                  ),
                ),
              ),
            ],
          ),
          icon: Icon(Icons.keyboard_arrow_down_rounded, color: scheme.primary),
          items: widget.items.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Text(
                item,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.text16med.copyWith(
                  color: scheme.onSurface,
                ),
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedValue = value;
              widget.onSelected(value!);
            });
          },
        ),
      ),
    );
  }
}

class _FieldIcon extends StatelessWidget {
  const _FieldIcon({required this.color});

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
      child: Icon(Icons.directions_car_rounded, color: color, size: 18),
    );
  }
}
