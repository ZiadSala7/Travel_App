import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';

class PageIndicator extends StatelessWidget {
  final int currentIndex;

  const PageIndicator({required this.currentIndex, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: index == currentIndex ? 18 : 7,
          height: 7,
          decoration: BoxDecoration(
            color: index == currentIndex
                ? AppColors.deepOrange
                : AppColors.greyShade,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
