import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';

Row promoCodeTitleAndButton(
  dynamic widget,
  VoidCallback copyCode,
  bool isCopied,
  BuildContext context
) {
  return Row(
    children: <Widget>[
      // decoration container for promo code
      Expanded(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: AppColors.white,
            boxShadow: customBoxShadowList,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
          ),
          child: Text(
            widget.promoCode,
            style: AppTextStyles.text18Bold.copyWith(
              color: AppColors.deepOrange,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
      // elevated button for the copy button
      SizedBox(
        height: 48,
        child: ElevatedButton(
          onPressed: copyCode,
          style: ElevatedButton.styleFrom(
            backgroundColor: isCopied
                ? Colors.green.shade600
                : AppColors.deepOrange,
            foregroundColor: AppColors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            elevation: 0,
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(isCopied ? Icons.check : Icons.copy, size: 18),
              const SizedBox(width: 8),
              Text(
                isCopied ? S.of(context).copied : S.of(context).copy,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
