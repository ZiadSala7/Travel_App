import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class FlightDescriptionSection extends StatelessWidget {
  final double width;
  const FlightDescriptionSection({super.key, this.width = 50});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final secondaryText = scheme.onSurface.withValues(alpha: 0.62);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: _AirportTime(
            time: "14:30",
            airport: "Dubai International",
            alignment: CrossAxisAlignment.start,
            textColor: scheme.onSurface,
            secondaryText: secondaryText,
          ),
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(
              "3h 15m",
              style: AppTextStyles.text14Reg.copyWith(
                color: secondaryText,
                fontSize: 12,
              ),
            ),
            Row(
              children: [
                const Icon(Icons.circle, color: AppColors.deepOrange, size: 10),
                SizedBox(
                  width: width,
                  child: Divider(
                    endIndent: 3,
                    indent: 3,
                    color: scheme.outline.withValues(alpha: 0.42),
                  ),
                ),
                const Icon(
                  Icons.flight_rounded,
                  color: AppColors.deepOrange,
                  size: 15,
                ),
              ],
            ),
            Text(
              "EK-203",
              style: AppTextStyles.text14Reg.copyWith(
                color: secondaryText,
                fontSize: 12,
              ),
            ),
          ],
        ),
        const SizedBox(width: 8),
        Expanded(
          child: _AirportTime(
            time: "17:45",
            airport: "Cairo International",
            alignment: CrossAxisAlignment.end,
            textColor: scheme.onSurface,
            secondaryText: secondaryText,
          ),
        ),
      ],
    );
  }
}

class _AirportTime extends StatelessWidget {
  const _AirportTime({
    required this.time,
    required this.airport,
    required this.alignment,
    required this.textColor,
    required this.secondaryText,
  });

  final String time;
  final String airport;
  final CrossAxisAlignment alignment;
  final Color textColor;
  final Color secondaryText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(time, style: AppTextStyles.text20Bold.copyWith(color: textColor)),
        const SizedBox(height: 2),
        Text(
          airport,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: alignment == CrossAxisAlignment.end
              ? TextAlign.end
              : TextAlign.start,
          style: AppTextStyles.text14Reg.copyWith(
            color: secondaryText,
            fontSize: 12,
          ),
        ),
        Text(
          "Airport",
          style: AppTextStyles.text14Reg.copyWith(
            color: secondaryText,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
