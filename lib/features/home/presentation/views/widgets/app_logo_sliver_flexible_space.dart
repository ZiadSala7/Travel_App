import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';

import 'app_logo_collapsed_toolbar.dart';
import 'app_logo_expanded_content.dart';

class AppLogoSliverFlexibleSpace extends StatelessWidget {
  const AppLogoSliverFlexibleSpace({
    super.key,
    required this.collapsedHeight,
    required this.expandedHeight,
    required this.expandedFadeOutCurve,
    required this.collapsedFadeInCurve,
    required this.isDark,
  });

  final double collapsedHeight;
  final double expandedHeight;
  final Interval expandedFadeOutCurve;
  final Interval collapsedFadeInCurve;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final dividerColor = isDark
        ? const Color.fromRGBO(255, 255, 255, 0.14)
        : Theme.of(context).dividerColor;

    return LayoutBuilder(
      builder: (context, constraints) {
        final topPadding = MediaQuery.paddingOf(context).top;
        final currentExtent = constraints.biggest.height - topPadding;
        final delta = expandedHeight - collapsedHeight;
        final t = ((expandedHeight - currentExtent) / delta).clamp(0.0, 1.0);

        final expandedOpacity = (1 - expandedFadeOutCurve.transform(t)).clamp(
          0.0,
          1.0,
        );
        final collapsedOpacity = collapsedFadeInCurve.transform(t).clamp(
          0.0,
          1.0,
        );
        final backgroundDy = lerpDouble(0, -32, t)!;
        final heroLogoDy = lerpDouble(0, -54, t)!;
        final heroLogoScale = lerpDouble(1, 0.88, t)!;
        final collapsedToolbarDy = lerpDouble(12, 0, t)!;

        return Stack(
          fit: StackFit.expand,
          children: [
            AppLogoExpandedContent(
              expandedOpacity: expandedOpacity,
              backgroundDy: backgroundDy,
              heroLogoDy: heroLogoDy,
              heroLogoScale: heroLogoScale,
            ),
            AppLogoCollapsedToolbar(
              collapsedHeight: collapsedHeight,
              collapsedToolbarDy: collapsedToolbarDy,
              collapsedOpacity: collapsedOpacity,
              isDark: isDark,
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Opacity(
                opacity: collapsedOpacity,
                child: Container(
                  height: 1,
                  color: dividerColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
