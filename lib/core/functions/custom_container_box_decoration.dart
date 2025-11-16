import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../utils/app_colors.dart';

BoxDecoration customContainerBoxDecoration() {
  return BoxDecoration(
    color: AppColors.white,
    borderRadius: BorderRadius.circular(18),
    boxShadow: customBoxShadowList,
  );
}
