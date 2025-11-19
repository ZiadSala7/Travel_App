import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'hotel_form_bottom_sheet.dart';

class NumOfGuestsAndRoomsChooser extends StatelessWidget {
  const NumOfGuestsAndRoomsChooser({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => const HottelFormBottomSheet(),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.fillClr,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: AppColors.greyShade),
        ),
        child: Text(
          "1 ${S.of(context).guest}, 2 ${S.of(context).rooms}",
          style: AppTextStyles.text16med.copyWith(color: AppColors.mediumGray),
        ),
      ),
    );
  }
}
