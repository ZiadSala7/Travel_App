import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/responsive_utils.dart';
import '../../../../generated/l10n.dart';
import 'widgets/my_trips_view_body.dart';

class MyTripsView extends StatelessWidget {
  static const String id = 'myTripsView';
  const MyTripsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).myTrips,
          style: AppTextStyles.text22Bold.copyWith(
            fontSize: ResponsiveUtils.getResponsiveFontSize(context, 22),
          ),
        ),
        centerTitle: true,
      ),
      body: const MyTripsViewBody(),
    );
  }
}