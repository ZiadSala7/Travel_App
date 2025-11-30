import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/constants.dart';

import '../../../../generated/l10n.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'widgets/country_view_body.dart';

class CountryView extends StatefulWidget {
  static const String id = 'countryView';
  const CountryView({super.key});

  @override
  State<CountryView> createState() => _CountryViewState();
}

class _CountryViewState extends State<CountryView> {
  @override
  Widget build(BuildContext context) {
    var countries = getCountries(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).chooseCountry,
          style: AppTextStyles.text22Bold,
        ),
        centerTitle: true,
      ),
      body: CountryViewBody(countries: countries),
    );
  }
}