import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import 'promo_code_card.dart';

class PromoCodeCardImage extends StatelessWidget {
  const PromoCodeCardImage({super.key, required this.widget});

  final PromoCodeCard widget;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      widget.imageUrl!,
      height: 150, // Adjust height as needed
      width: double.infinity, // Take full width
      fit: BoxFit.cover, // Cover the area without distortion
      loadingBuilder:
          (
            BuildContext context,
            Widget child,
            ImageChunkEvent? loadingProgress,
          ) {
            if (loadingProgress == null) return child;
            return Container(
              height: 120,
              color: AppColors.creamWhite, // Placeholder color
              child: Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                      : null,
                ),
              ),
            );
          },
      errorBuilder: (context, error, stackTrace) => Container(
        height: 120,
        color: AppColors.appbarClr,
        child: const Center(
          child: Icon(Icons.broken_image, color: AppColors.appbarClr),
        ),
      ),
    );
  }
}
