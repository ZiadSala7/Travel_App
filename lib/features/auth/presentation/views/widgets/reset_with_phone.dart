import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';
import '../otp_verification_view.dart';

class ResetWithPhone extends StatelessWidget {
  final TextEditingController controller;
  const ResetWithPhone({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).enterYourPhoneNum, style: AppTextStyles.text14Reg),
          const SizedBox(height: 8),
          CustomTextFormField(
            title: "+20 100 000 0000",
            controller: controller,
          ),
          const Spacer(),
          Center(
            child: CustomButton(
              onPressed: () {
                Navigator.of(context).pushNamed(OtpVerificationView.id);
              },
              txt: S.of(context).sendResetCode,
              icon: Icons.arrow_forward,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
