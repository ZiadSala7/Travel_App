import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
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
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 2)),
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
                  horizontal: 24,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.deepOrange : Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  tabs[index],
                  textAlign: TextAlign.center,
                  style: AppTextStyles.text16Reg.copyWith(
                    color: AppColors.black,
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
