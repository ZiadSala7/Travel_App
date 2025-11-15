import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/managers/language_cubit/language_cubit.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../generated/l10n.dart';

class TitleAndSeeAllButton extends StatelessWidget {
  final String title;
  final Function() seeAllOnPressed;
  const TitleAndSeeAllButton({
    super.key,
    required this.title,
    required this.seeAllOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyles.text22Bold),
        CustomTextButton(
          title: S.of(context).seeAll,
          onPressed: () {
            context.read<LanguageCubit>().changeLanguage();
          },
        ),
      ],
    );
  }
}
