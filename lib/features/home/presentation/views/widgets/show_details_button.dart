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
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 10, 0),
        backgroundColor: background,
        foregroundColor: foreground,
      ),
      icon: Text(
        txt,
        style: AppTextStyles.text16med.copyWith(
          color: foreground,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
      label: Icon(icon, size: 15, color: foreground),
    );
  }
}
