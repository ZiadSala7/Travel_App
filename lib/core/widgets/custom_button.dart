// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String txt;
  final IconData? icon;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final bool isLoading;
  final double? borderRadius;
  final EdgeInsets? padding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? elevation;
  final Gradient? gradient;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.txt,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.isLoading = false,
    this.borderRadius,
    this.padding,
    this.fontSize,
    this.fontWeight,
    this.elevation,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(borderRadius ?? 16),
        boxShadow: elevation != null && elevation! > 0
            ? [
                BoxShadow(
                  color: (backgroundColor ?? AppColors.primary).withOpacity(
                    0.3,
                  ),
                  blurRadius: elevation!,
                  offset: Offset(0, elevation! / 2),
                ),
              ]
            : null,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(borderRadius ?? 16),
        color: gradient != null
            ? Colors.transparent
            : (backgroundColor ?? AppColors.primary),
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
          onTap: isLoading ? null : onPressed,
          child: Container(
            padding:
                padding ??
                const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: isLoading
                ? SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        textColor ?? Colors.white,
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (icon != null) ...[
                        Icon(icon, size: 20, color: textColor ?? Colors.white),
                        const SizedBox(width: 8),
                      ],
                      Text(
                        txt,
                        style: AppTextStyles.text20Med.copyWith(
                          color: textColor ?? Colors.white,
                          fontSize: fontSize,
                          fontWeight: fontWeight,
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
