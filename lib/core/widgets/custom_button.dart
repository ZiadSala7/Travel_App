import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';


class CustomButton extends StatelessWidget {
  final String txt;
  final Function() onPressed;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 20),
        backgroundColor: AppColors.deepOrange,
      ),
      child: Text(
        txt,
        style: AppTextStyles.text20Med.copyWith(color: Colors.white),
      ),
    );
  }
}
