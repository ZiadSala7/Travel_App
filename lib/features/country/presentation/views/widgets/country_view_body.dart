import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../managers/country_chooser_cubit/country_cubit.dart';

class CountryViewBody extends StatelessWidget {
  const CountryViewBody({super.key, required this.countries});

  final List<Map<String, String>> countries;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: List.generate(
            countries.length,
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
                    countries[index]["code"]!,
                  ),
                  title: Text(
                    countries[index]["name"]!,
                    style: AppTextStyles.text14Bold.copyWith(
                      color: AppColors.black,
                    ),
                  ),
                  onTap: () {
                    context.read<CountryCubit>().changeCountry(
                      code: countries[index]["code"]!,
                      name: countries[index]["name"]!,
                    );

                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
