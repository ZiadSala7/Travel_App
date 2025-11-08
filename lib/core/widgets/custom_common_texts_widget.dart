import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

class CustomCommonTextsWidget extends StatelessWidget {
  final String headerTxt;
  final String descriptionTxt;
  const CustomCommonTextsWidget({
    super.key,
    required this.headerTxt,
    required this.descriptionTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 50),
        const SizedBox(height: 20),
        Text(
          headerTxt,
          style: AppTextStyles.text30Bold,
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 20),
        Text(descriptionTxt, style: AppTextStyles.text16Reg),
      ],
    );
  }
}
