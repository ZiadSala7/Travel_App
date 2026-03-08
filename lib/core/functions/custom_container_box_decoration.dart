import 'package:flutter/material.dart';

BoxDecoration customContainerBoxDecoration(BuildContext context) {
  final theme = Theme.of(context);
  final isDark = theme.brightness == Brightness.dark;
  return BoxDecoration(
    color: theme.cardColor,
    borderRadius: BorderRadius.circular(18),
    border: isDark
        ? Border.all(color: const Color(0x335D7396), width: 1)
        : null,
    boxShadow: [
      BoxShadow(
        color: isDark ? const Color(0x3B0D1624) : Colors.black12,
        blurRadius: isDark ? 18 : 12,
        offset: const Offset(0, 6),
      ),
    ],
  );
}
