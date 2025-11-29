import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../generated/l10n.dart';

class ResetWithEmail extends StatelessWidget {
  final TextEditingController controller;
  const ResetWithEmail({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(S.of(context).email, style: AppTextStyles.text14Reg),
          const SizedBox(height: 8),
          CustomTextFormField(
            title: "example@gmail.com",
            controller: controller,
          ),
          const Spacer(),
          Center(
            child: CustomButton(
              onPressed: () {},
              txt: "Send Reset Code",
              icon: Icons.arrow_forward,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
