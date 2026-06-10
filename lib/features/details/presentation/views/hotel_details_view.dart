import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../generated/l10n.dart';
import 'widgets/hotel_details_view_body.dart';

class HotelDetailsView extends StatelessWidget {
  static const String id = 'hotelDetailsView';
  const HotelDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      bottomNavigationBar: SafeArea(
        top: false,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: scheme.surface,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.10),
                blurRadius: 18,
                offset: const Offset(0, -6),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
            child: CustomButton(
              onPressed: () {},
              txt: S.of(context).bookNow,
              icon: Icons.arrow_forward_rounded,
              borderRadius: 18,
              elevation: 10,
            ),
          ),
        ),
      ),
      body: const HotelDetailsViewBody(),
    );
  }
}
