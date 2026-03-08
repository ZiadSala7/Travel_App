import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class ShowDetailsButton extends StatelessWidget {
  final String txt;
  final IconData icon;
  final Function() onPressed;
  final Color? bkgrnd;

  const ShowDetailsButton({
    super.key,
    required this.onPressed,
    required this.txt,
    required this.icon,
    this.bkgrnd,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final background = bkgrnd ?? scheme.primary;
    final foreground = scheme.onPrimary;

    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.all(10),
        backgroundColor: background,
        foregroundColor: foreground,
      ),
      label: Icon(icon, size: 15, color: foreground),
      icon: Text(
        txt,
        style: AppTextStyles.text16med.copyWith(
          color: foreground,
          fontSize: 12,
        ),
      ),
    );
  }
}
