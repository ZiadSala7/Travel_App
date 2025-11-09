import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String txt;
  final IconData icon;
  final Function() onPressed;
  final Color? bkgrnd;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.txt,
    required this.icon,
    this.bkgrnd = AppColors.deepOrange,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 20),
        backgroundColor: bkgrnd,
      ),
      label: Icon(icon, size: 22, color: AppColors.white),
      icon: Text(
        txt,
        style: AppTextStyles.text20Med.copyWith(color: Colors.white),
      ),
    );
  }
}
