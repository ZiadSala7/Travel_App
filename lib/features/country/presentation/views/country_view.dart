import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../managers/country_chooser_cubit/country_cubit.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/app_colors.dart';
import '../../data/country_model.dart';

class CountryView extends StatelessWidget {
  static const String id = 'countryView';
  const CountryView({super.key});

  @override
  Widget build(BuildContext context) {
    var countryName = arabCountriesMap(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: List.generate(
              arabCountryCodes.length,
              (index) => Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Card(
                  color: AppColors.white,
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 5,
                    ),
                    leading: CountryFlag.fromCountryCode(
                      arabCountryCodes[index],
                    ),
                    title: Text(
                      countryName[arabCountryCodes[index]]!,
                      style: AppTextStyles.text14Bold.copyWith(
                        color: AppColors.black,
                      ),
                    ),
                    onTap: () {
                      context.read<CountryCubit>().changeCountry(
                        arabCountryCodes[index],
                      );
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
