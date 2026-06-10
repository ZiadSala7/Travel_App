import 'package:flutter/material.dart';

import '../../../data/models/service_model.dart';
import 'custom_service_chooser.dart';

class ChooseServiceSliverAppBar extends StatelessWidget {
  const ChooseServiceSliverAppBar({super.key, required this.services});

  final List<ServiceModel> services;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;

    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      elevation: 0,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: theme.scaffoldBackgroundColor,
      automaticallyImplyLeading: false,
      expandedHeight: 92,
      toolbarHeight: 92,
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(14, 6, 14, 14),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: theme.cardColor.withValues(alpha: isDark ? 0.88 : 0.96),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: scheme.primary.withValues(alpha: isDark ? 0.18 : 0.14),
                ),
                boxShadow: [
                  BoxShadow(
                    color: isDark
                        ? const Color(0x5C000000)
                        : const Color(0x18060A1E),
                    blurRadius: isDark ? 10 : 16,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: Row(
                  children: List.generate(
                    services.length,
                    (index) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: CustomServiceChooser(
                          model: services[index],
                          isActive: index == 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
