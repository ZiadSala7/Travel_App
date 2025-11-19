import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

import '../utils/app_colors.dart';

class CustomFormBuilderDateTimePicker extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const CustomFormBuilderDateTimePicker({
    super.key,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      controller: controller,
      name: 'formBuilder',
      inputType: InputType.date,
      style: const TextStyle(color: AppColors.black),
      decoration: InputDecoration(
        fillColor: AppColors.fillClr,
        filled: true,
        hintText: hint,
        hintStyle: const TextStyle(color: AppColors.mediumGray),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.deepOrange),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.greyShade, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: const Icon(
          Icons.calendar_today,
          color: AppColors.deepOrange,
        ),
      ),
      format: DateFormat("MMMM dd, yyyy"),
    );
  }
}
