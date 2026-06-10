import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final IconData? prefixIcon;
  final Widget suffixIcon;
  final TextStyle? style;
  final TextEditingController? controller;
  final Function(String value)? onChange;
  final String? Function(String?)? validator;
  const CustomTextFormField({
    super.key,
    required this.title,
    this.prefixIcon,
    this.suffixIcon = const SizedBox(),
    this.controller,
    this.onChange,
    this.validator,
    this.style,
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
    final textStyle =
        style ?? const TextStyle(fontSize: 15, fontWeight: FontWeight.w600);

    return TextFormField(
      validator: validator,
      cursorColor: scheme.primary,
      onChanged: onChange,
      style: textStyle.copyWith(color: scheme.onSurface),
      controller: controller,
      decoration: InputDecoration(
        hintText: title,
        filled: true,
        hintStyle: TextStyle(
          color: scheme.onSurface.withValues(alpha: isDark ? 0.56 : 0.48),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        fillColor: fillColor,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: const EdgeInsetsDirectional.only(start: 10, end: 8),
                child: _SearchFieldIcon(
                  icon: prefixIcon!,
                  color: scheme.primary,
                ),
              )
            : null,
        prefixIconConstraints: const BoxConstraints(
          minHeight: 48,
          minWidth: 54,
        ),
        suffixIcon: suffixIcon is SizedBox ? null : suffixIcon,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: scheme.primary, width: 1.4),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: scheme.error.withValues(alpha: 0.75)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: scheme.error, width: 1.4),
        ),
      ),
    );
  }
}

class _SearchFieldIcon extends StatelessWidget {
  const _SearchFieldIcon({required this.icon, required this.color});

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: color, size: 18),
      ),
    );
  }
}
