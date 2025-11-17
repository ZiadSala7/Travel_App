import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/managers/theme_cubit/theme_cubit.dart';
import '../../../../../core/themes/light_theme.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/l10n.dart';
import 'custom_drop_down_button.dart';
import 'dialog_travellers_list_tile.dart';

class TravellersAndClassDialog extends StatelessWidget {
  final Function(int travellers, String selectedClass) onSubmit;
  const TravellersAndClassDialog({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    int adults = 1, children = 0, babies = 0;
    String defaultFlightClass = S.of(context).tc1;
    return Dialog(
      backgroundColor: context.read<ThemeCubit>().state == lightTheme
          ? AppColors.white
          : AppColors.black,
      insetPadding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 15),
          Text(S.of(context).dialogTC, style: AppTextStyles.text22Bold),
          Divider(),
          DialogTravellersListTile(
            range: 1,
            title: S.of(context).adults,
            onChange: (int cnt) {
              adults = cnt;
            },
            desc: S.of(context).adultAge,
          ),
          Divider(),
          DialogTravellersListTile(
            range: 0,
            title: S.of(context).children,
            onChange: (int cnt) {
              children = cnt;
            },
            desc: S.of(context).childAge,
          ),
          Divider(),
          DialogTravellersListTile(
            range: 0,
            title: S.of(context).baby,
            onChange: (int cnt) {
              babies = cnt;
            },
            desc: S.of(context).babyAge,
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomDropDownButton(
                  items: touristClasses(context),
                  hint: S.of(context).selectClass,
                  onSelected: (String selectedClass) {
                    defaultFlightClass = selectedClass;
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CustomButton(
            onPressed: () {
              int travellers = adults + children + babies;
              onSubmit(travellers, defaultFlightClass);
              Navigator.of(context).pop();
            },
            txt: S.of(context).Search,
            icon: Icons.done,
          ),
        ],
      ),
    );
  }
}
