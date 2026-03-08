import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

class CustomTextButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const CustomTextButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyles.text16Reg.copyWith(
          color: primary,
          decoration: TextDecoration.underline,
          decorationColor: primary,
        ),
      ),
    );
  }
}
