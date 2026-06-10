// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../utils/app_text_styles.dart';

class CustomOutlinedTextField extends StatelessWidget {
  final String name;
  final String? label;
  final String? hint;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final List<String? Function(dynamic)>? validators;
  final VoidCallback? onSuffixIconTap;
  final ValueChanged<String?>? onChanged;
  final int? maxLines;
  final int? minLines;
  final bool enabled;
  final Color? fillColor;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final double? borderRadius;
  final EdgeInsets? contentPadding;

  const CustomOutlinedTextField({
    super.key,
    required this.name,
    this.label,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.validators,
    this.onSuffixIconTap,
    this.onChanged,
    this.maxLines = 1,
    this.minLines,
    this.enabled = true,
    this.fillColor,
    this.borderColor,
    this.focusedBorderColor,
    this.borderRadius,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return FormBuilderTextField(
      name: name,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      enabled: enabled,
      maxLines: maxLines,
      minLines: minLines,
      onChanged: onChanged,
      style: AppTextStyles.text16Reg.copyWith(color: scheme.onSurface),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        labelStyle: AppTextStyles.text14Reg.copyWith(
          color: scheme.onSurface.withOpacity(0.6),
        ),
        hintStyle: AppTextStyles.text14Reg.copyWith(
          color: scheme.onSurface.withOpacity(0.4),
        ),
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: scheme.primary)
            : null,
        suffixIcon: suffixIcon != null
            ? GestureDetector(
                onTap: onSuffixIconTap,
                child: Icon(suffixIcon, color: scheme.primary),
              )
            : null,
        filled: true,
        fillColor: fillColor ?? scheme.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          borderSide: BorderSide(
            color: borderColor ?? scheme.outline.withOpacity(0.3),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          borderSide: BorderSide(
            color: borderColor ?? scheme.outline.withOpacity(0.3),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          borderSide: BorderSide(
            color: focusedBorderColor ?? scheme.primary,
            width: 1.5,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12),
          borderSide: BorderSide(
            color: scheme.outline.withOpacity(0.2),
            width: 1,
          ),
        ),
        contentPadding:
            contentPadding ??
            const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
      validator: FormBuilderValidators.compose(validators ?? []),
    );
  }
}
