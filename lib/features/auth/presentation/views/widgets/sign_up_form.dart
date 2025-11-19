import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_password_text_field.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // full name
          Text(S.of(context).fullName, style: AppTextStyles.text18Bold),
          const SizedBox(height: 15),
          CustomTextFormField(
            title: S.of(context).enterName,
            controller: TextEditingController(),
          ),
          const SizedBox(height: 20),
          // email
          Text(S.of(context).email, style: AppTextStyles.text18Bold),
          const SizedBox(height: 15),
          CustomTextFormField(
            title: "example@gmail.com",
            controller: TextEditingController(),
          ),
          const SizedBox(height: 20),
          // phone number
          Text(S.of(context).phoneNum, style: AppTextStyles.text18Bold),
          const SizedBox(height: 15),
          CustomTextFormField(
            title: S.of(context).entrPhone,
            controller: TextEditingController(),
          ),
          const SizedBox(height: 20),
          // password
          Text(S.of(context).password, style: AppTextStyles.text18Bold),
          const SizedBox(height: 15),
          CustomPasswordTextFormField(
            title: S.of(context).entrPass,
            controller: TextEditingController(),
          ),
          const SizedBox(height: 20),
          // confirm password
          Text(S.of(context).confirmPass, style: AppTextStyles.text18Bold),
          const SizedBox(height: 15),
          CustomPasswordTextFormField(
            title: S.of(context).entrPass,
            controller: TextEditingController(),
          ),
          const SizedBox(height: 30),
          Center(
            child: CustomButton(
              onPressed: () {},
              txt: S.of(context).signUp,
              icon: Icons.arrow_forward,
            ),
          ),
        ],
      ),
    );
  }
}
