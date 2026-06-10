import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  final String title;
  final IconData? prefixIcon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const CustomPasswordTextFormField({
    super.key,
    required this.title,
    this.prefixIcon,
    required this.controller,
    this.validator,
  });

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool isClicked = true;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return TextFormField(
      validator: widget.validator,
      style: TextStyle(color: scheme.onSurface),
      cursorColor: scheme.primary,
      controller: widget.controller,
      obscureText: isClicked,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon != null
            ? Icon(widget.prefixIcon, color: scheme.primary)
            : null,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isClicked = !isClicked;
            });
          },
          icon: isClicked
              ? Icon(Icons.visibility_off, color: scheme.onSurfaceVariant)
              : Icon(Icons.visibility, color: scheme.primary),
        ),
        hintText: widget.title,
        hintStyle: AppTextStyles.text16Reg.copyWith(
          color: scheme.onSurface.withValues(alpha: 0.48),
        ),
        filled: true,
        fillColor: scheme.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: scheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: theme.dividerColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: scheme.primary, width: 1.2),
        ),
      ),
    );
  }
}
