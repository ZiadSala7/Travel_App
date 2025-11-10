import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/app_text_styles.dart';

class CustomTextAlignment extends StatelessWidget {
  final String text;
  const CustomTextAlignment({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.text16med,
      textAlign: Intl.getCurrentLocale() == "en"
          ? TextAlign.left
          : TextAlign.right,
    );
  }
}
