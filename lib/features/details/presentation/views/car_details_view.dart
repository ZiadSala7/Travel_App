import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../generated/l10n.dart';
import 'widgets/car_details_view_body.dart';

class CarDetailsView extends StatelessWidget {
  const CarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: CustomButton(
          onPressed: () {},
          txt: S.of(context).bookNow,
          icon: Icons.arrow_forward,
        ),
      ),
      body: const CarDetailsViewBody(),
    );
  }
}
