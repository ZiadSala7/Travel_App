import 'package:flutter/material.dart';

import 'promo_code_card.dart';

class PromoCodeCardImage extends StatelessWidget {
  const PromoCodeCardImage({super.key, required this.widget});

  final PromoCodeCard widget;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Image.network(
      widget.imageUrl!,
      height: 170,
      width: double.infinity,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;

        return Container(
          height: 170,
          color: scheme.surfaceContainerHighest.withValues(alpha: 0.50),
          child: Center(
            child: CircularProgressIndicator(
              color: scheme.primary,
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                  : null,
            ),
          ),
        );
      },
      errorBuilder: (context, error, stackTrace) => Container(
        height: 170,
        color: scheme.surfaceContainerHighest.withValues(alpha: 0.50),
        child: Icon(
          Icons.image_not_supported_outlined,
          color: scheme.onSurface.withValues(alpha: 0.46),
        ),
      ),
    );
  }
}
