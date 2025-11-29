import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/utils/app_colors.dart';
import 'dashed_line_custom_painter.dart';
import 'promo_code_card_image.dart';
import 'promo_code_title_and_button.dart';

class PromoCodeCard extends StatefulWidget {
  final String promoCode, title;
  final String description;
  final String? imageUrl; // New optional parameter for image

  const PromoCodeCard({
    super.key,
    required this.promoCode,
    required this.description,
    this.imageUrl,
    required this.title, // Make sure to include it in the constructor
  });

  @override
  State<PromoCodeCard> createState() => _PromoCodeCardState();
}

class _PromoCodeCardState extends State<PromoCodeCard> {
  bool _isCopied = false;

  void _copyCode() async {
    // this line for coping the code
    await Clipboard.setData(ClipboardData(text: widget.promoCode));

    setState(() {
      _isCopied = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _isCopied = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.offWhite,
      elevation: 4,
      shadowColor: AppColors.white,
      clipBehavior:
          Clip.antiAlias, // Clip the image to the card's rounded corners
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        // Changed to Column to place image above other content
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Conditionally display the image
          if (widget.imageUrl != null) PromoCodeCardImage(widget: widget),
          // Add a small space if an image is present
          if (widget.imageUrl != null) const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 5.0,
            ), // Padding for the rest of the content
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: AppTextStyles.text18Bold.copyWith(
                    color: AppColors.black,
                  ),
                ),
                const SizedBox(height: 15),
                // your code
                Text(
                  'Your Code',
                  style: AppTextStyles.text14Bold.copyWith(
                    color: AppColors.mediumGray,
                  ),
                ),
                const SizedBox(height: 12),
                promoCodeTitleAndButton(widget, _copyCode, _isCopied, context),
                const SizedBox(height: 16),
                CustomPaint(
                  size: const Size.fromHeight(1),
                  painter: DashedLinePainter(color: AppColors.mediumGray),
                ),
                const SizedBox(height: 16),
                Text(
                  widget.description,
                  style: AppTextStyles.text14med.copyWith(
                    color: AppColors.mediumGray,
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
