import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/core/managers/theme_cubit/theme_cubit.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_password_text_field.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import '../forget_password_view.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          // email
          Text(S.of(context).email, style: AppTextStyles.text18Bold),
          SizedBox(height: 15),
          CustomTextFormField(
            title: "example@gmail.com",
            controller: TextEditingController(),
          ),
          SizedBox(height: 20),
          // password
          Text(S.of(context).password, style: AppTextStyles.text18Bold),
          SizedBox(height: 15),
          CustomPasswordTextFormField(
            title: S.of(context).entrPass,
            controller: TextEditingController(),
          ),
          SizedBox(height: 30),
          Center(
            child: CustomTextButton(
              title: S.of(context).forgetPass,
              onPressed: () {
                Navigator.pushNamed(context, ForgetPasswordView.id);
              },
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: CustomButton(
              onPressed: () {
                context.read<ThemeCubit>().toggleTheme();
              },
              txt: S.of(context).login,
              icon: Icons.arrow_forward,
            ),
          ),
        ],
      ),
    );
  }
}
