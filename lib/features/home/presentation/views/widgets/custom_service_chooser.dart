import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../data/models/service_model.dart';

class CustomServiceChooser extends StatelessWidget {
  final ServiceModel model;
  const CustomServiceChooser({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: model.onPressed,
      borderRadius: BorderRadius.circular(14),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: theme.dividerColor),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(model.image, fit: BoxFit.contain),
              ),
              const SizedBox(height: 6),
              Text(
                model.title,
                style: AppTextStyles.text14med.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
