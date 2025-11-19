import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import '../otp_verification_view.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            Text(S.of(context).forgPassDes, style: AppTextStyles.text16Reg),
            const SizedBox(height: 50),
            Align(
              alignment: Intl.getCurrentLocale() == 'en'
                  ? Alignment.topLeft
                  : Alignment.topRight,
              child: Text(S.of(context).email, style: AppTextStyles.text16Reg),
            ),
            const SizedBox(height: 10),
            CustomTextFormField(
              title: "example@gmail.com",
              controller: TextEditingController(),
            ),
            const Spacer(),
            CustomButton(
              onPressed: () {
                Navigator.of(context).pushNamed(OtpVerificationView.id);
              },
              txt: S.of(context).send,
              icon: Icons.arrow_forward,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
