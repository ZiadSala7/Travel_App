import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

import '../utils/app_colors.dart';
import '../utils/travel_icons.dart';

class CustomFormBuilderDateTimePicker extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const CustomFormBuilderDateTimePicker({
    super.key,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;
    final fillColor = isDark ? AppColors.saferDarkPanel : AppColors.saferMuted;
    final borderColor = isDark
        ? AppColors.saferDarkText.withValues(alpha: 0.10)
        : AppColors.saferBorder;

    return FormBuilderDateTimePicker(
      controller: controller,
      name: 'formBuilder',
      inputType: InputType.date,
      style: TextStyle(
        color: scheme.onSurface,
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: true,
        hintText: hint,
        hintStyle: TextStyle(
          color: scheme.onSurface.withValues(alpha: isDark ? 0.56 : 0.48),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(14),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: scheme.primary, width: 1.4),
          borderRadius: BorderRadius.circular(14),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(14),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(end: 10),
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: scheme.primary.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(TravelIcons.calendar, color: scheme.primary, size: 18),
          ),
        ),
        suffixIconConstraints: const BoxConstraints(
          minHeight: 48,
          minWidth: 46,
        ),
      ),
      format: DateFormat("MMMM dd, yyyy"),
    );
  }
}
