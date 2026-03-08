import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../onboarding/presentation/views/widgets/top_image.dart';
import '../../../../splash/presentation/views/widgets/app_logo.dart';

class AppLogoExpandedContent extends StatelessWidget {
  const AppLogoExpandedContent({
    super.key,
    required this.expandedOpacity,
    required this.backgroundDy,
    required this.heroLogoDy,
    required this.heroLogoScale,
  });

  final double expandedOpacity;
  final double backgroundDy;
  final double heroLogoDy;
  final double heroLogoScale;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Transform.translate(
            offset: Offset(0, backgroundDy),
            child: Opacity(
              opacity: expandedOpacity,
              child: const TopImage(image: AppAssets.assetsImagesView2),
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 0,
          right: 0,
          child: IgnorePointer(
            ignoring: true,
            child: Transform.translate(
              offset: Offset(0, heroLogoDy),
              child: Transform.scale(
                scale: heroLogoScale,
                child: Opacity(
                  opacity: expandedOpacity,
                  child: const AppLogo(height: 100),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
