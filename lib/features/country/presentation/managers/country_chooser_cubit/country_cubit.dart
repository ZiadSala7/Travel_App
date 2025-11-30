import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/databases/cach_helper.dart';
import '../../../../../core/di/injection.dart';
import 'country_states.dart';

class CountryCubit extends Cubit<CountryState> {
  final CacheHelper cache = getIt.get<CacheHelper>();

  static const String _countryCodeKey = "app_country_code";
  static const String _countryNameKey = "app_country_name";

  CountryCubit() : super(CountryState.initial());

  /// Load saved country from SharedPreferences
  Future<void> loadSavedCountry() async {
    final savedCode = cache.getString(_countryCodeKey);
    final savedName = cache.getString(_countryNameKey);

    if (savedCode != null && savedName != null) {
      emit(CountryState(countryCode: savedCode, countryName: savedName));
    }
  }

  /// Change and save country
  Future<void> changeCountry({
    required String code,
    required String name,
  }) async {
    await cache.setString(_countryCodeKey, code);
    await cache.setString(_countryNameKey, name);

    emit(state.copyWith(countryCode: code, countryName: name));
  }
}
