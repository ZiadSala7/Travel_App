import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/models/service_model.dart';

class CustomServiceChooser extends StatelessWidget {
  final ServiceModel model;
  final bool isActive;
  const CustomServiceChooser({
    super.key,
    required this.model,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final foregroundColor = isActive
        ? scheme.primary
        : scheme.onSurface.withValues(alpha: 0.66);

    return InkWell(
      onTap: model.onPressed,
      borderRadius: BorderRadius.circular(14),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: isActive ? theme.scaffoldBackgroundColor : Colors.transparent,
          border: Border(
            bottom: BorderSide(
              color: isActive ? scheme.primary : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(model.icon, color: foregroundColor, size: 22),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  model.title,
                  style: AppTextStyles.text14Bold.copyWith(
                    color: foregroundColor,
                    fontSize: 13,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
