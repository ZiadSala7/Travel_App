import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:travel_app/core/utils/app_colors.dart';
import 'package:travel_app/core/widgets/custom_button.dart';
import 'package:travel_app/core/widgets/custom_text_button.dart';

import '../../../../core/utils/app_text_styles.dart';

class OtpVerificationView extends StatefulWidget {
  static const String id = "otpVerification";
  const OtpVerificationView({super.key});

  @override
  State<OtpVerificationView> createState() => _OtpVerificationViewState();
}

class _OtpVerificationViewState extends State<OtpVerificationView> {
  final pinController = TextEditingController();
  Timer? _timer;
  int _seconds = 60;
  bool canResend = false;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    canResend = false;
    _seconds = 60;

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_seconds == 0) {
        setState(() {
          canResend = true;
        });
        timer.cancel();
      } else {
        setState(() {
          _seconds--;
        });
      }
    });
  }

  @override
  void dispose() {
    pinController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verificatoin", style: AppTextStyles.text22Bold),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Enter Verification Code",
              style: AppTextStyles.text22Bold,
            ),
            const SizedBox(height: 10),
            Text(
              "We’ve sent a 6-digit code to ",
              style: AppTextStyles.text14Reg.copyWith(
                color: AppColors.mediumGray,
              ),
            ),
            const SizedBox(height: 40),
            // Pinput Field
            Center(
              child: Pinput(
                controller: pinController,
                length: 6,
                keyboardType: TextInputType.number,
                // to make the code let digits only
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly, // Only numbers
                ],
                defaultPinTheme: PinTheme(
                  height: 56,
                  width: 56,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.darkGray,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.mediumGray),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  height: 56,
                  width: 56,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.deepOrange),
                  ),
                ),
                onCompleted: (value) {},
              ),
            ),
            const SizedBox(height: 20),
            // Resend Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  canResend
                      ? "Didn't receive the code?"
                      : "Resend code in $_seconds s",
                  style: AppTextStyles.text16Reg,
                ),
                if (canResend)
                  CustomTextButton(
                    onPressed: () {
                      startTimer();
                    },
                    title: 'Resend',
                  ),
              ],
            ),

            const Spacer(),

            // Confirm Button
            Center(
              child: CustomButton(
                onPressed: () {},
                txt: "Confirm",
                icon: Icons.check,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}



/*
"verification" : "Verificatoin",
"enterVerifiCode" : "Enter Verification Code",
"codeSentTo" : "We’ve sent a 6-digit code to ",
"notReciveCode" : "Didn't receive the code?",
"resendCodeIn" : Resend code in 
*/