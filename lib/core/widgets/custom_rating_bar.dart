// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class CustomRatingBar extends StatelessWidget {
  final double rating;
  final int maxRating;
  final double size;
  final Color? filledColor;
  final Color? emptyColor;
  final bool showNumber;
  final TextStyle? numberStyle;
  final double spacing;

  const CustomRatingBar({
    super.key,
    required this.rating,
    this.maxRating = 5,
    this.size = 16,
    this.filledColor,
    this.emptyColor,
    this.showNumber = false,
    this.numberStyle,
    this.spacing = 2,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(maxRating, (index) {
          return Padding(
            padding: EdgeInsets.only(right: spacing),
            child: Icon(
              index < rating.floor()
                  ? Icons.star_rounded
                  : index < rating
                  ? Icons.star_half_rounded
                  : Icons.star_border_rounded,
              size: size,
              color: index < rating
                  ? (filledColor ?? AppColors.primary)
                  : (emptyColor ?? scheme.outline.withOpacity(0.4)),
            ),
          );
        }),
        if (showNumber) ...[
          const SizedBox(width: 8),
          Text(
            rating.toStringAsFixed(1),
            style:
                numberStyle?.copyWith(color: scheme.onSurface) ??
                TextStyle(
                  color: scheme.onSurface,
                  fontSize: size * 0.8,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ],
    );
  }
}
