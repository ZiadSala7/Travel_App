import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/l10n.dart';
import '../../../../splash/presentation/views/widgets/app_logo.dart';
import '../auth_chooser_view.dart';

class GuestOrLoginViewBody extends StatelessWidget {
  const GuestOrLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      child: Column(
        spacing: 30,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInDown(
            delay: Duration(milliseconds: 600),
            child: const AppLogo(),
          ),
          FadeInUp(
            delay: Duration(milliseconds: 1200),
            child: CustomButton(
              onPressed: () {},
              txt: S.of(context).guest,
              icon: Icons.person,
            ),
          ),
          FadeInUp(
            delay: Duration(milliseconds: 1800),
            child: CustomButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AuthChooserView.id);
              },
              txt: S.of(context).continueLogin,
              icon: Icons.login,
              bkgrnd: AppColors.charcoalGray,
            ),
          ),
        ],
      ),
    );
  }
}
