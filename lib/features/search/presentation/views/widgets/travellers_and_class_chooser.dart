import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'travellers_and_class_dialog.dart';

class TravellersAndClassChooser extends StatefulWidget {
  const TravellersAndClassChooser({super.key});

  @override
  State<TravellersAndClassChooser> createState() =>
      _TravellersAndClassChooserState();
}

class _TravellersAndClassChooserState extends State<TravellersAndClassChooser> {
  int cnt = 1;
  String selectedClass = "";

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => TravellersAndClassDialog(
            onSubmit: (int travellers, String slctedClass) {
              setState(() {
                cnt = travellers;
                selectedClass = slctedClass;
              });
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.fillClr,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: AppColors.greyShade),
        ),
        child: Row(
          children: [
            const Icon(Icons.person, color: AppColors.deepOrange),
            Text(
              " ${S.of(context).travellers}: $cnt ${S.of(context).selectClass} : $selectedClass",
              style: AppTextStyles.text16med.copyWith(
                color: AppColors.mediumGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
