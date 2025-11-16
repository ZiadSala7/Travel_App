import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class ShowDetailsButton extends StatelessWidget {
  final String txt;
  final IconData icon;
  final Function() onPressed;
  final Color? bkgrnd;

  const ShowDetailsButton({
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
        padding: const EdgeInsets.all(10),
        backgroundColor: bkgrnd,
      ),
      label: Icon(icon, size: 15, color: AppColors.white),
      icon: Text(
        txt,
        style: AppTextStyles.text16med.copyWith(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
