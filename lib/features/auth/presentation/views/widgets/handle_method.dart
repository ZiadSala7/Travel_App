import 'package:flutter/material.dart';

import '../reset_via_email_view.dart';
import '../reset_via_phone_view.dart';

void handleContinue({
  required String selectedMethod,
  required BuildContext context,
}) {
  if (selectedMethod == 'email') {
    // Navigate to Email Reset Screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ResetViaEmailView()),
    );
  } else {
    // Navigate to Phone Reset Screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ResetViaPhoneView()),
    );
  }
}
