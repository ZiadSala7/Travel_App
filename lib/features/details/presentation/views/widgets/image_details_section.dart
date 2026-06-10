import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import 'bottom_rounded_clipper.dart';

class ImageDetailsSection extends StatelessWidget {
  final String? image;
  final String? assetImage;
  final String? title;
  final String? subtitle;
  final Widget? trailingBadge;

  const ImageDetailsSection({
    super.key,
    this.image,
    this.assetImage,
    this.title,
    this.subtitle,
    this.trailingBadge,
  }) : assert(image != null || assetImage != null);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 0.38;

    return ClipPath(
      clipper: BottomRoundedClipper(),
      child: SizedBox(
        height: height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            assetImage != null
                ? Image.asset(assetImage!, fit: BoxFit.cover)
                : Image.network(image!, fit: BoxFit.cover),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.20),
                    Colors.black.withValues(alpha: 0.04),
                    Colors.black.withValues(alpha: 0.56),
                  ],
                ),
              ),
            ),
            PositionedDirectional(
              top: MediaQuery.paddingOf(context).top + 10,
              start: 14,
              child: _HeroIconButton(
                icon: Icons.arrow_back_rounded,
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            if (trailingBadge != null)
              PositionedDirectional(
                top: MediaQuery.paddingOf(context).top + 12,
                end: 14,
                child: trailingBadge!,
              ),
            if (title != null || subtitle != null)
              PositionedDirectional(
                start: 20,
                end: 20,
                bottom: 42,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (title != null)
                      Text(
                        title!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.text30Bold.copyWith(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 6),
                      Text(
                        subtitle!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.text16med.copyWith(
                          color: Colors.white.withValues(alpha: 0.86),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _HeroIconButton extends StatelessWidget {
  const _HeroIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withValues(alpha: 0.28),
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(14),
        child: SizedBox(
          width: 42,
          height: 42,
          child: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}
