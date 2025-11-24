import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/databases/cach_helper.dart';
import '../../../../../core/di/injection.dart';
import '../../../data/country_model.dart';
import 'country_states.dart';

class CountryCubit extends Cubit<CountryStates> {
  CountryCubit() : super(InitialCountryState());

  String initialCountry = '';
  final prefs = getIt.get<CacheHelper>();
  late Map<String, dynamic> countriesNames;

  // initialization for the found country ... if found
  initCountry(BuildContext context) {
    countriesNames = arabCountriesMap(context);
    initialCountry =
        countriesNames[prefs.getString("country")] ?? countriesNames['EG'];
    log(initialCountry);
    emit(InitCountryState());
  }

  // toggle or change the current country to another one
  changeCountry(String key) {
    prefs.setString("country", key);
    initialCountry = countriesNames[key];
    emit(CountryChanged());
  }
}
