import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

class BookingTabs extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const BookingTabs({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });
  selectedTabs(BuildContext context) => [
    S.of(context).oneWay,
    S.of(context).round,
    S.of(context).multicity,
  ];

  @override
  Widget build(BuildContext context) {
    List<String> tabs = selectedTabs(context);
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: scheme.outline.withValues(alpha: 0.18)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.24 : 0.08),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(tabs.length, (index) {
          final isSelected = index == selectedIndex;
          return Flexible(
            flex: 1,
            child: GestureDetector(
              onTap: () => onChanged(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: isSelected
                      ? scheme.primary.withValues(alpha: isDark ? 0.18 : 0.12)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(14),
                  border: Border(
                    bottom: BorderSide(
                      color: isSelected ? scheme.primary : Colors.transparent,
                      width: 2,
                    ),
                  ),
                ),
                child: Text(
                  tabs[index],
                  textAlign: TextAlign.center,
                  style: AppTextStyles.text16Bold.copyWith(
                    color: isSelected
                        ? scheme.primary
                        : scheme.onSurface.withValues(alpha: 0.62),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
