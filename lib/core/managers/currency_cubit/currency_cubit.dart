import 'package:flutter_bloc/flutter_bloc.dart';
import '../../databases/cach_helper.dart';
import '../../di/injection.dart';

import 'currency_state.dart';

class CurrencyCubit extends Cubit<CurrencyState> {
  final CacheHelper cache = getIt.get<CacheHelper>();

  static const String _currencyCodeKey = "app_currency_code";
  static const String _currencySymbolKey = "app_currency_symbol";

  CurrencyCubit() : super(CurrencyState.initial());

  /// Load saved currency from SharedPreferences
  Future<void> loadSavedCurrency() async {
    final savedCode = cache.getString(_currencyCodeKey);
    final savedSymbol = cache.getString(_currencySymbolKey);

    if (savedCode != null && savedSymbol != null) {
      emit(CurrencyState(currencyCode: savedCode, currencySymbol: savedSymbol));
    }
  }

  /// Change the currency and save it
  Future<void> changeCurrency({
    required String code,
    required String symbol,
  }) async {
    await cache.setString(_currencyCodeKey, code);
    await cache.setString(_currencySymbolKey, symbol);

    emit(state.copyWith(currencyCode: code, currencySymbol: symbol));
  }
}
