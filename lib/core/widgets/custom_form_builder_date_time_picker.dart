import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

import '../managers/theme_cubit/theme_cubit.dart';
import '../themes/light_theme.dart';
import '../utils/app_colors.dart';

class CustomFormBuilderDateTimePicker extends StatelessWidget {
  const CustomFormBuilderDateTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      name: 'formBuilder',
      style: TextStyle(
        color: context.read<ThemeCubit>().state == lightTheme
            ? AppColors.black
            : AppColors.white,
      ),
      inputType: InputType.date,
      decoration: InputDecoration(
        fillColor: AppColors.fillClr,
        filled: true,
        hintText: "mm/dd/yyyy",
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.deepOrange),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.greyShade, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: const Icon(Icons.calendar_today),
      ),
      format: DateFormat("MMMM dd, yyyy"),
    );
  }
}
